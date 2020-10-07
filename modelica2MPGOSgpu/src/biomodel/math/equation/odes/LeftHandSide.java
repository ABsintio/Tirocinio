package biomodel.math.equation.odes;

public class LeftHandSide {
    private final String lhsString;
    public LeftHandSide(String lhsString) {
        this.lhsString = lhsString;
    }
    public String getLhsString() {
        return lhsString;
    }
}
