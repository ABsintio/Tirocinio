model BIOMD069 "Bistable switching and excitable behaviour in the activation of Src at mitosis"

    parameter Real k1 = 1.000;
    parameter Real k2 = 0.800;
    parameter Real k3 = 1.000;
    parameter Real k4 = 10.000;
    parameter Real kPTP = 1.000;
    parameter Real kCbp = 1.000;
    parameter Real p1 = 0.050;
    parameter Real p2 = 0.150;
    parameter Real p3 = 0.035;
    parameter Real src_background = 1.0e-4;
    parameter Real PTP_background = 0.000;
    parameter Real kCSKon = 0.100;
    parameter Real kCSKoff = 0.010;
    parameter Real rho_srca = 1.000;
    parameter Real rho_srco = 0.000;
    parameter Real rho_srcc = 1.000;
    parameter Real Kser = 1.000;
    parameter Real acsk0 = 0.000;

    Real ptp_activity(start=0.000);
    Real src_activity(start=0.000);

    Real srci;
    Real srco;
    Real srca;
    Real srcc;
    Real Cbp_P_CSK;
    Real CSK_cytoplasm;
    Real PTP;
    Real PTP_pY789;
    Real Cbp;
    Real Cbp_P;

initial equation
    srci = 1.0;
    srco = 0.0;
    srca = 0.0;
    srcc = 0.0;
    Cbp_P_CSK = 0.0;
    CSK_cytoplasm = 1.0;
    PTP = 1.0;
    PTP_pY789 = 0.0;
    Cbp = 1.0;
    Cbp_P = 0.0;

equation
    ptp_activity = PTP_background + Kser*PTP_pY789;
    src_activity = rho_srco*srco + rho_srca*srca + src_background + rho_srcc*srcc;
    der(srci) = k4*p1*srcc - (k2*ptp_activity*srci-k1*Cbp_P_CSK*srco);
    der(srco) = (k2*ptp_activity*srci-k1*Cbp_P_CSK*srco) - (k3*src_activity*srco-p1*srca);
    der(srca) = (k3*src_activity*srco-p1*srca) - (k1*Cbp_P_CSK*srca-k2*ptp_activity*srcc);
    der(srcc) = (k1*Cbp_P_CSK*srca-k2*ptp_activity*srcc) - k4*p1*srcc;
    der(Cbp_P_CSK) = (Cbp_P*kCSKon*CSK_cytoplasm-kCSKoff*Cbp_P_CSK);
    der(CSK_cytoplasm) = -((Cbp_P*kCSKon*CSK_cytoplasm-kCSKoff*Cbp_P_CSK));
    der(PTP) = -(((kPTP*src_activity+p3)*PTP-p2*PTP_pY789));
    der(PTP_pY789) = ((kPTP*src_activity+p3)*PTP-p2*PTP_pY789);
    der(Cbp) = -(kCbp*src_activity*Cbp);
    der(Cbp_P) = kCbp*src_activity*Cbp - (Cbp_P*kCSKon*CSK_cytoplasm-kCSKoff*Cbp_P_CSK);
    
end BIOMD069;