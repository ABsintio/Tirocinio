package biomodel.bio;

import biomodel.math.equation.odes.RigthHandSide;
import biomodel.math.equation.odes.LeftHandSide;
import biomodel.math.equation.aEquation;

public class Reaction extends aEquation {
    public Reaction(LeftHandSide l, RigthHandSide r) {
        super(l, r);
    }

    @Override
    public String toString() {
        return "Reaction{" +
                "lhs=" + this.getLhs().getLhsString() +
                ", rhs=" + this.getRhs().getRhsString() +
                '}';
    }
}
