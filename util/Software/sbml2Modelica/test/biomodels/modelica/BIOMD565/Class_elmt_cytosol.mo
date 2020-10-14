within BIOMD565;
class Class_elmt_cytosol

    input Real elmt_reactant40;
    input Real elmt_reactant42;
    input Real elmt_DCS;
    input Real elmt_reactant47;
    input Real elmt_reactant48;
    input Real elmt_reactant49;
    input Real elmt_vsersynth;
    input Real elmt_reactant44;
    input Real elmt_ACCOAC;
    input Real elmt_reactant45;
    input Real elmt_vpyr;
    input Real elmt_reactant46;
    input Real elmt_vE4P;
    input Real elmt_CURS;
    input Real elmt_vSED7P;
    input Real elmt_reactant52;
    input Real elmt_product83;
    input Real elmt_product89;
    input Real elmt_vFER;
    input Real elmt_product86;
    input Real elmt_reactant58;
    input Real elmt_reactant59;
    input Real elmt_reactant54;
    input Real elmt_vMURSyNTH;
    input Real elmt_vR5PI;
    input Real elmt_vRu5P;
    input Real elmt_reactant56;
    input Real elmt_vMethSynth;
    input Real elmt_vTIS;
    input Real elmt_Synth3;
    input Real elmt_Synth4;
    input Real elmt_vPG;
    input Real elmt_product79;
    input Real elmt_reactant20;
    input Real elmt_R4CL;
    input Real elmt_product11;
    input Real elmt_vfdP;
    input Real elmt_vPK;
    input Real elmt_reactant25;
    input Real elmt_reactant28;
    input Real elmt_reactant21;
    input Real elmt_product91;
    input Real elmt_vPPK;
    input Real elmt_reactant24;
    input Real elmt_vG6P;
    input Real elmt_product9;
    input Real elmt_reactant30;
    input Real elmt_product7;
    input Real elmt_vPGI;
    input Real elmt_product23;
    input Real elmt_product22;
    input Real elmt_vPGK;
    input Real elmt_vFERDICOA;
    input Real elmt_reactant37;
    input Real elmt_reactant38;
    input Real elmt_product5;
    input Real elmt_reactant34;
    input Real elmt_product3;
    input Real elmt_reactant35;
    input Real elmt_product2;
    input Real elmt_vTRPSYNTH;
    input Real elmt_vPGM;
    input Real elmt_product15;
    input Real elmt_product14;
    input Real elmt_vPGP;
    input Real elmt_product19;
    input Real elmt_product18;
    input Real elmt_reactant101;
    input Real elmt_reactant100;
    input Real elmt_reactant84;
    input Real elmt_reactant85;
    input Real elmt_product33;
    input Real elmt_reactant80;
    input Real elmt_reactant81;
    input Real elmt_product32;
    input Real elmt_product31;
    input Real elmt_reactant82;
    input Real elmt_vPGDH;
    input Real elmt_reactant87;
    input Real elmt_vG3PDH;
    input Real elmt_reactant88;
    input Real elmt_vrpGluMu;
    input Real elmt_vGLP;
    input Real elmt_vCUR;
    input Real elmt_FER_t;
    input Real elmt_product27;
    input Real elmt_vPFK;
    input Real elmt_product26;
    input Real elmt_vpepCxylase;
    input Real elmt_vpg2;
    input Real elmt_product29;
    input Real elmt_vPG3;
    input Real elmt_product41;
    input Real elmt_reactant96;
    input Real elmt_reactant97;
    input Real elmt_reactant92;
    input Real elmt_product43;
    input Real elmt_reactant16;
    input Real elmt_vFERCOA;
    input Real elmt_reactant17;
    input Real elmt_reactant98;
    input Real elmt_reactant10;
    input Real elmt_reactant99;
    input Real elmt_vXYL5P;
    input Real elmt_reactant12;
    input Real elmt_reactant13;
    input Real elmt_vTA;
    input Real elmt_vG1PAT;
    input Real elmt_product36;
    input Real elmt_vALDO;
    input Real elmt_vPEP;
    input Real elmt_product39;
    input Real elmt_reactant61;
    input Real elmt_reactant62;
    input Real elmt_product51;
    input Real elmt_reactant63;
    input Real elmt_product50;
    input Real elmt_vPTS;
    input Real elmt_vDAHPS;
    input Real elmt_reactant64;
    input Real elmt_product55;
    input Real elmt_vPDH;
    input Real elmt_vMALCOA;
    input Real elmt_product53;
    input Real elmt_reactant60;
    input Real elmt_reactant69;
    input Real elmt_vENO;
    input Real elmt_reactant65;
    input Real elmt_reactant66;
    input Real elmt_reactant67;
    input Real elmt_reactant68;
    input Real elmt_vRIB5P;
    input Real elmt_CUR_t;
    input Real elmt_vSynth2;
    input Real elmt_vSynth1;
    input Real elmt_reactant72;
    input Real elmt_vGAPDH;
    input Real elmt_vRibu5p;
    input Real elmt_reactant1;
    input Real elmt_reactant73;
    input Real elmt_reactant4;
    input Real elmt_reactant74;
    input Real elmt_reactant75;
    input Real elmt_reactant6;
    input Real elmt_reactant70;
    input Real elmt_reactant8;
    input Real elmt_reactant71;
    input Real elmt_vTKA;
    input Real elmt_reactant76;
    input Real elmt_reactant78;
    input Real elmt_vTKB;
    input Real elmt_vG6PDH;
    input Real elmt_vACCOA;
    input Real elmt_vf6P;
    input Real elmt_vGAP;
    input Real elmt_product57;
    input Real elmt_vDHAP;

    Real elmt_cytosol(unit = "m3.0") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_cfdp_conc(unit = "m-30.0.");
    Real elmt_cfdp_amount(unit = "m-27.0.");
    Real elmt_cfdp(unit = "m-30.0.") "Fructose-1,6-bisphosphate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_cxyl5p_conc(unit = "m-42.0.");
    Real elmt_cxyl5p_amount(unit = "m-39.0.");
    Real elmt_cxyl5p(unit = "m-42.0.") "Xylulose-5-phosphate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_cgap_conc(unit = "m-36.0.");
    Real elmt_cgap_amount(unit = "m-33.0.");
    Real elmt_cgap(unit = "m-36.0.") "Glyceraldehyde-3-Phosphate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_fer_conc(unit = "m-69.0.");
    Real elmt_fer_amount(unit = "m-66.0.");
    Real elmt_fer(unit = "m-69.0.") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_cpgp_conc(unit = "m-51.0.");
    Real elmt_cpgp_amount(unit = "m-48.0.");
    Real elmt_cpgp(unit = "m-51.0.") "1,3-diphosphosphoglycerate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_cribu5p_conc(unit = "m-60.0.");
    Real elmt_cribu5p_amount(unit = "m-57.0.");
    Real elmt_cribu5p(unit = "m-60.0.") "Ribulose-5-phosphate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_cpep_conc(unit = "m-12.0.");
    Real elmt_cpep_amount(unit = "m-9.0.");
    Real elmt_cpep(unit = "m-12.0.") "Phosphoenol pyruvate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_cpg2_conc(unit = "m-57.0.");
    Real elmt_cpg2_amount(unit = "m-54.0.");
    Real elmt_cpg2(unit = "m-57.0.") "2-Phosphoglycerate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_cur_conc(unit = "m-78.0.");
    Real elmt_cur_amount(unit = "m-75.0.");
    Real elmt_cur(unit = "m-78.0.") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_cpg3_conc(unit = "m-54.0.");
    Real elmt_cpg3_amount(unit = "m-51.0.");
    Real elmt_cpg3(unit = "m-54.0.") "3-Phosphoglycerate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_cdhap_conc(unit = "m-48.0.");
    Real elmt_cdhap_amount(unit = "m-45.0.");
    Real elmt_cdhap(unit = "m-48.0.") "Dihydroxyacetonephosphate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_crib5p_conc(unit = "m-45.0.");
    Real elmt_crib5p_amount(unit = "m-42.0.");
    Real elmt_crib5p(unit = "m-45.0.") "Ribose-5-phosphate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_cg6p_conc(unit = "m-15.0.");
    Real elmt_cg6p_amount(unit = "m-12.0.");
    Real elmt_cg6p(unit = "m-15.0.") "Glucose-6-Phosphate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_cpg_conc(unit = "m-27.0.");
    Real elmt_cpg_amount(unit = "m-24.0.");
    Real elmt_cpg(unit = "m-27.0.") "6-Phosphogluconate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_ce4p_conc(unit = "m-39.0.");
    Real elmt_ce4p_amount(unit = "m-36.0.");
    Real elmt_ce4p(unit = "m-39.0.") "Erythrose-4-phosphate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_cf6p_conc(unit = "m-21.0.");
    Real elmt_cf6p_amount(unit = "m-18.0.");
    Real elmt_cf6p(unit = "m-21.0.") "Fructose-6-Phosphate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_accoa_conc(unit = "m-63.0.");
    Real elmt_accoa_amount(unit = "m-60.0.");
    Real elmt_accoa(unit = "m-63.0.") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_cg1p_conc(unit = "m-24.0.");
    Real elmt_cg1p_amount(unit = "m-21.0.");
    Real elmt_cg1p(unit = "m-24.0.") "Glucose-1-Phosphate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_malcoa_conc(unit = "m-66.0.");
    Real elmt_malcoa_amount(unit = "m-63.0.");
    Real elmt_malcoa(unit = "m-66.0.") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_cpyr_conc(unit = "m-18.0.");
    Real elmt_cpyr_amount(unit = "m-15.0.");
    Real elmt_cpyr(unit = "m-18.0.") "Pyruvate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_ferdicoa_conc(unit = "m-75.0.");
    Real elmt_ferdicoa_amount(unit = "m-72.0.");
    Real elmt_ferdicoa(unit = "m-75.0.") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_fercoa_conc(unit = "m-72.0.");
    Real elmt_fercoa_amount(unit = "m-69.0.");
    Real elmt_fercoa(unit = "m-72.0.") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_csed7p_conc(unit = "m-33.0.");
    Real elmt_csed7p_amount(unit = "m-30.0.");
    Real elmt_csed7p(unit = "m-33.0.") "sedoheptulose-7-phosphate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cytosol = 1.0;
        elmt_cfdp_conc = 0.272;
        elmt_cxyl5p_conc = 0.138;
        elmt_cgap_conc = 0.218;
        elmt_fer_conc = 0.0;
        elmt_cpgp_conc = 0.008;
        elmt_cribu5p_conc = 0.111;
        elmt_cpep_conc = 2.67;
        elmt_cpg2_conc = 0.399;
        elmt_cur_conc = 0.0;
        elmt_cpg3_conc = 2.13;
        elmt_cdhap_conc = 0.167;
        elmt_crib5p_conc = 0.398;
        elmt_cg6p_conc = 3.48;
        elmt_cpg_conc = 0.808;
        elmt_ce4p_conc = 0.098;
        elmt_cf6p_conc = 0.6;
        elmt_accoa_conc = 1.0;
        elmt_cg1p_conc = 0.653;
        elmt_malcoa_conc = 1.0;
        elmt_cpyr_conc = 2.67;
        elmt_ferdicoa_conc = 0.0;
        elmt_fercoa_conc = 0.0;
        elmt_csed7p_conc = 0.276;


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_cfdp = elmt_cfdp_conc;
        elmt_cxyl5p = elmt_cxyl5p_conc;
        elmt_cgap = elmt_cgap_conc;
        elmt_fer = elmt_fer_conc;
        elmt_cpgp = elmt_cpgp_conc;
        elmt_cribu5p = elmt_cribu5p_conc;
        elmt_cpep = elmt_cpep_conc;
        elmt_cpg2 = elmt_cpg2_conc;
        elmt_cur = elmt_cur_conc;
        elmt_cpg3 = elmt_cpg3_conc;
        elmt_cdhap = elmt_cdhap_conc;
        elmt_crib5p = elmt_crib5p_conc;
        elmt_cg6p = elmt_cg6p_conc;
        elmt_cpg = elmt_cpg_conc;
        elmt_ce4p = elmt_ce4p_conc;
        elmt_cf6p = elmt_cf6p_conc;
        elmt_accoa = elmt_accoa_conc;
        elmt_cg1p = elmt_cg1p_conc;
        elmt_malcoa = elmt_malcoa_conc;
        elmt_cpyr = elmt_cpyr_conc;
        elmt_ferdicoa = elmt_ferdicoa_conc;
        elmt_fercoa = elmt_fercoa_conc;
        elmt_csed7p = elmt_csed7p_conc;
        der(elmt_cfdp_amount) = ((elmt_vPFK * elmt_product11) + (- (elmt_vALDO * elmt_reactant25)) + (- (elmt_vfdP * elmt_reactant62)));
        der(elmt_cxyl5p_amount) = ((elmt_vRu5P * elmt_product57) + (- (elmt_vXYL5P * elmt_reactant71)) + (- (elmt_vTKA * elmt_reactant17)) + (- (elmt_vTKB * elmt_reactant21)));
        der(elmt_cgap_amount) = ((elmt_vTIS * elmt_product31) + (- (elmt_vTA * elmt_reactant12)) + (elmt_vALDO * elmt_product27) + (- (elmt_vGAPDH * elmt_reactant28)) + (elmt_vTKA * elmt_product18) + (elmt_vTKB * elmt_product22) + (elmt_vTRPSYNTH * elmt_product33) + (- (elmt_vGAP * elmt_reactant63)));
        der(elmt_fer_amount) = ((elmt_FER_t * elmt_product91) + (- (elmt_vFER * elmt_reactant98)) + (- (elmt_R4CL * elmt_reactant82)));
        der(elmt_cpgp_amount) = ((elmt_vGAPDH * elmt_product29) + (- (elmt_vPGK * elmt_reactant35)) + (- (elmt_vPGP * elmt_reactant65)));
        der(elmt_cribu5p_amount) = ((elmt_vPGDH * elmt_product53) + (- (elmt_vR5PI * elmt_reactant54)) + (- (elmt_vRu5P * elmt_reactant56)) + (- (elmt_vRibu5p * elmt_reactant69)));
        der(elmt_cpep_amount) = ((- (elmt_vpepCxylase * elmt_reactant44)) + (- (elmt_vPEP * elmt_reactant68)) + (- (elmt_vPTS * elmt_reactant1)) + (- (elmt_vDAHPS * elmt_reactant48)) + (- (elmt_vPK * elmt_reactant42)) + (elmt_vENO * elmt_product41) + (- (elmt_vSynth1 * elmt_reactant45)));
        der(elmt_cpg2_amount) = ((elmt_vrpGluMu * elmt_product39) + (- (elmt_vpg2 * elmt_reactant67)) + (- (elmt_vENO * elmt_reactant40)));
        der(elmt_cur_amount) = ((- (elmt_vCUR * elmt_reactant101)) + (elmt_CURS * elmt_product89) + (- (elmt_CUR_t * elmt_reactant92)));
        der(elmt_cpg3_amount) = ((- (elmt_vsersynth * elmt_reactant37)) + (- (elmt_vrpGluMu * elmt_reactant38)) + (- (elmt_vPG3 * elmt_reactant66)) + (elmt_vPGK * elmt_product36));
        der(elmt_cdhap_amount) = ((- (elmt_vG3PDH * elmt_reactant34)) + (- (elmt_vTIS * elmt_reactant30)) + (elmt_vALDO * elmt_product26) + (- (elmt_vDHAP * elmt_reactant64)));
        der(elmt_crib5p_amount) = ((elmt_vR5PI * elmt_product55) + (- (elmt_vPPK * elmt_reactant58)) + (- (elmt_vRIB5P * elmt_reactant70)) + (- (elmt_vTKA * elmt_reactant16)));
        der(elmt_cg6p_amount) = ((elmt_vPTS * elmt_product2) + (- (elmt_vG6P * elmt_reactant60)) + (- (elmt_vPGI * elmt_reactant4)) + (- (elmt_vG6PDH * elmt_reactant8)) + (- (elmt_vPGM * elmt_reactant6)));
        der(elmt_cpg_amount) = ((- (elmt_vPGDH * elmt_reactant52)) + (- (elmt_vPG * elmt_reactant74)) + (elmt_vG6PDH * elmt_product9));
        der(elmt_ce4p_amount) = ((- (elmt_vE4P * elmt_reactant75)) + (elmt_vTA * elmt_product15) + (- (elmt_vDAHPS * elmt_reactant47)) + (- (elmt_vTKB * elmt_reactant20)));
        der(elmt_cf6p_amount) = ((- (elmt_vPFK * elmt_reactant10)) + (- (elmt_vMURSyNTH * elmt_reactant24)) + (elmt_vTA * elmt_product14) + (elmt_vPGI * elmt_product5) + (elmt_vTKB * elmt_product23) + (- (elmt_vf6P * elmt_reactant61)));
        der(elmt_accoa_amount) = ((- (elmt_ACCOAC * elmt_reactant78)) + (- (elmt_Synth3 * elmt_reactant80)) + (elmt_vPDH * elmt_product50) + (- (elmt_vACCOA * elmt_reactant96)));
        der(elmt_cg1p_amount) = ((- (elmt_vGLP * elmt_reactant76)) + (- (elmt_vG1PAT * elmt_reactant59)) + (elmt_vPGM * elmt_product7));
        der(elmt_malcoa_amount) = ((- (elmt_DCS * elmt_reactant85)) + (elmt_ACCOAC * elmt_product79) + (- (elmt_Synth4 * elmt_reactant81)) + (- (elmt_vMALCOA * elmt_reactant97)));
        der(elmt_cpyr_amount) = ((- (elmt_vpyr * elmt_reactant73)) + (elmt_vMethSynth * elmt_product51) + (elmt_vPTS * elmt_product3) + (- (elmt_vPDH * elmt_reactant49)) + (elmt_vPK * elmt_product43) + (- (elmt_vSynth2 * elmt_reactant46)) + (elmt_vTRPSYNTH * elmt_product32));
        der(elmt_ferdicoa_amount) = ((elmt_DCS * elmt_product86) + (- (elmt_CURS * elmt_reactant88)) + (- (elmt_vFERDICOA * elmt_reactant100)));
        der(elmt_fercoa_amount) = ((- (elmt_DCS * elmt_reactant84)) + (- (elmt_CURS * elmt_reactant87)) + (- (elmt_vFERCOA * elmt_reactant99)) + (elmt_R4CL * elmt_product83));
        der(elmt_csed7p_amount) = ((- (elmt_vSED7P * elmt_reactant72)) + (- (elmt_vTA * elmt_reactant13)) + (elmt_vTKA * elmt_product19));

    algorithm
        elmt_cfdp_conc := elmt_cfdp_amount / elmt_cytosol;
        elmt_cxyl5p_conc := elmt_cxyl5p_amount / elmt_cytosol;
        elmt_cgap_conc := elmt_cgap_amount / elmt_cytosol;
        elmt_fer_conc := elmt_fer_amount / elmt_cytosol;
        elmt_cpgp_conc := elmt_cpgp_amount / elmt_cytosol;
        elmt_cribu5p_conc := elmt_cribu5p_amount / elmt_cytosol;
        elmt_cpep_conc := elmt_cpep_amount / elmt_cytosol;
        elmt_cpg2_conc := elmt_cpg2_amount / elmt_cytosol;
        elmt_cur_conc := elmt_cur_amount / elmt_cytosol;
        elmt_cpg3_conc := elmt_cpg3_amount / elmt_cytosol;
        elmt_cdhap_conc := elmt_cdhap_amount / elmt_cytosol;
        elmt_crib5p_conc := elmt_crib5p_amount / elmt_cytosol;
        elmt_cg6p_conc := elmt_cg6p_amount / elmt_cytosol;
        elmt_cpg_conc := elmt_cpg_amount / elmt_cytosol;
        elmt_ce4p_conc := elmt_ce4p_amount / elmt_cytosol;
        elmt_cf6p_conc := elmt_cf6p_amount / elmt_cytosol;
        elmt_accoa_conc := elmt_accoa_amount / elmt_cytosol;
        elmt_cg1p_conc := elmt_cg1p_amount / elmt_cytosol;
        elmt_malcoa_conc := elmt_malcoa_amount / elmt_cytosol;
        elmt_cpyr_conc := elmt_cpyr_amount / elmt_cytosol;
        elmt_ferdicoa_conc := elmt_ferdicoa_amount / elmt_cytosol;
        elmt_fercoa_conc := elmt_fercoa_amount / elmt_cytosol;
        elmt_csed7p_conc := elmt_csed7p_amount / elmt_cytosol;
end Class_elmt_cytosol;
