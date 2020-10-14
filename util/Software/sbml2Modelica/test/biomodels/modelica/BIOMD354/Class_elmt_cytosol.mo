within BIOMD354;
class Class_elmt_cytosol

    input Real elmt_JChannel;
    input Real elmt_JPump;
    input Real elmt_reactant1;
    input Real elmt_product8;
    input Real elmt_product6;
    input Real elmt_mwbdcd6a40_1ae7_4c86_a99f_1fba0b8beaf7;
    input Real elmt_reactant5;
    input Real elmt_reactant7;
    input Real elmt_mw530793e3_76b2_4483_be11_e94364306712;
    input Real elmt_mwfaf5e05a_b642_4ee2_a069_3c2fc783fba4;
    input Real elmt_kPLC;
    input Real elmt_product0;
    input Real elmt_kPhosphatase;
    input Real elmt_reactant10;
    input Real elmt_product4;
    input Real elmt_mw69f19152_7258_45b0_bf9e_b196f19d7e03;
    input Real elmt_inhibition_parameter2;
    input Real elmt_reactant9;
    input Real elmt_inhibition_parameter1;
    input Real elmt_product13;

    Real elmt_cytosol(unit = "") "cytosol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_g_conc(unit = "");
    Real elmt_g_amount(unit = "");
    Real elmt_g(unit = "") "g";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_CaI_conc(unit = "");
    Real elmt_CaI_amount(unit = "");
    Real elmt_CaI(unit = "") "CaI";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_IP3_conc(unit = "");
    Real elmt_IP3_amount(unit = "");
    Real elmt_IP3(unit = "") "IP3";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_cytosol = 1.0;
        elmt_g_conc = (0.002 / elmt_cytosol);
        elmt_CaI_conc = (0.05 / elmt_cytosol);
        elmt_IP3_conc = (0.0 / elmt_cytosol);


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_g = elmt_g_conc;
        elmt_CaI = elmt_CaI_conc;
        elmt_IP3 = elmt_IP3_conc;
        der(elmt_g_amount) = ((- (elmt_inhibition_parameter2 * elmt_reactant7)) + (elmt_inhibition_parameter1 * elmt_product6));
        der(elmt_CaI_amount) = ((elmt_JChannel * elmt_product4) + (- (elmt_JPump * elmt_reactant1)) + (elmt_mwbdcd6a40_1ae7_4c86_a99f_1fba0b8beaf7 * elmt_product8) + (- (elmt_mw530793e3_76b2_4483_be11_e94364306712 * elmt_reactant9)) + (elmt_mw69f19152_7258_45b0_bf9e_b196f19d7e03 * elmt_product13) + (- (elmt_mwfaf5e05a_b642_4ee2_a069_3c2fc783fba4 * elmt_reactant10)));
        der(elmt_IP3_amount) = ((elmt_kPLC * elmt_product0) + (- (elmt_kPhosphatase * elmt_reactant5)));

    algorithm
        elmt_g_conc := elmt_g_amount / elmt_cytosol;
        elmt_CaI_conc := elmt_CaI_amount / elmt_cytosol;
        elmt_IP3_conc := elmt_IP3_amount / elmt_cytosol;
end Class_elmt_cytosol;
