package parser;

import biomodel.math.EQType;
import biomodel.math.Equation;
import biomodel.math.aEquation;
import biomodel.math.iEquation;
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
    public ArrayList<aEquation> parseReactions() {
        return (ArrayList<aEquation>) Equation.filter(this.parseFileEquations(this.reactionFileName), EQType.aEQ);
    }

    public ArrayList<iEquation> parseInitialReactions() {
        return this.parseFileInitialEquation(this.reactionFileName);
    }
}
