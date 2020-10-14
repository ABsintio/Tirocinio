within BIOMD268;
class Class_elmt_cytosol

    input Real elmt_V_c_gshHb;
    input Real elmt_product72;
    input Real elmt_product71;
    input Real elmt_product77;
    input Real elmt_V_GNMT;
    input Real elmt_product75;
    input Real elmt_VcNE;
    input Real elmt_reactant110;
    input Real elmt_reactant118;
    input Real elmt_V_MS;
    input Real elmt_reactant115;
    input Real elmt_product68;
    input Real elmt_reactant114;
    input Real elmt_V_SAHH;
    input Real elmt_reactant112;
    input Real elmt_product84;
    input Real elmt_product88;
    input Real elmt_product87;
    input Real elmt_V_DNMT;
    input Real elmt_product81;
    input Real elmt_product80;
    input Real elmt_product102;
    input Real elmt_reactant120;
    input Real elmt_reactant129;
    input Real elmt_V_b_CYS_c;
    input Real elmt_reactant128;
    input Real elmt_V_GPX;
    input Real elmt_reactant126;
    input Real elmt_reactant124;
    input Real elmt_product105;
    input Real elmt_reactant123;
    input Real elmt_product108;
    input Real elmt_reactant122;
    input Real elmt_V_TS;
    input Real elmt_product94;
    input Real elmt_VcMTCH;
    input Real elmt_VmGLYc;
    input Real elmt_product99;
    input Real elmt_product97;
    input Real elmt_VcFTD;
    input Real elmt_reactant21;
    input Real elmt_product91;
    input Real elmt_reactant23;
    input Real elmt_cys_usage;
    input Real elmt_reactant19;
    input Real elmt_V_b_GLU_c;
    input Real elmt_V_b_MET_c;
    input Real elmt_V_MATIII;
    input Real elmt_V_b_SER_c;
    input Real elmt_gluconeogenesis_ser;
    input Real elmt_V_BHMT;
    input Real elmt_V_MTHFR;
    input Real elmt_V_CBS;
    input Real elmt_VcFTS;
    input Real elmt_reactant106;
    input Real elmt_reactant104;
    input Real elmt_V_c_gsgLb;
    input Real elmt_reactant103;
    input Real elmt_reactant101;
    input Real elmt_product30;
    input Real elmt_reactant83;
    input Real elmt_reactant85;
    input Real elmt_reactant86;
    input Real elmt_product34;
    input Real elmt_product32;
    input Real elmt_V_DHFR;
    input Real elmt_reactant82;
    input Real elmt_VcMTD;
    input Real elmt_reactant89;
    input Real elmt_product135;
    input Real elmt_VmHCOOHc;
    input Real elmt_V_GCS;
    input Real elmt_product130;
    input Real elmt_product26;
    input Real elmt_product138;
    input Real elmt_product28;
    input Real elmt_reactant95;
    input Real elmt_V_b_GLY_c;
    input Real elmt_reactant93;
    input Real elmt_reactant17;
    input Real elmt_reactant98;
    input Real elmt_product141;
    input Real elmt_V_c_gshLb;
    input Real elmt_c_gsh_degr;
    input Real elmt_reactant69;
    input Real elmt_c_glu_usage;
    input Real elmt_reactant132;
    input Real elmt_product113;
    input Real elmt_reactant131;
    input Real elmt_V_MATI;
    input Real elmt_product111;
    input Real elmt_reactant139;
    input Real elmt_c_gsg_degr;
    input Real elmt_reactant136;
    input Real elmt_V_CTGL;
    input Real elmt_V_GS;
    input Real elmt_product116;
    input Real elmt_reactant134;
    input Real elmt_V_GR;
    input Real elmt_product119;
    input Real elmt_reactant133;
    input Real elmt_reactant73;
    input Real elmt_product66;
    input Real elmt_V_ART;
    input Real elmt_reactant70;
    input Real elmt_product64;
    input Real elmt_reactant76;
    input Real elmt_reactant78;
    input Real elmt_reactant143;
    input Real elmt_reactant142;
    input Real elmt_VmSERc;
    input Real elmt_product125;
    input Real elmt_V_PGT;
    input Real elmt_Fol;
    input Real elmt_VcSHMT;
    input Real elmt_product121;
    input Real elmt_product127;
    input Real elmt_V_c_gsgHb;

    Real elmt_cytosol(unit = "m3.0") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_GAR_conc(unit = "m-24.0.");
    Real elmt_GAR_amount(unit = "m-21.0.");
    Real elmt_GAR(unit = "m-24.0.") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_c_1cf_conc(unit = "m-48.0.");
    Real elmt_c_1cf_amount(unit = "m-45.0.");
    Real elmt_c_1cf(unit = "m-48.0.") "c_5-10-methenyl-THF";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_BET_conc(unit = "m-30.0.");
    Real elmt_BET_amount(unit = "m-27.0.");
    Real elmt_BET(unit = "m-30.0.") "Betaine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_c_5mf_conc(unit = "m-42.0.");
    Real elmt_c_5mf_amount(unit = "m-39.0.");
    Real elmt_c_5mf(unit = "m-42.0.") "c_5-methyl-THF";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_cyt_conc(unit = "m-78.0.");
    Real elmt_cyt_amount(unit = "m-75.0.");
    Real elmt_cyt(unit = "m-78.0.") "Cystathione";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_aic_conc(unit = "m-57.0.");
    Real elmt_aic_amount(unit = "m-54.0.");
    Real elmt_aic(unit = "m-57.0.") "AICAR";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_c_2cf_conc(unit = "m-45.0.");
    Real elmt_c_2cf_amount(unit = "m-42.0.");
    Real elmt_c_2cf(unit = "m-45.0.") "c_5-10-methylene-THF";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_c_dhf_conc(unit = "m-54.0.");
    Real elmt_c_dhf_amount(unit = "m-51.0.");
    Real elmt_c_dhf(unit = "m-54.0.") "c_DHF";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_c_ser_conc(unit = "m-84.0.");
    Real elmt_c_ser_amount(unit = "m-81.0.");
    Real elmt_c_ser(unit = "m-84.0.") "c_Serine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_DUMP_conc(unit = "m-33.0.");
    Real elmt_DUMP_amount(unit = "m-30.0.");
    Real elmt_DUMP(unit = "m-33.0.") "dUMP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_c_10f_conc(unit = "m-51.0.");
    Real elmt_c_10f_amount(unit = "m-48.0.");
    Real elmt_c_10f(unit = "m-51.0.") "c_10-formyl-THF";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_c_gly_conc(unit = "m-69.0.");
    Real elmt_c_gly_amount(unit = "m-66.0.");
    Real elmt_c_gly(unit = "m-69.0.") "c_Glycine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_c_thf_conc(unit = "m-39.0.");
    Real elmt_c_thf_amount(unit = "m-36.0.");
    Real elmt_c_thf(unit = "m-39.0.") "c_THF";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_c_glu_conc(unit = "m-60.0.");
    Real elmt_c_glu_amount(unit = "m-57.0.");
    Real elmt_c_glu(unit = "m-60.0.") "c_Glutamate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_c_gsh_conc(unit = "m-75.0.");
    Real elmt_c_gsh_amount(unit = "m-72.0.");
    Real elmt_c_gsh(unit = "m-75.0.") "c_GSH";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_NADPH_conc(unit = "m-27.0.");
    Real elmt_NADPH_amount(unit = "m-24.0.");
    Real elmt_NADPH(unit = "m-27.0.") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_c_gsg_conc(unit = "m-72.0.");
    Real elmt_c_gsg_amount(unit = "m-69.0.");
    Real elmt_c_gsg(unit = "m-72.0.") "c_GSSG";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_sam_conc(unit = "m-90.0.");
    Real elmt_sam_amount(unit = "m-87.0.");
    Real elmt_sam(unit = "m-90.0.") "S-adenosylmethionine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_H2O2_conc(unit = "m-36.0.");
    Real elmt_H2O2_amount(unit = "m-33.0.");
    Real elmt_H2O2(unit = "m-36.0.") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_glc_conc(unit = "m-66.0.");
    Real elmt_glc_amount(unit = "m-63.0.");
    Real elmt_glc(unit = "m-66.0.") "Glutamyl-Cysteine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_hcy_conc(unit = "m-81.0.");
    Real elmt_hcy_amount(unit = "m-78.0.");
    Real elmt_hcy(unit = "m-81.0.") "Homocysteine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_met_conc(unit = "m-93.0.");
    Real elmt_met_amount(unit = "m-90.0.");
    Real elmt_met(unit = "m-93.0.") "c_Methionine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_sah_conc(unit = "m-87.0.");
    Real elmt_sah_amount(unit = "m-84.0.");
    Real elmt_sah(unit = "m-87.0.") "S-adenosylhomocysteine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_c_coo_conc(unit = "m-96.0.");
    Real elmt_c_coo_amount(unit = "m-93.0.");
    Real elmt_c_coo(unit = "m-96.0.") "c_formate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_c_cys_conc(unit = "m-63.0.");
    Real elmt_c_cys_amount(unit = "m-60.0.");
    Real elmt_c_cys(unit = "m-63.0.") "c_Cysteine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cytosol = 1.0;
        elmt_GAR_conc = 10.0;
        elmt_c_1cf_conc = 0.278602708139276;
        elmt_BET_conc = 50.0;
        elmt_c_5mf_conc = 4.4965335653401;
        elmt_cyt_conc = 36.8825861752429;
        elmt_aic_conc = 0.942750394171554;
        elmt_c_2cf_conc = 0.506278119133034;
        elmt_c_dhf_conc = 0.0385952337473159;
        elmt_c_ser_conc = 562.834377270222;
        elmt_DUMP_conc = 20.0;
        elmt_c_10f_conc = 3.40907070478307;
        elmt_c_gly_conc = 924.429820216685;
        elmt_c_thf_conc = ((elmt_Fol / ((2.0 * 3.0) / 4.0)) - (elmt_c_5mf + elmt_c_2cf + elmt_c_1cf + elmt_c_10f + elmt_c_dhf));
        elmt_c_glu_conc = 3219.39793573653;
        elmt_c_gsh_conc = 6590.56824161192;
        elmt_NADPH_conc = 50.0;
        elmt_c_gsg_conc = 61.3019611792609;
        elmt_sam_conc = 81.1684566962769;
        elmt_H2O2_conc = 0.01;
        elmt_glc_conc = 9.80842470037426;
        elmt_hcy_conc = 1.12248362561721;
        elmt_met_conc = 49.18682158;
        elmt_sah_conc = 19.1432773636787;
        elmt_c_coo_conc = 13.0888186429922;
        elmt_c_cys_conc = 194.96740946034;


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_GAR = elmt_GAR_conc;
        elmt_c_1cf = elmt_c_1cf_conc;
        elmt_BET = elmt_BET_conc;
        elmt_c_5mf = elmt_c_5mf_conc;
        elmt_cyt = elmt_cyt_conc;
        elmt_aic = elmt_aic_conc;
        elmt_c_2cf = elmt_c_2cf_conc;
        elmt_c_dhf = elmt_c_dhf_conc;
        elmt_c_ser = elmt_c_ser_conc;
        elmt_DUMP = elmt_DUMP_conc;
        elmt_c_10f = elmt_c_10f_conc;
        elmt_c_gly = elmt_c_gly_conc;
        elmt_c_thf = elmt_c_thf_conc;
        elmt_c_glu = elmt_c_glu_conc;
        elmt_c_gsh = elmt_c_gsh_conc;
        elmt_NADPH = elmt_NADPH_conc;
        elmt_c_gsg = elmt_c_gsg_conc;
        elmt_sam = elmt_sam_conc;
        elmt_H2O2 = elmt_H2O2_conc;
        elmt_glc = elmt_glc_conc;
        elmt_hcy = elmt_hcy_conc;
        elmt_met = elmt_met_conc;
        elmt_sah = elmt_sah_conc;
        elmt_c_coo = elmt_c_coo_conc;
        elmt_c_cys = elmt_c_cys_conc;
        der(elmt_GAR_amount) = 0;
        der(elmt_BET_amount) = 0;
        der(elmt_DUMP_amount) = 0;
        der(elmt_NADPH_amount) = 0;
        der(elmt_H2O2_amount) = 0;
        der(elmt_c_gly_amount) = ((- (elmt_V_GNMT * elmt_reactant115)) + (elmt_V_b_GLY_c * elmt_product30) + (elmt_VmGLYc * elmt_product68) + (- (elmt_V_GS * elmt_reactant134)) + (elmt_VcSHMT * elmt_product87));
        der(elmt_c_1cf_amount) = ((elmt_VcMTD * elmt_product99) + (- (elmt_VcMTCH * elmt_reactant101)));
        der(elmt_c_thf_amount) = ((elmt_V_DHFR * elmt_product75) + (- (elmt_VcNE * elmt_reactant89)) + (elmt_V_MS * elmt_product71) + (elmt_VcFTD * elmt_product77) + (elmt_V_ART * elmt_product105) + (elmt_V_PGT * elmt_product81) + (- (elmt_VcFTS * elmt_reactant82)) + (- (elmt_VcSHMT * elmt_reactant86)));
        der(elmt_c_glu_amount) = ((- (elmt_V_GCS * elmt_reactant129)) + (- (elmt_c_glu_usage * elmt_reactant132)) + (elmt_V_b_GLU_c * elmt_product28));
        der(elmt_c_5mf_amount) = ((- (elmt_V_MS * elmt_reactant69)) + (elmt_V_MTHFR * elmt_product97));
        der(elmt_c_gsh_amount) = ((- (elmt_V_c_gshHb * elmt_reactant17)) + (- (elmt_V_GPX * elmt_reactant136)) + (- (elmt_V_c_gshLb * elmt_reactant19)) + (- (elmt_c_gsh_degr * elmt_reactant142)) + (elmt_V_GS * elmt_product135) + (elmt_V_GR * elmt_product141));
        der(elmt_c_gsg_amount) = ((elmt_V_GPX * elmt_product138) + (- (elmt_c_gsg_degr * elmt_reactant143)) + (- (elmt_V_GR * elmt_reactant139)) + (- (elmt_V_c_gsgLb * elmt_reactant23)) + (- (elmt_V_c_gsgHb * elmt_reactant21)));
        der(elmt_sam_amount) = ((- (elmt_V_GNMT * elmt_reactant114)) + (- (elmt_V_DNMT * elmt_reactant118)) + (elmt_V_MATI * elmt_product111) + (elmt_V_MATIII * elmt_product113));
        der(elmt_cyt_amount) = ((- (elmt_V_CTGL * elmt_reactant126)) + (elmt_V_CBS * elmt_product125));
        der(elmt_glc_amount) = ((elmt_V_GCS * elmt_product130) + (- (elmt_V_GS * elmt_reactant133)));
        der(elmt_hcy_amount) = ((- (elmt_V_MS * elmt_reactant70)) + (elmt_V_SAHH * elmt_product121) + (- (elmt_V_BHMT * elmt_reactant106)) + (- (elmt_V_CBS * elmt_reactant123)));
        der(elmt_met_amount) = ((elmt_V_MS * elmt_product72) + (- (elmt_V_MATI * elmt_reactant110)) + (elmt_V_b_MET_c * elmt_product34) + (- (elmt_V_MATIII * elmt_reactant112)) + (elmt_V_BHMT * elmt_product108));
        der(elmt_aic_amount) = ((- (elmt_V_ART * elmt_reactant104)) + (elmt_V_PGT * elmt_product80));
        der(elmt_c_2cf_amount) = ((elmt_VcNE * elmt_product91) + (- (elmt_VcMTD * elmt_reactant98)) + (- (elmt_V_TS * elmt_reactant93)) + (- (elmt_V_MTHFR * elmt_reactant95)) + (elmt_VcSHMT * elmt_product88));
        der(elmt_sah_amount) = ((elmt_V_GNMT * elmt_product116) + (- (elmt_V_SAHH * elmt_reactant120)) + (elmt_V_DNMT * elmt_product119));
        der(elmt_c_coo_amount) = ((elmt_VmHCOOHc * elmt_product66) + (- (elmt_VcFTS * elmt_reactant83)));
        der(elmt_c_dhf_amount) = ((- (elmt_V_DHFR * elmt_reactant73)) + (elmt_V_TS * elmt_product94));
        der(elmt_c_ser_amount) = ((elmt_V_b_SER_c * elmt_product32) + (- (elmt_gluconeogenesis_ser * elmt_reactant122)) + (elmt_VmSERc * elmt_product64) + (- (elmt_V_CBS * elmt_reactant124)) + (- (elmt_VcSHMT * elmt_reactant85)));
        der(elmt_c_cys_amount) = ((- (elmt_V_GCS * elmt_reactant128)) + (elmt_V_b_CYS_c * elmt_product26) + (- (elmt_cys_usage * elmt_reactant131)) + (elmt_V_CTGL * elmt_product127));
        der(elmt_c_10f_amount) = ((elmt_VcMTCH * elmt_product102) + (- (elmt_VcFTD * elmt_reactant76)) + (- (elmt_V_ART * elmt_reactant103)) + (- (elmt_V_PGT * elmt_reactant78)) + (elmt_VcFTS * elmt_product84));

    algorithm
        elmt_GAR_conc := elmt_GAR_amount / elmt_cytosol;
        elmt_c_1cf_conc := elmt_c_1cf_amount / elmt_cytosol;
        elmt_BET_conc := elmt_BET_amount / elmt_cytosol;
        elmt_c_5mf_conc := elmt_c_5mf_amount / elmt_cytosol;
        elmt_cyt_conc := elmt_cyt_amount / elmt_cytosol;
        elmt_aic_conc := elmt_aic_amount / elmt_cytosol;
        elmt_c_2cf_conc := elmt_c_2cf_amount / elmt_cytosol;
        elmt_c_dhf_conc := elmt_c_dhf_amount / elmt_cytosol;
        elmt_c_ser_conc := elmt_c_ser_amount / elmt_cytosol;
        elmt_DUMP_conc := elmt_DUMP_amount / elmt_cytosol;
        elmt_c_10f_conc := elmt_c_10f_amount / elmt_cytosol;
        elmt_c_gly_conc := elmt_c_gly_amount / elmt_cytosol;
        elmt_c_thf_conc := elmt_c_thf_amount / elmt_cytosol;
        elmt_c_glu_conc := elmt_c_glu_amount / elmt_cytosol;
        elmt_c_gsh_conc := elmt_c_gsh_amount / elmt_cytosol;
        elmt_NADPH_conc := elmt_NADPH_amount / elmt_cytosol;
        elmt_c_gsg_conc := elmt_c_gsg_amount / elmt_cytosol;
        elmt_sam_conc := elmt_sam_amount / elmt_cytosol;
        elmt_H2O2_conc := elmt_H2O2_amount / elmt_cytosol;
        elmt_glc_conc := elmt_glc_amount / elmt_cytosol;
        elmt_hcy_conc := elmt_hcy_amount / elmt_cytosol;
        elmt_met_conc := elmt_met_amount / elmt_cytosol;
        elmt_sah_conc := elmt_sah_amount / elmt_cytosol;
        elmt_c_coo_conc := elmt_c_coo_amount / elmt_cytosol;
        elmt_c_cys_conc := elmt_c_cys_amount / elmt_cytosol;
end Class_elmt_cytosol;
