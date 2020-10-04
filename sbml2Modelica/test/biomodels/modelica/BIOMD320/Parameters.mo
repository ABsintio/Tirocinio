within BIOMD320;
class Parameters

    input Real elmt_C1_M;

    Real elmt_CL_COMT(unit = "m3.0.s-1.0") "";
    Real elmt_f_rest(unit = "") "";
    Real elmt_ka_B(unit = "") "ka_b";
    Real elmt_fm(unit = "") "";
    Real elmt_f_AADC(unit = "") "";
    Real elmt_Benserazide_per_kg_rat(unit = "kg-1.0.") "";
    Real elmt_CL_H(unit = "m3.0.s-1.0") "";
    Real elmt_ka_M(unit = "") "ka_m";
    Real elmt_L_Dopa_per_kg_rat(unit = "kg-1.0.") "";
    Real elmt_F_H(unit = "") "";
    Real elmt_CL_M(unit = "m3.0.s-1.0") "";
    Real elmt_F_G(unit = "") "";
    Real elmt_Q(unit = "") "";
    Real elmt_F_B(unit = "") "";
    Real elmt_CL_OMD(unit = "m3.0.s-1.0") "CL_3_OMD";
    Real elmt_rat_body_mass(unit = "") "";
    Real elmt_A_bens_tot(unit = "") "";
    Real elmt_CL_dopa(unit = "m3.0.s-1.0") "";
    Real elmt_CL_dopa0(unit = "m3.0.s-1.0") "";
    Real elmt_f_COMT(unit = "") "";
    Real elmt_CL_AADC0(unit = "m3.0.s-1.0") "";
    Real elmt_ka_c(unit = "") "";
    Real elmt_CL_B(unit = "m3.0.s-1.0") "";
    Real elmt_CL_rest(unit = "m3.0.s-1.0") "";
    Real elmt_B_M_frac(unit = "") "Bens_Ro04-5127_fraction_gut";
    Real elmt_CL_dM(unit = "m3.0.s-1.0") "";
    Real elmt_CL_AADC(unit = "m3.0.s-1.0") "";
    Real elmt_CL_dB(unit = "m3.0.s-1.0") "";
    Real elmt_f_H(unit = "") "";
    Real elmt_ki(unit = "") "";
    Real elmt_F_c(unit = "") "";


    initial equation
        elmt_ka_B = 0.94;
        elmt_fm = 0.15;
        elmt_f_AADC = 0.69;
        elmt_Benserazide_per_kg_rat = 78.0;
        elmt_ka_M = 2.47;
        elmt_L_Dopa_per_kg_rat = 404.0;
        elmt_CL_M = 4.29;
        elmt_F_G = 1.0;
        elmt_Q = 0.828;
        elmt_F_B = 0.022;
        elmt_CL_OMD = 0.00895;
        elmt_rat_body_mass = 0.25;
        elmt_A_bens_tot = (elmt_Benserazide_per_kg_rat * elmt_rat_body_mass);
        elmt_CL_dopa0 = 0.823;
        elmt_f_COMT = 0.1;
        elmt_ka_c = 1.29;
        elmt_CL_B = 1.67;
        elmt_B_M_frac = 0.07;
        elmt_CL_dM = 1.06;
        elmt_CL_dB = 0.072;
        elmt_f_H = 0.13;
        elmt_ki = 0.00246;


    equation
        elmt_CL_COMT = (elmt_CL_dopa0 * elmt_f_COMT);
        elmt_f_rest = (1.0 - (elmt_f_AADC + elmt_f_COMT));
        der(elmt_ka_B) = 0;
        der(elmt_fm) = 0;
        der(elmt_f_AADC) = 0;
        der(elmt_Benserazide_per_kg_rat) = 0;
        elmt_CL_H = (elmt_f_H * elmt_CL_dopa);
        der(elmt_ka_M) = 0;
        der(elmt_L_Dopa_per_kg_rat) = 0;
        elmt_F_H = (1.0 - (elmt_CL_H / elmt_Q));
        der(elmt_CL_M) = 0;
        der(elmt_F_G) = 0;
        der(elmt_Q) = 0;
        der(elmt_F_B) = 0;
        der(elmt_CL_OMD) = 0;
        der(elmt_rat_body_mass) = 0;
        der(elmt_A_bens_tot) = 0;
        elmt_CL_dopa = (elmt_CL_AADC + elmt_CL_rest + elmt_CL_COMT);
        der(elmt_CL_dopa0) = 0;
        der(elmt_f_COMT) = 0;
        elmt_CL_AADC0 = (elmt_CL_dopa0 * elmt_f_AADC);
        der(elmt_ka_c) = 0;
        der(elmt_CL_B) = 0;
        elmt_CL_rest = (elmt_CL_dopa0 * elmt_f_rest);
        der(elmt_B_M_frac) = 0;
        der(elmt_CL_dM) = 0;
        elmt_CL_AADC = (elmt_CL_AADC0 / (1.0 + (elmt_C1_M / elmt_ki)));
        der(elmt_CL_dB) = 0;
        der(elmt_f_H) = 0;
        der(elmt_ki) = 0;
        elmt_F_c = (elmt_F_H * elmt_F_G);

end Parameters;
