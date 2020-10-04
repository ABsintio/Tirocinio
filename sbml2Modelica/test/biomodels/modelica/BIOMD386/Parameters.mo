within BIOMD386;
class Parameters

    input Real elmt_O2;
    input Real elmt_CO2;

    Real elmt_Nt(unit = "") "Nt";
    Real elmt_gm(unit = "") "gm";
    Real elmt_Ko(unit = "") "Ko";
    Real elmt_J(unit = "") "J";
    Real elmt_phi(unit = "") "phi";
    Real elmt_Gamma(unit = "") "Gamma";
    Real elmt_Vc(unit = "") "Vc";
    Real elmt_v_c(unit = "") "v_c";
    Real elmt_TPU(unit = "") "TPU";
    Real elmt_Vj(unit = "") "Vj";
    Real elmt_Vcmax(unit = "") "Vcmax";
    Real elmt_Rd(unit = "") "Rd";
    Real elmt_Rp(unit = "") "Rp";
    Real elmt_Vp(unit = "") "Vp";
    Real elmt_Kc(unit = "") "Kc";


    initial equation
        elmt_Nt = 0.5;
        elmt_gm = 0.0307740792044142;
        elmt_Ko = 16.5788431231261;
        elmt_J = 0.0307678189755062;
        elmt_Gamma = 3.74116898182615;
        elmt_TPU = 0.0307585098788555;
        elmt_Vcmax = 0.0307602623029146;
        elmt_Rd = 0.0307674936008629;
        elmt_Rp = 3.2;
        elmt_Kc = 27.2372124161502;


    equation
        der(elmt_Nt) = 0;
        der(elmt_gm) = 0;
        der(elmt_Ko) = 0;
        der(elmt_J) = 0;
        elmt_phi = ((0.21 * ((elmt_gm * elmt_O2) / elmt_Ko)) / ((((elmt_gm * elmt_CO2) - elmt_v_c) + elmt_Rd) / elmt_Kc));
        der(elmt_Gamma) = 0;
        elmt_Vc = ((elmt_Vcmax * (elmt_CO2 - ((1.0 / 2.0) * ((elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))) + ((elmt_Vcmax - elmt_Rd) / elmt_gm)) - Functions.root(2.0, (Functions.pow((elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))) + ((elmt_Vcmax - elmt_Rd) / elmt_gm)), 2.0) + ((4.0 / elmt_gm) * ((elmt_Rd * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))) + (elmt_Vcmax * (elmt_Gamma - elmt_CO2)))))))))) / ((elmt_CO2 - ((1.0 / 2.0) * ((elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))) + ((elmt_Vcmax - elmt_Rd) / elmt_gm)) - Functions.root(2.0, (Functions.pow((elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))) + ((elmt_Vcmax - elmt_Rd) / elmt_gm)), 2.0) + ((4.0 / elmt_gm) * ((elmt_Rd * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))) + (elmt_Vcmax * (elmt_Gamma - elmt_CO2))))))))) + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko)))));
        elmt_v_c = ((abs((((abs((elmt_Vc + elmt_Vj)) - abs((elmt_Vc - elmt_Vj))) / 2.0) + elmt_Vp)) - abs((((abs((elmt_Vc + elmt_Vj)) - abs((elmt_Vc - elmt_Vj))) / 2.0) - elmt_Vp))) / 2.0);
        der(elmt_TPU) = 0;
        elmt_Vj = (((elmt_J / 4.0) * (elmt_CO2 - ((1.0 / 2.0) * ((elmt_CO2 + (2.0 * elmt_Gamma) + ((elmt_J - (4.0 * elmt_Rd)) / (4.0 * elmt_gm))) - Functions.root(2.0, (Functions.pow((elmt_CO2 + (2.0 * elmt_Gamma) + ((elmt_J - (4.0 * elmt_Rd)) / (4.0 * elmt_gm))), 2.0) + ((4.0 / elmt_gm) * ((elmt_Rd * (elmt_CO2 + (2.0 * elmt_Gamma))) + ((elmt_J / 4.0) * (elmt_Gamma - elmt_CO2)))))))))) / ((elmt_CO2 - ((1.0 / 2.0) * ((elmt_CO2 + (2.0 * elmt_Gamma) + ((elmt_J - (4.0 * elmt_Rd)) / (4.0 * elmt_gm))) - Functions.root(2.0, (Functions.pow((elmt_CO2 + (2.0 * elmt_Gamma) + ((elmt_J - (4.0 * elmt_Rd)) / (4.0 * elmt_gm))), 2.0) + ((4.0 / elmt_gm) * ((elmt_Rd * (elmt_CO2 + (2.0 * elmt_Gamma))) + ((elmt_J / 4.0) * (elmt_Gamma - elmt_CO2))))))))) + (2.0 * elmt_Gamma)));
        der(elmt_Vcmax) = 0;
        der(elmt_Rd) = 0;
        der(elmt_Rp) = 0;
        elmt_Vp = (3.0 * elmt_TPU * ((elmt_CO2 - (((3.0 * elmt_TPU) - elmt_Rd) / elmt_gm)) / ((elmt_CO2 - (((3.0 * elmt_TPU) - elmt_Rd) / elmt_gm)) - elmt_Gamma)));
        der(elmt_Kc) = 0;

end Parameters;
