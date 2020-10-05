package biomodel.math;

import biomodel.math.odes.LeftHandSide;
import biomodel.math.odes.RigthHandSide;

public abstract class Equation {
    LeftHandSide lhs = null;
    RigthHandSide rhs = null;
    public Equation(LeftHandSide l, RigthHandSide r) {
        lhs = l;
        rhs = r;
    }
    public String getEquation() {
        return String.format("%s = %s", lhs.lhsString, rhs.rhsString);
    };
    public LeftHandSide getLhs() { return lhs; }
    public RigthHandSide getRhs() { return rhs; }
}
