within BIOMD354;
class Reactions

    input Real elmt_g;
    input Real elmt_mwd21d3f76_d133_4053_8e44_02a538657e0a;
    input Real elmt_kSTIM;
    input Real elmt_kIP3R;
    input Real elmt_mwc714c217_c8fd_4024_912c_681cd6931f59;
    input Real elmt_CaM;
    input Real elmt_mw886be93a_22c7_4966_a1fa_113afd832ae3;
    input Real elmt_CaI;
    input Real elmt_R;
    input Real elmt_mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33;
    input Real elmt_mwf998b218_be11_4aa4_81ae_41141861fb42;
    input Real elmt_CaS;
    input Real elmt_mw3a93c3a6_623a_44fe_84e9_a47823defd1f;
    input Real elmt_L;
    input Real elmt_mw78dd80b8_e003_4c62_81d1_547d001767af;
    input Real elmt_E;
    input Real elmt_F;
    input Real elmt_mw004dcb62_da5f_41c7_a7bd_033574894f48;
    input Real elmt_mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d;
    input Real elmt_D;
    input Real elmt_A;
    input Real elmt_k2;
    input Real elmt_B;
    input Real elmt_PMleak;
    input Real elmt_IP3;

    Real elmt_JChannel(unit = "") "IP3R: IP3 and Ca2+ regulated Ca2+ channel,  plus leak";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_JPump(unit = "") "SERCA: Pumps Ca2+ into ER Ca2+ stores";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant1 "";
    Real elmt_product2 "";
    Real elmt_ERtoMito(unit = "") "ERtoMito";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_mwbdcd6a40_1ae7_4c86_a99f_1fba0b8beaf7(unit = "") "Regulation of Orai by STIM, plus leak";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product8 "";
    Real elmt_mw530793e3_76b2_4483_be11_e94364306712(unit = "") "PMCA:  Pumps Ca2+ across PM out of cell";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant9 "";
    Real elmt_mw69f19152_7258_45b0_bf9e_b196f19d7e03(unit = "") "MitoToCytosol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_kPLC(unit = "") "PLC: Receptor and Ca2+ regulated IP3 production";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product0 "";
    Real elmt_inhibition_parameter2(unit = "") "Recovery of IP3R from Ca2+ iinhibition when Ca2+ drops";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant7 "";
    Real elmt_mwfaf5e05a_b642_4ee2_a069_3c2fc783fba4(unit = "") "UniporterFromCytosol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_inhibition_parameter1(unit = "") "Inhibition of IP3R (mechanism not well understood)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product6 "";
    Real elmt_kPhosphatase(unit = "") "IP3 phosphatase:  Degradation of IP3";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant5 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product2 = 1.0;
        elmt_product15 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_JChannel = ((1.0 - elmt_mwc714c217_c8fd_4024_912c_681cd6931f59) * (elmt_L + (((((1.0 - elmt_g) * elmt_A * Functions.pow(elmt_IP3, 2.0)) / (Functions.pow(elmt_IP3, 2.0) + Functions.pow(elmt_kIP3R, 2.0))) * Functions.pow(elmt_CaI, 2.0)) / (Functions.pow(elmt_CaI, 2.0) + Functions.pow(elmt_mw78dd80b8_e003_4c62_81d1_547d001767af, 2.0)))) * elmt_CaS);
        elmt_JPump = ((elmt_B * Functions.pow(elmt_CaI, 2.0)) / (Functions.pow(elmt_CaI, 2.0) + Functions.pow(elmt_k2, 2.0)));
        elmt_ERtoMito = (elmt_mwc714c217_c8fd_4024_912c_681cd6931f59 * (elmt_L + (((((1.0 - elmt_g) * elmt_A * Functions.pow(elmt_IP3, 2.0)) / (Functions.pow(elmt_IP3, 2.0) + Functions.pow(elmt_kIP3R, 2.0))) * Functions.pow(elmt_CaI, 2.0)) / (Functions.pow(elmt_CaI, 2.0) + Functions.pow(elmt_mw78dd80b8_e003_4c62_81d1_547d001767af, 2.0)))) * elmt_CaS);
        elmt_mwbdcd6a40_1ae7_4c86_a99f_1fba0b8beaf7 = (elmt_mw004dcb62_da5f_41c7_a7bd_033574894f48 * (elmt_PMleak + (Functions.pow(elmt_kSTIM, 8.0) / (Functions.pow(elmt_CaS, 8.0) + Functions.pow(elmt_kSTIM, 8.0)))));
        elmt_mw530793e3_76b2_4483_be11_e94364306712 = ((elmt_mwd21d3f76_d133_4053_8e44_02a538657e0a * Functions.pow(elmt_CaI, 2.0)) / (Functions.pow(elmt_CaI, 2.0) + Functions.pow(elmt_mw3a93c3a6_623a_44fe_84e9_a47823defd1f, 2.0)));
        elmt_mw69f19152_7258_45b0_bf9e_b196f19d7e03 = ((elmt_mwd90ce3ea_f8d5_4f0a_8093_e39a2d3dbf33 * elmt_CaM) / (elmt_CaM + 0.01));
        elmt_kPLC = (elmt_R * elmt_CaI);
        elmt_inhibition_parameter2 = (elmt_F * elmt_g);
        elmt_mwfaf5e05a_b642_4ee2_a069_3c2fc783fba4 = ((elmt_mw886be93a_22c7_4966_a1fa_113afd832ae3 * Functions.pow(elmt_CaI, 4.0)) / (Functions.pow(elmt_CaI, 4.0) + Functions.pow(elmt_mwc8d6bdb5_59d4_43fa_b96d_7426f4857e0d, 4.0)));
        elmt_inhibition_parameter1 = (((elmt_E * Functions.pow(elmt_CaI, 4.0)) / (Functions.pow(elmt_CaI, 4.0) + Functions.pow(elmt_mwf998b218_be11_4aa4_81ae_41141861fb42, 4.0))) * (1.0 - elmt_g));
        elmt_kPhosphatase = (elmt_D * elmt_IP3);
        der(elmt_reactant1) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product2) = 0;
        der(elmt_product15) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product13) = 0;

end Reactions;
