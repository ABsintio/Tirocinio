package parser;

import java.io.*;
import java.util.ArrayList;
import java.util.regex.*;
import java.util.HashMap;
import biomodel.math.odes.*;
import biomodel.math.iEquation;
import biomodel.math.ODE;

/**
 * Tre:
 * 1. Equazioni con parte sinitra derivata
 * 2. Equazioni senza parte sinistra derivata
 * 3. Equazioni di assegnazione
 * 4.
 */

public class Parser {
    private static final String START_EQUATION   = "\\s+equation";
    private static final String START_ALGORITHM  = "\\s+algorithm";
    private static final String INITIAL_EQUATION = "\\s+initial equation";
    private static final String END_FILE         = "end\\s*\\S+";
    private static final String EQ_RHS_RE        = "([^0-9]{1,}\\w*[(+*)-]{1,}){1,}";
    private static final String EQ_LHS_RE        = "der\\(\\w+\\)";
    public File workingDir;

    public Parser(String in) {
        assert new File(in).isDirectory(); // Controllo che l'input sia una directory.
        this.workingDir  = new File(in);
    }

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

    private ArrayList<iEquation> parseFileInitialEquation(String file) {
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

    public HashMap<String, ArrayList<ODE>> parseEquations() throws InterruptedException {
        File[] classElmtFiles = this.workingDir.listFiles((dir, s) -> s.matches("Class\\_elmt\\_\\w+\\.mo"));
        HashMap<String, ArrayList<ODE>> eqns = new HashMap<>();
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

    public ArrayList<ODE> parseFileEquations(String inFile) {
        ArrayList<ODE> eqns = new ArrayList<>();
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
                    ODE ode = new ODE(lhs, rhs);
                    eqns.add(ode);
                }
                line = buff.readLine();
            }
        } catch (IOException fnfe) {
            fnfe.printStackTrace();
        }
        return eqns;
    }



    public static void main(String[] args) {
        String in  = "/home/yorunoomo/Scrivania/Tirocinio/S2MBIOMDx8016/";
        Parser p = new Parser(in);
        try {
            HashMap<String, ArrayList<iEquation>> iEqns = p.parseInitialEquation();
            HashMap<String, ArrayList<ODE>> eqns = p.parseEquations();
            for (String fileName : eqns.keySet()) {
                ArrayList<ODE> eqs = eqns.get(fileName);
                ArrayList<iEquation> ieqs = iEqns.get(fileName);
                ODESystem ode = new ODESystem(ieqs, eqs);
                ode.buildMPGOS_PerThread_String();
                System.out.println(ode.getMPGOS_PerThread_OdeFunction());
            }
        } catch (InterruptedException ie) {
            ie.printStackTrace();
        }
    }

}
