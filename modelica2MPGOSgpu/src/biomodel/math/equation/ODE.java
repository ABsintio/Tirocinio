package biomodel.math.equation;

import biomodel.math.equation.odes.LeftHandSide;
import biomodel.math.equation.odes.RigthHandSide;

public class ODE extends Equation {
    public ODE(LeftHandSide l, RigthHandSide r){
        super(l, r);
    }
    @Override
    public boolean isODE(){ return true; }
    @Override
    public String toString() {
        return "ODE(lhs=" + this.lhs.getLhsString() + ", " + 
                   "rhs=" + this.rhs.getRhsString() + ")";
    }
}
