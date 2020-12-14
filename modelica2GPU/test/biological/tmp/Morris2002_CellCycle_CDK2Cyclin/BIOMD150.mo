
model BIOMD150 "Morris2002_CellCycle_CDK2Cyclin"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real kf_Binding = 19000000.0;
    parameter Real kb_Binding = 25.0;
    parameter Real kf_Activation = 0.813;
    parameter Real kb_Activation = 0.557;

    Real basal_fluorescence(start=1.21210648148148);
    Real total_fluorescence(start=0.138886574074074);

    Real CDK2cycA;
    Real CyclinA;
    Real Cdk2;
    Real CDK2cycA_star_;

initial equation
    CDK2cycA = 0.0;
    CyclinA = 4e-07;
    Cdk2 = 1e-07;
    CDK2cycA_star_ = 0.0;

equation
    total_fluorescence = CDK2cycA * 599990 * 1e6 / 43200 + CDK2cycA_star_ * 599990 * 1e6 / 43200 + basal_fluorescence;
    der(CDK2cycA) = (kf_Binding * Cdk2 * CyclinA * 1.0 - kb_Binding * CDK2cycA * 1.0) - (kf_Activation * CDK2cycA * 1.0 - kb_Activation * CDK2cycA_star_ * 1.0);
    der(CyclinA) =  - (kf_Binding * Cdk2 * CyclinA * 1.0 - kb_Binding * CDK2cycA * 1.0);
    der(Cdk2) =  - (kf_Binding * Cdk2 * CyclinA * 1.0 - kb_Binding * CDK2cycA * 1.0);
    der(CDK2cycA_star_) = (kf_Activation * CDK2cycA * 1.0 - kb_Activation * CDK2cycA_star_ * 1.0) ;
    der(basal_fluorescence)=0.0;



end BIOMD150;
