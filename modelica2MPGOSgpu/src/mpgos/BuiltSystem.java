package mpgos;

import java.util.ArrayList;
import biomodel.bio.*;
import biomodel.math.*;
import biomodel.math.odes.*;
import parser.*;
import java.io.File;

public class BuiltSystem { // Costruisce il sistema di file per essere simulato da GPU tramite MPGOS
    private ArrayList<Reaction> reactions;
    private ArrayList<Reactant> reactants;
    private ArrayList<Parameter> parameters;
    private final String workingDir;
    public BuiltSystem(String in) {
        assert (new File(in)).isDirectory();
        this.workingDir = in;
        this.setAll();
    }
    private void setAll() {
        ParserReaction pR = new ParserReaction(this.workingDir);
        ParserParameter pP = new ParserParameter(this.workingDir);
        this.reactions = pR.buildReactionSystem();
        this.reactants = pR.buildReactantSystem();
        this.parameters = pP.parseParameters();
    }
}
