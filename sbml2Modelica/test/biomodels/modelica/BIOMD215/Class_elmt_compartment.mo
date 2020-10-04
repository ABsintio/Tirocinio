within BIOMD215;
class Class_elmt_compartment

    input Real elmt_product12;
    input Real elmt_product11;
    input Real elmt_product10;
    input Real elmt_product9;
    input Real elmt_reactant4;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_reactant5;
    input Real elmt_reactant8;
    input Real elmt_reactant7;
    input Real elmt_reaction_3;
    input Real elmt_product1;
    input Real elmt_product0;
    input Real elmt_reaction_4;
    input Real elmt_reaction_1;
    input Real elmt_reaction_2;
    input Real elmt_product2;
    input Real elmt_reaction_9;
    input Real elmt_vtrnldeg;
    input Real elmt_reaction_7;
    input Real elmt_reaction_8;
    input Real elmt_reaction_5;
    input Real elmt_reaction_6;
    input Real elmt_product13;
    input Real elmt_reaction_12;
    input Real elmt_reaction_13;
    input Real elmt_reaction_10;
    input Real elmt_reaction_11;

    Real elmt_compartment(unit = "") "compartment";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Tbet_mRNA_conc(unit = "");
    Real elmt_Tbet_mRNA_amount(unit = "");
    Real elmt_Tbet_mRNA(unit = "") "Tbet_mRNA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ag_conc(unit = "");
    Real elmt_Ag_amount(unit = "");
    Real elmt_Ag(unit = "") "Ag";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ifn_Prot_conc(unit = "");
    Real elmt_Ifn_Prot_amount(unit = "");
    Real elmt_Ifn_Prot(unit = "") "Ifn_Prot";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Rec_Prot_conc(unit = "");
    Real elmt_Rec_Prot_amount(unit = "");
    Real elmt_Rec_Prot(unit = "") "Rec_Prot";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ifn_mRNA_conc(unit = "");
    Real elmt_Ifn_mRNA_amount(unit = "");
    Real elmt_Ifn_mRNA(unit = "") "Ifn_mRNA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Tbet_Prot_conc(unit = "");
    Real elmt_Tbet_Prot_amount(unit = "");
    Real elmt_Tbet_Prot(unit = "") "Tbet_Prot";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Rec_mRNA_conc(unit = "");
    Real elmt_Rec_mRNA_amount(unit = "");
    Real elmt_Rec_mRNA(unit = "") "Rec_mRNA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_Tbet_mRNA_conc = 0.0440000000000001;
        elmt_Ifn_Prot_conc = 0.0;
        elmt_Rec_Prot_conc = 0.0;
        elmt_Ifn_mRNA_conc = 0.0;
        elmt_Tbet_Prot_conc = 44.0000000000001;
        elmt_Rec_mRNA_conc = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_Tbet_mRNA = elmt_Tbet_mRNA_conc;
        elmt_Ag = elmt_Ag_conc;
        elmt_Ifn_Prot = elmt_Ifn_Prot_conc;
        elmt_Rec_Prot = elmt_Rec_Prot_conc;
        elmt_Ifn_mRNA = elmt_Ifn_mRNA_conc;
        elmt_Tbet_Prot = elmt_Tbet_Prot_conc;
        elmt_Rec_mRNA = elmt_Rec_mRNA_conc;
        elmt_Ag_amount = (1.0 - (Functions.pow(time, 10.0) / (Functions.pow(34.0, 10.0) + Functions.pow(time, 10.0)))) * elmt_compartment;
        der(elmt_Tbet_mRNA_amount) = ((- (elmt_reaction_3 * elmt_reactant3)) + (elmt_reaction_1 * elmt_product1) + (elmt_reaction_2 * elmt_product2) + (elmt_vtrnldeg * elmt_product0));
        der(elmt_Ifn_Prot_amount) = ((- (elmt_reaction_8 * elmt_reactant8)) + (elmt_reaction_10 * elmt_product10));
        der(elmt_Rec_Prot_amount) = ((- (elmt_reaction_6 * elmt_reactant6)) + (elmt_reaction_11 * elmt_product11));
        der(elmt_Ifn_mRNA_amount) = ((- (elmt_reaction_7 * elmt_reactant7)) + (elmt_reaction_13 * elmt_product13));
        der(elmt_Tbet_Prot_amount) = ((- (elmt_reaction_4 * elmt_reactant4)) + (elmt_reaction_9 * elmt_product9));
        der(elmt_Rec_mRNA_amount) = ((- (elmt_reaction_5 * elmt_reactant5)) + (elmt_reaction_12 * elmt_product12));

    algorithm
        elmt_Tbet_mRNA_conc := elmt_Tbet_mRNA_amount / elmt_compartment;
        elmt_Ag_conc := elmt_Ag_amount / elmt_compartment;
        elmt_Ifn_Prot_conc := elmt_Ifn_Prot_amount / elmt_compartment;
        elmt_Rec_Prot_conc := elmt_Rec_Prot_amount / elmt_compartment;
        elmt_Ifn_mRNA_conc := elmt_Ifn_mRNA_amount / elmt_compartment;
        elmt_Tbet_Prot_conc := elmt_Tbet_Prot_amount / elmt_compartment;
        elmt_Rec_mRNA_conc := elmt_Rec_mRNA_amount / elmt_compartment;
end Class_elmt_compartment;
