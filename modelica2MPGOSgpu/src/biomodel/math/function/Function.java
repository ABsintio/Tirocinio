package biomodel.math.function;

import java.util.ArrayList;
import biomodel.math.equation.iEquation;
import biomodel.math.equation.odes.LeftHandSide;
import biomodel.math.equation.odes.RigthHandSide;

public class Function {
    public final ArrayList<String> inputs;
    public final ArrayList<String> outputs;
    public final ArrayList<iEquation> otherParameters;
    public final LeftHandSide name;
    public final RigthHandSide algortihm;
    public Function(
            ArrayList<String> ins, ArrayList<String> outs,
            LeftHandSide lhs, RigthHandSide rhs, ArrayList<iEquation> other
    ) {
        this.inputs = ins;
        this.outputs = outs;
        this.otherParameters = other;
        this.name = lhs;
        this.algortihm = rhs;
    }

    @Override
    public String toString() {
        String toString = "Function " + this.name.getLhsString() + " (\n";
        for (String s: this.inputs) toString = "\t" + toString.concat(s + ",");
        for (String s: this.outputs) toString = "\n\t" + toString.concat(s + ", ");
        toString = toString.substring(0, toString.length() - 2)
                           .concat("\n){\n\treturn" + this.algortihm.getRhsString() + "\n}");
        return toString;
    }
}
