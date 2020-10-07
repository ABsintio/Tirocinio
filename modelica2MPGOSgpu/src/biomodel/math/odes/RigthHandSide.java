package biomodel.math.odes;

public class RigthHandSide {
    private final String rhsString;
    public RigthHandSide(String rhsString) {
        this.rhsString = rhsString;
    }
    public String getRhsString() {
        return rhsString;
    }
}
