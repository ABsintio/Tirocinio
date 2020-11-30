model BIOMD041 "Creatine kinase in energy metabolic signaling in muscle"

    parameter Real V_1 = 4600.0;
    parameter Real Ka_1 = 800.0;
    parameter Real Kb_1 = 20.0;
    parameter Real Vf_2 = 2658.0;
    parameter Real Kia_2 = 750.0;
    parameter Real Kb_2 = 5200.0;
    parameter Real Vb_2 = 11160.0;
    parameter Real Kic_2 = 204.8;
    parameter Real Kd_2 = 500.0;
    parameter Real Kib_2 = 28800.0;
    parameter Real Kid_2 = 1600.0;
    parameter Real Vf_3 = 6966.0;
    parameter Real Kia_3 = 900.0;
    parameter Real Kb_3 = 15500.0;
    parameter Real Vb_3 = 29250.0;
    parameter Real Kic_3 = 222.4;
    parameter Real Kd_3 = 1670.0;
    parameter Real Kib_3 = 34900.0;
    parameter Real Kid_3 = 4730.0;
    parameter Real v_4 = 4600.0;
    parameter Real k2_5 = 18.4;
    parameter Real k1_6 = 14.6;
    parameter Real k1_7 = 8.16;
    parameter Real k1_8 = 14.6;
    parameter Real k1_9 = 8.16;

    Real ADPi;
    Real ATPi;
    Real Cri;
    Real PCri;
    Real PCr;
    Real ADP;
    Real ATP;
    Real Cr;
    Real Pi;
    Real P;

initial equation
    ADPi = 0.0;
    ATPi = 0.0;
    Cri = 0.0;
    PCri = 0.0;
    PCr = 0.0;
    ADP = 0.0;
    ATP = 9700.0;
    Cr = 26000.0;
    Pi = 32000.0;
    P = 0.0;

equation
    der(ADPi) = (Vf_2*ATPi*Cri/(Kia_2*Kb_2)-Vb_2*ADPi*PCri/(Kic_2*Kd_2))/(1+Cri/Kib_2+PCri/Kid_2+ATPi*(1/Kia_2+Cri/(Kia_2*Kb_2))+ADPi*(1/Kic_2+Cri/(Kic_2*Kib_2)+PCri/(Kid_2*Kic_2*Kd_2/Kid_2))) - V_1*ADPi*Pi/(Ka_1*Kb_1*(1+ADPi/Ka_1+Pi/Kb_1+ADPi*Pi/(Ka_1*Kb_1))) - (k1_7*ADPi-CYT*k1_7*ADP);
    der(ATPi) = -((Vf_2*ATPi*Cri/(Kia_2*Kb_2)-Vb_2*ADPi*PCri/(Kic_2*Kd_2))/(1+Cri/Kib_2+PCri/Kid_2+ATPi*(1/Kia_2+Cri/(Kia_2*Kb_2))+ADPi*(1/Kic_2+Cri/(Kic_2*Kib_2)+PCri/(Kid_2*Kic_2*Kd_2/Kid_2))) - V_1*ADPi*Pi/(Ka_1*Kb_1*(1+ADPi/Ka_1+Pi/Kb_1+ADPi*Pi/(Ka_1*Kb_1)))) - (k1_9*ATPi-CYT*k1_9*ATP);
    der(Cri) = -((Vf_2*ATPi*Cri/(Kia_2*Kb_2)-Vb_2*ADPi*PCri/(Kic_2*Kd_2))/(1+Cri/Kib_2+PCri/Kid_2+ATPi*(1/Kia_2+Cri/(Kia_2*Kb_2))+ADPi*(1/Kic_2+Cri/(Kic_2*Kib_2)+PCri/(Kid_2*Kic_2*Kd_2/Kid_2)))) - (k1_6*Cri-CYT*k1_6*Cr);
    der(PCri) = (Vf_2*ATPi*Cri/(Kia_2*Kb_2)-Vb_2*ADPi*PCri/(Kic_2*Kd_2))/(1+Cri/Kib_2+PCri/Kid_2+ATPi*(1/Kia_2+Cri/(Kia_2*Kb_2))+ADPi*(1/Kic_2+Cri/(Kic_2*Kib_2)+PCri/(Kid_2*Kic_2*Kd_2/Kid_2))) - (k1_8*PCri-CYT*k1_8*PCr);
    der(PCr) = (Vf_3*ATP*Cr/(Kia_3*Kb_3)-Vb_3*ADP*PCr/(Kic_3*Kd_3))/(1+Cr/Kib_3+PCr/Kid_3+ATP*(1/Kia_3+Cr/(Kia_3*Kb_3))+ADP*(1/Kic_3+Cr/(Kic_3*Kib_3)+PCr/(Kid_3*Kic_3*Kd_3/Kid_3))) + (k1_8*PCri-CYT*k1_8*PCr);
    der(ADP) = (Vf_3*ATP*Cr/(Kia_3*Kb_3)-Vb_3*ADP*PCr/(Kic_3*Kd_3))/(1+Cr/Kib_3+PCr/Kid_3+ATP*(1/Kia_3+Cr/(Kia_3*Kb_3))+ADP*(1/Kic_3+Cr/(Kic_3*Kib_3)+PCr/(Kid_3*Kic_3*Kd_3/Kid_3))) + v_4*ATP + (k1_7*ADPi-CYT*k1_7*ADP);
    der(ATP) = k1_9*ATPi-CYT*k1_9*ATP - (Vf_3*ATP*Cr/(Kia_3*Kb_3)-Vb_3*ADP*PCr/(Kic_3*Kd_3))/(1+Cr/Kib_3+PCr/Kid_3+ATP*(1/Kia_3+Cr/(Kia_3*Kb_3))+ADP*(1/Kic_3+Cr/(Kic_3*Kib_3)+PCr/(Kid_3*Kic_3*Kd_3/Kid_3))) - v_4*ATP;
    der(Cr) = k1_6*Cri-CYT*k1_6*Cr - (Vf_3*ATP*Cr/(Kia_3*Kb_3)-Vb_3*ADP*PCr/(Kic_3*Kd_3))/(1+Cr/Kib_3+PCr/Kid_3+ATP*(1/Kia_3+Cr/(Kia_3*Kb_3))+ADP*(1/Kic_3+Cr/(Kic_3*Kib_3)+PCr/(Kid_3*Kic_3*Kd_3/Kid_3)));
    der(Pi) = -(V_1*ADPi*Pi/(Ka_1*Kb_1*(1+ADPi/Ka_1+Pi/Kb_1+ADPi*Pi/(Ka_1*Kb_1)))) - (k2_5*Pi-k2_5*P);
    der(P) = v_4*ATP + (k2_5*Pi-k2_5*P);
    
end BIOMD041;