package mpgos;

import java.util.ArrayList;
import java.util.HashMap;
import biomodel.bio.*;
import biomodel.math.equation.ODE;
import biomodel.math.equation.odes.ODESystem;
import biomodel.math.function.Function;
import parser.*;
import java.io.File;

public class BuiltSystem { // Costruisce il sistema di file per essere simulato da GPU tramite MPGOS
    private ArrayList<Reaction> reactions;
    private ArrayList<Reactant> reactants;
    private HashMap<String, Function> funcs;
    private ODESystem odeSystem;

    // Variabili definite da MPGOS
    // TODO:Inserire le variabili cPAR, ACC
    private ArrayList<Parameter> sPAR;
    private ArrayList<ODE> X;


    private final String workingDir;
    public BuiltSystem(String in) {
        assert (new File(in)).isDirectory();
        this.workingDir = in;
        this.setAll();
    }
    private void setAll() {
        ParserReaction pR = new ParserReaction(this.workingDir);
        ParserParameter pP = new ParserParameter(this.workingDir);
        ParserClassElmt pE  = new ParserClassElmt(this.workingDir);
        this.reactions = pR.buildReactionSystem();
        this.reactants = pR.buildReactantSystem();
        this.sPAR = pP.parseParameters();
        this.odeSystem = pE.buildODESystem();
        this.X = this.odeSystem.getOde();
    }
    private void buildFunctions(){
        // TODO:Creare tutte le funzioni presenti in un qualsiasi file Functions.mo
    }
}
