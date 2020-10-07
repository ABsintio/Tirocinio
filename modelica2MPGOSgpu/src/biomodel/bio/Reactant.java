package biomodel.bio;

import biomodel.math.iEquation;
import biomodel.math.odes.RigthHandSide;
import biomodel.math.odes.LeftHandSide;

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
