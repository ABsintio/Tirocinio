within BIOMD069;
class Parameters

    input Real elmt_srco;
    input Real elmt_srca;
    input Real elmt_srcc;
    input Real elmt_PTP_pY789;

    Real elmt_k1(unit = "") "";
    Real elmt_p3(unit = "") "";
    Real elmt_kCSKoff(unit = "") "";
    Real elmt_p1(unit = "") "";
    Real elmt_p2(unit = "") "";
    Real elmt_acsk0(unit = "") "";
    Real elmt_k4(unit = "") "";
    Real elmt_rho_srca(unit = "") "";
    Real elmt_k2(unit = "") "";
    Real elmt_rho_srcc(unit = "") "";
    Real elmt_src_activity(unit = "") "";
    Real elmt_k3(unit = "") "";
    Real elmt_Kser(unit = "") "";
    Real elmt_PTP_background(unit = "") "";
    Real elmt_kCbp(unit = "") "";
    Real elmt_kPTP(unit = "") "";
    Real elmt_ptp_activity(unit = "") "";
    Real elmt_src_background(unit = "") "";
    Real elmt_rho_srco(unit = "") "";
    Real elmt_kCSKon(unit = "") "";


    initial equation
        elmt_k1 = 1.0;
        elmt_p3 = 0.035;
        elmt_kCSKoff = 0.01;
        elmt_p1 = 0.05;
        elmt_p2 = 0.15;
        elmt_acsk0 = 0.0;
        elmt_k4 = 10.0;
        elmt_rho_srca = 1.0;
        elmt_k2 = 0.8;
        elmt_rho_srcc = 1.0;
        elmt_k3 = 1.0;
        elmt_Kser = 1.0;
        elmt_PTP_background = 0.0;
        elmt_kCbp = 1.0;
        elmt_kPTP = 1.0;
        elmt_src_background = 1.0E-4;
        elmt_rho_srco = 0.0;
        elmt_kCSKon = 0.1;


    equation
        der(elmt_k1) = 0;
        der(elmt_p3) = 0;
        der(elmt_kCSKoff) = 0;
        der(elmt_p1) = 0;
        der(elmt_p2) = 0;
        der(elmt_acsk0) = 0;
        der(elmt_k4) = 0;
        der(elmt_rho_srca) = 0;
        der(elmt_k2) = 0;
        der(elmt_rho_srcc) = 0;
        elmt_src_activity = ((elmt_rho_srco * elmt_srco) + (elmt_rho_srca * elmt_srca) + elmt_src_background + (elmt_rho_srcc * elmt_srcc));
        der(elmt_k3) = 0;
        der(elmt_Kser) = 0;
        der(elmt_PTP_background) = 0;
        der(elmt_kCbp) = 0;
        der(elmt_kPTP) = 0;
        elmt_ptp_activity = (elmt_PTP_background + (elmt_Kser * elmt_PTP_pY789));
        der(elmt_src_background) = 0;
        der(elmt_rho_srco) = 0;
        der(elmt_kCSKon) = 0;

end Parameters;
