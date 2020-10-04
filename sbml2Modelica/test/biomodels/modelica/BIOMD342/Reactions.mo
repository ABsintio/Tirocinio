within BIOMD342;
class Reactions

    input Real elmt_LRC_endo;
    input Real elmt_TGF_beta_endo;
    input Real elmt_PSmad2c;
    input Real elmt_kon_Smads;
    input Real elmt_Smad4n;
    input Real elmt_Smad2n;
    input Real elmt_kdeg_T1R;
    input Real elmt_kimp_Smad4;
    input Real elmt_kimp_Smads;
    input Real elmt_ka_LRC;
    input Real elmt_kimp_Smad2;
    input Real elmt_T2R_endo;
    input Real elmt_PSmad2_PSmad2_c;
    input Real elmt_PSmad2n;
    input Real elmt_kon_ns;
    input Real elmt_T1R_surf;
    input Real elmt_kdiss_LRC;
    input Real elmt_T1R_endo;
    input Real elmt_koff_ns;
    input Real elmt_koff_Smads;
    input Real elmt_k_T2R;
    input Real elmt_kdepho_Smad2;
    input Real elmt_totalNuclearPSmad2;
    input Real elmt_Vmed;
    input Real elmt_PSmad2_PSmad2_n;
    input Real elmt_Vcyt;
    input Real elmt_LRC_surf;
    input Real elmt_kdeg_LRC;
    input Real elmt_PSmad2_Smad4_n;
    input Real elmt_TGF_beta_ns;
    input Real elmt_klid;
    input Real elmt_k_T1R;
    input Real elmt_kpho_Smad2;
    input Real elmt_PSmad2_Smad4_c;
    input Real elmt_Vnuc;
    input Real elmt_kr;
    input Real elmt_kdeg_T2R;
    input Real elmt_kdeg_TGF_beta;
    input Real elmt_TGF_beta_ex;
    input Real elmt_kexp_Smad4;
    input Real elmt_ki;
    input Real elmt_kexp_Smad2;
    input Real elmt_T2R_surf;
    input Real elmt_Smad4c;
    input Real elmt_Smad2c;

    Real elmt_re15(unit = "") "Smad2 nuclear export";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product33 "";
    Real elmt_reactant32 "";
    Real elmt_re16(unit = "") "Smad4 nuclear import";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product35 "";
    Real elmt_reactant34 "";
    Real elmt_re17(unit = "") "Smad4 nuclear export";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant36 "";
    Real elmt_product37 "";
    Real elmt_re18(unit = "") "Smad2 phosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant38 "";
    Real elmt_product39 "";
    Real elmt_re19(unit = "") "PSmad2 nuclear import";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product41 "";
    Real elmt_reactant40 "";
    Real elmt_re10(unit = "") "LRC internalization to early endosome";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant20 "";
    Real elmt_product21 "";
    Real elmt_re11(unit = "") "LRC constitutive degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_re12(unit = "") "dissociation of LRC in endosome";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product27 "";
    Real elmt_product26 "";
    Real elmt_product25 "";
    Real elmt_reactant24 "";
    Real elmt_re13(unit = "") "TGF-beta constitutive degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_re14(unit = "") "Smad2 nuclear import";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant30 "";
    Real elmt_product31 "";
    Real elmt_re26(unit = "") "PSmad2 dimer nuclear  import";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product57 "";
    Real elmt_reactant56 "";
    Real elmt_re27(unit = "") "PSmad2 dimmer dissociation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant58 "";
    Real elmt_product59 "";
    Real elmt_re28(unit = "") "negative feedback induced LRC degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product61 "";
    Real elmt_reactant60 "";
    Real elmt_re29(unit = "") "non-specific binding of TGF-beta";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product63 "";
    Real elmt_reactant62 "";
    Real elmt_re3(unit = "") "T1R recycling from early endosome";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_re2(unit = "") "T1R internalization to early endosome";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_re1(unit = "") "T1R production";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_re20(unit = "") "PSmad2 nuclear export";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant42 "";
    Real elmt_product43 "";
    Real elmt_re21(unit = "") "Smad2-Smad4 complex formation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product46 "";
    Real elmt_reactant44 "";
    Real elmt_reactant45 "";
    Real elmt_re22(unit = "") "Smad2-Smad4 nuclear import";
    Real elmt_reactant47 "";
    Real elmt_product48 "";
    Real elmt_re23(unit = "") "Smad2-Smad4 dissociation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product51 "";
    Real elmt_product50 "";
    Real elmt_reactant49 "";
    Real elmt_re24(unit = "") "Smad2 dephosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant52 "";
    Real elmt_product53 "";
    Real elmt_re25(unit = "") "PSmad2 dimer formation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product55 "";
    Real elmt_reactant54 "";
    Real elmt_re9(unit = "") "LRC activation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant18 "";
    Real elmt_reactant16 "";
    Real elmt_reactant17 "";
    Real elmt_product19 "";
    Real elmt_re8(unit = "") "T2R constitutive degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_re7(unit = "") "T2R recycling from early endosome";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_re6(unit = "") "T2R internalization to early endosome";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_re5(unit = "") "T2R production";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_re4(unit = "") "T1R constitutive degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";


    initial equation
        elmt_reactant40 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product33 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_product27 = 1.0;
        elmt_product26 = 1.0;
        elmt_product25 = 1.0;
        elmt_product29 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant54 = 2.0;
        elmt_reactant10 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product37 = 1.0;
        elmt_product35 = 1.0;
        elmt_product39 = 1.0;
        elmt_reactant62 = 1.0;
        elmt_product51 = 1.0;
        elmt_product50 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product55 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant60 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product48 = 1.0;
        elmt_product46 = 1.0;
        elmt_product63 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_product61 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product59 = 2.0;
        elmt_product15 = 1.0;
        elmt_product57 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;


    equation
        elmt_re15 = (elmt_Vnuc * elmt_kexp_Smad2 * elmt_Smad2n);
        elmt_re16 = (elmt_Vcyt * elmt_kimp_Smad4 * elmt_Smad4c);
        elmt_re17 = (elmt_Vnuc * elmt_kexp_Smad4 * elmt_Smad4n);
        elmt_re18 = (elmt_Vcyt * elmt_kpho_Smad2 * elmt_Smad2c * elmt_LRC_endo);
        elmt_re19 = (elmt_Vcyt * elmt_kimp_Smad2 * elmt_PSmad2c);
        elmt_re10 = (elmt_Vcyt * elmt_ki * elmt_LRC_surf);
        elmt_re11 = (elmt_Vcyt * elmt_kdeg_LRC * elmt_LRC_endo);
        elmt_re12 = (elmt_Vcyt * elmt_kdiss_LRC * elmt_LRC_endo);
        elmt_re13 = (elmt_Vcyt * elmt_kdeg_TGF_beta * elmt_TGF_beta_endo);
        elmt_re14 = (elmt_Vcyt * elmt_kimp_Smad2 * elmt_Smad2c);
        elmt_re26 = (elmt_Vcyt * elmt_kimp_Smads * elmt_PSmad2_PSmad2_c);
        elmt_re27 = (elmt_Vnuc * ((elmt_koff_Smads * elmt_PSmad2_PSmad2_n) - (elmt_kon_Smads * Functions.pow(elmt_PSmad2n, 2.0))));
        elmt_re28 = (elmt_Vcyt * elmt_klid * elmt_LRC_surf * elmt_totalNuclearPSmad2);
        elmt_re29 = (elmt_Vmed * ((elmt_kon_ns * elmt_TGF_beta_ex) - (elmt_koff_ns * elmt_TGF_beta_ns)));
        elmt_re3 = (elmt_Vcyt * elmt_kr * elmt_T1R_endo);
        elmt_re2 = (elmt_Vcyt * elmt_ki * elmt_T1R_surf);
        elmt_re1 = (elmt_Vcyt * elmt_k_T1R);
        elmt_re20 = (elmt_Vnuc * elmt_kexp_Smad2 * elmt_PSmad2n);
        elmt_re21 = (elmt_Vcyt * ((elmt_kon_Smads * elmt_PSmad2c * elmt_Smad4c) - (elmt_koff_Smads * elmt_PSmad2_Smad4_c)));
        elmt_re22 = (elmt_Vcyt * elmt_kimp_Smads * elmt_PSmad2_Smad4_c);
        elmt_re23 = (elmt_Vnuc * ((elmt_koff_Smads * elmt_PSmad2_Smad4_n) - (elmt_kon_Smads * elmt_PSmad2n * elmt_Smad4n)));
        elmt_re24 = (elmt_Vnuc * elmt_kdepho_Smad2 * elmt_PSmad2n);
        elmt_re25 = (elmt_Vcyt * ((elmt_kon_Smads * Functions.pow(elmt_PSmad2c, 2.0)) - (elmt_koff_Smads * elmt_PSmad2_PSmad2_c)));
        elmt_re9 = (elmt_Vcyt * elmt_ka_LRC * elmt_TGF_beta_ex * elmt_T2R_surf * elmt_T1R_surf);
        elmt_re8 = (elmt_Vcyt * elmt_kdeg_T2R * elmt_T2R_endo);
        elmt_re7 = (elmt_Vcyt * elmt_kr * elmt_T2R_endo);
        elmt_re6 = (elmt_Vcyt * elmt_ki * elmt_T2R_surf);
        elmt_re5 = (elmt_Vcyt * elmt_k_T2R);
        elmt_re4 = (elmt_Vcyt * elmt_kdeg_T1R * elmt_T1R_endo);
        der(elmt_reactant40) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product33) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_product27) = 0;
        der(elmt_product26) = 0;
        der(elmt_product25) = 0;
        der(elmt_product29) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product37) = 0;
        der(elmt_product35) = 0;
        der(elmt_product39) = 0;
        der(elmt_reactant62) = 0;
        der(elmt_product51) = 0;
        der(elmt_product50) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product55) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant60) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product48) = 0;
        der(elmt_product46) = 0;
        der(elmt_product63) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_product61) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product59) = 0;
        der(elmt_product15) = 0;
        der(elmt_product57) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;

end Reactions;
