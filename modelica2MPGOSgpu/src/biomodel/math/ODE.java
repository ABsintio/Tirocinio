package biomodel.math;

import biomodel.math.odes.LeftHandSide;
import biomodel.math.odes.RigthHandSide;

public class ODE extends Equation {
    public ODE(LeftHandSide l, RigthHandSide r){
        super(l, r);
    }
    @Override
    public boolean isODE(){ return true; }
}
