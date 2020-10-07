package parser;

import biomodel.bio.Parameter;
import biomodel.math.odes.LeftHandSide;
import biomodel.math.odes.RigthHandSide;

import java.io.FileReader;
import java.io.File;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.regex.Pattern;

public class ParserParameter {
    private static final String PARAMETER_RE = "\\s+parameter.*";
    private final String reactionsFile;
    public ParserParameter(String in) {
        assert (new File(in)).isDirectory();
        this.reactionsFile = (new File(in)).getAbsolutePath() + "/Reactions.mo";
    }
    public ArrayList<Parameter> parseParameters() {
        ArrayList<Parameter> params = new ArrayList<>();
        try (FileReader stream = new FileReader(this.reactionsFile)){
            BufferedReader buff = new BufferedReader(stream);
            String line = buff.readLine();
            while (line != null) {
                if (Pattern.matches(PARAMETER_RE, line)) {
                    if (line.matches(".*[(]unit \"\"[)].*")) {
                        line = line.replaceAll("[(]unit \"\"[)]", "");
                    }
                    line = line.strip().replace("parameter Real ", "");
                    String[] splitteLine = line.split("=");
                    int lenSecondString = splitteLine[1].length();
                    LeftHandSide lhs = new LeftHandSide(splitteLine[0].strip());
                    RigthHandSide rhs = new RigthHandSide(splitteLine[1].substring(0, lenSecondString - 4).strip());
                    params.add(new Parameter(lhs, rhs));
                }
                line = buff.readLine();
            }
        } catch (IOException io) {
            io.printStackTrace();
        }
        return params;
    }

    public static void main(String[] args) {
        String in  = "/home/yorunoomo/Scrivania/Tirocinio/S2MBIOMDx8016/";
        //String in = "/home/yorunoomo/Scrivania/Tirocinio/sbml2ModelicaTyson/";
        ParserParameter pP = new ParserParameter(in);
        ArrayList<Parameter> params = pP.parseParameters();
        for (Parameter p: params) {
            System.out.println(p);
        }
    }
}
