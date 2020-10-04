within BIOMD582;
model MODEL1506230000 "DallePezze2014 -  Cellular senescene-induced mitochondrial dysfunction" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2013-10-04T12:11:30Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>piero.dallepezze@ncl.ac.uk</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Dalle Pezze</vCard:Family>
                    <vCard:Given>Piero</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>Newcastle University</vCard:Orgname>
                  </rdf:Description> </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>glyn.nelson@ncl.ac.uk</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Nelson</vCard:Family>
                    <vCard:Given>Glyn</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>Newcastle University</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Cell elmt_Cell;

    equation
        Reacs.elmt_mTORC1_pS2448_dephos_by_AMPK_pT172 = Params.elmt_mTORC1_pS2448_dephos_by_AMPK_pT172;
        Reacs.elmt_ROS = elmt_Cell.elmt_ROS;
        Reacs.elmt_mTORC1_S2448_phos_by_AA = Params.elmt_mTORC1_S2448_phos_by_AA;
        Reacs.elmt_Mito_mass_turnover = elmt_Cell.elmt_Mito_mass_turnover;
        Reacs.elmt_mito_dysfunction = Params.elmt_mito_dysfunction;
        Reacs.elmt_FoxO3a_phos_by_Akt_pS473 = Params.elmt_FoxO3a_phos_by_Akt_pS473;
        Reacs.elmt_Mitophagy = elmt_Cell.elmt_Mitophagy;
        Reacs.elmt_mito_membr_pot_new_dec = Params.elmt_mito_membr_pot_new_dec;
        Reacs.elmt_mitophagy_inactiv_by_mTORC1_pS2448 = Params.elmt_mitophagy_inactiv_by_mTORC1_pS2448;
        Reacs.elmt_CDKN1A = elmt_Cell.elmt_CDKN1A;
        Reacs.elmt_IKKbeta_activ_by_ROS = Params.elmt_IKKbeta_activ_by_ROS;
        Reacs.elmt_CDKN1B = elmt_Cell.elmt_CDKN1B;
        Reacs.elmt_CDKN1B_transcr_by_FoxO3a_n_DNA_damage = Params.elmt_CDKN1B_transcr_by_FoxO3a_n_DNA_damage;
        Reacs.elmt_mito_biogenesis_by_mTORC1_pS2448 = Params.elmt_mito_biogenesis_by_mTORC1_pS2448;
        Reacs.elmt_Irradiation = elmt_Cell.elmt_Irradiation;
        Reacs.elmt_Amino_Acids = elmt_Cell.elmt_Amino_Acids;
        Reacs.elmt_AMPK_T172_phos = Params.elmt_AMPK_T172_phos;
        Reacs.elmt_ROS_turnover = Params.elmt_ROS_turnover;
        Reacs.elmt_JNK_pT183_inactiv = Params.elmt_JNK_pT183_inactiv;
        Reacs.elmt_CDKN1B_inactiv_by_Akt_pS473 = Params.elmt_CDKN1B_inactiv_by_Akt_pS473;
        Reacs.elmt_SA_beta_gal = elmt_Cell.elmt_SA_beta_gal;
        Reacs.elmt_DNA_damaged_by_ROS = Params.elmt_DNA_damaged_by_ROS;
        Reacs.elmt_IKKbeta_inactiv = Params.elmt_IKKbeta_inactiv;
        Reacs.elmt_mTORC1_pS2448 = elmt_Cell.elmt_mTORC1_pS2448;
        Reacs.elmt_DNA_repair = Params.elmt_DNA_repair;
        Reacs.elmt_mito_membr_pot_old_inc = Params.elmt_mito_membr_pot_old_inc;
        Reacs.elmt_mitophagy_old = Params.elmt_mitophagy_old;
        Reacs.elmt_mitophagy_new = Params.elmt_mitophagy_new;
        Reacs.elmt_mTORC1_S2448_phos_by_AA_n_IKKbeta = Params.elmt_mTORC1_S2448_phos_by_AA_n_IKKbeta;
        Reacs.elmt_mitophagy_activ_by_FoxO3a_n_AMPK_pT172 = Params.elmt_mitophagy_activ_by_FoxO3a_n_AMPK_pT172;
        Reacs.elmt_Akt = elmt_Cell.elmt_Akt;
        Reacs.elmt_Cell = elmt_Cell.elmt_Cell;
        Reacs.elmt_ROS_prod_by_Mito_membr_pot_old = Params.elmt_ROS_prod_by_Mito_membr_pot_old;
        Reacs.elmt_JNK_activ_by_ROS = Params.elmt_JNK_activ_by_ROS;
        Reacs.elmt_sen_ass_beta_gal_inc_by_Mitophagy = Params.elmt_sen_ass_beta_gal_inc_by_Mitophagy;
        Reacs.elmt_CDKN1A_inactiv_by_Akt_pS473 = Params.elmt_CDKN1A_inactiv_by_Akt_pS473;
        Reacs.elmt_FoxO3a = elmt_Cell.elmt_FoxO3a;
        Reacs.elmt_mito_biogenesis_by_AMPK_pT172 = Params.elmt_mito_biogenesis_by_AMPK_pT172;
        Reacs.elmt_Insulin = elmt_Cell.elmt_Insulin;
        Reacs.elmt_FoxO3a_pS253 = elmt_Cell.elmt_FoxO3a_pS253;
        Reacs.elmt_Akt_pS473 = elmt_Cell.elmt_Akt_pS473;
        Reacs.elmt_JNK_pT183 = elmt_Cell.elmt_JNK_pT183;
        Reacs.elmt_FoxO3a_synthesis = Params.elmt_FoxO3a_synthesis;
        Reacs.elmt_JNK = elmt_Cell.elmt_JNK;
        Reacs.elmt_mTORC1_S2448_phos_by_AA_n_Akt_pS473 = Params.elmt_mTORC1_S2448_phos_by_AA_n_Akt_pS473;
        Reacs.elmt_mito_membr_pot_old_dec = Params.elmt_mito_membr_pot_old_dec;
        Reacs.elmt_sen_ass_beta_gal_inc_by_ROS = Params.elmt_sen_ass_beta_gal_inc_by_ROS;
        Reacs.elmt_ROS_prod_by_Mito_membr_pot_new = Params.elmt_ROS_prod_by_Mito_membr_pot_new;
        Reacs.elmt_CDKN1A_transcr_by_FoxO3a_n_DNA_damage = Params.elmt_CDKN1A_transcr_by_FoxO3a_n_DNA_damage;
        Reacs.elmt_mTORC1 = elmt_Cell.elmt_mTORC1;
        Reacs.elmt_Mito_mass_new = elmt_Cell.elmt_Mito_mass_new;
        Reacs.elmt_AMPK_pT172 = elmt_Cell.elmt_AMPK_pT172;
        Reacs.elmt_FoxO3a_pS253_degrad = Params.elmt_FoxO3a_pS253_degrad;
        Reacs.elmt_DNA_damage = elmt_Cell.elmt_DNA_damage;
        Reacs.elmt_AMPK = elmt_Cell.elmt_AMPK;
        Reacs.elmt_AMPK_pT172_dephos_by_Mito_membr_pot_old = Params.elmt_AMPK_pT172_dephos_by_Mito_membr_pot_old;
        Reacs.elmt_sen_ass_beta_gal_dec = Params.elmt_sen_ass_beta_gal_dec;
        Reacs.elmt_mito_membr_pot_new_inc = Params.elmt_mito_membr_pot_new_inc;
        Reacs.elmt_AMPK_pT172_dephos_by_Mito_membr_pot_new = Params.elmt_AMPK_pT172_dephos_by_Mito_membr_pot_new;
        Reacs.elmt_Akt_S473_phos_by_insulin = Params.elmt_Akt_S473_phos_by_insulin;
        Reacs.elmt_DNA_damaged_by_irradiation = Params.elmt_DNA_damaged_by_irradiation;
        Reacs.elmt_Mito_membr_pot_old = elmt_Cell.elmt_Mito_membr_pot_old;
        Reacs.elmt_IKKbeta = elmt_Cell.elmt_IKKbeta;
        Reacs.elmt_Akt_pS473_dephos_by_mTORC1_pS2448 = Params.elmt_Akt_pS473_dephos_by_mTORC1_pS2448;
        Reacs.elmt_Mito_membr_pot_new = elmt_Cell.elmt_Mito_membr_pot_new;
        Reacs.elmt_FoxO3a_phos_by_JNK_pT183 = Params.elmt_FoxO3a_phos_by_JNK_pT183;
        Reacs.elmt_Mito_mass_old = elmt_Cell.elmt_Mito_mass_old;
        elmt_Cell.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_Cell.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_Cell.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt_Cell.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt_Cell.elmt_scale_ROS_obs = Params.elmt_scale_ROS_obs;
        elmt_Cell.elmt_scale_FoxO3a_total_obs = Params.elmt_scale_FoxO3a_total_obs;
        elmt_Cell.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_Cell.elmt_reactant51 = Reacs.elmt_reactant51;
        elmt_Cell.elmt_reactant53 = Reacs.elmt_reactant53;
        elmt_Cell.elmt_reactant59 = Reacs.elmt_reactant59;
        elmt_Cell.elmt_reactant55 = Reacs.elmt_reactant55;
        elmt_Cell.elmt_product11 = Reacs.elmt_product11;
        elmt_Cell.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_Cell.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_Cell.elmt_scale_CDKN1A_obs = Params.elmt_scale_CDKN1A_obs;
        elmt_Cell.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_Cell.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_Cell.elmt_reaction_41 = Reacs.elmt_reaction_41;
        elmt_Cell.elmt_reaction_40 = Reacs.elmt_reaction_40;
        elmt_Cell.elmt_product9 = Reacs.elmt_product9;
        elmt_Cell.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_Cell.elmt_product7 = Reacs.elmt_product7;
        elmt_Cell.elmt_product22 = Reacs.elmt_product22;
        elmt_Cell.elmt_product20 = Reacs.elmt_product20;
        elmt_Cell.elmt_product1 = Reacs.elmt_product1;
        elmt_Cell.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_Cell.elmt_product5 = Reacs.elmt_product5;
        elmt_Cell.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_Cell.elmt_product3 = Reacs.elmt_product3;
        elmt_Cell.elmt_reaction_38 = Reacs.elmt_reaction_38;
        elmt_Cell.elmt_reaction_39 = Reacs.elmt_reaction_39;
        elmt_Cell.elmt_reaction_36 = Reacs.elmt_reaction_36;
        elmt_Cell.elmt_reaction_37 = Reacs.elmt_reaction_37;
        elmt_Cell.elmt_reaction_30 = Reacs.elmt_reaction_30;
        elmt_Cell.elmt_product16 = Reacs.elmt_product16;
        elmt_Cell.elmt_reaction_31 = Reacs.elmt_reaction_31;
        elmt_Cell.elmt_product15 = Reacs.elmt_product15;
        elmt_Cell.elmt_product13 = Reacs.elmt_product13;
        elmt_Cell.elmt_reaction_34 = Reacs.elmt_reaction_34;
        elmt_Cell.elmt_reaction_35 = Reacs.elmt_reaction_35;
        elmt_Cell.elmt_reaction_32 = Reacs.elmt_reaction_32;
        elmt_Cell.elmt_product18 = Reacs.elmt_product18;
        elmt_Cell.elmt_reaction_33 = Reacs.elmt_reaction_33;
        elmt_Cell.elmt_product33 = Reacs.elmt_product33;
        elmt_Cell.elmt_product32 = Reacs.elmt_product32;
        elmt_Cell.elmt_product31 = Reacs.elmt_product31;
        elmt_Cell.elmt_scale_Mitophagy_obs = Params.elmt_scale_Mitophagy_obs;
        elmt_Cell.elmt_reaction_27 = Reacs.elmt_reaction_27;
        elmt_Cell.elmt_reaction_28 = Reacs.elmt_reaction_28;
        elmt_Cell.elmt_reaction_25 = Reacs.elmt_reaction_25;
        elmt_Cell.elmt_reaction_26 = Reacs.elmt_reaction_26;
        elmt_Cell.elmt_scale_Akt_pS473_obs = Params.elmt_scale_Akt_pS473_obs;
        elmt_Cell.elmt_reaction_29 = Reacs.elmt_reaction_29;
        elmt_Cell.elmt_product26 = Reacs.elmt_product26;
        elmt_Cell.elmt_reaction_20 = Reacs.elmt_reaction_20;
        elmt_Cell.elmt_product25 = Reacs.elmt_product25;
        elmt_Cell.elmt_product24 = Reacs.elmt_product24;
        elmt_Cell.elmt_reaction_23 = Reacs.elmt_reaction_23;
        elmt_Cell.elmt_scale_Mito_Mass_obs = Params.elmt_scale_Mito_Mass_obs;
        elmt_Cell.elmt_reaction_24 = Reacs.elmt_reaction_24;
        elmt_Cell.elmt_reaction_21 = Reacs.elmt_reaction_21;
        elmt_Cell.elmt_product29 = Reacs.elmt_product29;
        elmt_Cell.elmt_reaction_22 = Reacs.elmt_reaction_22;
        elmt_Cell.elmt_product28 = Reacs.elmt_product28;
        elmt_Cell.elmt_product41 = Reacs.elmt_product41;
        elmt_Cell.elmt_product45 = Reacs.elmt_product45;
        elmt_Cell.elmt_product44 = Reacs.elmt_product44;
        elmt_Cell.elmt_product43 = Reacs.elmt_product43;
        elmt_Cell.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_Cell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_Cell.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_Cell.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_Cell.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_Cell.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_Cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_Cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_Cell.elmt_reaction_16 = Reacs.elmt_reaction_16;
        elmt_Cell.elmt_reaction_17 = Reacs.elmt_reaction_17;
        elmt_Cell.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_Cell.elmt_reaction_14 = Reacs.elmt_reaction_14;
        elmt_Cell.elmt_reaction_15 = Reacs.elmt_reaction_15;
        elmt_Cell.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_Cell.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_Cell.elmt_reaction_18 = Reacs.elmt_reaction_18;
        elmt_Cell.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_Cell.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_Cell.elmt_reaction_19 = Reacs.elmt_reaction_19;
        elmt_Cell.elmt_product37 = Reacs.elmt_product37;
        elmt_Cell.elmt_product36 = Reacs.elmt_product36;
        elmt_Cell.elmt_product35 = Reacs.elmt_product35;
        elmt_Cell.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt_Cell.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_Cell.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_Cell.elmt_product39 = Reacs.elmt_product39;
        elmt_Cell.elmt_reaction_11 = Reacs.elmt_reaction_11;
        elmt_Cell.elmt_product52 = Reacs.elmt_product52;
        elmt_Cell.elmt_reactant61 = Reacs.elmt_reactant61;
        elmt_Cell.elmt_product50 = Reacs.elmt_product50;
        elmt_Cell.elmt_reactant64 = Reacs.elmt_reactant64;
        elmt_Cell.elmt_product56 = Reacs.elmt_product56;
        elmt_Cell.elmt_product54 = Reacs.elmt_product54;
        elmt_Cell.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_Cell.elmt_scale_Mito_Membr_Pot_obs = Params.elmt_scale_Mito_Membr_Pot_obs;
        elmt_Cell.elmt_scale_DNA_damage_gammaH2AX_obs = Params.elmt_scale_DNA_damage_gammaH2AX_obs;
        elmt_Cell.elmt_product48 = Reacs.elmt_product48;
        elmt_Cell.elmt_scale_mTOR_pS2448_obs = Params.elmt_scale_mTOR_pS2448_obs;
        elmt_Cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_Cell.elmt_product63 = Reacs.elmt_product63;
        elmt_Cell.elmt_product62 = Reacs.elmt_product62;
        elmt_Cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_Cell.elmt_product60 = Reacs.elmt_product60;
        elmt_Cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_Cell.elmt_product67 = Reacs.elmt_product67;
        elmt_Cell.elmt_product65 = Reacs.elmt_product65;
        elmt_Cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_Cell.elmt_scale_SA_beta_gal_obs = Params.elmt_scale_SA_beta_gal_obs;
        elmt_Cell.elmt_scale_JNK_pT183_obs = Params.elmt_scale_JNK_pT183_obs;
        elmt_Cell.elmt_scale_FoxO3a_pS253_obs = Params.elmt_scale_FoxO3a_pS253_obs;
        elmt_Cell.elmt_scale_AMPK_pT172_obs = Params.elmt_scale_AMPK_pT172_obs;
        elmt_Cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_Cell.elmt_scale_CDKN1B_obs = Params.elmt_scale_CDKN1B_obs;
        elmt_Cell.elmt_product58 = Reacs.elmt_product58;
        elmt_Cell.elmt_product57 = Reacs.elmt_product57;

end MODEL1506230000;
