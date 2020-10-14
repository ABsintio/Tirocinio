within BIOMD104;
class Reactions

    input Real elmt_species_2;
    input Real elmt_species_3;
    input Real elmt_species_0;
    input Real elmt_species_1;
    input Real elmt_compartment_0;

    Real elmt_reaction_1(unit = "") "X1->P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_1_elmt_k2(unit "") = 1.0 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_reaction_0(unit = "") "S->X1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_0_elmt_k1(unit "") = 1.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product1 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_reaction_1 = (elmt_compartment_0 * elmt_reaction_1_elmt_k2 * elmt_species_1 * elmt_species_3);
        elmt_reaction_0 = (elmt_compartment_0 * elmt_species_0 * elmt_species_2 * elmt_reaction_0_elmt_k1);
        der(elmt_reactant2) = 0;
        der(elmt_product1) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
