within BIOMD162;
class Parameters

    input Real elmt_Ca_D_Cytosol;
    input Real elmt_Ca_D_Extracellular;
    input Real elmt_Ca_Cytosol;
    input Real elmt_Ca_Extracellular;

    Real elmt_p5(unit = "") "";
    Real elmt_p6(unit = "") "";
    Real elmt_p3(unit = "") "";
    Real elmt_p4(unit = "") "";
    Real elmt_p1(unit = "") "";
    Real elmt_p2(unit = "") "";
    Real elmt_p0(unit = "") "";
    Real elmt_p9(unit = "") "";
    Real elmt_p7(unit = "") "";
    Real elmt_Ks(unit = "") "";
    Real elmt_p8(unit = "") "";
    Real elmt_JchD(unit = "") "";
    Real elmt_B1(unit = "") "";
    Real elmt_t1(unit = "") "";
    Real elmt_p11(unit = "") "";
    Real elmt_KMOLE(unit = "") "";
    Real elmt_t2(unit = "") "";
    Real elmt_p10(unit = "") "";
    Real elmt_flux1_ar(unit = "") "";
    Real elmt_delta(unit = "") "";
    Real elmt_p13(unit = "") "";
    Real elmt_p12(unit = "") "";
    Real elmt_pulses_ar(unit = "") "";
    Real elmt_tau(unit = "") "";
    Real elmt_pulses0(unit = "") "";
    Real elmt_A1(unit = "") "";
    Real elmt_flux0_ar(unit = "") "";
    Real elmt_Jch(unit = "") "";


    initial equation
        elmt_p5 = 1.0;
        elmt_p6 = 1.0;
        elmt_p3 = 1.0;
        elmt_p4 = 1.0;
        elmt_p1 = 1.0;
        elmt_p2 = 1.0;
        elmt_p0 = 1.0;
        elmt_p9 = 1.0;
        elmt_p7 = 1.0;
        elmt_Ks = 1.188;
        elmt_p8 = 1.0;
        elmt_JchD = 6.25;
        elmt_B1 = 2.0;
        elmt_t1 = 0.1;
        elmt_p11 = 1.0;
        elmt_KMOLE = 0.00166112956810631;
        elmt_t2 = 0.105;
        elmt_p10 = 1.0;
        elmt_delta = 0.0;
        elmt_p13 = 1.0;
        elmt_p12 = 1.0;
        elmt_tau = 0.012;
        elmt_pulses0 = 0.0;
        elmt_A1 = 1.0;
        elmt_Jch = 13.25;


    equation
        der(elmt_p5) = 0;
        der(elmt_p6) = 0;
        der(elmt_p3) = 0;
        der(elmt_p4) = 0;
        der(elmt_p1) = 0;
        der(elmt_p2) = 0;
        der(elmt_p0) = 0;
        der(elmt_p9) = 0;
        der(elmt_p7) = 0;
        der(elmt_Ks) = 0;
        der(elmt_p8) = 0;
        der(elmt_JchD) = 0;
        der(elmt_B1) = 0;
        der(elmt_t1) = 0;
        der(elmt_p11) = 0;
        der(elmt_KMOLE) = 0;
        der(elmt_t2) = 0;
        der(elmt_p10) = 0;
        elmt_flux1_ar = (if ((time > elmt_t1) and (time < elmt_t2)) then (elmt_JchD * ((0.0016611295681 * elmt_Ca_D_Extracellular) + (- (0.0016611295681 * elmt_Ca_D_Cytosol)))) else 0.0);
        der(elmt_delta) = 0;
        der(elmt_p13) = 0;
        der(elmt_p12) = 0;
        elmt_pulses_ar = ((if (time > elmt_delta) then (elmt_p0 * exp((- ((time + (- elmt_delta)) * elmt_Ks)))) else 0.0) + (if (time > (elmt_tau + elmt_delta)) then (elmt_p1 * exp((- ((time + (- (elmt_tau + elmt_delta))) * elmt_Ks)))) else 0.0) + (if (time > ((2.0 * elmt_tau) + elmt_delta)) then (elmt_p2 * exp((- (elmt_Ks * (time + (- ((2.0 * elmt_tau) + elmt_delta))))))) else 0.0) + (if (time > ((3.0 * elmt_tau) + elmt_delta)) then (elmt_p3 * exp((- (elmt_Ks * (time + (- ((3.0 * elmt_tau) + elmt_delta))))))) else 0.0) + (if (time > ((4.0 * elmt_tau) + elmt_delta)) then (elmt_p4 * exp((- (elmt_Ks * (time + (- ((4.0 * elmt_tau) + elmt_delta))))))) else 0.0) + (if (time > ((5.0 * elmt_tau) + elmt_delta)) then (elmt_p5 * exp((- (elmt_Ks * (time + (- ((5.0 * elmt_tau) + elmt_delta))))))) else 0.0) + (if (time > ((6.0 * elmt_tau) + elmt_delta)) then (elmt_p6 * exp((- (elmt_Ks * (time + (- ((6.0 * elmt_tau) + elmt_delta))))))) else 0.0) + (if (time > ((7.0 * elmt_tau) + elmt_delta)) then (elmt_p7 * exp((- (elmt_Ks * (time + (- ((7.0 * elmt_tau) + elmt_delta))))))) else 0.0) + (if (time > ((8.0 * elmt_tau) + elmt_delta)) then (elmt_p8 * exp((- (elmt_Ks * (time + (- ((8.0 * elmt_tau) + elmt_delta))))))) else 0.0) + (if (time > ((9.0 * elmt_tau) + elmt_delta)) then (elmt_p9 * exp((- (elmt_Ks * (time + (- ((9.0 * elmt_tau) + elmt_delta))))))) else 0.0) + (if (time > ((10.0 * elmt_tau) + elmt_delta)) then (elmt_p10 * exp((- (elmt_Ks * (time + (- ((10.0 * elmt_tau) + elmt_delta))))))) else 0.0) + (if (time > ((11.0 * elmt_tau) + elmt_delta)) then (elmt_p11 * exp((- (elmt_Ks * (time + (- ((11.0 * elmt_tau) + elmt_delta))))))) else 0.0));
        der(elmt_tau) = 0;
        der(elmt_pulses0) = 0;
        der(elmt_A1) = 0;
        elmt_flux0_ar = (if ((time > elmt_t1) and (time < elmt_t2)) then (elmt_Jch * ((0.0016611295681 * elmt_Ca_Extracellular) + (- (0.0016611295681 * elmt_Ca_Cytosol)))) else 0.0);
        der(elmt_Jch) = 0;

end Parameters;
