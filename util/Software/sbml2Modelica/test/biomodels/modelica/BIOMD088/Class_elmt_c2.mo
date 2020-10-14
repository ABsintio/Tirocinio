within BIOMD088;
class Class_elmt_c2

    input Real elmt_re175;
    input Real elmt_reactant317;
    input Real elmt_re73;
    input Real elmt_reactant106;
    input Real elmt_re85;
    input Real elmt_product109;

    Real elmt_c2(unit = "m3.0") "ER";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    Real elmt_s172_conc(unit = "m-315.0.");
    Real elmt_s172_amount(unit = "m-312.0.");
    Real elmt_s172(unit = "m-315.0.") "Ca_super_2_plus__endsuper_ store";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));

    initial equation
        elmt_c2 = 0.1;
        elmt_s172_conc = 155.0;


    equation
        assert(elmt_c2 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_c2) = 0;
        elmt_s172 = elmt_s172_conc;
        der(elmt_s172_amount) = ((- (elmt_re73 * elmt_reactant106)) + (- (elmt_re175 * elmt_reactant317)) + (elmt_re85 * elmt_product109));

    algorithm
        elmt_s172_conc := elmt_s172_amount / elmt_c2;
end Class_elmt_c2;
