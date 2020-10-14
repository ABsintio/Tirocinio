within BIOMD190;
class Reactions

    input Real elmt_P;
    input Real elmt_Vmaxssat;
    input Real elmt_aD;
    input Real elmt_CoA;
    input Real elmt_SAM;
    input Real elmt_AcCoA;
    input Real elmt_Kaccoa;
    input Real elmt_cytosol;
    input Real elmt_C;
    input Real elmt_D;
    input Real elmt_Met;
    input Real elmt_Kcoa;
    input Real elmt_A;
    input Real elmt_Vmaxsamdc;
    input Real elmt_aS;
    input Real elmt_S;
    input Real elmt_ORN;
    input Real elmt_Vmaxodc;

    Real elmt_PAO_for_aD(unit = "") "Polyamine oxidase for aD";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_PAO_for_aD_elmt_Kmaspao(unit "m-3.0.") = 0.6 "";
    parameter Real elmt_PAO_for_aD_elmt_Vmpao(unit "m-3.0..s-1.0") = 10.35 "";
    parameter Real elmt_PAO_for_aD_elmt_Kmdpao(unit "m-3.0.") = 50.0 "";
    parameter Real elmt_PAO_for_aD_elmt_Kmadpao(unit "m-3.0.") = 14.0 "";
    parameter Real elmt_PAO_for_aD_elmt_Kmspao(unit "m-3.0.") = 15.0 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_SpdS(unit = "") "Spermidine synthase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_SpdS_elmt_Kidspds(unit "m-3.0.") = 100.0 "";
    parameter Real elmt_SpdS_elmt_KaSpds(unit "m-3.0.") = 0.3 "";
    parameter Real elmt_SpdS_elmt_Kiaspds(unit "m-3.0.") = 0.8 "";
    parameter Real elmt_SpdS_elmt_Vmspds(unit "m-3.0..s-1.0") = 10.95 "";
    parameter Real elmt_SpdS_elmt_Kpspds(unit "m-3.0.") = 40.0 "";
    Real elmt_reactant16 "";
    Real elmt_reactant17 "";
    Real elmt_product18 "";
    Real elmt_MAT(unit = "") "Methionine adenosyltransferase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_MAT_elmt_Kmmat(unit "m-3.0.") = 41.0 "";
    parameter Real elmt_MAT_elmt_Vmmat(unit "m-3.0..s-1.0") = 0.45 "";
    parameter Real elmt_MAT_elmt_Kimetmat(unit "m-3.0.") = 50.0 "";
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_VCoA(unit = "") "VCOA";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product25 "";
    Real elmt_reactant24 "";
    Real elmt_SSAT_for_S(unit = "") "Spermidine/Spermine N1-acetyltransferase for S";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_SSAT_for_S_elmt_Kmsssat(unit "m-3.0.") = 35.0 "";
    parameter Real elmt_SSAT_for_S_elmt_Kmdssat(unit "m-3.0.") = 130.0 "";
    parameter Real elmt_SSAT_for_S_elmt_Kmaccoassat(unit "m-3.0.") = 1.5 "";
    parameter Real elmt_SSAT_for_S_elmt_Kmcoassat(unit "m-3.0.") = 40.0 "";
    Real elmt_reactant4 "";
    Real elmt_product7 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_SpmS(unit = "") "Spermine synthase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_SpmS_elmt_Kaspms(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_SpmS_elmt_Kiaspms(unit "m-3.0.") = 0.06 "";
    parameter Real elmt_SpmS_elmt_Vmspms(unit "m-3.0..s-1.0") = 3.23 "";
    parameter Real elmt_SpmS_elmt_Kisspms(unit "m-3.0.") = 25.0 "";
    parameter Real elmt_SpmS_elmt_Kdspms(unit "m-3.0.") = 60.0 "";
    Real elmt_reactant20 "";
    Real elmt_reactant19 "";
    Real elmt_product21 "";
    Real elmt_P_efflux(unit = "") "Putrescine efflux";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_P_efflux_elmt_Kpefflux(unit "s-1.0") = 0.01 "";
    Real elmt_reactant28 "";
    Real elmt_PAO_for_aS(unit = "") "Polyamine oxidase for aS";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_PAO_for_aS_elmt_Kmaspao(unit "m-3.0.") = 0.6 "";
    parameter Real elmt_PAO_for_aS_elmt_Vmpao(unit "m-3.0..s-1.0") = 10.35 "";
    parameter Real elmt_PAO_for_aS_elmt_Kmdpao(unit "m-3.0.") = 50.0 "";
    parameter Real elmt_PAO_for_aS_elmt_Kmadpao(unit "m-3.0.") = 14.0 "";
    parameter Real elmt_PAO_for_aS_elmt_Kmspao(unit "m-3.0.") = 15.0 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_aD_efflux(unit = "") "aD efflux";
    parameter Real elmt_aD_efflux_elmt_Kadefflux(unit "s-1.0") = 0.01 "";
    Real elmt_reactant29 "";
    Real elmt_SAMdc(unit = "") "S-adenosylmethionine decarboxylase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_SAMdc_elmt_Kapsamdc(unit "m-3.0.") = 0.5 "";
    parameter Real elmt_SAMdc_elmt_Kiasamdc(unit "m-3.0.") = 2.5 "";
    parameter Real elmt_SAMdc_elmt_Kmsamdc(unit "m-3.0.") = 50.0 "";
    parameter Real elmt_SAMdc_elmt_Kissamdc(unit "m-3.0.") = 500.0 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_VacCoA(unit = "") "VACCOA";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_ODC(unit = "") "Ornithine decarboxylase";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_ODC_elmt_Kmodc(unit "m-3.0.") = 60.0 "";
    parameter Real elmt_ODC_elmt_Kipodc(unit "m-3.0.") = 1300.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_SSAT_for_D(unit = "") "Spermidine/spermine N1-acetyltransferase for D";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_SSAT_for_D_elmt_Kmsssat(unit "m-3.0.") = 35.0 "";
    parameter Real elmt_SSAT_for_D_elmt_Kmdssat(unit "m-3.0.") = 130.0 "";
    parameter Real elmt_SSAT_for_D_elmt_Kmaccoassat(unit "m-3.0.") = 1.5 "";
    parameter Real elmt_SSAT_for_D_elmt_Kmcoassat(unit "m-3.0.") = 40.0 "";
    Real elmt_product11 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";


    initial equation
        elmt_reactant20 = 1.0;
        elmt_product11 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product25 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_product6 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_PAO_for_aD = (elmt_cytosol * ((elmt_PAO_for_aD_elmt_Vmpao * elmt_aD) / (elmt_PAO_for_aD_elmt_Kmadpao * (1.0 + (elmt_aD / elmt_PAO_for_aD_elmt_Kmadpao) + (elmt_aS / elmt_PAO_for_aD_elmt_Kmaspao) + (elmt_D / elmt_PAO_for_aD_elmt_Kmdpao) + (elmt_S / elmt_PAO_for_aD_elmt_Kmspao)))));
        elmt_SpdS = (elmt_cytosol * ((elmt_SpdS_elmt_Vmspds * elmt_A * elmt_P) / ((elmt_SpdS_elmt_Kiaspds * elmt_SpdS_elmt_Kpspds * (1.0 + (elmt_D / elmt_SpdS_elmt_Kidspds))) + (elmt_SpdS_elmt_Kpspds * elmt_A) + (elmt_SpdS_elmt_KaSpds * (1.0 + (elmt_D / elmt_SpdS_elmt_Kidspds)) * elmt_P) + (elmt_A * elmt_P))));
        elmt_MAT = (elmt_cytosol * (elmt_MAT_elmt_Vmmat / (1.0 + ((elmt_MAT_elmt_Kmmat / elmt_Met) * (1.0 + (elmt_SAM / elmt_MAT_elmt_Kimetmat))))));
        elmt_VCoA = (elmt_cytosol * elmt_Kcoa * elmt_AcCoA);
        elmt_SSAT_for_S = (elmt_cytosol * (((1.0 / elmt_C) * elmt_Vmaxssat * elmt_S * elmt_AcCoA) / ((elmt_SSAT_for_S_elmt_Kmsssat * (1.0 + (elmt_D / elmt_SSAT_for_S_elmt_Kmdssat)) * elmt_SSAT_for_S_elmt_Kmaccoassat * (1.0 + (elmt_CoA / elmt_SSAT_for_S_elmt_Kmcoassat))) + (elmt_SSAT_for_S_elmt_Kmaccoassat * (1.0 + (elmt_CoA / elmt_SSAT_for_S_elmt_Kmcoassat)) * elmt_S) + (elmt_SSAT_for_S_elmt_Kmsssat * (1.0 + (elmt_D / elmt_SSAT_for_S_elmt_Kmdssat)) * elmt_AcCoA) + (elmt_S * elmt_AcCoA))));
        elmt_SpmS = (elmt_cytosol * ((elmt_SpmS_elmt_Vmspms * elmt_A * elmt_D) / ((elmt_SpmS_elmt_Kiaspms * elmt_SpmS_elmt_Kdspms * (1.0 + (elmt_S / elmt_SpmS_elmt_Kisspms))) + (elmt_SpmS_elmt_Kdspms * elmt_A) + (elmt_SpmS_elmt_Kaspms * (1.0 + (elmt_S / elmt_SpmS_elmt_Kisspms)) * elmt_D) + (elmt_A * elmt_D))));
        elmt_P_efflux = (elmt_cytosol * elmt_P_efflux_elmt_Kpefflux * elmt_P);
        elmt_PAO_for_aS = (elmt_cytosol * ((elmt_PAO_for_aS_elmt_Vmpao * elmt_aS) / (elmt_PAO_for_aS_elmt_Kmaspao * (1.0 + (elmt_aD / elmt_PAO_for_aS_elmt_Kmadpao) + (elmt_aS / elmt_PAO_for_aS_elmt_Kmaspao) + (elmt_D / elmt_PAO_for_aS_elmt_Kmdpao) + (elmt_S / elmt_PAO_for_aS_elmt_Kmspao)))));
        elmt_aD_efflux = (elmt_cytosol * elmt_aD_efflux_elmt_Kadefflux * elmt_aD);
        elmt_SAMdc = (elmt_cytosol * (((elmt_Vmaxsamdc / (1.0 + (elmt_S / elmt_SAMdc_elmt_Kissamdc))) * elmt_SAM) / ((elmt_SAMdc_elmt_Kmsamdc * (1.0 + (elmt_SAMdc_elmt_Kapsamdc / elmt_P) + (elmt_A / elmt_SAMdc_elmt_Kiasamdc))) + elmt_SAM)));
        elmt_VacCoA = (elmt_cytosol * elmt_Kaccoa * elmt_CoA);
        elmt_ODC = (elmt_cytosol * ((elmt_Vmaxodc * elmt_ORN) / ((elmt_ODC_elmt_Kmodc * (1.0 + (elmt_P / elmt_ODC_elmt_Kipodc))) + elmt_ORN)));
        elmt_SSAT_for_D = (elmt_cytosol * ((elmt_Vmaxssat * elmt_D * elmt_AcCoA) / ((elmt_SSAT_for_D_elmt_Kmdssat * (1.0 + (elmt_S / elmt_SSAT_for_D_elmt_Kmsssat)) * elmt_SSAT_for_D_elmt_Kmaccoassat * (1.0 + (elmt_CoA / elmt_SSAT_for_D_elmt_Kmcoassat))) + (elmt_SSAT_for_D_elmt_Kmaccoassat * (1.0 + (elmt_CoA / elmt_SSAT_for_D_elmt_Kmcoassat)) * elmt_D) + (elmt_SSAT_for_D_elmt_Kmdssat * (1.0 + (elmt_S / elmt_SSAT_for_D_elmt_Kmsssat)) * elmt_AcCoA) + (elmt_D * elmt_AcCoA))));
        der(elmt_reactant20) = 0;
        der(elmt_product11) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_product6) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;
        der(elmt_product18) = 0;

end Reactions;
