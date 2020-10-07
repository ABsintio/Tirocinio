package biomodel.math;

import biomodel.math.odes.LeftHandSide;
import biomodel.math.odes.RigthHandSide;

public class iEquation extends Equation {
    private float rhsInt;
    public iEquation(LeftHandSide l, RigthHandSide r){
        super(l, r);
    }
    @Override
    public boolean isiEquation(){ return true; }
    public void initialString2Int() {
        try {
            rhsInt = Float.parseFloat(this.getRhs().getRhsString().strip());
        } catch (NumberFormatException n) {
            n.printStackTrace();
        }
    }

    public float getRhsInt() {
        return rhsInt;
    }
}
