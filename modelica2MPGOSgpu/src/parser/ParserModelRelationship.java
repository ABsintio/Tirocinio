package parser;

import java.util.regex.Pattern;
import java.io.File;
import java.io.FileReader;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import util.XMLModelName;

public class ParserModelRelationship {
    private final String            reactionFile   = "Reactions";
    private final String            parameterFile  = "Parameters";
    private final ArrayList<String> classElmtFiles = new ArrayList<>();
    private final File workingDir;
    private String modelName;
    public ParserModelRelationship(String inDir, String SBMLFile) {
        assert (new File(inDir)).isDirectory();
        this.workingDir = new File(inDir);
        this.setAttributes();
        try {
            this.modelName = XMLModelName.getModelName(SBMLFile);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    private void setAttributes() {
        File[] files = this.workingDir.listFiles((dir, s) -> s.matches("Class_elmt_\\w+\\.mo"));
        assert files != null;
        for (File f: files) {
            this.classElmtFiles.add(f.getName());
        }
    }
    private HashMap<>
}
