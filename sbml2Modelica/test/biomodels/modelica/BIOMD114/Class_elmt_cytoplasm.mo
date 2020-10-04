within BIOMD114;
class Class_elmt_cytoplasm

    input Real elmt_reactant3;
    input Real elmt_product0;
    input Real elmt_reaction_0000004;
    input Real elmt_product5;
    input Real elmt_reaction_0000003;
    input Real elmt_reaction_0000002;
    input Real elmt_product2;
    input Real elmt_reaction_0000001;

    Real elmt_cytoplasm(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_y_conc(unit = "");
    Real elmt_y_amount(unit = "");
    Real elmt_y(unit = "") "Ca_Cyt";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cytoplasm = 1.0;
        elmt_y_conc = 1.0;


    equation
        assert(elmt_cytoplasm >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytoplasm) = 0;
        elmt_y = elmt_y_conc;
        der(elmt_y_amount) = ((elmt_reaction_0000004 * elmt_product5) + (- (elmt_reaction_0000003 * elmt_reactant3)) + (elmt_reaction_0000002 * elmt_product2) + (elmt_reaction_0000001 * elmt_product0));

    algorithm
        elmt_y_conc := elmt_y_amount / elmt_cytoplasm;
end Class_elmt_cytoplasm;
