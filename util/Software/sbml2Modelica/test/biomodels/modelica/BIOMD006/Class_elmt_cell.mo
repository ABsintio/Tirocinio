within BIOMD006;
class Class_elmt_cell

    input Real elmt_kappa;
    input Real elmt_k6;
    input Real elmt_k4;
    input Real elmt_alpha;

    Real elmt_cell(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_EmptySet_amount(unit = "");
    Real elmt_EmptySet_conc(unit = "");
    Real elmt_EmptySet(unit = "") "";
    Real elmt_z_amount(unit = "");
    Real elmt_z_conc(unit = "");
    Real elmt_z(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_u_amount(unit = "");
    Real elmt_u_conc(unit = "");
    Real elmt_u(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_v_amount(unit = "");
    Real elmt_v_conc(unit = "");
    Real elmt_v(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_EmptySet_amount = 1.0;
        elmt_u_amount = 0.0;
        elmt_v_amount = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_EmptySet = elmt_EmptySet_amount;
        elmt_z = elmt_z_amount;
        elmt_u = elmt_u_amount;
        elmt_v = elmt_v_amount;
        der(elmt_EmptySet_amount) = 0;
        elmt_z_amount = (elmt_v - elmt_u);
        der(elmt_u_amount) = ((elmt_k4 * (elmt_v - elmt_u) * (elmt_alpha + Functions.pow(elmt_u, 2.0))) - (elmt_k6 * elmt_u));
        der(elmt_v_amount) = (elmt_kappa - (elmt_k6 * elmt_u));

    algorithm
        elmt_EmptySet_conc := elmt_EmptySet_amount / elmt_cell;
        elmt_z_conc := elmt_z_amount / elmt_cell;
        elmt_u_conc := elmt_u_amount / elmt_cell;
        elmt_v_conc := elmt_v_amount / elmt_cell;
end Class_elmt_cell;
