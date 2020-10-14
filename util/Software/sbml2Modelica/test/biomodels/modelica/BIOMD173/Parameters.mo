within BIOMD173;
class Parameters

    Real elmt_SB_add(unit = "m-3.0.") "SB conc after addition";
    Real elmt_kon_SB(unit = "m3.0.mol-1.0.s-1.0") "kon_SB (on-rate of the SB/receptor interaction)";
    Real elmt_koff_SB(unit = "s-1.0") "koff_SB (off-rate of the SB/receptor interaction)";
    Real elmt_K_dissSB(unit = "m-3.0.") "Kdiss SB (dissociation constant of the SB/receptor interaction)";
    Real elmt_t_SB(unit = "") "time of SB addition";
    Real elmt_SB_0(unit = "m-3.0.") "SB conc at start";
    Real elmt_CIF(unit = "") "CIF (complex import factor)";
    Real elmt_kex(unit = "m3.0.s-1.0") "kex (export rate for monomeric Smads)";
    Real elmt_kin_CIF(unit = "m3.0.s-1.0") "kin*CIF (Complex import rate)";
    Real elmt_koff(unit = "s-1.0") "koff (Smad complex off-rate)";
    Real elmt_ntoN(unit = "") "quantity to number factor";
    Real elmt_kphos(unit = "m3.0.mol-1.0.s-1.0") "kphos (phosphorylation rate)";
    Real elmt_kin(unit = "m3.0.s-1.0") "kin (import rate for monomeric Smads)";
    Real elmt_kdephos(unit = "m3.0.mol-1.0.s-1.0") "kdephos (dephosphorylation rate)";
    Real elmt_K_diss(unit = "m-3.0.") "Kdiss (dissociation constant of Smad complexes)";
    Real elmt_kon(unit = "m3.0.mol-1.0.s-1.0") "kon (Smad complex on-rate)";
    Real elmt_k_TGFb(unit = "m3.0.mol-1.0.s-1.0") "k_TGFb (rate of TGFb binding to receptors)";


    initial equation
        elmt_SB_add = 10000.0;
        elmt_kon_SB = 0.146422317103884;
        elmt_koff_SB = 100.0;
        elmt_t_SB = 2700.0;
        elmt_SB_0 = 0.0;
        elmt_kex = 1.26E-14;
        elmt_kin_CIF = 3.36347821E-14;
        elmt_koff = 0.016;
        elmt_ntoN = 6.0221415E14;
        elmt_kphos = 4.037081673984E-4;
        elmt_kin = 5.93E-15;
        elmt_kdephos = 0.00656639;
        elmt_kon = 0.00183925592901392;
        elmt_k_TGFb = 0.07423555020288;


    equation
        der(elmt_SB_add) = 0;
        der(elmt_kon_SB) = 0;
        der(elmt_koff_SB) = 0;
        elmt_K_dissSB = (elmt_koff_SB / elmt_kon_SB);
        der(elmt_t_SB) = 0;
        der(elmt_SB_0) = 0;
        elmt_CIF = (elmt_kin_CIF / elmt_kin);
        der(elmt_kex) = 0;
        der(elmt_kin_CIF) = 0;
        der(elmt_koff) = 0;
        der(elmt_ntoN) = 0;
        der(elmt_kphos) = 0;
        der(elmt_kin) = 0;
        der(elmt_kdephos) = 0;
        elmt_K_diss = (elmt_koff / elmt_kon);
        der(elmt_kon) = 0;
        der(elmt_k_TGFb) = 0;

end Parameters;
