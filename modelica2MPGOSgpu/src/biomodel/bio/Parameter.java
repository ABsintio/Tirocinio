package biomodel.bio;

import biomodel.math.equation.iEquation;
import biomodel.math.equation.odes.LeftHandSide;
import biomodel.math.equation.odes.RigthHandSide;

// Rappresentano gli accessori
public class Parameter extends iEquation {
    public Parameter(LeftHandSide l, RigthHandSide r){
        super(l, r);
        this.initialString2Int();
    }

    @Override
    public String toString() {
        return "Parameter{" +
                "name=" + this.getLhs().getLhsString() +
                ", value=" + this.getRhsInt() +
                '}';
    }
}
