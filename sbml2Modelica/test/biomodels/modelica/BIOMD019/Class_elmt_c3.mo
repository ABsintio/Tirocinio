within BIOMD019;
class Class_elmt_c3

    input Real elmt_v34;
    input Real elmt_v22;
    input Real elmt_product83;
    input Real elmt_v32;
    input Real elmt_product89;
    input Real elmt_v8;
    input Real elmt_v102;
    input Real elmt_product97;
    input Real elmt_v61;
    input Real elmt_reactant36;
    input Real elmt_reactant54;
    input Real elmt_v39;
    input Real elmt_v16;
    input Real elmt_v37;
    input Real elmt_product168;
    input Real elmt_product103;
    input Real elmt_product19;
    input Real elmt_reactant287;

    Real elmt_c3(unit = "m3.0") "endosomal volume";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_x15_amount(unit = "");
    Real elmt_x15_conc(unit = "m-3.0");
    Real elmt_x15(unit = "") "EGF-EGFR*^2-GAP";
    Real elmt_x13_amount(unit = "");
    Real elmt_x13_conc(unit = "m-3.0");
    Real elmt_x13(unit = "") "EGFideg";

    initial equation
        elmt_c3 = 4.3E-6;
        elmt_x15_amount = 0.0;
        elmt_x13_amount = 0.0;


    equation
        assert(elmt_c3 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_c3) = 0;
        elmt_x15 = elmt_x15_amount;
        elmt_x13 = elmt_x13_amount;
        der(elmt_x15_amount) = ((- (elmt_v16 * elmt_reactant36)) + (- (elmt_v22 * elmt_reactant54)) + (elmt_v8 * elmt_product19) + (elmt_v34 * elmt_product89) + (elmt_v32 * elmt_product83) + (- (elmt_v102 * elmt_reactant287)) + (elmt_v39 * elmt_product103) + (elmt_v37 * elmt_product97));
        der(elmt_x13_amount) = (elmt_v61 * elmt_product168);

    algorithm
        elmt_x15_conc := elmt_x15_amount / elmt_c3;
        elmt_x13_conc := elmt_x13_amount / elmt_c3;
end Class_elmt_c3;
