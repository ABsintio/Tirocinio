package biomodel.bio;

import biomodel.math.iEquation;
import biomodel.math.odes.LeftHandSide;
import biomodel.math.odes.RigthHandSide;

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
