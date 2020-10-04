within BIOMD560;
class Class_elmt_ecm

    input Real elmt_Collagen_degradation;
    input Real elmt_Alk5_Smad7Degradation;
    input Real elmt_product291;
    input Real elmt_product294;
    input Real elmt_product195;
    input Real elmt_product194;
    input Real elmt_product150;
    input Real elmt_product156;
    input Real elmt_reactant153;
    input Real elmt_product233;
    input Real elmt_reactant196;
    input Real elmt_IntegrinActivationByMechanicalStress;
    input Real elmt_reactant293;
    input Real elmt_reactant292;
    input Real elmt_product152;
    input Real elmt_AggrecanCollagen2Binding;
    input Real elmt_product337;
    input Real elmt_IntegrinInactivation;
    input Real elmt_TgfbActivationByIntegrin;
    input Real elmt_Collagen2Translation;
    input Real elmt_product283;
    input Real elmt_TgfbInactivation;
    input Real elmt_TgfbActivationByMMP2;
    input Real elmt_product203;
    input Real elmt_Alk1_Smad7Degradation;
    input Real elmt_Aggrecan_degradation;
    input Real elmt_product209;
    input Real elmt_AggrecanTranslation;
    input Real elmt_reactant204;
    input Real elmt_reactant148;
    input Real elmt_reactant201;
    input Real elmt_reactant200;

    Real elmt_ecm(unit = "m3.0") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_Aggrecan_Collagen2_amount(unit = "");
    Real elmt_Aggrecan_Collagen2_conc(unit = "m-3.0");
    Real elmt_Aggrecan_Collagen2(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_Integrin_amount(unit = "");
    Real elmt_Integrin_conc(unit = "m-3.0");
    Real elmt_Integrin(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_ColFrag_amount(unit = "");
    Real elmt_ColFrag_conc(unit = "m-3.0");
    Real elmt_ColFrag(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_IntegrinCount_amount(unit = "");
    Real elmt_IntegrinCount_conc(unit = "m-3.0");
    Real elmt_IntegrinCount(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_Aggrecan_amount(unit = "");
    Real elmt_Aggrecan_conc(unit = "m-3.0");
    Real elmt_Aggrecan(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_Collagen2_amount(unit = "");
    Real elmt_Collagen2_conc(unit = "m-3.0");
    Real elmt_Collagen2(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_Tgfb_I_amount(unit = "");
    Real elmt_Tgfb_I_conc(unit = "m-3.0");
    Real elmt_Tgfb_I(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_AggFrag_amount(unit = "");
    Real elmt_AggFrag_conc(unit = "m-3.0");
    Real elmt_AggFrag(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_ecm = 1.0;
        elmt_Aggrecan_Collagen2_amount = 1000.0;
        elmt_Integrin_amount = 0.0;
        elmt_ColFrag_amount = 0.0;
        elmt_IntegrinCount_amount = 0.0;
        elmt_Aggrecan_amount = 0.0;
        elmt_Collagen2_amount = 0.0;
        elmt_Tgfb_I_amount = 200.0;
        elmt_AggFrag_amount = 0.0;


    equation
        assert(elmt_ecm >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_ecm) = 0;
        elmt_Aggrecan_Collagen2 = elmt_Aggrecan_Collagen2_amount;
        elmt_Integrin = elmt_Integrin_amount;
        elmt_ColFrag = elmt_ColFrag_amount;
        elmt_IntegrinCount = elmt_IntegrinCount_amount;
        elmt_Aggrecan = elmt_Aggrecan_amount;
        elmt_Collagen2 = elmt_Collagen2_amount;
        elmt_Tgfb_I = elmt_Tgfb_I_amount;
        elmt_AggFrag = elmt_AggFrag_amount;
        der(elmt_Aggrecan_Collagen2_amount) = ((- (elmt_Aggrecan_degradation * elmt_reactant148)) + (elmt_AggrecanCollagen2Binding * elmt_product294));
        der(elmt_Integrin_amount) = ((- (elmt_IntegrinInactivation * elmt_reactant196)) + (elmt_TgfbActivationByIntegrin * elmt_product203) + (- (elmt_TgfbActivationByIntegrin * elmt_reactant201)) + (elmt_IntegrinActivationByMechanicalStress * elmt_product194));
        der(elmt_ColFrag_amount) = (elmt_Collagen_degradation * elmt_product156);
        der(elmt_IntegrinCount_amount) = (elmt_IntegrinActivationByMechanicalStress * elmt_product195);
        der(elmt_Aggrecan_amount) = ((elmt_AggrecanTranslation * elmt_product291) + (- (elmt_AggrecanCollagen2Binding * elmt_reactant292)));
        der(elmt_Collagen2_amount) = ((- (elmt_Collagen_degradation * elmt_reactant153)) + (elmt_Collagen2Translation * elmt_product283) + (elmt_Aggrecan_degradation * elmt_product150) + (- (elmt_AggrecanCollagen2Binding * elmt_reactant293)));
        der(elmt_Tgfb_I_amount) = ((- (elmt_TgfbActivationByIntegrin * elmt_reactant200)) + (elmt_TgfbInactivation * elmt_product209) + (- (elmt_TgfbActivationByMMP2 * elmt_reactant204)) + (elmt_Alk5_Smad7Degradation * elmt_product233) + (elmt_Alk1_Smad7Degradation * elmt_product337));
        der(elmt_AggFrag_amount) = (elmt_Aggrecan_degradation * elmt_product152);

    algorithm
        elmt_Aggrecan_Collagen2_conc := elmt_Aggrecan_Collagen2_amount / elmt_ecm;
        elmt_Integrin_conc := elmt_Integrin_amount / elmt_ecm;
        elmt_ColFrag_conc := elmt_ColFrag_amount / elmt_ecm;
        elmt_IntegrinCount_conc := elmt_IntegrinCount_amount / elmt_ecm;
        elmt_Aggrecan_conc := elmt_Aggrecan_amount / elmt_ecm;
        elmt_Collagen2_conc := elmt_Collagen2_amount / elmt_ecm;
        elmt_Tgfb_I_conc := elmt_Tgfb_I_amount / elmt_ecm;
        elmt_AggFrag_conc := elmt_AggFrag_amount / elmt_ecm;
end Class_elmt_ecm;
