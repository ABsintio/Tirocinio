within BIOMD170;
class Class_elmt_Cytoplasm

    input Real elmt_product9;
    input Real elmt_reactant1;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_reactant3;
    input Real elmt_Bmal1_mRNA_degradation;
    input Real elmt_product11;
    input Real elmt_BMAL1_nuclear_import;
    input Real elmt_per2_cry_transcription;
    input Real elmt_product0;
    input Real elmt_reactant10;
    input Real elmt_per2_cry_complex_formation;
    input Real elmt_reactant12;
    input Real elmt_reactant13;
    input Real elmt_product2;
    input Real elmt_Bmal1_transcription;
    input Real elmt_BMAL1_translation;
    input Real elmt_per2_cry_nuclear_import;
    input Real elmt_product16;
    input Real elmt_cytoplasmic_BMAL1_degradation;
    input Real elmt_cytoplasmic_per2_cry_complex_degradation;
    input Real elmt_per2_cry_mRNA_degradation;
    input Real elmt_BMAL1_nuclear_export;
    input Real elmt_per2_cry_nuclear_export;

    Real elmt_Cytoplasm(unit = "") "Cytoplasm";
    Real elmt_y4_conc(unit = "");
    Real elmt_y4_amount(unit = "");
    Real elmt_y4(unit = "") "Bmal1 mRNA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_y5_conc(unit = "");
    Real elmt_y5_amount(unit = "");
    Real elmt_y5(unit = "") "BMAL1_cytoplasm";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_y2_conc(unit = "");
    Real elmt_y2_amount(unit = "");
    Real elmt_y2(unit = "") "PER2_CRY_complex_cytoplasm";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_y1_conc(unit = "");
    Real elmt_y1_amount(unit = "");
    Real elmt_y1(unit = "") "Per2 or Cry mRNA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_Cytoplasm = 1.0;
        elmt_y4_conc = 0.8;
        elmt_y5_conc = 1.0;
        elmt_y2_conc = 0.0;
        elmt_y1_conc = 0.2;


    equation
        assert(elmt_Cytoplasm >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Cytoplasm) = 0;
        elmt_y4 = elmt_y4_conc;
        elmt_y5 = elmt_y5_conc;
        elmt_y2 = elmt_y2_conc;
        elmt_y1 = elmt_y1_conc;
        der(elmt_y4_amount) = ((- (elmt_Bmal1_mRNA_degradation * elmt_reactant10)) + (elmt_Bmal1_transcription * elmt_product9));
        der(elmt_y5_amount) = ((- (elmt_BMAL1_nuclear_import * elmt_reactant13)) + (elmt_BMAL1_translation * elmt_product11) + (- (elmt_cytoplasmic_BMAL1_degradation * elmt_reactant12)) + (elmt_BMAL1_nuclear_export * elmt_product16));
        der(elmt_y2_amount) = ((elmt_per2_cry_complex_formation * elmt_product2) + (- (elmt_per2_cry_nuclear_import * elmt_reactant4)) + (- (elmt_cytoplasmic_per2_cry_complex_degradation * elmt_reactant3)) + (elmt_per2_cry_nuclear_export * elmt_product7));
        der(elmt_y1_amount) = ((elmt_per2_cry_transcription * elmt_product0) + (- (elmt_per2_cry_mRNA_degradation * elmt_reactant1)));

    algorithm
        elmt_y4_conc := elmt_y4_amount / elmt_Cytoplasm;
        elmt_y5_conc := elmt_y5_amount / elmt_Cytoplasm;
        elmt_y2_conc := elmt_y2_amount / elmt_Cytoplasm;
        elmt_y1_conc := elmt_y1_amount / elmt_Cytoplasm;
end Class_elmt_Cytoplasm;
