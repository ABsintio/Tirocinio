within BIOMD190;
model Model_1 "Rodriguez-Caso2006_Polyamine_Metabolism" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cytosol elmt_cytosol;

    equation
        Params.elmt_S = elmt_cytosol.elmt_S;
        Params.elmt_D = elmt_cytosol.elmt_D;
        Reacs.elmt_P = elmt_cytosol.elmt_P;
        Reacs.elmt_Vmaxssat = Params.elmt_Vmaxssat;
        Reacs.elmt_aD = elmt_cytosol.elmt_aD;
        Reacs.elmt_CoA = elmt_cytosol.elmt_CoA;
        Reacs.elmt_SAM = elmt_cytosol.elmt_SAM;
        Reacs.elmt_AcCoA = elmt_cytosol.elmt_AcCoA;
        Reacs.elmt_Kaccoa = Params.elmt_Kaccoa;
        Reacs.elmt_cytosol = elmt_cytosol.elmt_cytosol;
        Reacs.elmt_C = Params.elmt_C;
        Reacs.elmt_D = elmt_cytosol.elmt_D;
        Reacs.elmt_Met = elmt_cytosol.elmt_Met;
        Reacs.elmt_Kcoa = Params.elmt_Kcoa;
        Reacs.elmt_A = elmt_cytosol.elmt_A;
        Reacs.elmt_Vmaxsamdc = Params.elmt_Vmaxsamdc;
        Reacs.elmt_aS = elmt_cytosol.elmt_aS;
        Reacs.elmt_S = elmt_cytosol.elmt_S;
        Reacs.elmt_ORN = elmt_cytosol.elmt_ORN;
        Reacs.elmt_Vmaxodc = Params.elmt_Vmaxodc;
        elmt_cytosol.elmt_PAO_for_aD = Reacs.elmt_PAO_for_aD;
        elmt_cytosol.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_cytosol.elmt_product10 = Reacs.elmt_product10;
        elmt_cytosol.elmt_MAT = Reacs.elmt_MAT;
        elmt_cytosol.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_cytosol.elmt_P_efflux = Reacs.elmt_P_efflux;
        elmt_cytosol.elmt_SpmS = Reacs.elmt_SpmS;
        elmt_cytosol.elmt_PAO_for_aS = Reacs.elmt_PAO_for_aS;
        elmt_cytosol.elmt_SAMdc = Reacs.elmt_SAMdc;
        elmt_cytosol.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_cytosol.elmt_ODC = Reacs.elmt_ODC;
        elmt_cytosol.elmt_SSAT_for_D = Reacs.elmt_SSAT_for_D;
        elmt_cytosol.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cytosol.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cytosol.elmt_product6 = Reacs.elmt_product6;
        elmt_cytosol.elmt_product23 = Reacs.elmt_product23;
        elmt_cytosol.elmt_product21 = Reacs.elmt_product21;
        elmt_cytosol.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cytosol.elmt_SpdS = Reacs.elmt_SpdS;
        elmt_cytosol.elmt_product1 = Reacs.elmt_product1;
        elmt_cytosol.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cytosol.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cytosol.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_cytosol.elmt_SSAT_for_S = Reacs.elmt_SSAT_for_S;
        elmt_cytosol.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cytosol.elmt_product3 = Reacs.elmt_product3;
        elmt_cytosol.elmt_aD_efflux = Reacs.elmt_aD_efflux;
        elmt_cytosol.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_cytosol.elmt_product15 = Reacs.elmt_product15;
        elmt_cytosol.elmt_product13 = Reacs.elmt_product13;
        elmt_cytosol.elmt_product18 = Reacs.elmt_product18;

end Model_1;
