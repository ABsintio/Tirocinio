package parser;

import java.io.*;
import java.util.regex.*;
import java.util.HashMap;

import ODEs.*;

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

    public HashMap<String, HashMap<LeftHandSide, RigthHandSide>> parseInitialEquation() {
        File[] classElmtFiles = this.workingDir.listFiles((dir, s) -> s.matches("Class\\_elmt\\_\\w+\\.mo"));
        HashMap<String, HashMap<LeftHandSide, RigthHandSide>> iEqns = new HashMap<>();
        assert classElmtFiles != null;
        for (File f: classElmtFiles) {
            iEqns.put(f.getName(), this.parseFileInitialEquation(f.getAbsolutePath()));
        }
        return iEqns;
    }

    private HashMap<LeftHandSide, RigthHandSide> parseFileInitialEquation(String file) {
        HashMap<LeftHandSide, RigthHandSide> iEqns = new HashMap<>();
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
                    iEqns.put(lhs,rhs);
                }
                line = buff.readLine();
            }
        } catch (IOException fnfe) {
            fnfe.printStackTrace();
        }
        return iEqns;
    }

    public HashMap<String, HashMap<LeftHandSide, RigthHandSide>> parseEquations() {
        File[] classElmtFiles = this.workingDir.listFiles((dir, s) -> s.matches("Class\\_elmt\\_\\w+\\.mo"));
        HashMap<String, HashMap<LeftHandSide, RigthHandSide>> eqns = new HashMap<>();
        assert classElmtFiles != null;
        for (File f: classElmtFiles) {
            eqns.put(f.getName(), this.parseFileEquations(f.getAbsolutePath()));
        }
        return eqns;
    }

    public HashMap<LeftHandSide, RigthHandSide> parseFileEquations(String inFile) {
        HashMap<LeftHandSide, RigthHandSide> eqns = new HashMap<>();
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
                    eqns.put(lhs,rhs);
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
        HashMap<String, HashMap<LeftHandSide, RigthHandSide>> iEqns = p.parseInitialEquation();
        HashMap<String, HashMap<LeftHandSide, RigthHandSide>> eqns = p.parseEquations();
        for (String fileName: eqns.keySet()) {
            HashMap<LeftHandSide, RigthHandSide> eqs  = eqns.get(fileName);
            HashMap<LeftHandSide, RigthHandSide> ieqs = iEqns.get(fileName);
            Ode ode = new Ode(ieqs, eqs);
            ode.buildMPGOS_PerThread_String();
            System.out.println(ode.getMPGOS_PerThread_OdeFunction());
        }
    }

}
