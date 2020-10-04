within BIOMD359;
class Class_elmt_compartment

    input Real elmt_reactant20;
    input Real elmt_product10;
    input Real elmt_reactant19;
    input Real elmt_reactant9;
    input Real elmt_reactant1;
    input Real elmt_product7;
    input Real elmt_reactant3;
    input Real elmt_product6;
    input Real elmt_reactant5;
    input Real elmt_product22;
    input Real elmt_product21;
    input Real elmt_reactant8;
    input Real elmt_reaction_3;
    input Real elmt_reactant14;
    input Real elmt_reaction_4;
    input Real elmt_reactant15;
    input Real elmt_reaction_1;
    input Real elmt_reaction_2;
    input Real elmt_reactant17;
    input Real elmt_reactant11;
    input Real elmt_product4;
    input Real elmt_reactant12;
    input Real elmt_reactant0;
    input Real elmt_product2;
    input Real elmt_reaction_9;
    input Real elmt_reaction_8;
    input Real elmt_reaction_5;
    input Real elmt_reaction_6;
    input Real elmt_product16;
    input Real elmt_product13;
    input Real elmt_product18;

    Real elmt_compartment(unit = "") "compartment";
    Real elmt_VIIa_TF_X_conc(unit = "");
    Real elmt_VIIa_TF_X_amount(unit = "");
    Real elmt_VIIa_TF_X(unit = "") "VIIa_TF_X";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_VIIa_TF_conc(unit = "");
    Real elmt_VIIa_TF_amount(unit = "");
    Real elmt_VIIa_TF(unit = "") "VIIa_TF";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Xa_TFPI_conc(unit = "");
    Real elmt_Xa_TFPI_amount(unit = "");
    Real elmt_Xa_TFPI(unit = "") "Xa_TFPI";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_TFPI_conc(unit = "");
    Real elmt_TFPI_amount(unit = "");
    Real elmt_TFPI(unit = "") "TFPI";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_X_conc(unit = "");
    Real elmt_X_amount(unit = "");
    Real elmt_X(unit = "") "X";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Xa_TFPI_VIIa_TF_conc(unit = "");
    Real elmt_Xa_TFPI_VIIa_TF_amount(unit = "");
    Real elmt_Xa_TFPI_VIIa_TF(unit = "") "Xa_TFPI_VIIa_TF";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_VIIa_TF_Xa_conc(unit = "");
    Real elmt_VIIa_TF_Xa_amount(unit = "");
    Real elmt_VIIa_TF_Xa(unit = "") "VIIa_TF_Xa";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_VIIa_TF_Xa_TFPI_conc(unit = "");
    Real elmt_VIIa_TF_Xa_TFPI_amount(unit = "");
    Real elmt_VIIa_TF_Xa_TFPI(unit = "") "VIIa_TF_Xa_TFPI";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Xa_conc(unit = "");
    Real elmt_Xa_amount(unit = "");
    Real elmt_Xa(unit = "") "Xa";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_VIIa_TF_X_conc = 0.0;
        elmt_VIIa_TF_conc = 1.0;
        elmt_Xa_TFPI_conc = 0.0;
        elmt_TFPI_conc = 2.4;
        elmt_X_conc = 170.0;
        elmt_Xa_TFPI_VIIa_TF_conc = 0.0;
        elmt_VIIa_TF_Xa_conc = 0.0;
        elmt_VIIa_TF_Xa_TFPI_conc = 0.0;
        elmt_Xa_conc = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_VIIa_TF_X = elmt_VIIa_TF_X_conc;
        elmt_VIIa_TF = elmt_VIIa_TF_conc;
        elmt_Xa_TFPI = elmt_Xa_TFPI_conc;
        elmt_TFPI = elmt_TFPI_conc;
        elmt_X = elmt_X_conc;
        elmt_Xa_TFPI_VIIa_TF = elmt_Xa_TFPI_VIIa_TF_conc;
        elmt_VIIa_TF_Xa = elmt_VIIa_TF_Xa_conc;
        elmt_VIIa_TF_Xa_TFPI = elmt_VIIa_TF_Xa_TFPI_conc;
        elmt_Xa = elmt_Xa_conc;
        der(elmt_VIIa_TF_X_amount) = ((- (elmt_reaction_8 * elmt_reactant19)) + (elmt_reaction_1 * elmt_product2) + (- (elmt_reaction_2 * elmt_reactant3)));
        der(elmt_VIIa_TF_amount) = ((- (elmt_reaction_5 * elmt_reactant11)) + (elmt_reaction_3 * elmt_product7) + (- (elmt_reaction_1 * elmt_reactant1)));
        der(elmt_Xa_TFPI_amount) = ((- (elmt_reaction_8 * elmt_reactant20)) + (- (elmt_reaction_5 * elmt_reactant12)) + (elmt_reaction_4 * elmt_product10));
        der(elmt_TFPI_amount) = ((- (elmt_reaction_6 * elmt_reactant15)) + (- (elmt_reaction_4 * elmt_reactant9)));
        der(elmt_X_amount) = ((elmt_reaction_8 * elmt_product21) + (- (elmt_reaction_1 * elmt_reactant0)));
        der(elmt_Xa_TFPI_VIIa_TF_amount) = ((elmt_reaction_9 * elmt_product18) + (elmt_reaction_5 * elmt_product13));
        der(elmt_VIIa_TF_Xa_amount) = ((- (elmt_reaction_6 * elmt_reactant14)) + (- (elmt_reaction_3 * elmt_reactant5)) + (elmt_reaction_2 * elmt_product4));
        der(elmt_VIIa_TF_Xa_TFPI_amount) = ((- (elmt_reaction_9 * elmt_reactant17)) + (elmt_reaction_8 * elmt_product22) + (elmt_reaction_6 * elmt_product16));
        der(elmt_Xa_amount) = ((elmt_reaction_3 * elmt_product6) + (- (elmt_reaction_4 * elmt_reactant8)));

    algorithm
        elmt_VIIa_TF_X_conc := elmt_VIIa_TF_X_amount / elmt_compartment;
        elmt_VIIa_TF_conc := elmt_VIIa_TF_amount / elmt_compartment;
        elmt_Xa_TFPI_conc := elmt_Xa_TFPI_amount / elmt_compartment;
        elmt_TFPI_conc := elmt_TFPI_amount / elmt_compartment;
        elmt_X_conc := elmt_X_amount / elmt_compartment;
        elmt_Xa_TFPI_VIIa_TF_conc := elmt_Xa_TFPI_VIIa_TF_amount / elmt_compartment;
        elmt_VIIa_TF_Xa_conc := elmt_VIIa_TF_Xa_amount / elmt_compartment;
        elmt_VIIa_TF_Xa_TFPI_conc := elmt_VIIa_TF_Xa_TFPI_amount / elmt_compartment;
        elmt_Xa_conc := elmt_Xa_amount / elmt_compartment;
end Class_elmt_compartment;
