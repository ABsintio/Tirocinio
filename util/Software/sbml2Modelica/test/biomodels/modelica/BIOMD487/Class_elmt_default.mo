within BIOMD487;
class Class_elmt_default

    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_product7;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_product11;
    input Real elmt_re3;
    input Real elmt_reactant15;
    input Real elmt_re2;
    input Real elmt_re1;
    input Real elmt_reactant10;
    input Real elmt_product5;
    input Real elmt_product4;
    input Real elmt_reactant12;
    input Real elmt_reactant0;
    input Real elmt_product2;
    input Real elmt_re6;
    input Real elmt_re5;
    input Real elmt_re4;
    input Real elmt_product16;
    input Real elmt_reactant9;
    input Real elmt_product14;
    input Real elmt_product13;
    input Real elmt_product17;

    Real elmt_default(unit = "") "";
    Real elmt_S6_conc(unit = "");
    Real elmt_S6_amount(unit = "");
    Real elmt_S6(unit = "") "S6";
    Real elmt_S4_conc(unit = "");
    Real elmt_S4_amount(unit = "");
    Real elmt_S4(unit = "") "S4";
    Real elmt_S5_conc(unit = "");
    Real elmt_S5_amount(unit = "");
    Real elmt_S5(unit = "") "S5";
    Real elmt_S2_conc(unit = "");
    Real elmt_S2_amount(unit = "");
    Real elmt_S2(unit = "") "S2";
    Real elmt_S3_conc(unit = "");
    Real elmt_S3_amount(unit = "");
    Real elmt_S3(unit = "") "S3";
    Real elmt_S1_conc(unit = "");
    Real elmt_S1_amount(unit = "");
    Real elmt_S1(unit = "") "S1";

    initial equation
        elmt_default = 1.0;
        elmt_S6_conc = (0.0 / elmt_default);
        elmt_S4_conc = (0.0 / elmt_default);
        elmt_S5_conc = (0.0 / elmt_default);
        elmt_S2_conc = (0.0 / elmt_default);
        elmt_S3_conc = (0.0 / elmt_default);
        elmt_S1_conc = (0.0 / elmt_default);


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;
        elmt_S6 = elmt_S6_conc;
        elmt_S4 = elmt_S4_conc;
        elmt_S5 = elmt_S5_conc;
        elmt_S2 = elmt_S2_conc;
        elmt_S3 = elmt_S3_conc;
        elmt_S1 = elmt_S1_conc;
        der(elmt_S6_amount) = ((- (elmt_re6 * elmt_reactant15)) + (- (elmt_re5 * elmt_reactant12)) + (elmt_re4 * elmt_product11));
        der(elmt_S4_amount) = ((elmt_re6 * elmt_product16) + (elmt_re5 * elmt_product13) + (- (elmt_re4 * elmt_reactant9)));
        der(elmt_S5_amount) = ((elmt_re5 * elmt_product14) + (- (elmt_re4 * elmt_reactant10)) + (elmt_re3 * elmt_product8));
        der(elmt_S2_amount) = ((elmt_re6 * elmt_product17) + (elmt_re2 * elmt_product5) + (- (elmt_re1 * elmt_reactant1)));
        der(elmt_S3_amount) = ((- (elmt_re3 * elmt_reactant6)) + (- (elmt_re2 * elmt_reactant3)) + (elmt_re1 * elmt_product2));
        der(elmt_S1_amount) = ((elmt_re3 * elmt_product7) + (elmt_re2 * elmt_product4) + (- (elmt_re1 * elmt_reactant0)));

    algorithm
        elmt_S6_conc := elmt_S6_amount / elmt_default;
        elmt_S4_conc := elmt_S4_amount / elmt_default;
        elmt_S5_conc := elmt_S5_amount / elmt_default;
        elmt_S2_conc := elmt_S2_amount / elmt_default;
        elmt_S3_conc := elmt_S3_amount / elmt_default;
        elmt_S1_conc := elmt_S1_amount / elmt_default;
end Class_elmt_default;
