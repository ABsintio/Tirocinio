within BIOMD267;
class Class_elmt_extracellular

    input Real elmt_binding;
    input Real elmt_reactant4;
    input Real elmt_product5;
    input Real elmt_reactant0;
    input Real elmt_endocytosis;

    Real elmt_extracellular(unit = "") "extracellular";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_bound_conc(unit = "");
    Real elmt_bound_amount(unit = "");
    Real elmt_bound(unit = "") "bound_BoNT/A";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_free_conc(unit = "");
    Real elmt_free_amount(unit = "");
    Real elmt_free(unit = "") "free_BoNT/A";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_extracellular = 1.0;
        elmt_bound_conc = 0.0;
        elmt_free_conc = 1.0;


    equation
        assert(elmt_extracellular >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_extracellular) = 0;
        elmt_bound = elmt_bound_conc;
        elmt_free = elmt_free_conc;
        der(elmt_bound_amount) = ((elmt_binding * elmt_product5) + (- (elmt_endocytosis * elmt_reactant0)));
        der(elmt_free_amount) = (- (elmt_binding * elmt_reactant4));

    algorithm
        elmt_bound_conc := elmt_bound_amount / elmt_extracellular;
        elmt_free_conc := elmt_free_amount / elmt_extracellular;
end Class_elmt_extracellular;
