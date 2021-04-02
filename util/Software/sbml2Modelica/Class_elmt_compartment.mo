within .;
class Class_elmt_compartment
    extends Modelica.Icons.VariantsPackage;


    input Real elmt_reactant1;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_product6;
    input Real elmt_reaction2;
    input Real elmt_reactant5;
    input Real elmt_reaction1;
    input Real elmt_product3;
    input Real elmt_reactant0;
    input Real elmt_product2;

    Real elmt_compartment(unit = "m3.0") "compartment";
    Real elmt_S4_conc(unit = "m-12.0.");
    Real elmt_S4_amount(unit = "m-9.0.");
    Real elmt_S4(unit = "m-12.0.") "S4";
    Real elmt_S2_conc(unit = "m-6.0.");
    Real elmt_S2_amount(unit = "m-3.0.");
    Real elmt_S2(unit = "m-6.0.") "S2";
    Real elmt_S3_conc(unit = "m-9.0.");
    Real elmt_S3_amount(unit = "m-6.0.");
    Real elmt_S3(unit = "m-9.0.") "S3";
    Real elmt_S1_conc(unit = "m-3.0.");
    Real elmt_S1_amount(unit = "");
    Real elmt_S1(unit = "m-3.0.") "S1";

    initial equation
        elmt_compartment = 1.0;
        elmt_S4_conc = (0.1 / elmt_compartment);
        elmt_S2_conc = (0.1 / elmt_compartment);
        elmt_S3_conc = (0.2 / elmt_compartment);
        elmt_S1_conc = (0.1 / elmt_compartment);


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_S4 = elmt_S4_conc;
        elmt_S2 = elmt_S2_conc;
        elmt_S3 = elmt_S3_conc;
        elmt_S1 = elmt_S1_conc;
        der(elmt_S4_amount) = ((- (elmt_reaction2 * elmt_reactant5)) + (elmt_reaction1 * elmt_product3));
        der(elmt_S2_amount) = ((elmt_reaction2 * elmt_product7) + (- (elmt_reaction1 * elmt_reactant1)));
        der(elmt_S3_amount) = ((- (elmt_reaction2 * elmt_reactant4)) + (elmt_reaction1 * elmt_product2));
        der(elmt_S1_amount) = ((elmt_reaction2 * elmt_product6) + (- (elmt_reaction1 * elmt_reactant0)));

    algorithm
        elmt_S4_conc := elmt_S4_amount / elmt_compartment;
        elmt_S2_conc := elmt_S2_amount / elmt_compartment;
        elmt_S3_conc := elmt_S3_amount / elmt_compartment;
        elmt_S1_conc := elmt_S1_amount / elmt_compartment;
end Class_elmt_compartment;
