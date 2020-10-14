within BIOMD190;
class Class_elmt_cytosol

    input Real elmt_PAO_for_aD;
    input Real elmt_reactant20;
    input Real elmt_product10;
    input Real elmt_MAT;
    input Real elmt_reactant28;
    input Real elmt_P_efflux;
    input Real elmt_SpmS;
    input Real elmt_PAO_for_aS;
    input Real elmt_SAMdc;
    input Real elmt_reactant19;
    input Real elmt_ODC;
    input Real elmt_SSAT_for_D;
    input Real elmt_reactant2;
    input Real elmt_reactant4;
    input Real elmt_product6;
    input Real elmt_product23;
    input Real elmt_product21;
    input Real elmt_reactant8;
    input Real elmt_SpdS;
    input Real elmt_product1;
    input Real elmt_reactant14;
    input Real elmt_reactant16;
    input Real elmt_reactant17;
    input Real elmt_SSAT_for_S;
    input Real elmt_reactant12;
    input Real elmt_product3;
    input Real elmt_aD_efflux;
    input Real elmt_reactant29;
    input Real elmt_product15;
    input Real elmt_product13;
    input Real elmt_product18;

    Real elmt_cytosol(unit = "") "Cytosol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_P_conc(unit = "");
    Real elmt_P_amount(unit = "");
    Real elmt_P(unit = "") "Putrescine";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_aD_conc(unit = "");
    Real elmt_aD_amount(unit = "");
    Real elmt_aD(unit = "") "N1-Acetylspermidine";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_CoA_conc(unit = "");
    Real elmt_CoA_amount(unit = "");
    Real elmt_CoA(unit = "") "CoA";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_aS_conc(unit = "");
    Real elmt_aS_amount(unit = "");
    Real elmt_aS(unit = "") "N1-Acetylspermine";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_SAM_conc(unit = "");
    Real elmt_SAM_amount(unit = "");
    Real elmt_SAM(unit = "") "S-adenosyl-L-methionine";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_AcCoA_conc(unit = "");
    Real elmt_AcCoA_amount(unit = "");
    Real elmt_AcCoA(unit = "") "Acetyl-CoA";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_S_conc(unit = "");
    Real elmt_S_amount(unit = "");
    Real elmt_S(unit = "") "Spermine";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_ORN_conc(unit = "");
    Real elmt_ORN_amount(unit = "");
    Real elmt_ORN(unit = "") "L-Ornithine";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_D_conc(unit = "");
    Real elmt_D_amount(unit = "");
    Real elmt_D(unit = "") "Spermidine";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Met_conc(unit = "");
    Real elmt_Met_amount(unit = "");
    Real elmt_Met(unit = "") "Methionine";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_A_conc(unit = "");
    Real elmt_A_amount(unit = "");
    Real elmt_A(unit = "") "S-adenosylmethioninamine";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_cytosol = 1.0;
        elmt_P_conc = 0.01;
        elmt_aD_conc = 0.01;
        elmt_CoA_conc = 160.0;
        elmt_aS_conc = 0.01;
        elmt_SAM_conc = 0.01;
        elmt_AcCoA_conc = 39.5;
        elmt_S_conc = 0.01;
        elmt_ORN_conc = 300.0;
        elmt_D_conc = 0.01;
        elmt_Met_conc = 50.0;
        elmt_A_conc = 0.01;


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_P = elmt_P_conc;
        elmt_aD = elmt_aD_conc;
        elmt_CoA = elmt_CoA_conc;
        elmt_aS = elmt_aS_conc;
        elmt_SAM = elmt_SAM_conc;
        elmt_AcCoA = elmt_AcCoA_conc;
        elmt_S = elmt_S_conc;
        elmt_ORN = elmt_ORN_conc;
        elmt_D = elmt_D_conc;
        elmt_Met = elmt_Met_conc;
        elmt_A = elmt_A_conc;
        der(elmt_CoA_amount) = 0;
        der(elmt_AcCoA_amount) = 0;
        der(elmt_ORN_amount) = 0;
        der(elmt_Met_amount) = 0;
        der(elmt_P_amount) = ((elmt_PAO_for_aD * elmt_product13) + (- (elmt_SpdS * elmt_reactant17)) + (- (elmt_P_efflux * elmt_reactant28)) + (elmt_ODC * elmt_product1));
        der(elmt_aD_amount) = ((- (elmt_PAO_for_aD * elmt_reactant12)) + (- (elmt_aD_efflux * elmt_reactant29)) + (elmt_SSAT_for_D * elmt_product10));
        der(elmt_aS_amount) = ((elmt_SSAT_for_S * elmt_product6) + (- (elmt_PAO_for_aS * elmt_reactant14)));
        der(elmt_SAM_amount) = ((elmt_MAT * elmt_product23) + (- (elmt_SAMdc * elmt_reactant2)));
        der(elmt_S_amount) = ((- (elmt_SSAT_for_S * elmt_reactant4)) + (elmt_SpmS * elmt_product21));
        der(elmt_D_amount) = ((elmt_SpdS * elmt_product18) + (- (elmt_SpmS * elmt_reactant20)) + (elmt_PAO_for_aS * elmt_product15) + (- (elmt_SSAT_for_D * elmt_reactant8)));
        der(elmt_A_amount) = ((- (elmt_SpdS * elmt_reactant16)) + (- (elmt_SpmS * elmt_reactant19)) + (elmt_SAMdc * elmt_product3));

    algorithm
        elmt_P_conc := elmt_P_amount / elmt_cytosol;
        elmt_aD_conc := elmt_aD_amount / elmt_cytosol;
        elmt_CoA_conc := elmt_CoA_amount / elmt_cytosol;
        elmt_aS_conc := elmt_aS_amount / elmt_cytosol;
        elmt_SAM_conc := elmt_SAM_amount / elmt_cytosol;
        elmt_AcCoA_conc := elmt_AcCoA_amount / elmt_cytosol;
        elmt_S_conc := elmt_S_amount / elmt_cytosol;
        elmt_ORN_conc := elmt_ORN_amount / elmt_cytosol;
        elmt_D_conc := elmt_D_amount / elmt_cytosol;
        elmt_Met_conc := elmt_Met_amount / elmt_cytosol;
        elmt_A_conc := elmt_A_amount / elmt_cytosol;
end Class_elmt_cytosol;
