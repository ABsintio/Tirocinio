package parser;

import biomodel.math.EQType;
import biomodel.math.Equation;
import biomodel.math.aEquation;
import biomodel.math.iEquation;
import biomodel.bio.Reaction;
import biomodel.bio.Reactant;
import java.util.ArrayList;

public class ParserReaction extends ParserEquation {
    private String reactionFileName;

    public ParserReaction(String inDir) {
        super(inDir);
        this.setReactionFileName();
    }

    private void setReactionFileName(){
        reactionFileName = this.workingDir.getAbsolutePath() + "/Reactions.mo";
    }

    @SuppressWarnings("unchecked")
    private ArrayList<aEquation> parseReactions() {
        return (ArrayList<aEquation>) Equation.filter(this.parseFileEquations(this.reactionFileName), EQType.aEQ);
    }

    private ArrayList<iEquation> parseInitialReactions() {
        return this.parseFileInitialEquation(this.reactionFileName);
    }

    public ArrayList<Reaction> buildReactionSystem() {
        ArrayList<aEquation> aEqs = this.parseReactions();
        ArrayList<Reaction> reacts = new ArrayList<>();
        aEqs.forEach(x -> reacts.add(new Reaction(x.getLhs(), x.getRhs())));
        return reacts;
    }

    public ArrayList<Reactant> buildReactantSystem() {
        ArrayList<iEquation> iEqs = this.parseInitialReactions();
        ArrayList<Reactant> reactants = new ArrayList<>();
        iEqs.forEach(x -> reactants.add(new Reactant(x.getLhs(), x.getRhs())));
        return reactants;
    }
}
