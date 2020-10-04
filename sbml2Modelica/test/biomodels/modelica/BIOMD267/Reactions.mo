within BIOMD267;
class Reactions

    input Real elmt_endosome;
    input Real elmt_translocate;
    input Real elmt_extracellular;
    input Real elmt_bound;
    input Real elmt_free;

    Real elmt_binding(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_binding_elmt_kB(unit "s-1.0") = 0.058 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_translocation(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_translocation_elmt_kL(unit "s-1.0") = 0.013 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_endocytosis(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_endocytosis_elmt_kT(unit "s-1.0") = 0.141 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_binding = (elmt_binding_elmt_kB * elmt_free * elmt_extracellular);
        elmt_translocation = (elmt_translocation_elmt_kL * elmt_translocate * elmt_endosome);
        elmt_endocytosis = (elmt_endocytosis_elmt_kT * elmt_bound * elmt_extracellular);
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
