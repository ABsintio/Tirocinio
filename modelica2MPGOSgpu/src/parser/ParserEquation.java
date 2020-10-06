package parser;

import java.io.*;
import java.util.ArrayList;
import java.util.regex.*;
import java.util.HashMap;
import biomodel.math.*;
import biomodel.math.odes.*;

/**
 * La classe Parser fornisce metodi per il parsing delle equazioni all'interno dei
 * file modelica ".mo" generati da sbml2Modelica. Le equazioni che devono essere
 * parsate sono fondamentalmente di tre tipi:
 *
 * 1. Equazioni differenziali ordinarie -> der(x) = y (y equazione algebrica)
 * 2. Equazioni di assegnazione         -> x      = y (y equazione algebrica)
 * 3. Equazioni di inizializzazione     -> x      = n (n numero)
 *
 * Le equazioni differenziali ordinarie sono quelle che andranno a formare il sistema
 * di ODE che descrive matematicamente l'evoluzione del modello biologico in studio.
 * Le singole equazioni ODE sono contenute nel package biomodel.math, mentre la classe
 * che descrive un intero sistema ODE è contenuto nel package biomodel.math.odes.
 * Facendo riferimento ai files prodotti da sbml2Modelica riscontriamo che le ODE di
 * nostro interesse si trovino solo nei file del tipo Class_elmt_[a-zA-Z0-9]*.mo.
 *
 * Per quanto riguarda le equazioni di assegnazione è importante stare attenti a
 * riconoscere bene cosa rappresentano e questo lo possiamo fare in base al tipo di
 * file che stiamo prendendo in considerazione. Se ci concentriamo sul file Reactions.mo
 * le equazioni di assegnazione ci dicono le reazioni del modello, le quali sono molto
 * importanti soprattutto perché dovranno essere inserite all'interno delle ODE prodotte
 * dal parsing su (1) le quali contengono parametri che referenziano direttamente alle
 * reazioni. Altre tipologie di equazioni di assegnazione fanno riferimento a parametri
 * inizializzati precedentemente.
 *
 * Infine le equazioni di inizializzazione le troviamo in tutti i file .mo di nostro
 * interesse a rappresentano l'inizializzazione di parametri (costanti) che servono
 * per il calcolo delle derivate e/o delle reazioni.
 */
public class ParserEquation {
    private static final String START_EQUATION   = "\\s+equation";
    private static final String START_ALGORITHM  = "\\s+algorithm";
    private static final String INITIAL_EQUATION = "\\s+initial equation";
    private static final String END_FILE         = "end\\s*\\S+";
    private static final String ODE_EQUATION     = "der[(]\\w+[)]\\s*=.*[(+*)-]+$";
    private static final String aEQ_EQUATION     = "\\w+\\s*=.*";
    public File workingDir;

    public ParserEquation(String in) {
        assert new File(in).isDirectory(); // Controllo che l'input sia una directory.
        this.workingDir  = new File(in);
    }

    /**
     * Metodo che serve a parsare le equazioni di inizializzazione sui file che contengono
     * il sistema ODE. Crea un HashMap che usa come chiavi il nome dei file dai quali ha
     * parsato le equazioni, e come valori ArrayList di biomodel.math.iEquation, classe che
     * rappresenta le equazioni di inizializzazione. Dal momento che possono essere parsati diversi
     * file (a discrezione del sistema), per ogni run del metodo che parsa viene creato un
     * oggetto Thread al fine di parallelizzare il processo il più possibile. Notare la
     * mancanza di concorrenza, che potrebbe rallentare la parallelizzazione, dal momento che,
     * aggiungo ad una risorsa convidisa da tutti i Thread, ma che non è critica in quanto
     * non vado a modificare il contenuto di dati inseriti da altri Thread.
     *
     * @return Equazioni di inizializzazione per i diversi file parsati
     * @throws InterruptedException Il Thread viene interrotto
     */
    public HashMap<String, ArrayList<iEquation>> parseInitialEquation() throws InterruptedException {
        File[] classElmtFiles = this.workingDir.listFiles((dir, s) -> s.matches("Class\\_elmt\\_\\w+\\.mo"));
        HashMap<String, ArrayList<iEquation>> iEqns = new HashMap<>();
        assert classElmtFiles != null;
        for (File f: classElmtFiles) {
            Thread threadPerClassElmtFile = new Thread(new Runnable() {
                @Override
                public void run() {
                    iEqns.put(f.getName(), parseFileInitialEquation(f.getAbsolutePath()));
                }
            });
            threadPerClassElmtFile.start();
            threadPerClassElmtFile.join();
        }
        return iEqns;
    }

    /**
     * Niente di particolare, semplicemente parsa il file dato in input per ottenere
     * un Array di biomodel.math.iEquation, da utilizzare per inizializzare il sistema ODE.
     * @param file nome del file da parsare
     * @return Insieme di equazioni di inizializzazione presenti in file
     */
    public ArrayList<iEquation> parseFileInitialEquation(String file) {
        ArrayList<iEquation> iEqns = new ArrayList<>();
        try (FileReader stream = new FileReader(file)){
            BufferedReader buff = new BufferedReader(stream);
            String line = buff.readLine();
            boolean start = false, end = false;
            while (line != null && !end) {
                if (Pattern.matches(INITIAL_EQUATION, line)) start = true;
                else if (Pattern.matches(START_EQUATION, line)  ||
                         Pattern.matches(START_ALGORITHM, line) ||
                         Pattern.matches(END_FILE, line)) {
                    end = true;
                }
                if (start && !line.contains("initial equation") &&
                    !line.equals("") && !end) {
                    String[] splittedEq = line.split("=");
                    int lenSecondString = splittedEq[1].length();
                    LeftHandSide  lhs = new LeftHandSide(splittedEq[0].strip());
                    RigthHandSide rhs = new RigthHandSide(splittedEq[1].substring(0, lenSecondString - 1));
                    iEquation ieq = new iEquation(lhs, rhs);
                    iEqns.add(ieq);
                }
                line = buff.readLine();
            }
        } catch (IOException fnfe) {
            fnfe.printStackTrace();
        }
        return iEqns;
    }

    /**
     * Metodo che serve a parsare le altre due tipologie di equazioni (ODE, assegnazione) dai file
     * che contengono le ODE del sistema. La differenza principale è il tipo di ritorno: ArrayList di
     * biomodel.math.Equation. Questa è una classe astratta che serve a dare uno scheletro da cui
     * partire a tutte le tipologie di equazioni e fornisce metodi utili per gestirle. Quindi questo
     * metodo mette insieme tutte e due le tipologie creando sempre un HashMap, come nel caso delle
     * equazioni di inizializzazione. Il discorso sulla parallelizzazione invece è lo stesso.
     *
     * @return Equazioni di assegnazione ed ODE dei diversi file parsati
     * @throws InterruptedException Il Thread viene interrotto
     */
    public HashMap<String, ArrayList<Equation>> parseEquations() throws InterruptedException {
        File[] classElmtFiles = this.workingDir.listFiles((dir, s) -> s.matches("Class\\_elmt\\_\\w+\\.mo"));
        HashMap<String, ArrayList<Equation>> eqns = new HashMap<>();
        assert classElmtFiles != null;
        for (File f: classElmtFiles) {
            Thread threadPerClassElmtFile = new Thread(new Runnable() {
                @Override
                public void run() {
                    eqns.put(f.getName(), parseFileEquations(f.getAbsolutePath()));
                }
            });
            threadPerClassElmtFile.start();
            threadPerClassElmtFile.join();
        }
        return eqns;
    }

    /**
     * Niente di particolare, semplicemente parsa il file dato in input per ottenere
     * un Array di biomodel.math.Equation, da utilizzare per inizializzare il sistema ODE.
     * @param inFile nome del file da parsare
     * @return Insieme di equazioni (ODE, assegnazione) presenti in file
     */
    public ArrayList<Equation> parseFileEquations(String inFile) {
        ArrayList<Equation> eqns = new ArrayList<>();
        try (FileReader stream = new FileReader(inFile)){
            BufferedReader buff = new BufferedReader(stream);
            String line = buff.readLine();
            boolean start = false, end = false;
            while (line != null && !end) {
                if (Pattern.matches(START_EQUATION, line)) start = true;
                else if (Pattern.matches(START_ALGORITHM, line) ||
                        Pattern.matches(END_FILE, line)) {
                    end = true;
                }
                if (start && !line.contains("equation") &&
                        !line.equals("") && !end) {
                    String[] splittedEq = line.split("=");
                    int lenSecondString = splittedEq[1].length();
                    LeftHandSide  lhs = new LeftHandSide(splittedEq[0].strip());
                    RigthHandSide rhs = new RigthHandSide(splittedEq[1].substring(0, lenSecondString - 1));
                    String equation = lhs.lhsString.concat(" = " + rhs.rhsString);
                    Equation eq = null;
                    if (Pattern.matches(ODE_EQUATION, equation)) {
                        eq = new ODE(lhs, rhs);
                    } else if (Pattern.matches(aEQ_EQUATION, equation)) {
                        eq = new aEquation(lhs, rhs);
                    }
                    if (eq != null) eqns.add(eq);
                }
                line = buff.readLine();
            }
        } catch (IOException fnfe) {
            fnfe.printStackTrace();
        }
        return eqns;
    }

    @SuppressWarnings("unchecked")
    public static void main(String[] args) {
        String in  = "/home/yorunoomo/Scrivania/Tirocinio/S2MBIOMDx8016/";
        ParserEquation p = new ParserEquation(in);
        try {
            HashMap<String, ArrayList<iEquation>> iEqns = p.parseInitialEquation();
            HashMap<String, ArrayList<Equation>> eqns = p.parseEquations();
            for (String fileName : eqns.keySet()) {
                ArrayList<Equation> eqs = eqns.get(fileName);
                ArrayList<iEquation> ieqs = iEqns.get(fileName);
                ArrayList<ODE> odeEq = (ArrayList<ODE>) Equation.filter(eqs, EQType.ODE);
                ArrayList<aEquation> aEq = (ArrayList<aEquation>) Equation.filter(eqs, EQType.aEQ);
                ODESystem ode = new ODESystem(ieqs, odeEq);
                ode.buildMPGOS_PerThread_String();
                //System.out.println(ode.getMPGOS_PerThread_OdeFunction());
                /*System.out.println("Initial Equation");
                ieqs.forEach((x) -> System.out.println(x.getEquation()));
                System.out.println("\nDifferential Equations");
                odeEq.forEach((x) -> System.out.println(x.getEquation()));
                System.out.println("\nAssociation Equation");
                aEq.forEach((x) -> System.out.println(x.getEquation()));
                System.out.println("\n");*/
            }
        } catch (InterruptedException ie) {
            ie.printStackTrace();
        }

        ParserReaction pr = new ParserReaction(in);
        ArrayList<aEquation> eqns = pr.parseReactions();
        for (aEquation eq: eqns) {
            System.out.println(eq.getEquation());
        }

    }
}
