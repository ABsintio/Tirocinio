package biomodel.math;

import biomodel.math.odes.LeftHandSide;
import biomodel.math.odes.RigthHandSide;

public class iEquation extends Equation {
    public iEquation(LeftHandSide l, RigthHandSide r){
        super(l, r);
    }
    @Override
    public boolean isiEquation(){ return true; }
}
