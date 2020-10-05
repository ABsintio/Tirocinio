package parser;

import java.io.*;
import java.util.ArrayList;
import java.util.regex.*;
import java.util.HashMap;
import biomodel.math.*;
import biomodel.math.odes.*;

public class Parser {
    private static final String START_EQUATION   = "\\s+equation";
    private static final String START_ALGORITHM  = "\\s+algorithm";
    private static final String INITIAL_EQUATION = "\\s+initial equation";
    private static final String END_FILE         = "end\\s*\\S+";
    private static final String ODE_EQUATION     = "der[(]\\w+[)]\\s*=.*[(+*)-]+$";
    private static final String aEQ_EQUATION     = "\\w+\\s*=.*";
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

    @SuppressWarnings("unchecked")
    public ArrayList<aEquation> parseReactions() {
        String reactFile = this.workingDir.getAbsolutePath() + "/Reactions.mo";
        return (ArrayList<aEquation>) Equation.filter(this.parseFileEquations(reactFile), EQType.aEQ);
    }

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
        Parser p = new Parser(in);
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

        ArrayList<aEquation> eqns = p.parseReactions();
        for (aEquation eq: eqns) {
            System.out.println(eq.getEquation());
        }

    }
}
