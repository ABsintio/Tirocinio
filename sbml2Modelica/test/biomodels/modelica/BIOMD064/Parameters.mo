within BIOMD064;
class Parameters

    Real elmt_KiPFKATP(unit = "m-3.0.") "";
    Real elmt_CPFKF26BP(unit = "") "";
    Real elmt_CPFKF16BP(unit = "") "";
    Real elmt_KPFKF26BP(unit = "m-3.0.") "";
    Real elmt_KPFKF16BP(unit = "m-3.0.") "";
    Real elmt_KeqAK(unit = "") "AK eq constant";
    Real elmt_gR(unit = "") "";
    Real elmt_CPFKAMP(unit = "") "";
    Real elmt_KmPFKATP(unit = "m-3.0.") "";
    Real elmt_Lzero(unit = "") "";
    Real elmt_KmPFKF6P(unit = "m-3.0.") "";
    Real elmt_CiPFKATP(unit = "") "";
    Real elmt_CPFKATP(unit = "") "";
    Real elmt_KPFKAMP(unit = "m-3.0.") "";
    Real elmt_KeqTPI(unit = "") "TPI eq constant";


    initial equation
        elmt_KiPFKATP = 0.65;
        elmt_CPFKF26BP = 0.0174;
        elmt_CPFKF16BP = 0.397;
        elmt_KPFKF26BP = 6.82E-4;
        elmt_KPFKF16BP = 0.111;
        elmt_KeqAK = 0.45;
        elmt_gR = 5.12;
        elmt_CPFKAMP = 0.0845;
        elmt_KmPFKATP = 0.71;
        elmt_Lzero = 0.66;
        elmt_KmPFKF6P = 0.1;
        elmt_CiPFKATP = 100.0;
        elmt_CPFKATP = 3.0;
        elmt_KPFKAMP = 0.0995;
        elmt_KeqTPI = 0.045;


    equation
        der(elmt_KiPFKATP) = 0;
        der(elmt_CPFKF26BP) = 0;
        der(elmt_CPFKF16BP) = 0;
        der(elmt_KPFKF26BP) = 0;
        der(elmt_KPFKF16BP) = 0;
        der(elmt_KeqAK) = 0;
        der(elmt_gR) = 0;
        der(elmt_CPFKAMP) = 0;
        der(elmt_KmPFKATP) = 0;
        der(elmt_Lzero) = 0;
        der(elmt_KmPFKF6P) = 0;
        der(elmt_CiPFKATP) = 0;
        der(elmt_CPFKATP) = 0;
        der(elmt_KPFKAMP) = 0;
        der(elmt_KeqTPI) = 0;

end Parameters;
