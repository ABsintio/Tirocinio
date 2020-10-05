package ODEs;

import java.util.HashMap;

public class Ode {
    public HashMap<LeftHandSide, RigthHandSide> ode;     // Rappresenta il sistema di equazioni
    public HashMap<LeftHandSide, RigthHandSide> iEqns;   // Rappresenta le equazioni iniziali
    private String MPGOS_PerThread_OdeFunction =         // Definisce il sistema di equazioni per MPGOS
            "template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(\n" +
            "\tint tid, int NT, \\\n"+
            "\tPrecision*    F, Precision*    X, Precision     T, \\\n" +
            "\tPrecision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi\n" +
            ") {\n" +
            "%s\n}";

    public Ode(HashMap<LeftHandSide, RigthHandSide> iEqns, HashMap<LeftHandSide, RigthHandSide> system) {
        this.ode = system;
        this.iEqns = iEqns;
    }

    public void buildMPGOS_PerThread_String() {
        String forFormatting = "";
        int i = 0;
        for (RigthHandSide r: this.ode.values()) {
            forFormatting = forFormatting.concat(String.format("\tF[%d] = %s\n", i++, r.rhsString));
        }
        this.MPGOS_PerThread_OdeFunction = String.format(this.MPGOS_PerThread_OdeFunction, forFormatting);
    }

    public String getMPGOS_PerThread_OdeFunction() {
        return this.MPGOS_PerThread_OdeFunction;
    }
}
