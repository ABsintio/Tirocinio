within BIOMD264;
class Reactions

    input Real elmt_Cell;
    input Real elmt_S6;
    input Real elmt_Inhibitor;
    input Real elmt_pS6;
    input Real elmt_EGF_binding_kb;
    input Real elmt_EGFR;
    input Real elmt_pAkt;
    input Real elmt_pro_EGFR;
    input Real elmt_EGFR_i;
    input Real elmt_pAkt_S6;
    input Real elmt_EGFR_turnover;
    input Real elmt_pEGFR_Akt;
    input Real elmt_EGF_EGFR;
    input Real elmt_EGF;
    input Real elmt_EGF_binding_kf;
    input Real elmt_inhibitor_binding_kb;
    input Real elmt_inhibitor_binding_kf;
    input Real elmt_EGF_EGFR_i;
    input Real elmt_pEGFR;
    input Real elmt_Akt;

    Real elmt_reaction_3(unit = "") "Akt_phosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_3_elmt_k1(unit "s-1.0") = 0.0528141 "";
    Real elmt_product8 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reaction_4(unit = "") "pEGFR_degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_4_elmt_k1(unit "s-1.0") = 0.0997194 "";
    Real elmt_reactant9 "";
    Real elmt_reaction_1(unit = "") "EGF+EGFR";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_reaction_2(unit = "") "pEGFR+Akt";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_2_elmt_k1(unit "m3.0.s-1.0") = 1.5543E-5 "";
    parameter Real elmt_reaction_2_elmt_k2(unit "s-1.0") = 0.00517473 "";
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_reaction_9(unit = "") "EGFR_synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant20 "";
    Real elmt_product21 "";
    Real elmt_reaction_14(unit = "") "EGF+EGFR_i";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant31 "";
    Real elmt_product33 "";
    Real elmt_reactant32 "";
    Real elmt_reaction_15(unit = "") "EGFR_i_degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant34 "";
    Real elmt_reaction_7(unit = "") "pAkt_dephospho";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_7_elmt_k1(unit "s-1.0") = 0.0327962 "";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_reaction_8(unit = "") "pS6_dephospho";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_8_elmt_k1(unit "s-1.0") = 0.00113102 "";
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_reaction_5(unit = "") "pAkt+S6";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_5_elmt_k1(unit "m3.0.s-1.0") = 2.10189E-6 "";
    parameter Real elmt_reaction_5_elmt_k2(unit "s-1.0") = 5.1794E-15 "";
    Real elmt_product12 "";
    Real elmt_reactant10 "";
    Real elmt_reactant11 "";
    Real elmt_reaction_6(unit = "") "S6_phosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_6_elmt_k1(unit "s-1.0") = 0.00121498 "";
    Real elmt_product15 "";
    Real elmt_product14 "";
    Real elmt_reactant13 "";
    Real elmt_reaction_12(unit = "") "EGFR+i";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant25 "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_reaction_13(unit = "") "EGF_EGFR+i";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_reactant28 "";
    Real elmt_reaction_10(unit = "") "EGFR_phosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_10_elmt_k1(unit "s-1.0") = 0.0192391 "";
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_reaction_11(unit = "") "EGFR_degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant24 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product12 = 1.0;
        elmt_product33 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product23 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product15 = 1.0;
        elmt_product14 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_reaction_3 = (elmt_Cell * elmt_reaction_3_elmt_k1 * elmt_pEGFR_Akt);
        elmt_reaction_4 = (elmt_Cell * elmt_reaction_4_elmt_k1 * elmt_pEGFR);
        elmt_reaction_1 = (elmt_Cell * ((elmt_EGF_binding_kf * elmt_EGF * elmt_EGFR) - (elmt_EGF_binding_kb * elmt_EGF_EGFR)));
        elmt_reaction_2 = (elmt_Cell * ((elmt_reaction_2_elmt_k1 * elmt_pEGFR * elmt_Akt) - (elmt_reaction_2_elmt_k2 * elmt_pEGFR_Akt)));
        elmt_reaction_9 = (elmt_Cell * elmt_EGFR_turnover * elmt_pro_EGFR);
        elmt_reaction_14 = (elmt_Cell * ((elmt_EGF_binding_kf * elmt_EGF * elmt_EGFR_i) - (elmt_EGF_binding_kb * elmt_EGF_EGFR_i)));
        elmt_reaction_15 = (elmt_Cell * elmt_EGFR_turnover * elmt_EGFR_i);
        elmt_reaction_7 = (elmt_Cell * elmt_reaction_7_elmt_k1 * elmt_pAkt);
        elmt_reaction_8 = (elmt_Cell * elmt_reaction_8_elmt_k1 * elmt_pS6);
        elmt_reaction_5 = (elmt_Cell * ((elmt_reaction_5_elmt_k1 * elmt_pAkt * elmt_S6) - (elmt_reaction_5_elmt_k2 * elmt_pAkt_S6)));
        elmt_reaction_6 = (elmt_Cell * elmt_reaction_6_elmt_k1 * elmt_pAkt_S6);
        elmt_reaction_12 = (elmt_Cell * ((elmt_inhibitor_binding_kf * elmt_Inhibitor * elmt_EGFR) - (elmt_inhibitor_binding_kb * elmt_EGFR_i)));
        elmt_reaction_13 = (elmt_Cell * ((elmt_inhibitor_binding_kf * elmt_Inhibitor * elmt_EGF_EGFR) - (elmt_inhibitor_binding_kb * elmt_EGF_EGFR_i)));
        elmt_reaction_10 = (elmt_Cell * elmt_reaction_10_elmt_k1 * elmt_EGF_EGFR);
        elmt_reaction_11 = (elmt_Cell * elmt_EGFR_turnover * elmt_EGFR);
        der(elmt_product30) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product12) = 0;
        der(elmt_product33) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product23) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product15) = 0;
        der(elmt_product14) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
