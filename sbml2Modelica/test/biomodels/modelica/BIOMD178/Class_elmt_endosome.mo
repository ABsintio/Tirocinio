within BIOMD178;
class Class_elmt_endosome

    input Real elmt_reactant2;
    input Real elmt_translocation;
    input Real elmt_product1;
    input Real elmt_endocytosis;

    Real elmt_endosome(unit = "") "endosome";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_translocate_conc(unit = "");
    Real elmt_translocate_amount(unit = "");
    Real elmt_translocate(unit = "") "transloc_BoNT/A";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_endosome = 1.0;
        elmt_translocate_conc = 0.0;


    equation
        assert(elmt_endosome >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_endosome) = 0;
        elmt_translocate = elmt_translocate_conc;
        der(elmt_translocate_amount) = ((- (elmt_translocation * elmt_reactant2)) + (elmt_endocytosis * elmt_product1));

    algorithm
        elmt_translocate_conc := elmt_translocate_amount / elmt_endosome;
end Class_elmt_endosome;
