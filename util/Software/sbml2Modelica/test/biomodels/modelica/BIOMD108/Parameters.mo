within BIOMD108;
class Parameters

    input Real elmt_species_0000016;
    input Real elmt_species_0000002;
    input Real elmt_species_0000001;

    Real elmt_Cu_I_ZnSOD(unit = "") "Cu(I)ZnSOD";
    Real elmt_k1(unit = "") "k1";
    Real elmt_k13a(unit = "") "k13a";
    Real elmt_k13b(unit = "") "k13b";
    Real elmt_HO2star(unit = "") "HO2*";
    Real elmt_k19(unit = "") "k19";
    Real elmt_k18(unit = "") "k18";
    Real elmt_k17(unit = "") "k17";
    Real elmt_k9(unit = "") "k9";
    Real elmt_k6(unit = "") "k6";
    Real elmt_k7(unit = "") "k7";
    Real elmt_k4(unit = "") "k4";
    Real elmt_k5(unit = "") "k5";
    Real elmt_k2(unit = "") "k2";
    Real elmt_k3(unit = "") "k3";
    Real elmt_k12(unit = "") "k12";
    Real elmt_k11(unit = "") "k11";
    Real elmt_k10(unit = "") "k10";


    initial equation
        elmt_k1 = 6.6E-7;
        elmt_k13a = 0.0087;
        elmt_k13b = 0.0087;
        elmt_k19 = 88000.0;
        elmt_k18 = 7.0;
        elmt_k17 = 30000.0;
        elmt_k9 = 1000000.0;
        elmt_k6 = 1.0;
        elmt_k7 = 3.4E7;
        elmt_k4 = 100000.0;
        elmt_k5 = 20000.0;
        elmt_k2 = 1.6E9;
        elmt_k3 = 1.6E9;
        elmt_k12 = 0.38;
        elmt_k11 = 2.5E8;
        elmt_k10 = 1000.0;


    equation
        elmt_Cu_I_ZnSOD = (elmt_species_0000016 - elmt_species_0000002);
        der(elmt_k1) = 0;
        der(elmt_k13a) = 0;
        der(elmt_k13b) = 0;
        elmt_HO2star = (elmt_species_0000001 / 100.0);
        der(elmt_k19) = 0;
        der(elmt_k18) = 0;
        der(elmt_k17) = 0;
        der(elmt_k9) = 0;
        der(elmt_k6) = 0;
        der(elmt_k7) = 0;
        der(elmt_k4) = 0;
        der(elmt_k5) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        der(elmt_k12) = 0;
        der(elmt_k11) = 0;
        der(elmt_k10) = 0;

end Parameters;
