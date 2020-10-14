within BIOMD300;
class Reactions

    input Real elmt_parameter_9;
    input Real elmt_parameter_8;
    input Real elmt_parameter_7;
    input Real elmt_species_7;
    input Real elmt_parameter_18;
    input Real elmt_parameter_17;
    input Real elmt_parameter_16;
    input Real elmt_species_5;
    input Real elmt_parameter_14;
    input Real elmt_parameter_13;
    input Real elmt_species_8;
    input Real elmt_species_9;
    input Real elmt_species_2;
    input Real elmt_species_3;
    input Real elmt_species_1;
    input Real elmt_compartment_1;
    input Real elmt_parameter_6;
    input Real elmt_parameter_4;
    input Real elmt_species_10;
    input Real elmt_species_11;
    input Real elmt_parameter_1;

    Real elmt_reaction_9(unit = "") "A degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant8 "";
    Real elmt_reaction_7(unit = "") "H hydroxylation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant6 "";
    Real elmt_reaction_8(unit = "") "A synthesis";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product7 "";
    Real elmt_reaction_5(unit = "") "H basal degardation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
    Real elmt_reaction_6(unit = "") "H induced degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant5 "";
    Real elmt_reaction_3(unit = "") "Htot induced degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_reaction_4(unit = "") "H synthesis";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product3 "";
    Real elmt_reaction_1(unit = "") "Htot synthesis";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product0 "";
    Real elmt_reaction_2(unit = "") "Htot basal degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant1 "";
    Real elmt_reaction_10(unit = "") "A hydroxylation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant9 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product3 = 1.0;


    equation
        elmt_reaction_9 = (elmt_compartment_1 * elmt_parameter_14 * elmt_species_3);
        elmt_reaction_7 = (elmt_compartment_1 * ((((elmt_species_2 * elmt_parameter_13 * elmt_species_7 * elmt_species_11) / (elmt_parameter_1 + elmt_species_11)) / (elmt_parameter_7 + elmt_species_7 + elmt_species_9))));
        elmt_reaction_8 = (elmt_compartment_1 * (elmt_parameter_16));
        elmt_reaction_5 = (elmt_compartment_1 * elmt_parameter_17 * elmt_species_2);
        elmt_reaction_6 = (elmt_compartment_1 * ((((elmt_species_2 * elmt_parameter_8 * elmt_species_8 * elmt_species_11) / (1.0 + elmt_species_11)) / (elmt_parameter_4 + elmt_species_8 + elmt_species_10))));
        elmt_reaction_3 = (elmt_compartment_1 * ((((elmt_species_1 * elmt_parameter_8 * elmt_species_8 * elmt_species_11) / (1.0 + elmt_species_11)) / (elmt_parameter_4 + elmt_species_8 + elmt_species_10))));
        elmt_reaction_4 = (elmt_compartment_1 * (elmt_parameter_18));
        elmt_reaction_1 = (elmt_compartment_1 * (elmt_parameter_18));
        elmt_reaction_2 = (elmt_compartment_1 * elmt_parameter_17 * elmt_species_1);
        elmt_reaction_10 = (elmt_compartment_1 * ((((elmt_species_3 * elmt_parameter_13 * elmt_species_7 * elmt_species_11) / (elmt_parameter_1 + elmt_species_11)) / (elmt_parameter_9 + elmt_species_3 + (elmt_parameter_6 * (elmt_species_5 - elmt_species_3))))));
        der(elmt_reactant2) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product3) = 0;

end Reactions;
