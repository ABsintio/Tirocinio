within BIOMD342;
class Class_elmt_Vcyt

    input Real elmt_reactant40;
    input Real elmt_product33;
    input Real elmt_reactant47;
    input Real elmt_reactant44;
    input Real elmt_reactant45;
    input Real elmt_product27;
    input Real elmt_product26;
    input Real elmt_product25;
    input Real elmt_re26;
    input Real elmt_re28;
    input Real elmt_product43;
    input Real elmt_reactant14;
    input Real elmt_re3;
    input Real elmt_re2;
    input Real elmt_re20;
    input Real elmt_re1;
    input Real elmt_re21;
    input Real elmt_reactant17;
    input Real elmt_reactant54;
    input Real elmt_re22;
    input Real elmt_reactant10;
    input Real elmt_reactant12;
    input Real elmt_reactant56;
    input Real elmt_re25;
    input Real elmt_kdeg_T2R;
    input Real elmt_re9;
    input Real elmt_re8;
    input Real elmt_re7;
    input Real elmt_re6;
    input Real elmt_re5;
    input Real elmt_re4;
    input Real elmt_product37;
    input Real elmt_product39;
    input Real elmt_re15;
    input Real elmt_re16;
    input Real elmt_re17;
    input Real elmt_reactant20;
    input Real elmt_re18;
    input Real elmt_re19;
    input Real elmt_product11;
    input Real elmt_product55;
    input Real elmt_reactant60;
    input Real elmt_re10;
    input Real elmt_reactant28;
    input Real elmt_re11;
    input Real elmt_kdeg_T1R;
    input Real elmt_reactant22;
    input Real elmt_re12;
    input Real elmt_re13;
    input Real elmt_reactant24;
    input Real elmt_re14;
    input Real elmt_reactant18;
    input Real elmt_k_T2R;
    input Real elmt_product46;
    input Real elmt_reactant2;
    input Real elmt_product9;
    input Real elmt_reactant4;
    input Real elmt_reactant30;
    input Real elmt_reactant6;
    input Real elmt_product21;
    input Real elmt_k_T1R;
    input Real elmt_product1;
    input Real elmt_reactant38;
    input Real elmt_product5;
    input Real elmt_kr;
    input Real elmt_product3;
    input Real elmt_reactant34;
    input Real elmt_ki;
    input Real elmt_product13;
    input Real elmt_product19;

    Real elmt_Vcyt(unit = "m3.0") "Cytoplasm";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_LRC_endo_conc(unit = "m-24.0.");
    Real elmt_LRC_endo_amount(unit = "m-21.0.");
    Real elmt_LRC_endo(unit = "m-24.0.") "LRC_endo";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_TGF_beta_endo_conc(unit = "m-42.0.");
    Real elmt_TGF_beta_endo_amount(unit = "m-39.0.");
    Real elmt_TGF_beta_endo(unit = "m-42.0.") "TGF_beta_endo";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_LRC_surf_conc(unit = "m-21.0.");
    Real elmt_LRC_surf_amount(unit = "m-18.0.");
    Real elmt_LRC_surf(unit = "m-21.0.") "LRC_surf";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_PSmad2c_conc(unit = "m-33.0.");
    Real elmt_PSmad2c_amount(unit = "m-30.0.");
    Real elmt_PSmad2c(unit = "m-33.0.") "PSmad2c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_AA_conc(unit = "m-45.0.");
    Real elmt_AA_amount(unit = "m-42.0.");
    Real elmt_AA(unit = "m-45.0.") "AA";
    Real elmt_PSmad2_Smad4_c_conc(unit = "m-39.0.");
    Real elmt_PSmad2_Smad4_c_amount(unit = "m-36.0.");
    Real elmt_PSmad2_Smad4_c(unit = "m-39.0.") "PSmad2_Smad4_c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_empty_degraded_conc(unit = "m-48.0.");
    Real elmt_empty_degraded_amount(unit = "m-45.0.");
    Real elmt_empty_degraded(unit = "m-48.0.") "empty_degraded";
    Real elmt_T2R_endo_conc(unit = "m-18.0.");
    Real elmt_T2R_endo_amount(unit = "m-15.0.");
    Real elmt_T2R_endo(unit = "m-18.0.") "T2R_endo";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_PSmad2_PSmad2_c_conc(unit = "m-36.0.");
    Real elmt_PSmad2_PSmad2_c_amount(unit = "m-33.0.");
    Real elmt_PSmad2_PSmad2_c(unit = "m-36.0.") "PSmad2_PSmad2_c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_T1R_surf_conc(unit = "m-9.0.");
    Real elmt_T1R_surf_amount(unit = "m-6.0.");
    Real elmt_T1R_surf(unit = "m-9.0.") "T1R_surf";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_T1R_endo_conc(unit = "m-12.0.");
    Real elmt_T1R_endo_amount(unit = "m-9.0.");
    Real elmt_T1R_endo(unit = "m-12.0.") "T1R_endo";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_T2R_surf_conc(unit = "m-15.0.");
    Real elmt_T2R_surf_amount(unit = "m-12.0.");
    Real elmt_T2R_surf(unit = "m-15.0.") "T2R_surf";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Smad4c_conc(unit = "m-30.0.");
    Real elmt_Smad4c_amount(unit = "m-27.0.");
    Real elmt_Smad4c(unit = "m-30.0.") "Smad4c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Smad2c_conc(unit = "m-27.0.");
    Real elmt_Smad2c_amount(unit = "m-24.0.");
    Real elmt_Smad2c(unit = "m-27.0.") "Smad2c";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_Vcyt = 2.3E-12;
        elmt_LRC_endo_conc = 0.0;
        elmt_TGF_beta_endo_conc = 0.0;
        elmt_LRC_surf_conc = 0.0;
        elmt_PSmad2c_conc = 0.0;
        elmt_AA_conc = 0.0;
        elmt_PSmad2_Smad4_c_conc = 0.0;
        elmt_empty_degraded_conc = 0.0;
        elmt_T2R_endo_conc = (elmt_k_T2R / elmt_kdeg_T2R);
        elmt_PSmad2_PSmad2_c_conc = 0.0;
        elmt_T1R_surf_conc = (((elmt_k_T1R * elmt_kdeg_T1R) + (elmt_k_T1R * elmt_kr)) / (elmt_kdeg_T1R * elmt_ki));
        elmt_T1R_endo_conc = (elmt_k_T1R / elmt_kdeg_T1R);
        elmt_T2R_surf_conc = (((elmt_k_T2R * elmt_kdeg_T2R) + (elmt_k_T2R * elmt_kr)) / (elmt_kdeg_T2R * elmt_ki));
        elmt_Smad4c_conc = 50.8;
        elmt_Smad2c_conc = 60.6;


    equation
        assert(elmt_Vcyt >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Vcyt) = 0;
        elmt_LRC_endo = elmt_LRC_endo_conc;
        elmt_TGF_beta_endo = elmt_TGF_beta_endo_conc;
        elmt_LRC_surf = elmt_LRC_surf_conc;
        elmt_PSmad2c = elmt_PSmad2c_conc;
        elmt_AA = elmt_AA_conc;
        elmt_PSmad2_Smad4_c = elmt_PSmad2_Smad4_c_conc;
        elmt_empty_degraded = elmt_empty_degraded_conc;
        elmt_T2R_endo = elmt_T2R_endo_conc;
        elmt_PSmad2_PSmad2_c = elmt_PSmad2_PSmad2_c_conc;
        elmt_T1R_surf = elmt_T1R_surf_conc;
        elmt_T1R_endo = elmt_T1R_endo_conc;
        elmt_T2R_surf = elmt_T2R_surf_conc;
        elmt_Smad4c = elmt_Smad4c_conc;
        elmt_Smad2c = elmt_Smad2c_conc;
        der(elmt_AA_amount) = 0;
        der(elmt_empty_degraded_amount) = 0;
        der(elmt_LRC_endo_amount) = ((elmt_re10 * elmt_product21) + (- (elmt_re11 * elmt_reactant22)) + (- (elmt_re12 * elmt_reactant24)));
        der(elmt_TGF_beta_endo_amount) = ((elmt_re12 * elmt_product27) + (- (elmt_re13 * elmt_reactant28)));
        der(elmt_T2R_endo_amount) = ((elmt_re12 * elmt_product26) + (- (elmt_re8 * elmt_reactant14)) + (- (elmt_re7 * elmt_reactant12)) + (elmt_re6 * elmt_product11));
        der(elmt_PSmad2_PSmad2_c_amount) = ((- (elmt_re26 * elmt_reactant56)) + (elmt_re25 * elmt_product55));
        der(elmt_T1R_surf_amount) = ((elmt_re3 * elmt_product5) + (- (elmt_re2 * elmt_reactant2)) + (elmt_re1 * elmt_product1) + (- (elmt_re9 * elmt_reactant18)));
        der(elmt_LRC_surf_amount) = ((- (elmt_re10 * elmt_reactant20)) + (- (elmt_re28 * elmt_reactant60)) + (elmt_re9 * elmt_product19));
        der(elmt_T1R_endo_amount) = ((elmt_re12 * elmt_product25) + (- (elmt_re3 * elmt_reactant4)) + (elmt_re2 * elmt_product3) + (- (elmt_re4 * elmt_reactant6)));
        der(elmt_PSmad2c_amount) = ((elmt_re18 * elmt_product39) + (- (elmt_re19 * elmt_reactant40)) + (elmt_re20 * elmt_product43) + (- (elmt_re21 * elmt_reactant44)) + (- (elmt_re25 * elmt_reactant54)));
        der(elmt_T2R_surf_amount) = ((- (elmt_re9 * elmt_reactant17)) + (elmt_re7 * elmt_product13) + (- (elmt_re6 * elmt_reactant10)) + (elmt_re5 * elmt_product9));
        der(elmt_PSmad2_Smad4_c_amount) = ((elmt_re21 * elmt_product46) + (- (elmt_re22 * elmt_reactant47)));
        der(elmt_Smad4c_amount) = ((- (elmt_re16 * elmt_reactant34)) + (elmt_re17 * elmt_product37) + (- (elmt_re21 * elmt_reactant45)));
        der(elmt_Smad2c_amount) = ((elmt_re15 * elmt_product33) + (- (elmt_re18 * elmt_reactant38)) + (- (elmt_re14 * elmt_reactant30)));

    algorithm
        elmt_LRC_endo_conc := elmt_LRC_endo_amount / elmt_Vcyt;
        elmt_TGF_beta_endo_conc := elmt_TGF_beta_endo_amount / elmt_Vcyt;
        elmt_LRC_surf_conc := elmt_LRC_surf_amount / elmt_Vcyt;
        elmt_PSmad2c_conc := elmt_PSmad2c_amount / elmt_Vcyt;
        elmt_AA_conc := elmt_AA_amount / elmt_Vcyt;
        elmt_PSmad2_Smad4_c_conc := elmt_PSmad2_Smad4_c_amount / elmt_Vcyt;
        elmt_empty_degraded_conc := elmt_empty_degraded_amount / elmt_Vcyt;
        elmt_T2R_endo_conc := elmt_T2R_endo_amount / elmt_Vcyt;
        elmt_PSmad2_PSmad2_c_conc := elmt_PSmad2_PSmad2_c_amount / elmt_Vcyt;
        elmt_T1R_surf_conc := elmt_T1R_surf_amount / elmt_Vcyt;
        elmt_T1R_endo_conc := elmt_T1R_endo_amount / elmt_Vcyt;
        elmt_T2R_surf_conc := elmt_T2R_surf_amount / elmt_Vcyt;
        elmt_Smad4c_conc := elmt_Smad4c_amount / elmt_Vcyt;
        elmt_Smad2c_conc := elmt_Smad2c_amount / elmt_Vcyt;
end Class_elmt_Vcyt;
