
model BIOMD522 "Muraro2014 - Vascular patterning in Arabidopsis roots"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;



    parameter Real p_ax = 0.06;
    parameter Real p_ck = 2.0;
    parameter Real d_ax = 1.0;
    parameter Real d_ck = 10.0;
    parameter Real phloem_rate_ax = 1.0;
    parameter Real all_section_rate_ax = 1.0;
    parameter Real phloem_rate_ck = 1.0;
    parameter Real all_section_rate_ck = 1.0;
    parameter Real lambda_AHP6 = 2.0;
    parameter Real lambda_IAA2 = 10.0;
    parameter Real lambda_ARR5 = 20.0;
    parameter Real lambda_PIN1 = 0.0;
    parameter Real lambda_PIN3 = 0.0;
    parameter Real lambda_PIN7 = 1.0;
    parameter Real mu_m_PHB = 1.0;
    parameter Real mu_m_AHP6 = 1.0;
    parameter Real mu_m_IAA2 = 10.0;
    parameter Real mu_m_ARR5 = 10.0;
    parameter Real mu_m_PIN1 = 0.0;
    parameter Real mu_m_PIN3 = 0.0;
    parameter Real mu_m_PIN7 = 1.0;
    parameter Real delta_PHB = 1.0;
    parameter Real delta_AHP6 = 1.0;
    parameter Real delta_IAA2 = 10.0;
    parameter Real delta_ARR5 = 10.0;
    parameter Real delta_PIN1 = 0.0;
    parameter Real delta_PIN3 = 0.0;
    parameter Real delta_PIN7 = 5.0;
    parameter Real delta_CKX3 = 1.0;
    parameter Real mu_p_PHB = 1.0;
    parameter Real mu_p_AHP6 = 1.0;
    parameter Real mu_p_IAA2 = 10.0;
    parameter Real mu_p_ARR5 = 10.0;
    parameter Real mu_p_PIN1 = 0.0;
    parameter Real mu_p_PIN3 = 0.0;
    parameter Real mu_p_PIN7 = 1.0;
    parameter Real mu_p_CKX3 = 1.0;
    parameter Real theta_Ax = 0.25;
    parameter Real theta_Ck = 0.5;
    parameter Real theta_AHP6 = 0.04;
    parameter Real theta_ARR5 = 0.1;
    parameter Real theta_PHB = 0.4;
    parameter Real theta_CKX3 = 0.05;
    parameter Real p_phb = 2.0;
    parameter Real d_phb = 1.0;
    parameter Real p_mirna = 32.5;
    parameter Real d_mirna = 1.0;
    parameter Real d_mirna_mrna = 10.0;
    parameter Real p_ckx3 = 5.0;
    parameter Real d_ckx3 = 1.0;
    parameter Real b_pin3 = 1.0;
    parameter Real b_pin1 = 0.0;
    parameter Real b_pin7 = 0.0;
    parameter Real b_ahp6 = 0.0;
    parameter Real b_arr5 = 0.0;
    parameter Real b_iaa2 = 0.0;
    parameter Real hill_ax = 2.0;
    parameter Real hill_ck = 2.0;
    parameter Real hill_arr5 = 3.0;
    parameter Real hill_ckx3 = 5.0;
    parameter Real hill_ahp6 = 3.0;
    parameter Real hill_phb = 3.0;
    parameter Real compartment = 1.0;

    Real F_AHP6(start=0.0);
    Real F_CK(start=0.0);
    Real F_IAA2(start=0.0);
    Real F_ARR5(start=0.0);
    Real F_PIN1(start=0.0);
    Real F_PIN7(start=0.0);
    Real F_PIN3(start=0.0);

    Real Auxin;
    Real Cytokinin;
    Real AHP6m;
    Real AHP6p;
    Real IAA2m;
    Real IAA2p;
    Real ARR5m;
    Real ARR5p;
    Real PHBm;
    Real PHBp;
    Real CKX3m;
    Real CKX3p;
    Real PIN3m;
    Real PIN1m;
    Real PIN7m;
    Real miRNA;

initial equation
    Auxin = 0.0;
    Cytokinin = 0.0;
    AHP6m = 0.0;
    AHP6p = 0.0;
    IAA2m = 0.0;
    IAA2p = 0.0;
    ARR5m = 0.0;
    ARR5p = 0.0;
    PHBm = 0.0;
    PHBp = 0.0;
    CKX3m = 0.0;
    CKX3p = 0.0;
    PIN3m = 0.0;
    PIN1m = 0.0;
    PIN7m = 0.0;
    miRNA = 0.0;

equation
    F_AHP6 = (b_ahp6 + pow(Auxin / theta_Ax, hill_ax)) / (1 + pow(Auxin / theta_Ax, hill_ax) + pow(PHBp / theta_PHB, hill_phb));
    F_ARR5 = (b_arr5 + pow(Cytokinin / theta_Ck, hill_ck)) / (1 + pow(Cytokinin / theta_Ck, hill_ck) + pow(AHP6p / theta_AHP6, hill_ahp6));
    F_CK = 1 / (1 + pow(CKX3p / theta_CKX3, hill_ckx3));
    F_IAA2 = (b_iaa2 + pow(Auxin / theta_Ax, hill_ax)) / (1 + pow(Auxin / theta_Ax, hill_ax));
    F_PIN1 = (b_pin1 + pow(ARR5p / theta_ARR5, hill_arr5)) / (1 + pow(ARR5p / theta_ARR5, hill_arr5));
    F_PIN3 = b_pin3;
    F_PIN7 = (b_pin7 + pow(ARR5p / theta_ARR5, hill_arr5)) / (1 + pow(ARR5p / theta_ARR5, hill_arr5));
    der(Auxin) = phloem_rate_ax * p_ax - d_ax * Auxin;
    der(Cytokinin) = phloem_rate_ck * p_ck * F_CK - d_ck * Cytokinin;
    der(miRNA) = 0;
    der(PHBm) = p_phb - d_phb * PHBm - d_mirna_mrna * PHBm * miRNA;
    der(AHP6m) = lambda_AHP6 * F_AHP6 - mu_m_AHP6 * AHP6m;
    der(IAA2m) = lambda_IAA2 * F_IAA2 - mu_m_IAA2 * IAA2m;
    der(ARR5m) = lambda_ARR5 * F_ARR5 - mu_m_ARR5 * ARR5m;
    der(PIN1m) = lambda_PIN1 * F_PIN1 - mu_m_PIN1 * PIN1m;
    der(PIN3m) = lambda_PIN3 * F_PIN3 - mu_m_PIN3 * PIN3m;
    der(PIN7m) = lambda_PIN7 * F_PIN7 - mu_m_PIN7 * PIN7m;
    der(AHP6p) = delta_AHP6 * AHP6m - mu_p_AHP6 * AHP6p;
    der(IAA2p) = delta_IAA2 * IAA2m - mu_p_IAA2 * IAA2p;
    der(ARR5p) = delta_ARR5 * ARR5m - mu_p_ARR5 * ARR5p;
    der(PHBp) = delta_PHB * PHBm - mu_p_PHB * PHBp;
    der(CKX3p) = delta_CKX3 * CKX3m - mu_p_CKX3 * CKX3p;
    der(CKX3m) = 0.0;




end BIOMD522;
