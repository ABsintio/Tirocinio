within BIOMD417;
class Parameters

    Real elmt_k0(unit = "") "";
    Real elmt_Ksp(unit = "") "";
    Real elmt_P(unit = "") "";
    Real elmt_ka(unit = "") "";
    Real elmt_dspspkd(unit = "") "";
    Real elmt_dspksp(unit = "") "";
    Real elmt_h(unit = "") "";
    Real elmt_Kd(unit = "") "";
    Real elmt_s(unit = "") "";
    Real elmt_ku(unit = "") "";
    Real elmt_ks(unit = "") "";


    initial equation
        elmt_k0 = 0.1;
        elmt_Ksp = 0.001;
        elmt_P = 40.0;
        elmt_ka = 40.0;
        elmt_h = 2.0;
        elmt_Kd = 1.0E-5;
        elmt_s = 1000.0;
        elmt_ku = 0.1;
        elmt_ks = 10.0;


    equation
        der(elmt_k0) = 0;
        der(elmt_Ksp) = 0;
        der(elmt_P) = 0;
        der(elmt_ka) = 0;
        elmt_dspspkd = ((elmt_Kd / 2.0) * ((1.0 + ((2.0 * elmt_dspksp) / elmt_Kd)) - Functions.pow((Functions.pow((1.0 + ((2.0 * elmt_dspksp) / elmt_Kd)), 2.0) - ((4.0 * Functions.pow(elmt_dspksp, 2.0)) / Functions.pow(elmt_Kd, 2.0))), 0.5)));
        elmt_dspksp = ((elmt_Ksp / 2.0) * ((1.0 + ((elmt_s + elmt_P) / elmt_Ksp)) - Functions.pow((Functions.pow((1.0 + ((elmt_s + elmt_P) / elmt_Ksp)), 2.0) - ((4.0 * elmt_s * elmt_P) / Functions.pow(elmt_Ksp, 2.0))), 0.5)));
        der(elmt_h) = 0;
        der(elmt_Kd) = 0;
        der(elmt_s) = 0;
        der(elmt_ku) = 0;
        der(elmt_ks) = 0;

end Parameters;
