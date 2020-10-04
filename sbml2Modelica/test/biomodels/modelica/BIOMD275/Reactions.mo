within BIOMD275;
class Reactions

    input Real elmt_kd1;
    input Real elmt_m;
    input Real elmt_n;
    input Real elmt_vs1;
    input Real elmt_M_F;
    input Real elmt_M_C;
    input Real elmt_F;
    input Real elmt_kd5;
    input Real elmt_C;
    input Real elmt_kd4;
    input Real elmt_kd3;
    input Real elmt_kd2;
    input Real elmt_Ka;
    input Real elmt_Vsc;
    input Real elmt_RA;
    input Real elmt_Ki;
    input Real elmt_V0;
    input Real elmt_ks3;
    input Real elmt_ks2;
    input Real elmt_PSM;

    Real elmt_RA_synthesis(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product0 "";
    Real elmt_M_C_transcription(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product3 "";
    Real elmt_FGF_decay(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant8 "";
    Real elmt_RA_decay(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant1 "";
    Real elmt_RA_deg_by_Cyp26(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_C_translation(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product5 "";
    Real elmt_C_decay(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant6 "";
    Real elmt_M_C_decay(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
    Real elmt_FGF_synthesis(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product7 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product0 = 1.0;
        elmt_product5 = 1.0;
        elmt_product3 = 1.0;


    equation
        elmt_RA_synthesis = (elmt_PSM * elmt_vs1);
        elmt_M_C_transcription = (elmt_PSM * (elmt_V0 + ((elmt_Vsc * Functions.pow(elmt_F, elmt_n)) / (Functions.pow(elmt_Ka, elmt_n) + Functions.pow(elmt_F, elmt_n)))));
        elmt_FGF_decay = (elmt_PSM * elmt_kd4 * elmt_F);
        elmt_RA_decay = (elmt_PSM * elmt_kd5 * elmt_RA);
        elmt_RA_deg_by_Cyp26 = (elmt_PSM * elmt_kd1 * elmt_RA * elmt_C);
        elmt_C_translation = (elmt_PSM * elmt_ks2 * elmt_M_C);
        elmt_C_decay = (elmt_PSM * elmt_kd2 * elmt_C);
        elmt_M_C_decay = (elmt_PSM * elmt_kd3 * elmt_M_C);
        elmt_FGF_synthesis = (elmt_PSM * elmt_ks3 * elmt_M_F * (Functions.pow(elmt_Ki, elmt_m) / (Functions.pow(elmt_Ki, elmt_m) + Functions.pow(elmt_RA, elmt_m))));
        der(elmt_reactant2) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product0) = 0;
        der(elmt_product5) = 0;
        der(elmt_product3) = 0;

end Reactions;
