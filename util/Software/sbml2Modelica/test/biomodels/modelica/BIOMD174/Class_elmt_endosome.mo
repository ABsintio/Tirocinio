within BIOMD174;
class Class_elmt_endosome

    input Real elmt_product10;
    input Real elmt_reactant9;
    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_product6;
    input Real elmt_reactant3;
    input Real elmt_reactant5;
    input Real elmt_reactant7;
    input Real elmt_reaction_3;
    input Real elmt_reactant14;
    input Real elmt_reaction_4;
    input Real elmt_product0;
    input Real elmt_reaction_1;
    input Real elmt_reaction_2;
    input Real elmt_reactant11;
    input Real elmt_product4;
    input Real elmt_reaction_0;
    input Real elmt_reactant12;
    input Real elmt_product2;
    input Real elmt_reaction_9;
    input Real elmt_reaction_7;
    input Real elmt_reaction_8;
    input Real elmt_reaction_5;
    input Real elmt_reaction_6;
    input Real elmt_product15;
    input Real elmt_product13;

    Real elmt_endosome(unit = "") "endosomal membrane";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_r7_conc(unit = "");
    Real elmt_r7_amount(unit = "");
    Real elmt_r7(unit = "") "Rab7-GDP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_R7_conc(unit = "");
    Real elmt_R7_amount(unit = "");
    Real elmt_R7(unit = "") "Rab7-GTP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_r5_conc(unit = "");
    Real elmt_r5_amount(unit = "");
    Real elmt_r5(unit = "") "Rab5-GDP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_R5_conc(unit = "");
    Real elmt_R5_amount(unit = "");
    Real elmt_R5(unit = "") "Rab5-GTP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_endosome = 1.0;
        elmt_r7_conc = 1.0;
        elmt_R7_conc = 0.001;
        elmt_r5_conc = 1.0;
        elmt_R5_conc = 0.001;


    equation
        assert(elmt_endosome >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_endosome) = 0;
        elmt_r7 = elmt_r7_conc;
        elmt_R7 = elmt_R7_conc;
        elmt_r5 = elmt_r5_conc;
        elmt_R5 = elmt_R5_conc;
        der(elmt_r7_amount) = ((elmt_reaction_9 * elmt_product15) + (- (elmt_reaction_7 * elmt_reactant11)) + (- (elmt_reaction_5 * elmt_reactant7)) + (elmt_reaction_3 * elmt_product4) + (- (elmt_reaction_4 * elmt_reactant5)));
        der(elmt_R7_amount) = ((- (elmt_reaction_9 * elmt_reactant14)) + (elmt_reaction_5 * elmt_product8) + (elmt_reaction_4 * elmt_product6));
        der(elmt_r5_amount) = ((elmt_reaction_8 * elmt_product13) + (elmt_reaction_6 * elmt_product10) + (- (elmt_reaction_1 * elmt_reactant1)) + (- (elmt_reaction_2 * elmt_reactant3)) + (elmt_reaction_0 * elmt_product0));
        der(elmt_R5_amount) = ((- (elmt_reaction_8 * elmt_reactant12)) + (- (elmt_reaction_6 * elmt_reactant9)) + (elmt_reaction_1 * elmt_product2));

    algorithm
        elmt_r7_conc := elmt_r7_amount / elmt_endosome;
        elmt_R7_conc := elmt_R7_amount / elmt_endosome;
        elmt_r5_conc := elmt_r5_amount / elmt_endosome;
        elmt_R5_conc := elmt_R5_amount / elmt_endosome;
end Class_elmt_endosome;
