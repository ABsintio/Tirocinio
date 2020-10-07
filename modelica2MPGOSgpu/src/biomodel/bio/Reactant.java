package biomodel.bio;

import biomodel.math.equation.iEquation;
import biomodel.math.equation.odes.RigthHandSide;
import biomodel.math.equation.odes.LeftHandSide;

public class Reactant extends iEquation {
    public Reactant(LeftHandSide l, RigthHandSide r) {
        super(l, r);
        this.initialString2Int();
    }

    @Override
    public String toString() {
        return "Reactant{" +
                "name=" + this.getLhs().getLhsString() +
                ", value=" + this.getRhsInt() +
                '}';
    }
}
