package parser;

import java.io.*;
import java.util.ArrayList;
import java.util.regex.*;
import java.util.HashMap;
import biomodel.math.equation.*;
import biomodel.math.equation.odes.*;
import parser.files.ClassElmtFile;
import util.XMLModelName;

/**
 * La classe Parser fornisce metodi per il parsing delle equazioni all'interno dei
 * file modelica ClassElmt generati da sbml2Modelica. Le equazioni che devono essere
 * parsate sono fondamentalmente di tre tipi:
 *
 * 1. Equazioni differenziali ordinarie -> der(x) = y (y equazione algebrica)
 * 2. Equazioni di assegnazione         -> x      = y (y equazione algebrica)
 * 3. Equazioni di inizializzazione     -> x      = n (n numero)
 *
 * Le equazioni differenziali ordinarie sono quelle che andranno a formare il sistema
 * di ODE che descrive matematicamente l'evoluzione del modello biologico in studio.
 * Le singole equazioni ODE sono contenute nel package biomodel.math, mentre la classe
 * che descrive un intero sistema ODE è contenuto nel package biomodel.math.equation.odes.
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
public class ParserClassElmt {
    private static final String START_EQUATION   = "\\s+equation";
    private static final String START_ALGORITHM  = "\\s+algorithm";
    private static final String INITIAL_EQUATION = "\\s+initial equation";
    private static final String END_FILE         = "end\\s*\\S+";
    private static final String ODE_EQUATION     = "der[(]\\w+[)]\\s*=.*[(+*)-]+$";
    private static final String aEQ_EQUATION     = "\\w+\\s*=.*";
    private static final String EVENT_STRING     = "\\s+when.*";
    private static final String END_EVENT_STRING = "\\s+end when;.*";
    private static final String INPUT_STRING     = "\\s+input.*";
    public File workingDir;

    public ParserClassElmt(String in) {
        assert new File(in).isDirectory(); // Controllo che l'input sia una directory.
        this.workingDir  = new File(in);
    }

    /**
     * Metodo che serve a parsare le equazioni di inizializzazione sui file che contengono
     * il sistema ODE. Crea un HashMap che usa come chiavi il nome dei file dai quali ha
     * parsato le equazioni, e come valori ArrayList di biomodel.math.equation.iEquation, classe che
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
        File[] classElmtFiles = this.workingDir.listFiles((dir, s) -> s.matches("Class_elmt_\\w+\\.mo"));
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
     * un Array di biomodel.math.equation.iEquation, da utilizzare per inizializzare il sistema ODE.
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
                    RigthHandSide rhs = new RigthHandSide(splittedEq[1].substring(0, lenSecondString - 1).strip());
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
     * biomodel.math.equation.Equation. Questa è una classe astratta che serve a dare uno scheletro da cui
     * partire a tutte le tipologie di equazioni e fornisce metodi utili per gestirle. Quindi questo
     * metodo mette insieme tutte e due le tipologie creando sempre un HashMap, come nel caso delle
     * equazioni di inizializzazione. Il discorso sulla parallelizzazione invece è lo stesso.
     *
     * @return Equazioni di assegnazione ed ODE dei diversi file parsati
     * @throws InterruptedException Il Thread viene interrotto
     */
    public HashMap<String, ArrayList<Equation>> parseEquations() throws InterruptedException {
        File[] classElmtFiles = this.workingDir.listFiles((dir, s) -> s.matches("Class_elmt_\\w+\\.mo"));
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
     * un Array di biomodel.math.equation.Equation, da utilizzare per inizializzare il sistema ODE.
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
                if (Pattern.matches(START_EQUATION, line) || Pattern.matches(END_EVENT_STRING, line)) start = true;
                else if (Pattern.matches(START_ALGORITHM, line) ||
                         Pattern.matches(END_FILE, line)) {
                    end = true;
                }
                else if (Pattern.matches(EVENT_STRING, line)) start = false;
                if (start && !line.contains("equation") &&
                        !line.equals("") && !end && !line.contains("end when")) {
                    String[] splittedEq = line.split("=");
                    int lenSecondString = splittedEq[1].length();
                    LeftHandSide  lhs = new LeftHandSide(splittedEq[0].strip());
                    RigthHandSide rhs = new RigthHandSide(splittedEq[1].substring(0, lenSecondString - 1).strip());
                    String equation = lhs.getLhsString().concat(" = " + rhs.getRhsString());
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

    /**
     * Funzione ausiliaria per aggregare tutte le equazioni (aEq, ODE, iEq) all'interno di un
     * unico HashMap, di modo che possano essere reperibili in maniera più leggile, senza dover
     * ogni volta cicliare all'interno degli HashMap ritornati dalle varie funzioni di parsing.
     * L'HashMap di ritorno avrà tre chiavi: (1) aEquations, per indicare le equazioni di
     * assegnamento; (2) ODE, per indicare le equazioni differenziali; (3) iEquations, per
     * indicare le equazioni di inizializzazione. Ad ogni chiave è connesso un ArrayList che
     * contiene tutte le equazioni che sono stati identificate rispettivamente.
     * @param eqs valore di ritorno della funzione parseEquations
     * @param iEqs valore di ritorno della funzione parseInitialEquations
     * @return Ritorna un HashMap con chiavi tipi di equazioni e allegati degli ArrayList.
     */
    @SuppressWarnings("unchecked")
    public HashMap<String, ArrayList<? extends Equation>> mergeEquations(
            HashMap<String, ArrayList<Equation>> eqs,
            HashMap<String, ArrayList<iEquation>> iEqs
    ) {
        HashMap<String, ArrayList<? extends Equation>> mergedEqs = new HashMap<>();
        String aEqsString = "aEquations";
        String ODEString  = "ODE";
        String iEqsStirng = "iEquations";
        ArrayList<aEquation> aEquations = new ArrayList<>();
        ArrayList<ODE> odes = new ArrayList<>();
        ArrayList<iEquation> iEquations = new ArrayList<>();
        for (String fileName: eqs.keySet()) {
            odes.addAll((ArrayList<ODE>) Equation.filter(eqs.get(fileName), EQType.ODE));
            aEquations.addAll((ArrayList<aEquation>) Equation.filter(eqs.get(fileName), EQType.aEQ));
            iEquations.addAll(iEqs.get(fileName));
        }
        mergedEqs.put(aEqsString, aEquations);
        mergedEqs.put(ODEString, odes);
        mergedEqs.put(iEqsStirng, iEquations);
        return mergedEqs;
    }

    /**
     * Questo metodo crea il sistema di equazioni differenziali, unendo tutti i risultati
     * del parsing dei vari file di tipo Class_elmt_[a-zA-Z0-9]*.mo.
     * @return Il sistema di equazioni differenziali ottenuto
     */
    @SuppressWarnings("unchecked")
    public ODESystem buildODESystem() {
        try {
            HashMap<String, ArrayList<? extends Equation>> equations = this.mergeEquations(
                    this.parseEquations(),
                    this.parseInitialEquation());
            ODESystem odeSystem = new ODESystem(
                    (ArrayList<iEquation>) equations.get("iEquations"),
                    (ArrayList<ODE>)       equations.get("ODE")
                    );
            return odeSystem;
        } catch (InterruptedException ie) {
            ie.printStackTrace();
        }
        return null;
    }
    
    /**
     * Il metodo parseInput() ha il compito di estrapolare da tutti i file Class_eltm_<nome>.mo
     * gli input di quella classe. Ovviamente come negli altri casi andrà a creare un HashMap
     * che conterrà come chiavi il nome dei file parsati e come valore un array di valori per
     * quel file.
     * @return Lista di tutti gli input per i rispettivi file parsati
     * @throws InterruptedException Il Thread viene interrotto
     */
    public HashMap<String, ArrayList<String>> parseInput() throws InterruptedException {
        HashMap<String, ArrayList<String>> inputs = new HashMap<>();
        File[] classElmtFiles = this.workingDir.listFiles((dir, s) -> s.matches("Class_elmt_\\w+\\.mo"));
        assert classElmtFiles != null;
        for (File stream: classElmtFiles) {
            Thread threadPerClassElmt = new Thread(new Runnable(){
                @Override 
                public void run(){
                    inputs.put(stream.getName(), parseFileIntpus(stream.getAbsolutePath()));
                }
            });
            threadPerClassElmt.start();
            threadPerClassElmt.join();
        }
        return inputs;
    }

    /** 
     * Il metodo parseFileIntpus è il metodo che effettivamente esegue il lavoro di parsing
     * su di un singolo file. Essenzialmente riconosce quali righe dei file .mo specificano
     * gli input e mano a mano inserire tutte quelle trovate in una lista ritornandola.
     * @return Lista di tutti gli input per un singolo file
     */
    public ArrayList<String> parseFileIntpus(String filename) {
        ArrayList<String> inputsString = new ArrayList<>();
        try (FileReader stream = new FileReader(new File(filename))) {
            BufferedReader buff = new BufferedReader(stream);
            String line = buff.readLine();
            while (line != null) {
                if (Pattern.matches(INPUT_STRING, line)) {
                    String[] splittedStr = line.strip().split(" ");
                    int lenStr = splittedStr[2].length();
                    inputsString.add(splittedStr[2].strip().substring(0, lenStr - 1));
                }
                line = buff.readLine();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return inputsString;
    }

    @SuppressWarnings("unchecked")
    public static void main(String[] args) {
        String in  = "/home/yorunoomo/Scrivania/Tirocinio/S2MResult/S2MBIOMDx07125/";
        String xmlFile = "/home/yorunoomo/Scrivania/Tirocinio/models/BIOMD0000000125.xml";
        
        // Prova di funzionamento di ClassElmtFile
        ParserClassElmt pE = new ParserClassElmt(in);
        ParserAlgorithm pA = new ParserAlgorithm(in);
        try {
            HashMap<String, ArrayList<String>> inputLists = pE.parseInput();            // Inputs
            String modelName = XMLModelName.getModelName(xmlFile);                      // Model Object Name
            HashMap<String, ArrayList<iEquation>> iEqs    = pE.parseInitialEquation();  // iEquations
            HashMap<String, ArrayList<Equation>> eEqs     = pE.parseEquations();        // aEquation + ODE
            HashMap<String, ArrayList<aEquation>> aAlg    = pA.parseAlgorithm();        // aAlgorithm

            /*ClassElmtFile[] classElmtFiles = new ClassElmtFile[eEqs.size()];
            int i = 0;
            for (String fileName: eEqs.keySet()) {
                // Get aEquation e ODE 
                
            }*/
            for (String fN: inputLists.keySet()) {
                System.out.println(fN);
                inputLists.get(fN).forEach(System.out::println);
                System.out.println("\n");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
