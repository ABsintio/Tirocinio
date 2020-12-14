
model BIOMD173 "Schmierer_2008_Smad_Tgfb"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real kin = 5.93e-15;
    parameter Real kex = 1.26e-14;
    parameter Real kphos = 0.0004037081673984;
    parameter Real kdephos = 0.00656639;
    parameter Real kin_CIF = 3.36347821e-14;
    parameter Real kon = 0.00183925592901392;
    parameter Real koff = 0.016;
    parameter Real kon_SB = 0.146422317103884;
    parameter Real koff_SB = 100.0;
    parameter Real k_TGFb = 0.07423555020288;
    parameter Real ntoN = 602214150000000.0;
    parameter Real SB_0 = 0.0;
    parameter Real SB_add = 10000.0;
    parameter Real t_SB = 2700.0;

    Real CIF(start=5.67197);
    Real K_diss(start=8.69917);
    Real K_dissSB(start=682.956);

    Real PPase;
    Real S2_n;
    Real pS2_n;
    Real G_n;
    Real pG_n;
    Real S22_n;
    Real S24_n;
    Real S4_n;
    Real G2_n;
    Real G4_n;
    Real GG_n;
    Real S22_c;
    Real S24_c;
    Real S4_c;
    Real S2_c;
    Real pS2_c;
    Real G_c;
    Real pG_c;
    Real G2_c;
    Real G4_c;
    Real GG_c;
    Real TGFb_c;
    Real R_act;
    Real R;
    Real R_inact;
    Real SB;

initial equation
    PPase = 1.0;
    S2_n = 28.514773357617;
    pS2_n = 0.0;
    G_n = 28.514773357617;
    pG_n = 0.0;
    S22_n = 0.0;
    S24_n = 0.0;
    S4_n = 50.78093897;
    G2_n = 0.0;
    G4_n = 0.0;
    GG_n = 0.0;
    S22_c = 0.0;
    S24_c = 0.0;
    S4_c = 50.78103407;
    S2_c = 60.5899176013587;
    pS2_c = 0.0;
    G_c = 60.5899176013587;
    pG_c = 0.0;
    G2_c = 0.0;
    G4_c = 0.0;
    GG_c = 0.0;
    TGFb_c = 0.0659999824780232;
    R_act = 0.0;
    R = 1.0;
    R_inact = 0.0;
    SB = 0.0;

equation
    CIF = kin_CIF / kin;
    K_diss = koff / kon;
    K_dissSB = koff_SB / kon_SB;
    SB = piecewise(SB_add, gt(time, t_SB), SB_0);
    der(PPase) = 0.0;
    der(S2_n) = (kin * S2_c - kex * S2_n) + (1.0 * kdephos * pS2_n * PPase) ;
    der(pS2_n) = (kin * pS2_c - kex * pS2_n) - (1.0 * (kon * pS2_n * S4_n - koff * S24_n)) - (2.0 * 1.0 * (kon * pS2_n * pS2_n - koff * S22_n)) - (1.0 * kdephos * pS2_n * PPase) - (1.0 * (kon * pS2_n * pG_n - koff * G2_n));
    der(G_n) = (1.0 * kdephos * pG_n * PPase) + (kin * G_c - kex * G_n) ;
    der(pG_n) = (kin * pG_c - kex * pG_n) - (1.0 * kdephos * pG_n * PPase) - (2.0 * 1.0 * (kon * pG_n * pG_n - koff * GG_n)) - (1.0 * (kon * pS2_n * pG_n - koff * G2_n)) - (1.0 * (kon * pG_n * S4_n - koff * G4_n));
    der(S22_n) = (kin_CIF * S22_c) + (1.0 * (kon * pS2_n * pS2_n - koff * S22_n)) ;
    der(S24_n) = (1.0 * (kon * pS2_n * S4_n - koff * S24_n)) + (kin_CIF * S24_c) ;
    der(S4_n) = (kin * S4_c - kin * S4_n) - (1.0 * (kon * pS2_n * S4_n - koff * S24_n)) - (1.0 * (kon * pG_n * S4_n - koff * G4_n));
    der(G2_n) = (1.0 * (kon * pS2_n * pG_n - koff * G2_n)) + (kin_CIF * G2_c) ;
    der(G4_n) = (1.0 * (kon * pG_n * S4_n - koff * G4_n)) + (kin_CIF * G4_c) ;
    der(GG_n) = (1.0 * (kon * pG_n * pG_n - koff * GG_n)) + (kin_CIF * GG_c) ;
    der(S22_c) = (1.0 * (kon * pS2_c * pS2_c - koff * S22_c)) - (kin_CIF * S22_c);
    der(S24_c) = (1.0 * (kon * pS2_c * S4_c - koff * S24_c)) - (kin_CIF * S24_c);
    der(S4_c) =  - (kin * S4_c - kin * S4_n) - (1.0 * (kon * pS2_c * S4_c - koff * S24_c)) - (1.0 * (kon * pG_c * S4_c - koff * G4_c));
    der(S2_c) =  - (kin * S2_c - kex * S2_n) - (1.0 * kphos * R_act * S2_c);
    der(pS2_c) = (1.0 * kphos * R_act * S2_c) - (kin * pS2_c - kex * pS2_n) - (1.0 * (kon * pS2_c * S4_c - koff * S24_c)) - (2.0 * 1.0 * (kon * pS2_c * pS2_c - koff * S22_c)) - (1.0 * (kon * pS2_c * pG_c - koff * G2_c));
    der(G_c) =  - (1.0 * kphos * G_c * R_act) - (kin * G_c - kex * G_n);
    der(pG_c) = (1.0 * kphos * G_c * R_act) - (kin * pG_c - kex * pG_n) - (2.0 * 1.0 * (kon * pG_c * pG_c - koff * GG_c)) - (1.0 * (kon * pS2_c * pG_c - koff * G2_c)) - (1.0 * (kon * pG_c * S4_c - koff * G4_c));
    der(G2_c) = (1.0 * (kon * pS2_c * pG_c - koff * G2_c)) - (kin_CIF * G2_c);
    der(G4_c) = (1.0 * (kon * pG_c * S4_c - koff * G4_c)) - (kin_CIF * G4_c);
    der(GG_c) = (1.0 * (kon * pG_c * pG_c - koff * GG_c)) - (kin_CIF * GG_c);
    der(TGFb_c) = 0.0;
    der(R_act) = (1.0 * kphos * R_act * S2_c) + (1.0 * k_TGFb * R * TGFb_c) + (1.0 * kphos * G_c * R_act) - (1.0 * kphos * R_act * S2_c) - (1.0 * (kon_SB * R_act * SB - koff_SB * R_inact)) - (1.0 * kphos * G_c * R_act);
    der(R) =  - (1.0 * k_TGFb * R * TGFb_c);
    der(R_inact) = (1.0 * (kon_SB * R_act * SB - koff_SB * R_inact)) ;




end BIOMD173;
