package biomodel.math;

import biomodel.math.odes.LeftHandSide;
import biomodel.math.odes.RigthHandSide;

public class aEquation extends Equation {
    public aEquation(LeftHandSide l, RigthHandSide r){
        super(l, r);
    }
}
