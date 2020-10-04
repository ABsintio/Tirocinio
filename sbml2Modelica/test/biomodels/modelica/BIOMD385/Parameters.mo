within BIOMD385;
class Parameters

    input Real elmt_O2;
    input Real elmt_CO2;

    Real elmt_Nt(unit = "") "Nt";
    Real elmt_Ko(unit = "") "Ko";
    Real elmt_k(unit = "") "k";
    Real elmt_J(unit = "") "J";
    Real elmt_phi(unit = "") "phi";
    Real elmt_Gamma(unit = "") "Gamma";
    Real elmt_Vc(unit = "") "Vc";
    Real elmt_h(unit = "") "h";
    Real elmt_g0(unit = "") "g0";
    Real elmt_v_c(unit = "") "v_c";
    Real elmt_TPU(unit = "") "TPU";
    Real elmt_Vj(unit = "") "Vj";
    Real elmt_Vcmax(unit = "") "Vcmax";
    Real elmt_Rd(unit = "") "Rd";
    Real elmt_PPFD(unit = "") "PPFD";
    Real elmt_Rp(unit = "") "Rp";
    Real elmt_alpha(unit = "") "alpha";
    Real elmt_Jmax(unit = "") "Jmax";
    Real elmt_Vp(unit = "") "Vp";
    Real elmt_Kc(unit = "") "Kc";


    initial equation
        elmt_Nt = 0.5;
        elmt_Ko = 41.9469718861558;
        elmt_k = 118.69;
        elmt_Gamma = 3.81695;
        elmt_h = 0.6;
        elmt_g0 = 0.468615384615385;
        elmt_TPU = 0.227712577291006;
        elmt_Vcmax = 1.4749455852483;
        elmt_Rd = 0.00624227154326423;
        elmt_PPFD = 1000.0;
        elmt_Rp = 3.2;
        elmt_alpha = 0.19;
        elmt_Jmax = 112.989573402043;
        elmt_Kc = 27.8535785188479;


    equation
        der(elmt_Nt) = 0;
        der(elmt_Ko) = 0;
        der(elmt_k) = 0;
        elmt_J = (((elmt_alpha * elmt_PPFD) / Functions.root(2.0, (1.0 + Functions.pow(((elmt_alpha * elmt_PPFD) / elmt_Jmax), 2.0)))) / (65.0 * 0.5));
        elmt_phi = ((0.21 * (((elmt_g0 + (((elmt_h * elmt_k) / elmt_CO2) * (elmt_v_c - elmt_Rd))) * elmt_O2) / elmt_Ko)) / ((elmt_g0 + (((elmt_h * elmt_k) - 1.6) * (elmt_v_c - elmt_Rd))) / elmt_Kc));
        der(elmt_Gamma) = 0;
        elmt_Vc = (elmt_Vcmax * ((elmt_CO2 - (1.6 * (((1.0 / 2.0) * ((((1.6 * (elmt_Vcmax - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))) + (((elmt_k * elmt_h) / elmt_CO2) * elmt_Vcmax * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))))) + Functions.root(2.0, (Functions.pow((((1.6 * (elmt_Vcmax - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))) + (((elmt_k * elmt_h) / elmt_CO2) * elmt_Vcmax * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))))), 2.0) + (4.0 * elmt_g0 * (((elmt_Rd * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))) + (elmt_Vcmax * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko)))))))))))) / (elmt_g0 + (((elmt_k * elmt_h) / elmt_CO2) * (1.0 / 2.0) * ((((1.6 * (elmt_Vcmax - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))) + (((elmt_k * elmt_h) / elmt_CO2) * elmt_Vcmax * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))))) + Functions.root(2.0, (Functions.pow((((1.6 * (elmt_Vcmax - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))) + (((elmt_k * elmt_h) / elmt_CO2) * elmt_Vcmax * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))))), 2.0) + (4.0 * elmt_g0 * (((elmt_Rd * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))) + (elmt_Vcmax * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko)))))))))))))))) / ((elmt_CO2 - (1.6 * (((1.0 / 2.0) * ((((1.6 * (elmt_Vcmax - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))) + (((elmt_k * elmt_h) / elmt_CO2) * elmt_Vcmax * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))))) + Functions.root(2.0, (Functions.pow((((1.6 * (elmt_Vcmax - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))) + (((elmt_k * elmt_h) / elmt_CO2) * elmt_Vcmax * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))))), 2.0) + (4.0 * elmt_g0 * (((elmt_Rd * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))) + (elmt_Vcmax * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko)))))))))))) / (elmt_g0 + (((elmt_k * elmt_h) / elmt_CO2) * (1.0 / 2.0) * ((((1.6 * (elmt_Vcmax - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))) + (((elmt_k * elmt_h) / elmt_CO2) * elmt_Vcmax * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))))) + Functions.root(2.0, (Functions.pow((((1.6 * (elmt_Vcmax - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))) + (((elmt_k * elmt_h) / elmt_CO2) * elmt_Vcmax * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))))), 2.0) + (4.0 * elmt_g0 * (((elmt_Rd * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))) + (elmt_Vcmax * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko)))))))))))))))) + (elmt_Kc * (1.0 + (elmt_O2 / elmt_Ko))))));
        der(elmt_h) = 0;
        der(elmt_g0) = 0;
        elmt_v_c = ((abs((((abs((elmt_Vc + elmt_Vj)) - abs((elmt_Vc - elmt_Vj))) / 2.0) + elmt_Vp)) - abs((((abs((elmt_Vc + elmt_Vj)) - abs((elmt_Vc - elmt_Vj))) / 2.0) - elmt_Vp))) / 2.0);
        der(elmt_TPU) = 0;
        elmt_Vj = ((elmt_J / 4.0) * ((elmt_CO2 - (1.6 * (((1.0 / 2.0) * ((((1.6 * ((elmt_J / 4.0) - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 + (2.0 * elmt_Gamma))) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_J) / 4.0) * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (2.0 * elmt_Gamma))))) + Functions.root(2.0, (Functions.pow((((1.6 * ((elmt_J / 4.0) - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 + (2.0 * elmt_Gamma))) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_J) / 4.0) * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (2.0 * elmt_Gamma))))), 2.0) + (4.0 * elmt_g0 * (((elmt_Rd * (elmt_CO2 + (2.0 * elmt_Gamma))) + ((elmt_J / 4.0) * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (2.0 * elmt_Gamma)))))))))) / (elmt_g0 + (((elmt_k * elmt_h) / elmt_CO2) * (1.0 / 2.0) * ((((1.6 * ((elmt_J / 4.0) - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 + (2.0 * elmt_Gamma))) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_J) / 4.0) * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (2.0 * elmt_Gamma))))) + Functions.root(2.0, (Functions.pow((((1.6 * ((elmt_J / 4.0) - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 + (2.0 * elmt_Gamma))) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_J) / 4.0) * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (2.0 * elmt_Gamma))))), 2.0) + (4.0 * elmt_g0 * (((elmt_Rd * (elmt_CO2 + (2.0 * elmt_Gamma))) + ((elmt_J / 4.0) * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (2.0 * elmt_Gamma)))))))))))))) / ((elmt_CO2 - (1.6 * (((1.0 / 2.0) * ((((1.6 * ((elmt_J / 4.0) - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 + (2.0 * elmt_Gamma))) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_J) / 4.0) * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (2.0 * elmt_Gamma))))) + Functions.root(2.0, (Functions.pow((((1.6 * ((elmt_J / 4.0) - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 + (2.0 * elmt_Gamma))) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_J) / 4.0) * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (2.0 * elmt_Gamma))))), 2.0) + (4.0 * elmt_g0 * (((elmt_Rd * (elmt_CO2 + (2.0 * elmt_Gamma))) + ((elmt_J / 4.0) * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (2.0 * elmt_Gamma)))))))))) / (elmt_g0 + (((elmt_k * elmt_h) / elmt_CO2) * (1.0 / 2.0) * ((((1.6 * ((elmt_J / 4.0) - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 + (2.0 * elmt_Gamma))) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_J) / 4.0) * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (2.0 * elmt_Gamma))))) + Functions.root(2.0, (Functions.pow((((1.6 * ((elmt_J / 4.0) - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 + (2.0 * elmt_Gamma))) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_J) / 4.0) * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (2.0 * elmt_Gamma))))), 2.0) + (4.0 * elmt_g0 * (((elmt_Rd * (elmt_CO2 + (2.0 * elmt_Gamma))) + ((elmt_J / 4.0) * (elmt_Gamma - elmt_CO2))) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 + (2.0 * elmt_Gamma)))))))))))))) + (2.0 * elmt_Gamma))));
        der(elmt_Vcmax) = 0;
        der(elmt_Rd) = 0;
        der(elmt_PPFD) = 0;
        der(elmt_Rp) = 0;
        der(elmt_alpha) = 0;
        der(elmt_Jmax) = 0;
        elmt_Vp = (3.0 * elmt_TPU * ((elmt_CO2 - (1.6 * (((1.0 / 2.0) * (((((1.6 * ((3.0 * elmt_TPU) - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 - elmt_Gamma))) - (elmt_k * elmt_h * 3.0 * elmt_TPU)) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 - elmt_Gamma)))) + Functions.root(2.0, (Functions.pow(((((1.6 * ((3.0 * elmt_TPU) - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 - elmt_Gamma))) - (elmt_k * elmt_h * 3.0 * elmt_TPU)) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 - elmt_Gamma)))), 2.0) + (4.0 * elmt_g0 * (((elmt_Rd * (elmt_CO2 - elmt_Gamma)) - (3.0 * elmt_TPU * elmt_CO2)) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 - elmt_Gamma))))))))) / (elmt_g0 + (((elmt_k * elmt_h) / elmt_CO2) * (1.0 / 2.0) * (((((1.6 * ((3.0 * elmt_TPU) - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 - elmt_Gamma))) - (elmt_k * elmt_h * 3.0 * elmt_TPU)) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 - elmt_Gamma)))) + Functions.root(2.0, (Functions.pow(((((1.6 * ((3.0 * elmt_TPU) - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 - elmt_Gamma))) - (elmt_k * elmt_h * 3.0 * elmt_TPU)) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 - elmt_Gamma)))), 2.0) + (4.0 * elmt_g0 * (((elmt_Rd * (elmt_CO2 - elmt_Gamma)) - (3.0 * elmt_TPU * elmt_CO2)) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 - elmt_Gamma))))))))))))) / ((elmt_CO2 - (1.6 * (((1.0 / 2.0) * (((((1.6 * ((3.0 * elmt_TPU) - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 - elmt_Gamma))) - (elmt_k * elmt_h * 3.0 * elmt_TPU)) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 - elmt_Gamma)))) + Functions.root(2.0, (Functions.pow(((((1.6 * ((3.0 * elmt_TPU) - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 - elmt_Gamma))) - (elmt_k * elmt_h * 3.0 * elmt_TPU)) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 - elmt_Gamma)))), 2.0) + (4.0 * elmt_g0 * (((elmt_Rd * (elmt_CO2 - elmt_Gamma)) - (3.0 * elmt_TPU * elmt_CO2)) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 - elmt_Gamma))))))))) / (elmt_g0 + (((elmt_k * elmt_h) / elmt_CO2) * (1.0 / 2.0) * (((((1.6 * ((3.0 * elmt_TPU) - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 - elmt_Gamma))) - (elmt_k * elmt_h * 3.0 * elmt_TPU)) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 - elmt_Gamma)))) + Functions.root(2.0, (Functions.pow(((((1.6 * ((3.0 * elmt_TPU) - elmt_Rd)) + (((((elmt_k * elmt_h) / elmt_CO2) * elmt_Rd) + elmt_g0) * (elmt_CO2 - elmt_Gamma))) - (elmt_k * elmt_h * 3.0 * elmt_TPU)) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 - elmt_Gamma)))), 2.0) + (4.0 * elmt_g0 * (((elmt_Rd * (elmt_CO2 - elmt_Gamma)) - (3.0 * elmt_TPU * elmt_CO2)) / (1.6 - (((elmt_k * elmt_h) / elmt_CO2) * (elmt_CO2 - elmt_Gamma))))))))))))) - elmt_Gamma)));
        der(elmt_Kc) = 0;

end Parameters;
