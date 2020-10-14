within BIOMD383;
class Parameters

    input Real elmt_O2;
    input Real elmt_CO2;

    Real elmt_Nt(unit = "") "Nt";
    Real elmt_jp(unit = "") "jp";
    Real elmt_Ko(unit = "") "Ko";
    Real elmt_I(unit = "") "I";
    Real elmt_j(unit = "") "j";
    Real elmt_phi(unit = "") "phi";
    Real elmt_Rp(unit = "") "Rp";
    Real elmt_E(unit = "") "E";
    Real elmt_f(unit = "") "f";
    Real elmt_kc(unit = "") "kc";
    Real elmt_Kc(unit = "") "Kc";


    initial equation
        elmt_Nt = 0.5;
        elmt_Ko = 330.0;
        elmt_I = 1000.0;
        elmt_Rp = 3.2;
        elmt_E = 1.33846153846154;
        elmt_f = 0.23;
        elmt_kc = 2.5;
        elmt_Kc = 460.0;


    equation
        der(elmt_Nt) = 0;
        elmt_jp = ((1.0 / 2.0) * (1.0 - elmt_f) * elmt_I);
        der(elmt_Ko) = 0;
        der(elmt_I) = 0;
        elmt_j = (((abs((elmt_jp + 467.0)) - abs((elmt_jp - 467.0))) / 2.0) / 65.0);
        elmt_phi = ((0.21 * (elmt_O2 / elmt_Ko)) / (elmt_CO2 / elmt_Kc));
        der(elmt_Rp) = 0;
        der(elmt_E) = 0;
        der(elmt_f) = 0;
        der(elmt_kc) = 0;
        der(elmt_Kc) = 0;

end Parameters;
