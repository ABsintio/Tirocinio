package parser;

import java.util.HashMap;
import java.util.regex.Pattern;
import java.io.File;
import java.io.FileReader;
import java.io.BufferedReader;
import util.XMLModelName;
import util.Tuple;

/**
 * La classe ParserModelRelationship, come dice anche il nome, serve per tracciare le relazioni
 * di dipendenza tra le diverse classi (Class_elmt, Reactions, Parameters). Diciamo che esiste
 * una dipendenza tra due classi nel momento in cui una dipende dalle variabili restituita dall'altra.
 * Questa è una cosa molto comune dal momento che sia i parametri, che le reazioni che le equazioni
 * differenziali devono mutare ed evolvere nel tempo di modo da fornire una simulazione corretta
 * della lifeline del modello biologico. Divideremo questo parsing in due sotto-problemi: (1) Il
 * primo è quello di identificare le variabili che corrispondono a specifici file; (2) Il secondo
 * è quello di tracciare le vere e proprie dipendeze.
 */
public class ParserModelRelationship {
    private static final String START_EQUATION     = "\\s+equation";
    private static final String END_FILE           = "end\\s*\\S+";
    private static final String REACTION_FILE      = "\\s+Reactions.*";
    private static final String PARAMETER_FILE     = "\\s+Parameters.*";
    private static final String CLASS_ELMT_FILE    = "\\s+Class_elmt_.*";
    private final File workingDir;
    private String modelName;
    public ParserModelRelationship(String inDir, String SBMLFile) {
        assert (new File(inDir)).isDirectory();
        this.workingDir = new File(inDir);
        try {
            this.modelName = this.workingDir.getAbsolutePath() + "/" + XMLModelName.getModelName(SBMLFile) + ".mo";
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Il metodo getVarNameFromFilenameDefinitions risolve il primo dei due sottoproblemi.
     * Il parsing di queste variabili è molto semplice in quanto la loro definizione è molto
     * semplice e lineare, ma soprattutto segue un pattern ben preciso in tutti i modelli.
     * Ogni variabile è connessa al file che rappresenta e questo è un grande vantaggio in quanto
     * sappiamo perfettamente il 70% dei file che ci saranno dopo la traduzione da sbml a Modelica.
     * Infatti sicuramente sapremo l'esistenza di un file Reactions.mo, come anche di Parameters.mo,
     * oppure Functions.mo e Constants.mo. Degli altri file Class_elmt_\w+ ne conosciamo soltanto
     * il prefisso, ovvero Class_elmt_\w+.mo. Conoscendo questo se la riga che stiamo considerando
     * inizia con un pattern del tipo <spazi>...<spazi>[Reactions|Parameters|Class_elmt_\w+] allora
     * sicuramente possiamo considerarla, splittarla e quindi prendere le informazioni che ci servono.
     * Per ottimizzare la cosa, di modo che il parsing non continui per tutto il file inutilmente,
     * in quanto la definizione delle variabili è solamente all'inizio, inseriamo la condizione che
     * se la riga in cui mi trovo matcha il pattern per l'inizio delle equazioni (vedi ParserClassElmt)
     * allora stoppiamo la ricerca e ritorniamo quanto ottenuto, altrimenti andiamo avanti.
     * @return Lista delle variabili e dei rispettivi file rappresentativi
     */
    private HashMap<String, String> getVarNameFromFilenameDefinitions() {
        HashMap<String, String> varNames = new HashMap<>();
        try (FileReader stream = new FileReader(new File(this.modelName))) {
            BufferedReader buff = new BufferedReader(stream);
            String line = buff.readLine();
            while (line != null && !Pattern.matches(START_EQUATION, line)) {
                if (Pattern.matches(PARAMETER_FILE,  line) ||
                    Pattern.matches(REACTION_FILE,   line) ||
                    Pattern.matches(CLASS_ELMT_FILE, line))
                {
                    String[] splittedStr = line.strip().split("\\s");
                    int lenSeconStr = splittedStr[1].strip().length();
                    varNames.put(splittedStr[1].substring(0, lenSeconStr - 1).strip(), splittedStr[0].strip());
                }
                line = buff.readLine();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return varNames;
    }

    /**
     * Il metodo getClassVarsDependencies permette di risolvere il secondo sottoproblema. Tramite
     * tale metodo possiamo ottenere tutte le dipendenze presenti tra le variabili dei diversi
     * file contenuti nella directory dove abbiamo memorizzato i risultato della conversione S2M.
     * Le dipendenze ritornate dalla funzione sono sottoforma di HashMap di un HashMap. La chiave
     * del "dizionario" più esterno è la classe alla quale appartengono quelle variabili, che è
     * anche il nome del file che contiene la classe (una grande facilitazione), Il valore associato
     * ad una specifica chiave è un'ulteriore mapping tra il nome della variabile del file ed una
     * istanza dell'oggetto Tupla che contiene le informazioni rispettivamente della variabile da
     * cui la chiave prende il valore in input ed il file/classe che contiene la seconda variabile.
     * In pratica possiamo dire che la struttura del HashMap di ritorno sarà del tipo
     * {
     *     <filename/classname_x> : {
     *         <varname_x> : Tuple(<varname_y>, <filename/classname_y>)
     *         ...
     *     }
     *     ...
     * }
     * @return Una Mapping dettagliato delle dipendeze tra i file Modelica del modello.
     */
    public HashMap<String, HashMap<String, Tuple>> getClassVarsDepencies() {
        HashMap<String, HashMap<String, Tuple>> varsDep = new HashMap<>();
        HashMap<String, String> varnames = this.getVarNameFromFilenameDefinitions();
        try (FileReader stream = new FileReader(new File(this.modelName))){
            BufferedReader buff = new BufferedReader(stream);
            String line = buff.readLine();
            boolean start = false, end = false;
            while (line != null && !end) {
                if (Pattern.matches(START_EQUATION, line)) start = true;
                else if (Pattern.matches(END_FILE, line)) end = true;
                if (start && !end && !line.contains("equation") && !line.equals("")) {
                    String[] splittedStr = line.strip().split("=");
                    int lenSecondStr = splittedStr[1].length();
                    String[] splittedLhs = splittedStr[0].strip().split("\\.");
                    String[] splittedRhs = splittedStr[1].substring(0, lenSecondStr - 1).strip().split("\\.");
                    String filenameLhs   = varnames.get(splittedLhs[0].strip());
                    String varLhs        = splittedLhs[1].strip();
                    String filenameRhs   = varnames.get(splittedRhs[0].strip());
                    String varRhs        = splittedRhs[1].strip();
                    if (varsDep.containsKey(filenameLhs)) {
                        varsDep.get(filenameLhs).put(varLhs, new Tuple(filenameRhs, varRhs));
                    } else {
                        varsDep.put(filenameLhs, new HashMap<>(){{
                            put(varLhs, new Tuple(filenameLhs, varRhs));
                        }});
                    }
                }
                line = buff.readLine();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return varsDep;
    }

    public static void main(String[] args) {
        String in  = "/home/yorunoomo/Scrivania/Tirocinio/S2MResult/S2MBIOMDx07125/";
        String xmlFile = "/home/yorunoomo/Scrivania/Tirocinio/models/BIOMD0000000125.xml";
        ParserModelRelationship pMR = new ParserModelRelationship(in, xmlFile);
        HashMap<String, String> varNames = pMR.getVarNameFromFilenameDefinitions();
        for (String filename: varNames.keySet()) {
            System.out.println(filename + " " + varNames.get(filename));
        }
        System.out.println("\n");
        HashMap<String, HashMap<String, Tuple>> result = pMR.getClassVarsDepencies();
        for (String f: result.keySet()) {
            System.out.println("-> " + f);
            HashMap<String, Tuple> hashMap = result.get(f);
            for (String s: hashMap.keySet()) {
                Tuple t = hashMap.get(s);
                System.out.println(s + " -> ( " + t.getX() + ", " + t.getY() + " )");
            }
        }
    }
}
