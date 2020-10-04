within RunningExample;
class Class_elmt_c
    extends Modelica.Icons.VariantsPackage;


    input Real elmt_reactant2;
    input Real elmt_reactant1;
    input Real elmt_p1;
    input Real elmt_product1;
    input Real elmt_r;

    Real elmt_c(unit = "") "";
    Real elmt_s4_amount(unit = "");
    Real elmt_s4_conc(unit = "");
    Real elmt_s4(unit = "") "";
    Real elmt_s2_amount(unit = "");
    Real elmt_s2_conc(unit = "");
    Real elmt_s2(unit = "") "";
    Real elmt_s3_amount(unit = "");
    Real elmt_s3_conc(unit = "");
    Real elmt_s3(unit = "") "";
    Real elmt_s1_amount(unit = "");
    Real elmt_s1_conc(unit = "");
    Real elmt_s1(unit = "") "";

    initial equation
        elmt_s2_amount = 0.001;
        elmt_s3_amount = 0.001;
        elmt_s1_amount = 0.001;


    equation
        assert(elmt_c >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        elmt_c = (1.0 + (elmt_p1 * time));
        elmt_s4 = elmt_s4_amount;
        elmt_s2 = elmt_s2_amount;
        elmt_s3 = elmt_s3_amount;
        elmt_s1 = elmt_s1_amount;
        der(elmt_s2_amount) = (- (elmt_r * elmt_reactant2));
        der(elmt_s3_amount) = (elmt_r * elmt_product1);
        der(elmt_s1_amount) = (- (elmt_r * elmt_reactant1));

    algorithm
        elmt_s4_conc := elmt_s4_amount / elmt_c;
        elmt_s2_conc := elmt_s2_amount / elmt_c;
        elmt_s3_conc := elmt_s3_amount / elmt_c;
        elmt_s1_conc := elmt_s1_amount / elmt_c;
end Class_elmt_c;
