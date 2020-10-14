within BIOMD232;
class Parameters

    input Real elmt_NAD;
    input Real elmt_ATP;
    input Real elmt_iP;

    Real elmt_DeltaGtransport(unit = ".m2.0.mol-1.0.s-2.0") "";
    Real elmt_Nt(unit = "m-3.0.") "";
    Real elmt_kleak(unit = ".kg-1.0.m-5.0..s2.0") "";
    Real elmt_K(unit = "m-3.0.") "";
    Real elmt_Jresp(unit = "m-3.0..s-1.0") "";
    Real elmt_kATP(unit = "m-3.0..s-1.0") "";
    Real elmt_kANT(unit = "s-1.0") "";
    Real elmt_kresp(unit = "m-3.0..s-1.0") "";
    Real elmt_F(unit = ".mol-1.0.") "Faraday constant";
    Real elmt_ATPcrit(unit = "m-3.0.") "";
    Real elmt_C(unit = ".kg-1.0.m-5.0..s3.0") "";
    Real elmt_a(unit = ".kg-1.0.m-2.0.s3.0") "";
    Real elmt_DeltaPsi(unit = "A-1.0..m2.0.s-3.0") "";
    Real elmt_DeltaPsim(unit = "A-1.0..m2.0.s-3.0") "";
    Real elmt_b(unit = "m3.0.mol-1.0") "";
    Real elmt_JATP(unit = "m-3.0..s-1.0") "";
    Real elmt_Jleak(unit = "m-3.0..s-1.0") "";
    Real elmt_Kapp(unit = "m3.0.mol-1.0") "";
    Real elmt_At(unit = "m-3.0.") "";
    Real elmt_JANT(unit = "m-3.0..s-1.0") "";
    Real elmt_T(unit = "") "absolute temperature";
    Real elmt_R(unit = "K-1.0..m2.0.mol-1.0.s-2.0") "gas constant";


    initial equation
        elmt_Nt = 1.07;
        elmt_kleak = 4.26E-4;
        elmt_K = 2.0;
        elmt_kATP = 131.9;
        elmt_kANT = 0.05387;
        elmt_kresp = 2.5;
        elmt_F = 96485.0;
        elmt_C = 6.75E-6;
        elmt_a = 0.1;
        elmt_DeltaPsi = 150.0;
        elmt_DeltaPsim = 150.0;
        elmt_b = 0.004;
        elmt_Kapp = 4.4E-9;
        elmt_At = 4.16;
        elmt_T = 298.0;
        elmt_R = 8314.0;


    equation
        elmt_DeltaGtransport = (1.2 * elmt_F * elmt_DeltaPsi);
        der(elmt_Nt) = 0;
        der(elmt_kleak) = 0;
        der(elmt_K) = 0;
        elmt_Jresp = ((elmt_kresp * ((elmt_Nt - elmt_NAD) / ((elmt_K + elmt_Nt) - elmt_NAD))) / (1.0 + exp((elmt_a * (elmt_DeltaPsi - elmt_DeltaPsim)))));
        der(elmt_kATP) = 0;
        der(elmt_kANT) = 0;
        der(elmt_kresp) = 0;
        der(elmt_F) = 0;
        elmt_ATPcrit = (elmt_At / (1.0 + (exp((((-3.0) * elmt_DeltaGtransport) / (elmt_R * elmt_T))) / (elmt_Kapp * elmt_iP))));
        der(elmt_C) = 0;
        der(elmt_a) = 0;
        der(elmt_DeltaPsi) = (((((10.0 * elmt_Jresp) - (3.0 * elmt_JATP)) - elmt_Jleak) - elmt_JANT) / elmt_C);
        der(elmt_DeltaPsim) = 0;
        der(elmt_b) = 0;
        elmt_JATP = (elmt_kATP * ((2.0 / (1.0 + exp((elmt_b * (elmt_ATP - elmt_ATPcrit))))) - 1.0));
        elmt_Jleak = (elmt_kleak * elmt_DeltaPsi);
        der(elmt_Kapp) = 0;
        der(elmt_At) = 0;
        elmt_JANT = (elmt_kANT * elmt_ATP);
        der(elmt_T) = 0;
        der(elmt_R) = 0;

end Parameters;
