within BIOMD029;
class Reactions

    input Real elmt_kcat6;
    input Real elmt_kcat7;
    input Real elmt_Km7;
    input Real elmt_M;
    input Real elmt_kcat4;
    input Real elmt_MpY;
    input Real elmt_Km8;
    input Real elmt_kcat5;
    input Real elmt_MKP3;
    input Real elmt_Km5;
    input Real elmt_MEK;
    input Real elmt_Km6;
    input Real elmt_MpT;
    input Real elmt_Km3;
    input Real elmt_Km4;
    input Real elmt_kcat2;
    input Real elmt_kcat3;
    input Real elmt_kcat1;
    input Real elmt_cell;
    input Real elmt_Km1;
    input Real elmt_Km2;
    input Real elmt_Mpp;

    Real elmt_v7(unit = "") "dephosphorylation of ERK-PY";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_v5(unit = "") "dephosphorylation of ERK-PP on Tyr";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_v6(unit = "") "dephosphorylation of ERK-PT";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_v3(unit = "") "phosphorylation of ERK on Thr";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_v4(unit = "") "phosphorylation of ERK-PT on Tyr";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_v1(unit = "") "phosphorylation of ERK on Tyr";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_v2(unit = "") "phosphorylation of ERK-PY on Thr";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_v7 = (elmt_cell * (((elmt_kcat7 * elmt_MKP3 * elmt_MpY) / elmt_Km7) / (1.0 + (elmt_Mpp / elmt_Km5) + (elmt_MpT / elmt_Km6) + (elmt_MpY / elmt_Km7) + (elmt_M / elmt_Km8))));
        elmt_v5 = (elmt_cell * (((elmt_kcat5 * elmt_MKP3 * elmt_Mpp) / elmt_Km5) / (1.0 + (elmt_Mpp / elmt_Km5) + (elmt_MpT / elmt_Km6) + (elmt_MpY / elmt_Km7) + (elmt_M / elmt_Km8))));
        elmt_v6 = (elmt_cell * (((elmt_kcat6 * elmt_MKP3 * elmt_MpT) / elmt_Km6) / (1.0 + (elmt_Mpp / elmt_Km5) + (elmt_MpT / elmt_Km6) + (elmt_MpY / elmt_Km7) + (elmt_M / elmt_Km8))));
        elmt_v3 = (elmt_cell * (((elmt_kcat3 * elmt_MEK * elmt_M) / elmt_Km3) / (1.0 + (elmt_M * ((elmt_Km1 + elmt_Km3) / (elmt_Km1 * elmt_Km3))) + (elmt_MpY / elmt_Km2) + (elmt_MpT / elmt_Km4))));
        elmt_v4 = (elmt_cell * (((elmt_kcat4 * elmt_MEK * elmt_MpT) / elmt_Km4) / (1.0 + (elmt_M * ((elmt_Km1 + elmt_Km3) / (elmt_Km1 * elmt_Km3))) + (elmt_MpY / elmt_Km2) + (elmt_MpT / elmt_Km4))));
        elmt_v1 = (elmt_cell * (((elmt_kcat1 * elmt_MEK * elmt_M) / elmt_Km1) / (1.0 + (elmt_M * ((elmt_Km1 + elmt_Km3) / (elmt_Km1 * elmt_Km3))) + (elmt_MpY / elmt_Km2) + (elmt_MpT / elmt_Km4))));
        elmt_v2 = (elmt_cell * (((elmt_kcat2 * elmt_MEK * elmt_MpY) / elmt_Km2) / (1.0 + (elmt_M * ((elmt_Km1 + elmt_Km3) / (elmt_Km1 * elmt_Km3))) + (elmt_MpY / elmt_Km2) + (elmt_MpT / elmt_Km4))));
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product13) = 0;

end Reactions;
