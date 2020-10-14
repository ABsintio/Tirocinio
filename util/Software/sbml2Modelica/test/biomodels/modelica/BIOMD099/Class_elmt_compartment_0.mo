within BIOMD099;
class Class_elmt_compartment_0

    input Real elmt_product10;
    input Real elmt_reactant11;
    input Real elmt_reaction_10;
    input Real elmt_reaction_11;

    Real elmt_compartment_0(unit = "") "Extracellular";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_0_conc(unit = "");
    Real elmt_species_0_amount(unit = "");
    Real elmt_species_0(unit = "") "Ex_cAMP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment_0 = 1.0;
        elmt_species_0_conc = 0.0;


    equation
        assert(elmt_compartment_0 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_0) = 0;
        elmt_species_0 = elmt_species_0_conc;
        der(elmt_species_0_amount) = ((elmt_reaction_10 * elmt_product10) + (- (elmt_reaction_11 * elmt_reactant11)));

    algorithm
        elmt_species_0_conc := elmt_species_0_amount / elmt_compartment_0;
end Class_elmt_compartment_0;
