within BIOMD399;
class Class_elmt_c1

    input Real elmt_v13;
    input Real elmt_reactant1;
    input Real elmt_v6;
    input Real elmt_v1;
    input Real elmt_product29;
    input Real elmt_reactant13;

    Real elmt_c1(unit = "m3.0") "extracellular volume";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    Real elmt_x1_amount(unit = "");
    Real elmt_x1_conc(unit = "m-3.0");
    Real elmt_x1(unit = "") "EGF";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    Real elmt_x2_amount(unit = "");
    Real elmt_x2_conc(unit = "m-3.0");
    Real elmt_x2(unit = "") "EGFR";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));

    initial equation
        elmt_c1 = 1.0;
        elmt_x1_amount = 4962.0;
        elmt_x2_amount = 50000.0;


    equation
        assert(elmt_c1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_c1) = 0;
        elmt_x1 = elmt_x1_amount;
        elmt_x2 = elmt_x2_amount;
        der(elmt_x1_amount) = 0;
        der(elmt_x2_amount) = ((elmt_v13 * elmt_product29) + (- (elmt_v6 * elmt_reactant13)) + (- (elmt_v1 * elmt_reactant1)));

    algorithm
        elmt_x1_conc := elmt_x1_amount / elmt_c1;
        elmt_x2_conc := elmt_x2_amount / elmt_c1;
end Class_elmt_c1;
