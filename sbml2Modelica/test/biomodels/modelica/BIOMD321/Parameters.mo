within BIOMD321;
class Parameters

    Real elmt_CL_OMD(unit = "") "CL_3_OMD";
    Real elmt_rat_body_mass(unit = "") "";
    Real elmt_CL_dopa(unit = "m3.0.s-1.0") "";
    Real elmt_CL_dopa0(unit = "m3.0.s-1.0") "";
    Real elmt_f_COMT(unit = "") "";
    Real elmt_CL_COMT(unit = "m3.0.s-1.0") "";
    Real elmt_f_rest(unit = "") "";
    Real elmt_ka_b(unit = "s-1.0") "";
    Real elmt_f_AADC(unit = "") "";
    Real elmt_CL_H(unit = "m3.0.s-1.0") "";
    Real elmt_L_Dopa_per_kg_rat(unit = "") "";
    Real elmt_CL_rest(unit = "m3.0.s-1.0") "";
    Real elmt_CL_AADC(unit = "m3.0.s-1.0") "";
    Real elmt_F_H(unit = "") "";
    Real elmt_f_H(unit = "") "";
    Real elmt_F_G(unit = "") "";
    Real elmt_F_b(unit = "") "";
    Real elmt_Q(unit = "") "";


    initial equation
        elmt_CL_OMD = 0.012;
        elmt_rat_body_mass = 0.25;
        elmt_CL_dopa0 = 0.823;
        elmt_f_COMT = 0.1;
        elmt_ka_b = 2.11;
        elmt_f_AADC = 0.69;
        elmt_L_Dopa_per_kg_rat = 404.0;
        elmt_f_H = 0.13;
        elmt_F_G = 0.24;
        elmt_Q = 0.828;


    equation
        der(elmt_CL_OMD) = 0;
        der(elmt_rat_body_mass) = 0;
        elmt_CL_dopa = (elmt_CL_AADC + elmt_CL_rest + elmt_CL_COMT);
        der(elmt_CL_dopa0) = 0;
        der(elmt_f_COMT) = 0;
        elmt_CL_COMT = (elmt_CL_dopa0 * elmt_f_COMT);
        elmt_f_rest = (1.0 - (elmt_f_AADC + elmt_f_COMT));
        der(elmt_ka_b) = 0;
        der(elmt_f_AADC) = 0;
        elmt_CL_H = (elmt_f_H * elmt_CL_dopa);
        der(elmt_L_Dopa_per_kg_rat) = 0;
        elmt_CL_rest = (elmt_CL_dopa0 * elmt_f_rest);
        elmt_CL_AADC = (elmt_CL_dopa0 * elmt_f_AADC);
        elmt_F_H = (1.0 - (elmt_CL_H / elmt_Q));
        der(elmt_f_H) = 0;
        der(elmt_F_G) = 0;
        elmt_F_b = (elmt_F_H * elmt_F_G);
        der(elmt_Q) = 0;

end Parameters;
