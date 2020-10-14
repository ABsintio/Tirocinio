within BIOMD355;
class Class_elmt_cytosol

    input Real elmt_mw89d547e1_8d48_4cd2_ba3d_e4390294089d;
    input Real elmt_JPump;
    input Real elmt_product12;
    input Real elmt_mw1f122e51_99cb_4a32_a12e_4c2921920a17;
    input Real elmt_product10;
    input Real elmt_mw530793e3_76b2_4483_be11_e94364306712;
    input Real elmt_kPhosphatase;
    input Real elmt_mw8021d532_dd9b_4e34_a865_c2bb1689b0b5;
    input Real elmt_mw700bd02b_9fc4_47e7_864a_967c03874dd6;
    input Real elmt_mw5658298a_d96a_4b97_9a4f_6f06dad35824;
    input Real elmt_reactant9;
    input Real elmt_JChannel;
    input Real elmt_reactant1;
    input Real elmt_product8;
    input Real elmt_product6;
    input Real elmt_mw1c50c3d1_dab9_423a_8373_6a4c75479b54;
    input Real elmt_mwbdcd6a40_1ae7_4c86_a99f_1fba0b8beaf7;
    input Real elmt_reactant5;
    input Real elmt_product21;
    input Real elmt_reactant7;
    input Real elmt_reactant14;
    input Real elmt_reactant15;
    input Real elmt_kPLC;
    input Real elmt_product0;
    input Real elmt_reactant16;
    input Real elmt_reactant11;
    input Real elmt_product4;
    input Real elmt_mwa61047ec_49c1_47b2_b78e_4d84a33d432a;
    input Real elmt_inhibition_parameter2;
    input Real elmt_inhibition_parameter1;
    input Real elmt_product13;
    input Real elmt_mw06f8fde4_d97b_4d5f_b71e_d93aa53e9932;

    Real elmt_cytosol(unit = "") "cytosol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_mwaf195932_a72c_4552_8cf2_b349b15d39c4_conc(unit = "");
    Real elmt_mwaf195932_a72c_4552_8cf2_b349b15d39c4_amount(unit = "");
    Real elmt_mwaf195932_a72c_4552_8cf2_b349b15d39c4(unit = "") "PMCA";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3_conc(unit = "");
    Real elmt_mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3_amount(unit = "");
    Real elmt_mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3(unit = "") "SERCA";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_mw7cb2644a_384a_4bbb_93fd_fd686e01d7cb_conc(unit = "");
    Real elmt_mw7cb2644a_384a_4bbb_93fd_fd686e01d7cb_amount(unit = "");
    Real elmt_mw7cb2644a_384a_4bbb_93fd_fd686e01d7cb(unit = "") "STIM";
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
        elmt_mwaf195932_a72c_4552_8cf2_b349b15d39c4_conc = (0.013 / elmt_cytosol);
        elmt_mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3_conc = (0.266 / elmt_cytosol);
        elmt_mw7cb2644a_384a_4bbb_93fd_fd686e01d7cb_conc = (0.02 / elmt_cytosol);
        elmt_g_conc = (0.002 / elmt_cytosol);
        elmt_CaI_conc = (0.05 / elmt_cytosol);
        elmt_IP3_conc = (0.0 / elmt_cytosol);


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_mwaf195932_a72c_4552_8cf2_b349b15d39c4 = elmt_mwaf195932_a72c_4552_8cf2_b349b15d39c4_conc;
        elmt_mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3 = elmt_mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3_conc;
        elmt_mw7cb2644a_384a_4bbb_93fd_fd686e01d7cb = elmt_mw7cb2644a_384a_4bbb_93fd_fd686e01d7cb_conc;
        elmt_g = elmt_g_conc;
        elmt_CaI = elmt_CaI_conc;
        elmt_IP3 = elmt_IP3_conc;
        der(elmt_mwaf195932_a72c_4552_8cf2_b349b15d39c4_amount) = ((- (elmt_mw700bd02b_9fc4_47e7_864a_967c03874dd6 * elmt_reactant11)) + (elmt_mw5658298a_d96a_4b97_9a4f_6f06dad35824 * elmt_product10));
        der(elmt_mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3_amount) = ((- (elmt_mw89d547e1_8d48_4cd2_ba3d_e4390294089d * elmt_reactant15)) + (elmt_mw06f8fde4_d97b_4d5f_b71e_d93aa53e9932 * elmt_product12));
        der(elmt_mw7cb2644a_384a_4bbb_93fd_fd686e01d7cb_amount) = ((- (elmt_mw1f122e51_99cb_4a32_a12e_4c2921920a17 * elmt_reactant14)) + (elmt_mw8021d532_dd9b_4e34_a865_c2bb1689b0b5 * elmt_product13));
        der(elmt_g_amount) = ((- (elmt_inhibition_parameter2 * elmt_reactant7)) + (elmt_inhibition_parameter1 * elmt_product6));
        der(elmt_CaI_amount) = ((elmt_JChannel * elmt_product4) + (- (elmt_JPump * elmt_reactant1)) + (elmt_mw1c50c3d1_dab9_423a_8373_6a4c75479b54 * elmt_product21) + (elmt_mwbdcd6a40_1ae7_4c86_a99f_1fba0b8beaf7 * elmt_product8) + (- (elmt_mw530793e3_76b2_4483_be11_e94364306712 * elmt_reactant9)) + (- (elmt_mwa61047ec_49c1_47b2_b78e_4d84a33d432a * elmt_reactant16)));
        der(elmt_IP3_amount) = ((elmt_kPLC * elmt_product0) + (- (elmt_kPhosphatase * elmt_reactant5)));

    algorithm
        elmt_mwaf195932_a72c_4552_8cf2_b349b15d39c4_conc := elmt_mwaf195932_a72c_4552_8cf2_b349b15d39c4_amount / elmt_cytosol;
        elmt_mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3_conc := elmt_mw0ebc76ad_49d7_4845_8f88_04d443fbe7f3_amount / elmt_cytosol;
        elmt_mw7cb2644a_384a_4bbb_93fd_fd686e01d7cb_conc := elmt_mw7cb2644a_384a_4bbb_93fd_fd686e01d7cb_amount / elmt_cytosol;
        elmt_g_conc := elmt_g_amount / elmt_cytosol;
        elmt_CaI_conc := elmt_CaI_amount / elmt_cytosol;
        elmt_IP3_conc := elmt_IP3_amount / elmt_cytosol;
end Class_elmt_cytosol;
