
model BIOMD081 "Suh2004_KCNQ_Regulation"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real KMgGTPase = 10.0;
    parameter Real Koxom = 8.0;
    parameter Real nHill = 1.8;
    parameter Real NA_micro = 6.022e+17;
    parameter Real kPIP5Kinase_PIP5kinase = 0.06;
    parameter Real kIP3ase_IP3Phosphatase = 0.3;
    parameter Real kPIP2off_PIP2binding = 0.25;
    parameter Real kPIP2on_PIP2binding = 0.00025;
    parameter Real kMg2onGTPgS_MgonGGTPgS = 0.002;
    parameter Real kGGTPase_GGTPase = 1.8;
    parameter Real kGTPoff_GTPon = 0.08;
    parameter Real kGTPon_GTPon = 0.45;
    parameter Real kGTPgSoff_GTPgSon = 0.005;
    parameter Real kGTPgSon_GTPgSon = 0.006;
    parameter Real kGDPbSon_GDPbSon = 0.28;
    parameter Real kGGDPbSoff_GDPbSon = 0.1;
    parameter Real kMg2onGTP_MgGTPon = 0.003;
    parameter Real TonicAct_GDPdissoc = 0.002;
    parameter Real kGDPoff_GDPdissoc = 0.5;
    parameter Real kGDPon_GDPdissoc = 0.003;
    parameter Real kPIP2Pase_PIP2_5Pase = 0.005;
    parameter Real PLCspont_PLC = 0.00075;
    parameter Real kPLC_PLC = 4.8;
    parameter Real kAlF4off_AlF4on = 0.005;
    parameter Real kAlF4on_AlF4on = 7e-06;
    parameter Real kPI4Kinase_PI4Kinase = 0.0001;
    parameter Real kMgonAlF4_MgonGDPAlF4 = 0.002;

    Real MgSat20(start=0.990566037735849);
    Real ATPSat300(start=0.909104681108923);
    Real MgSat10(start=0.996208530805687);
    Real OxoSat(start=1.24999843750195e-06);
    Real Gactive(start=0.1);
    Real ATPSat1000(start=0.750031246094238);
    Real I_KCNQ(start=0.956187973177756);
    Real fGactive(start=0.0005);

    Real GTPgS_C;
    Real KCNQsites_M;
    Real PIP2_M;
    Real GGDPbS_M;
    Real Mg2_C;
    Real ATP_C;
    Real oxoM_EX;
    Real GDPbS_C;
    Real GGTPMg_M;
    Real GDP_C;
    Real GTP_C;
    Real GGDPAlF4Mg_M;
    Real ip3_C;
    Real AlF4_C;
    Real G_M;
    Real GGTP_M;
    Real GGDPAlF4_M;
    Real GGTPgS_M;
    Real PI_M;
    Real PIP_M;
    Real PIP2xKCNQ_M;
    Real GGTPgSMg_M;
    Real GGDP_M;

initial equation
    GTPgS_C = 0.0;
    KCNQsites_M = 6.7;
    PIP2_M = 5000.0;
    GGDPbS_M = 0.0;
    Mg2_C = 2100.0;
    ATP_C = 3000.0;
    oxoM_EX = 0.0;
    GDPbS_C = 0.0;
    GGTPMg_M = 0.1;
    GDP_C = 0.0;
    GTP_C = 95.539074129537;
    GGDPAlF4Mg_M = 0.0;
    ip3_C = 0.48;
    AlF4_C = 0.0;
    G_M = 0.065;
    GGTP_M = 0.048;
    GGDPAlF4_M = 0.0;
    GGTPgS_M = 0.0;
    PI_M = 200000.0;
    PIP_M = 1150.0;
    PIP2xKCNQ_M = 33.3;
    GGTPgSMg_M = 0.0;
    GGDP_M = 200.0;

equation
    1.0gSat10 = 0.2 + 0.8 * 1 * (1 / (1 + K1.0gGTPase * (1 / 1.0g2_C)));
    I_KCNQ = 1.33 * pow(0.025 * PIP2xKCNQ_1.0, nHill);
    ATPSat300 = 1 * (1 / (1 + 300 * (1 / (0.5 + ATP_C))));
    GTP_C = 100 - 50 * exp(-(0.00833333333333333 * (290 + time)));
    ATPSat1000 = 1 * (1 / (1 + 1000 * (1 / (0.5 + ATP_C))));
    fGactive = (GGTP1.0g_1.0 + GGTPgS1.0g_1.0 + GGDPAlF41.0g_1.0) / 200;
    OxoSat = 1 * (1 / (1 + Koxom * (1 / (1e-5 + oxo1.0_1.0))));
    1.0gSat20 = 1 * (1 / (1 + 20 * (1 / 1.0g2_C)));
    Gactive = GGTP1.0g_1.0 + GGTPgS1.0g_1.0 + GGDPAlF41.0g_1.0;
    der(GTPgS_C) =  - (0.0009967 * Function_for_GTPgSon(GGTPgS_1.0, GTPgS_C, G_1.0, 1.0, kGTPgSoff_GTPgSon, kGTPgSon_GTPgSon));
    der(KCNQsites_1.0) =  - (1.0 * Function_for_PIP2binding(KCNQsites_1.0, PIP2_1.0, PIP2xKCNQ_1.0, kPIP2off_PIP2binding, kPIP2on_PIP2binding));
    der(PIP2_1.0) = (Function_for_PIP5kinase(ATPSat300, 1.0gSat20, PIP_1.0, kPIP5Kinase_PIP5kinase)) - (1.0 * Function_for_PIP2binding(KCNQsites_1.0, PIP2_1.0, PIP2xKCNQ_1.0, kPIP2off_PIP2binding, kPIP2on_PIP2binding)) - (1.0 * Function_for_PIP2_5Pase(1.0gSat20, PIP2_1.0, kPIP2Pase_PIP2_5Pase)) - (Function_for_PLC(1.0, PIP2_1.0, PLCspont_PLC, fGactive, kPLC_PLC));
    der(GGDPbS_1.0) = (Function_for_GDPbSon(GDPbS_C, GGDPbS_1.0, G_1.0, 1.0, OxoSat, kGDPbSon_GDPbSon, kGGDPbSoff_GDPbSon)) ;
    der(1.0g2_C) = 0.0;
    der(ATP_C) =  - (0.0009967 * Function_for_PIP5kinase(ATPSat300, 1.0gSat20, PIP_1.0, kPIP5Kinase_PIP5kinase)) - (0.0009967 * Function_for_PI4Kinase(ATPSat1000, 1.0, 1.0gSat20, PI_1.0, kPI4Kinase_PI4Kinase));
    der(oxo1.0_1.0) = 0.0;
    der(GDPbS_C) =  - (0.0009967 * Function_for_GDPbSon(GDPbS_C, GGDPbS_1.0, G_1.0, 1.0, OxoSat, kGDPbSon_GDPbSon, kGGDPbSoff_GDPbSon));
    der(GGTP1.0g_1.0) = (Function_for_1.0gGTPon(GGTP_1.0, 1.0, 1.0g2_C, k1.0g2onGTP_1.0gGTPon)) - (1.0 * Function_for_GGTPase(GGTP1.0g_1.0, 1.0gSat10, kGGTPase_GGTPase));
    der(GDP_C) = (0.0009967 * Function_for_GDPdissoc(GDP_C, GGDP_1.0, G_1.0, 1.0, OxoSat, TonicAct_GDPdissoc, kGDPoff_GDPdissoc, kGDPon_GDPdissoc)) ;
    der(GGDPAlF41.0g_1.0) = (Function_for_1.0gonGDPAIF4(GGDPAlF4_1.0, 1.0, 1.0g2_C, k1.0gonAlF4_1.0gonGDPAlF4)) ;
    der(ip3_C) = (0.0009967 * Function_for_PLC(1.0, PIP2_1.0, PLCspont_PLC, fGactive, kPLC_PLC)) - (1.666111296e-18 * 1.0 * Function_for_IP3Phosphatase(NA_micro, ip3_C, kIP3ase_IP3Phosphatase));
    der(AlF4_C) =  - (0.0009967 * Function_for_AIF4on(AlF4_C, GGDPAlF4_1.0, GGDP_1.0, 1.0, kAlF4off_AlF4on, kAlF4on_AlF4on));
    der(G_1.0) = (Function_for_GDPdissoc(GDP_C, GGDP_1.0, G_1.0, 1.0, OxoSat, TonicAct_GDPdissoc, kGDPoff_GDPdissoc, kGDPon_GDPdissoc)) - (Function_for_GTPon(GGTP_1.0, GTP_C, G_1.0, 1.0, kGTPoff_GTPon, kGTPon_GTPon)) - (Function_for_GTPgSon(GGTPgS_1.0, GTPgS_C, G_1.0, 1.0, kGTPgSoff_GTPgSon, kGTPgSon_GTPgSon)) - (Function_for_GDPbSon(GDPbS_C, GGDPbS_1.0, G_1.0, 1.0, OxoSat, kGDPbSon_GDPbSon, kGGDPbSoff_GDPbSon));
    der(GGTP_1.0) = (Function_for_GTPon(GGTP_1.0, GTP_C, G_1.0, 1.0, kGTPoff_GTPon, kGTPon_GTPon)) - (Function_for_1.0gGTPon(GGTP_1.0, 1.0, 1.0g2_C, k1.0g2onGTP_1.0gGTPon));
    der(GGDPAlF4_1.0) = (Function_for_AIF4on(AlF4_C, GGDPAlF4_1.0, GGDP_1.0, 1.0, kAlF4off_AlF4on, kAlF4on_AlF4on)) - (Function_for_1.0gonGDPAIF4(GGDPAlF4_1.0, 1.0, 1.0g2_C, k1.0gonAlF4_1.0gonGDPAlF4));
    der(GGTPgS_1.0) = (Function_for_GTPgSon(GGTPgS_1.0, GTPgS_C, G_1.0, 1.0, kGTPgSoff_GTPgSon, kGTPgSon_GTPgSon)) - (Function_for_1.0gonGGTPgS(GGTPgS_1.0, 1.0, 1.0g2_C, k1.0g2onGTPgS_1.0gonGGTPgS));
    der(PI_1.0) =  - (Function_for_PI4Kinase(ATPSat1000, 1.0, 1.0gSat20, PI_1.0, kPI4Kinase_PI4Kinase));
    der(PIP_1.0) = (1.0 * Function_for_PIP2_5Pase(1.0gSat20, PIP2_1.0, kPIP2Pase_PIP2_5Pase)) + (Function_for_PI4Kinase(ATPSat1000, 1.0, 1.0gSat20, PI_1.0, kPI4Kinase_PI4Kinase)) - (Function_for_PIP5kinase(ATPSat300, 1.0gSat20, PIP_1.0, kPIP5Kinase_PIP5kinase));
    der(PIP2xKCNQ_1.0) = (1.0 * Function_for_PIP2binding(KCNQsites_1.0, PIP2_1.0, PIP2xKCNQ_1.0, kPIP2off_PIP2binding, kPIP2on_PIP2binding)) ;
    der(GGTPgS1.0g_1.0) = (Function_for_1.0gonGGTPgS(GGTPgS_1.0, 1.0, 1.0g2_C, k1.0g2onGTPgS_1.0gonGGTPgS)) ;
    der(GGDP_1.0) = (1.0 * Function_for_GGTPase(GGTP1.0g_1.0, 1.0gSat10, kGGTPase_GGTPase)) - (Function_for_GDPdissoc(GDP_C, GGDP_1.0, G_1.0, 1.0, OxoSat, TonicAct_GDPdissoc, kGDPoff_GDPdissoc, kGDPon_GDPdissoc)) - (Function_for_AIF4on(AlF4_C, GGDPAlF4_1.0, GGDP_1.0, 1.0, kAlF4off_AlF4on, kAlF4on_AlF4on));

    when time >= 3 then
        reinit(oxoM_EX,10);
    end when;
    when time >= 8 then
        reinit(oxoM_EX,0);
    end when;

end BIOMD081;
