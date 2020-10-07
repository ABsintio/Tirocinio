package biomodel.math.equation;

import biomodel.math.equation.odes.LeftHandSide;
import biomodel.math.equation.odes.RigthHandSide;

public class aEquation extends Equation {
    public aEquation(LeftHandSide l, RigthHandSide r){
        super(l, r);
    }
    @Override
    public boolean isaEquation(){ return true; }
}
