package biomodel.bio;

import biomodel.math.odes.RigthHandSide;
import biomodel.math.odes.LeftHandSide;
import biomodel.math.aEquation;

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
