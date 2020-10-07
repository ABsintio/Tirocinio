package biomodel.math;

import biomodel.math.odes.LeftHandSide;
import biomodel.math.odes.RigthHandSide;
import java.util.ArrayList;

public abstract class Equation {
    LeftHandSide lhs = null;
    RigthHandSide rhs = null;
    public Equation(LeftHandSide l, RigthHandSide r) {
        lhs = l;
        rhs = r;
    }
    public String getEquation() {
        return String.format("%s = %s", lhs.getLhsString(), rhs.getRhsString());
    };
    public LeftHandSide getLhs() { return lhs; }
    public RigthHandSide getRhs() { return rhs; }
    public boolean isODE(){ return false; }
    public boolean isaEquation(){ return false; }
    public boolean isiEquation(){ return false; }
    public static ArrayList<? extends Equation> filter(ArrayList<Equation> array, EQType type) {
        switch (type) {
            case ODE:
                return Equation.filterODE(array);
            case aEQ:
                return Equation.filteraEq(array);
            default:
                return array;
        }
    }
    private static ArrayList<ODE> filterODE(ArrayList<Equation> array) {
        ArrayList<ODE> odeList = new ArrayList<>();
        for (Equation eq: array) {
            if (eq.isODE()) odeList.add((ODE) eq);
        }
        return odeList;
    }
    private static ArrayList<aEquation> filteraEq(ArrayList<Equation> array) {
        ArrayList<aEquation> aEqList = new ArrayList<>();
        for (Equation eq: array) {
            if (eq.isaEquation()) aEqList.add((aEquation) eq);
        }
        return aEqList;
    }
}
