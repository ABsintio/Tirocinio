within BIOMD115;
class Class_elmt_ER

    input Real elmt_reactant1;
    input Real elmt_reactant5;
    input Real elmt_reaction_0000004;
    input Real elmt_reaction_0000003;
    input Real elmt_product4;
    input Real elmt_reaction_0000002;

    Real elmt_ER(unit = "") "Endoplasmic Reticulum";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x_conc(unit = "");
    Real elmt_x_amount(unit = "");
    Real elmt_x(unit = "") "Ca_ER";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_ER = 1.0;
        elmt_x_conc = 1.0;


    equation
        assert(elmt_ER >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_ER) = 0;
        elmt_x = elmt_x_conc;
        der(elmt_x_amount) = ((- (elmt_reaction_0000004 * elmt_reactant5)) + (elmt_reaction_0000003 * elmt_product4) + (- (elmt_reaction_0000002 * elmt_reactant1)));

    algorithm
        elmt_x_conc := elmt_x_amount / elmt_ER;
end Class_elmt_ER;
