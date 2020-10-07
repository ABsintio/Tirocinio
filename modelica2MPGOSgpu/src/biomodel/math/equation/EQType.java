package biomodel.math.equation;

public enum EQType {
    ODE("OrdinaryDifferentialEquation"),
    aEQ("AssociationEquation"),
    iEQ("InitialEquation");
    EQType(String name){}
    public String getName(){ return this.name(); }
}