within BIOMD124;
class Class_elmt_cell

    input Real elmt_reaction_0000006;
    input Real elmt_reaction_0000005;
    input Real elmt_product1;
    input Real elmt_product0;

    Real elmt_cell(unit = "") "GH3 cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_cer_conc(unit = "");
    Real elmt_cer_amount(unit = "");
    Real elmt_cer(unit = "") "ER ca concentration";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_c_conc(unit = "");
    Real elmt_c_amount(unit = "");
    Real elmt_c(unit = "") "cytosolic free ca concentration";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_cer_conc = 100.0;
        elmt_c_conc = 0.1;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_cer = elmt_cer_conc;
        elmt_c = elmt_c_conc;
        der(elmt_cer_amount) = (elmt_reaction_0000006 * elmt_product1);
        der(elmt_c_amount) = (elmt_reaction_0000005 * elmt_product0);

    algorithm
        elmt_cer_conc := elmt_cer_amount / elmt_cell;
        elmt_c_conc := elmt_c_amount / elmt_cell;
end Class_elmt_cell;
