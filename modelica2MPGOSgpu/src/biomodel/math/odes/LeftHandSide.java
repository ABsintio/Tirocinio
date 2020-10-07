package biomodel.math.odes;

public class LeftHandSide {
    private final String lhsString;
    public LeftHandSide(String lhsString) {
        this.lhsString = lhsString;
    }
    public String getLhsString() {
        return lhsString;
    }
}
