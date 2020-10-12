package parser;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.BufferedReader;
import biomodel.math.equation.aEquation;
import java.util.HashMap;
import java.util.ArrayList;
import java.util.regex.Pattern;
import biomodel.math.equation.odes.LeftHandSide;
import biomodel.math.equation.odes.RigthHandSide;

public class ParserAlgorithm {
    private static final String START_ALGORITHM = "\\s+algorithm";
    private static final String END_FILE        = "end\\s*\\S+";
    private final File workingDir;
    public ParserAlgorithm(String inDir) {
        assert (new File(inDir)).isDirectory();
        this.workingDir = new File(inDir);
    }
    public HashMap<String, ArrayList<aEquation>> parseAlgorithm() throws InterruptedException {
        File[] classElmtFiles = this.workingDir.listFiles((dir, s) -> s.matches("Class\\_elmt\\_\\w+\\.mo"));
        HashMap<String, ArrayList<aEquation>> algEq = new HashMap<>();
        assert classElmtFiles != null;
        for (File stream: classElmtFiles) {
            Thread threadPerClassElmtFile = new Thread(new Runnable(){
                @Override
                public void run() {
                    algEq.put(stream.getName(), parseFileAlgorithm(stream.getAbsolutePath()));
                }
            });
            threadPerClassElmtFile.start();
            threadPerClassElmtFile.join();
        }
        return algEq;
    }   
    public ArrayList<aEquation> parseFileAlgorithm(String fileName) {
        ArrayList<aEquation> algEquations = new ArrayList<>();
        try (FileReader stream = new FileReader(new File(fileName))) {
            BufferedReader buf = new BufferedReader(stream);
            String line = buf.readLine();
            boolean start = false, end = false;
            while (line != null && !end) {
                if (Pattern.matches(START_ALGORITHM, line)) start = true;
                else if (Pattern.matches(END_FILE, line)) end = true;
                if (start && !end && !line.contains("algorithm") && !line.equals("")) {
                    String[] splittedEq = line.split(":=");
                    int lenSecondString = splittedEq[1].length();
                    LeftHandSide lhs = new LeftHandSide(splittedEq[0].strip());
                    RigthHandSide rhs = new RigthHandSide(splittedEq[1].substring(0, lenSecondString - 1).strip());
                    algEquations.add(new aEquation(lhs, rhs));
                }
                line = buf.readLine();
            }
        } catch (IOException io) {
            io.printStackTrace();
        }
        return algEquations;
    }
}