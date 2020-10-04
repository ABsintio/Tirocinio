within BIOMD275;
class Class_elmt_PSM

    input Real elmt_reactant2;
    input Real elmt_reactant1;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_reactant6;
    input Real elmt_L;
    input Real elmt_reactant8;
    input Real elmt_M_C_transcription;
    input Real elmt_product0;
    input Real elmt_RA_decay;
    input Real elmt_RA_deg_by_Cyp26;
    input Real elmt_C_translation;
    input Real elmt_M_0;
    input Real elmt_product5;
    input Real elmt_FGF_synthesis;
    input Real elmt_product3;
    input Real elmt_RA_synthesis;
    input Real elmt_FGF_decay;
    input Real elmt_x;
    input Real elmt_C_decay;
    input Real elmt_M_C_decay;

    Real elmt_PSM(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_M_F_conc(unit = "");
    Real elmt_M_F_amount(unit = "");
    Real elmt_M_F(unit = "") "FGF_mRNA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RA_conc(unit = "");
    Real elmt_RA_amount(unit = "");
    Real elmt_RA(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_M_C_conc(unit = "");
    Real elmt_M_C_amount(unit = "");
    Real elmt_M_C(unit = "") "cyp26_mRNA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_F_conc(unit = "");
    Real elmt_F_amount(unit = "");
    Real elmt_F(unit = "") "FGF";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C_conc(unit = "");
    Real elmt_C_amount(unit = "");
    Real elmt_C(unit = "") "CYP26";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_PSM = 1.0;
        elmt_RA_conc = 0.1;
        elmt_M_C_conc = 0.1;
        elmt_F_conc = 1.0;
        elmt_C_conc = 0.1;


    equation
        assert(elmt_PSM >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_PSM) = 0;
        elmt_M_F = elmt_M_F_conc;
        elmt_RA = elmt_RA_conc;
        elmt_M_C = elmt_M_C_conc;
        elmt_F = elmt_F_conc;
        elmt_C = elmt_C_conc;
        elmt_M_F_amount = (elmt_M_0 * (elmt_x / elmt_L)) * elmt_PSM;
        der(elmt_RA_amount) = ((elmt_RA_synthesis * elmt_product0) + (- (elmt_RA_decay * elmt_reactant1)) + (- (elmt_RA_deg_by_Cyp26 * elmt_reactant2)));
        der(elmt_M_C_amount) = ((elmt_M_C_transcription * elmt_product3) + (- (elmt_M_C_decay * elmt_reactant4)));
        der(elmt_F_amount) = ((- (elmt_FGF_decay * elmt_reactant8)) + (elmt_FGF_synthesis * elmt_product7));
        der(elmt_C_amount) = ((elmt_C_translation * elmt_product5) + (- (elmt_C_decay * elmt_reactant6)));

    algorithm
        elmt_M_F_conc := elmt_M_F_amount / elmt_PSM;
        elmt_RA_conc := elmt_RA_amount / elmt_PSM;
        elmt_M_C_conc := elmt_M_C_amount / elmt_PSM;
        elmt_F_conc := elmt_F_amount / elmt_PSM;
        elmt_C_conc := elmt_C_amount / elmt_PSM;
end Class_elmt_PSM;
