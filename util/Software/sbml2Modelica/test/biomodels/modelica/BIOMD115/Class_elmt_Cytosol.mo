within BIOMD115;
class Class_elmt_Cytosol

    input Real elmt_reaction_0000005;
    input Real elmt_product6;
    input Real elmt_reactant3;
    input Real elmt_reactant7;
    input Real elmt_product0;
    input Real elmt_reaction_0000004;
    input Real elmt_reaction_0000003;
    input Real elmt_reaction_0000002;
    input Real elmt_product2;
    input Real elmt_reaction_0000001;

    Real elmt_Cytosol(unit = "") "";
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
        elmt_Cytosol = 1.0;
        elmt_y_conc = 1.0;


    equation
        assert(elmt_Cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Cytosol) = 0;
        elmt_y = elmt_y_conc;
        der(elmt_y_amount) = ((- (elmt_reaction_0000005 * elmt_reactant7)) + (elmt_reaction_0000004 * elmt_product6) + (- (elmt_reaction_0000003 * elmt_reactant3)) + (elmt_reaction_0000002 * elmt_product2) + (elmt_reaction_0000001 * elmt_product0));

    algorithm
        elmt_y_conc := elmt_y_amount / elmt_Cytosol;
end Class_elmt_Cytosol;
