within BIOMD263;
class Reactions

    input Real elmt_Cell;
    input Real elmt_S6;
    input Real elmt_pTrkA_Akt;
    input Real elmt_pS6;
    input Real elmt_pTrkA;
    input Real elmt_NGF_TrkA;
    input Real elmt_pAkt;
    input Real elmt_pAkt_S6;
    input Real elmt_pro_TrkA;
    input Real elmt_NGF;
    input Real elmt_TrkA_turnover;
    input Real elmt_TrkA;
    input Real elmt_Akt;

    Real elmt_reaction_9(unit = "") "TrkA_synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant20 "";
    Real elmt_product21 "";
    Real elmt_reaction_7(unit = "") "pAkt_dephospho";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_7_elmt_k1(unit "s-1.0") = 1.28135 "";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_reaction_8(unit = "") "pS6_dephospho";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_8_elmt_k1(unit "s-1.0") = 2.93167E-4 "";
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_reaction_5(unit = "") "pAkt+S6";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_5_elmt_k1(unit "m3.0.s-1.0") = 68.3666 "";
    parameter Real elmt_reaction_5_elmt_k2(unit "s-1.0") = 5.23519 "";
    Real elmt_product12 "";
    Real elmt_reactant10 "";
    Real elmt_reactant11 "";
    Real elmt_reaction_6(unit = "") "S6_phosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_6_elmt_k1(unit "s-1.0") = 0.0056515 "";
    Real elmt_product15 "";
    Real elmt_product14 "";
    Real elmt_reactant13 "";
    Real elmt_reaction_3(unit = "") "Akt_phosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_3_elmt_k1(unit "") = 0.0202517 "";
    Real elmt_product8 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reaction_4(unit = "") "pTrkA_degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_4_elmt_k1(unit "s-1.0") = 0.0684084 "";
    Real elmt_reactant9 "";
    Real elmt_reaction_1(unit = "") "NGF+TrkA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_1_elmt_k1(unit "") = 0.00269408 "";
    parameter Real elmt_reaction_1_elmt_k2(unit "") = 0.0133747 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_reaction_2(unit = "") "pTrkA+Akt";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_2_elmt_k1(unit "m3.0.s-1.0") = 0.0882701 "";
    parameter Real elmt_reaction_2_elmt_k2(unit "s-1.0") = 1.47518E-10 "";
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_reaction_10(unit = "") "TrkA_phosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_10_elmt_k1(unit "s-1.0") = 0.00833178 "";
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_reaction_11(unit = "") "TrkA_degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant24 "";


    initial equation
        elmt_reactant20 = 1.0;
        elmt_product12 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product23 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product2 = 1.0;
        elmt_product15 = 1.0;
        elmt_product14 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_reaction_9 = (elmt_Cell * elmt_TrkA_turnover * elmt_pro_TrkA);
        elmt_reaction_7 = (elmt_Cell * elmt_reaction_7_elmt_k1 * elmt_pAkt);
        elmt_reaction_8 = (elmt_Cell * elmt_reaction_8_elmt_k1 * elmt_pS6);
        elmt_reaction_5 = (elmt_Cell * ((elmt_reaction_5_elmt_k1 * elmt_pAkt * elmt_S6) - (elmt_reaction_5_elmt_k2 * elmt_pAkt_S6)));
        elmt_reaction_6 = (elmt_Cell * elmt_reaction_6_elmt_k1 * elmt_pAkt_S6);
        elmt_reaction_3 = (elmt_Cell * elmt_reaction_3_elmt_k1 * elmt_pTrkA_Akt);
        elmt_reaction_4 = (elmt_Cell * elmt_reaction_4_elmt_k1 * elmt_pTrkA);
        elmt_reaction_1 = (elmt_Cell * ((elmt_reaction_1_elmt_k1 * elmt_NGF * elmt_TrkA) - (elmt_reaction_1_elmt_k2 * elmt_NGF_TrkA)));
        elmt_reaction_2 = (elmt_Cell * ((elmt_reaction_2_elmt_k1 * elmt_pTrkA * elmt_Akt) - (elmt_reaction_2_elmt_k2 * elmt_pTrkA_Akt)));
        elmt_reaction_10 = (elmt_Cell * elmt_reaction_10_elmt_k1 * elmt_NGF_TrkA);
        elmt_reaction_11 = (elmt_Cell * elmt_TrkA_turnover * elmt_TrkA);
        der(elmt_reactant20) = 0;
        der(elmt_product12) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product23) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product2) = 0;
        der(elmt_product15) = 0;
        der(elmt_product14) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
