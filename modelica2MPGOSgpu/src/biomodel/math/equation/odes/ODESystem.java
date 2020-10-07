package biomodel.math.equation.odes;

import biomodel.math.equation.ODE;
import biomodel.math.equation.iEquation;
import java.util.ArrayList;

public class ODESystem {
    public ArrayList<ODE> ode;           // Rappresenta il sistema di equazioni
    public ArrayList<iEquation> iEqns;   // Rappresenta le equazioni iniziali
    private String MPGOS_PerThread_OdeFunction =         // Definisce il sistema di equazioni per MPGOS
            "template<class Precision> __forceinline__ __device__ void PerThread_OdeFunction(\n" +
            "\tint tid, int NT, \\\n"+
            "\tPrecision*    F, Precision*    X, Precision     T, \\\n" +
            "\tPrecision* cPAR, Precision* sPAR, int*      sPARi, Precision* ACC, int* ACCi\n" +
            ") {\n" +
            "%s\n}";

    public ODESystem(ArrayList<iEquation> iEqns, ArrayList<ODE> system) {
        this.ode = system;
        this.iEqns = iEqns;
    }

    public void buildMPGOS_PerThread_String() {
        String forFormatting = "";
        int i = 0;
        for (ODE ode: this.ode) {
            forFormatting = forFormatting.concat(String.format("\tF[%d] = %s;\n", i++, ode.getRhs().getRhsString()));
        }
        this.MPGOS_PerThread_OdeFunction = String.format(this.MPGOS_PerThread_OdeFunction, forFormatting);
    }

    public String getMPGOS_PerThread_OdeFunction() {
        return this.MPGOS_PerThread_OdeFunction;
    }
}
