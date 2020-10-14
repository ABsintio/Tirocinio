within BIOMD602;
model Stavrum2013___Tryptophan_Metabolism_in_Liver "Stavrum2013 - Tryptophan Metabolism in Liver" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/doi:10.1074/jbc.M113.474908\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-11-23T12:24:40Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:encodes rdf:resource=\"urn:miriam:go:GO:0006568\"/>
            <CopasiMT:encodes rdf:resource=\"urn:miriam:go:GO:0006587\"/>
            <CopasiMT:is rdf:resource=\"urn:miriam:brenda:BTO:0000759\"/>
            <CopasiMT:is rdf:resource=\"urn:miriam:taxonomy:9606\"/>
            <CopasiMT:is>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/biomodels.db/MODEL1310160000\"/>
              </rdf:Bag>
            </CopasiMT:is>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Cytosol elmt_Cytosol;

    equation
        Reacs.elmt_M_Lkynr_ex = elmt_Cytosol.elmt_M_Lkynr_ex;
        Reacs.elmt_DDC_Km_trp_DASH_L = Params.elmt_DDC_Km_trp_DASH_L;
        Reacs.elmt_TRP_ex = elmt_Cytosol.elmt_TRP_ex;
        Reacs.elmt_AADAT_kcat_hLkynr = Params.elmt_AADAT_kcat_hLkynr;
        Reacs.elmt_M_trypta_c = elmt_Cytosol.elmt_M_trypta_c;
        Reacs.elmt_AANAT_Km_trypta = Params.elmt_AANAT_Km_trypta;
        Reacs.elmt_KYNU_Km_hLkynr = Params.elmt_KYNU_Km_hLkynr;
        Reacs.elmt_M_nadph_c = elmt_Cytosol.elmt_M_nadph_c;
        Reacs.elmt_M_trna_trp_c = elmt_Cytosol.elmt_M_trna_trp_c;
        Reacs.elmt_M_srtn_c = elmt_Cytosol.elmt_M_srtn_c;
        Reacs.elmt_IDO_Km_trp_DASH_L = Params.elmt_IDO_Km_trp_DASH_L;
        Reacs.elmt_Cytosol = elmt_Cytosol.elmt_Cytosol;
        Reacs.elmt_M_thbpt = elmt_Cytosol.elmt_M_thbpt;
        Reacs.elmt_scaling = Params.elmt_scaling;
        Reacs.elmt_IDO_Km_5htrp = Params.elmt_IDO_Km_5htrp;
        Reacs.elmt_MAO_Km_trypta = Params.elmt_MAO_Km_trypta;
        Reacs.elmt_M_quln_c = elmt_Cytosol.elmt_M_quln_c;
        Reacs.elmt_IMNT_E_T = Params.elmt_IMNT_E_T;
        Reacs.elmt_Transporter_kcat_Trp = Params.elmt_Transporter_kcat_Trp;
        Reacs.elmt_AANAT_Km_Srtn = Params.elmt_AANAT_Km_Srtn;
        Reacs.elmt_IMNT_Km_srtn = Params.elmt_IMNT_Km_srtn;
        Reacs.elmt_M_Lfmkynr_c = elmt_Cytosol.elmt_M_Lfmkynr_c;
        Reacs.elmt_IMNT_Km_trypta = Params.elmt_IMNT_Km_trypta;
        Reacs.elmt_Transporter_kcat_Lkynr = Params.elmt_Transporter_kcat_Lkynr;
        Reacs.elmt_M_trp_DASH_L_c = elmt_Cytosol.elmt_M_trp_DASH_L_c;
        Reacs.elmt_M_3hanthrn_c = elmt_Cytosol.elmt_M_3hanthrn_c;
        Reacs.elmt_AADAT_Km_hLkynr = Params.elmt_AADAT_Km_hLkynr;
        Reacs.elmt_AFMID_Km_nformanth = Params.elmt_AFMID_Km_nformanth;
        Reacs.elmt_M_cmusa_c = elmt_Cytosol.elmt_M_cmusa_c;
        Reacs.elmt_AFMID_Km_Lfmkynr = Params.elmt_AFMID_Km_Lfmkynr;
        Reacs.elmt_AANAT_E_T = Params.elmt_AANAT_E_T;
        Reacs.elmt_M_Lkynr_c = elmt_Cytosol.elmt_M_Lkynr_c;
        Reacs.elmt_Transporter_Km_Trp_Slc7a5 = Params.elmt_Transporter_Km_Trp_Slc7a5;
        Reacs.elmt_AADAT_E_T_kat1 = Params.elmt_AADAT_E_T_kat1;
        Reacs.elmt_Transporter_Km_Trp_Slc7a8 = Params.elmt_Transporter_Km_Trp_Slc7a8;
        Reacs.elmt_AADAT_E_T_kat3 = Params.elmt_AADAT_E_T_kat3;
        Reacs.elmt_KYNU_E_T = Params.elmt_KYNU_E_T;
        Reacs.elmt_AADAT_E_T_kat2 = Params.elmt_AADAT_E_T_kat2;
        Reacs.elmt_M_nicrnt_c = elmt_Cytosol.elmt_M_nicrnt_c;
        Reacs.elmt_M_atp_c = elmt_Cytosol.elmt_M_atp_c;
        Reacs.elmt_KYNU_Km_Lfmkynr = Params.elmt_KYNU_Km_Lfmkynr;
        Reacs.elmt_IMNT_Km_nmtrpta = Params.elmt_IMNT_Km_nmtrpta;
        Reacs.elmt_DDC_Km_5htrp = Params.elmt_DDC_Km_5htrp;
        Reacs.elmt_AADAT_Km_Lkynr = Params.elmt_AADAT_Km_Lkynr;
        Reacs.elmt_IDO_Km_O2 = Params.elmt_IDO_Km_O2;
        Reacs.elmt_MAO_Km_srtn = Params.elmt_MAO_Km_srtn;
        Reacs.elmt_DDC_E_T = Params.elmt_DDC_E_T;
        Reacs.elmt_M_prpp_c = elmt_Cytosol.elmt_M_prpp_c;
        Reacs.elmt_IDO_E_T = Params.elmt_IDO_E_T;
        Reacs.elmt_M_nmtrpta_c = elmt_Cytosol.elmt_M_nmtrpta_c;
        Reacs.elmt_M_5htrp_c = elmt_Cytosol.elmt_M_5htrp_c;
        Reacs.elmt_M_5hoxnfkyn_c = elmt_Cytosol.elmt_M_5hoxnfkyn_c;
        Reacs.elmt_M_o2_c = elmt_Cytosol.elmt_M_o2_c;
        Reacs.elmt_MAOB_E_T = Params.elmt_MAOB_E_T;
        Reacs.elmt_M_h2o_c = elmt_Cytosol.elmt_M_h2o_c;
        Reacs.elmt_M_hLkynr_c = elmt_Cytosol.elmt_M_hLkynr_c;
        Reacs.elmt_AADAT_kcat_Lkynr = Params.elmt_AADAT_kcat_Lkynr;
        Reacs.elmt_AFMID_E_T = Params.elmt_AFMID_E_T;
        Reacs.elmt_IDO_Km_srtn = Params.elmt_IDO_Km_srtn;
        Reacs.elmt_M_h_c = elmt_Cytosol.elmt_M_h_c;
        Reacs.elmt_M_nformanth_c = elmt_Cytosol.elmt_M_nformanth_c;
        Reacs.elmt_AFMID_Km_5hoxnfky = Params.elmt_AFMID_Km_5hoxnfky;
        Reacs.elmt_KYNU_Km_Lkynr = Params.elmt_KYNU_Km_Lkynr;
        Reacs.elmt_Transporter_Km_Lkynr = Params.elmt_Transporter_Km_Lkynr;
        Reacs.elmt_MAOA_E_T = Params.elmt_MAOA_E_T;
        Reacs.elmt_Transporter_E_T_Slc7a5 = Params.elmt_Transporter_E_T_Slc7a5;
        Reacs.elmt_Transporter_E_T_Slc7a8 = Params.elmt_Transporter_E_T_Slc7a8;
        elmt_Cytosol.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt_Cytosol.elmt_R01814_Tph1 = Reacs.elmt_R01814_Tph1;
        elmt_Cytosol.elmt_R02909 = Reacs.elmt_R02909;
        elmt_Cytosol.elmt_R01814_Tph2 = Reacs.elmt_R01814_Tph2;
        elmt_Cytosol.elmt_R00685 = Reacs.elmt_R00685;
        elmt_Cytosol.elmt_product171 = Reacs.elmt_product171;
        elmt_Cytosol.elmt_Lkynr_trans_Slc7a5 = Reacs.elmt_Lkynr_trans_Slc7a5;
        elmt_Cytosol.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_Cytosol.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_Cytosol.elmt_Lkynr_trans_Slc7a8 = Reacs.elmt_Lkynr_trans_Slc7a8;
        elmt_Cytosol.elmt_R01956_Kat1 = Reacs.elmt_R01956_Kat1;
        elmt_Cytosol.elmt_R01956_Kat2 = Reacs.elmt_R01956_Kat2;
        elmt_Cytosol.elmt_R01956_Kat3 = Reacs.elmt_R01956_Kat3;
        elmt_Cytosol.elmt_reactant116 = Reacs.elmt_reactant116;
        elmt_Cytosol.elmt_reactant112 = Reacs.elmt_reactant112;
        elmt_Cytosol.elmt_reactant51 = Reacs.elmt_reactant51;
        elmt_Cytosol.elmt_product82 = Reacs.elmt_product82;
        elmt_Cytosol.elmt_product87 = Reacs.elmt_product87;
        elmt_Cytosol.elmt_R04911 = Reacs.elmt_R04911;
        elmt_Cytosol.elmt_R03664 = Reacs.elmt_R03664;
        elmt_Cytosol.elmt_reactant55 = Reacs.elmt_reactant55;
        elmt_Cytosol.elmt_R00677 = Reacs.elmt_R00677;
        elmt_Cytosol.elmt_R02174 = Reacs.elmt_R02174;
        elmt_Cytosol.elmt_reactant120 = Reacs.elmt_reactant120;
        elmt_Cytosol.elmt_reactant128 = Reacs.elmt_reactant128;
        elmt_Cytosol.elmt_product79 = Reacs.elmt_product79;
        elmt_Cytosol.elmt_reactant124 = Reacs.elmt_reactant124;
        elmt_Cytosol.elmt_R03936 = Reacs.elmt_R03936;
        elmt_Cytosol.elmt_product10 = Reacs.elmt_product10;
        elmt_Cytosol.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_Cytosol.elmt_R00678_Indo = Reacs.elmt_R00678_Indo;
        elmt_Cytosol.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_Cytosol.elmt_product91 = Reacs.elmt_product91;
        elmt_Cytosol.elmt_reactant174 = Reacs.elmt_reactant174;
        elmt_Cytosol.elmt_reactant172 = Reacs.elmt_reactant172;
        elmt_Cytosol.elmt_product8 = Reacs.elmt_product8;
        elmt_Cytosol.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_Cytosol.elmt_R02173_Maoa = Reacs.elmt_R02173_Maoa;
        elmt_Cytosol.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_Cytosol.elmt_R03005 = Reacs.elmt_R03005;
        elmt_Cytosol.elmt_R02173_Maob = Reacs.elmt_R02173_Maob;
        elmt_Cytosol.elmt_quin_form = Reacs.elmt_quin_form;
        elmt_Cytosol.elmt_product167 = Reacs.elmt_product167;
        elmt_Cytosol.elmt_R02670 = Reacs.elmt_R02670;
        elmt_Cytosol.elmt_reactant105 = Reacs.elmt_reactant105;
        elmt_Cytosol.elmt_reactant102 = Reacs.elmt_reactant102;
        elmt_Cytosol.elmt_product19 = Reacs.elmt_product19;
        elmt_Cytosol.elmt_reactant85 = Reacs.elmt_reactant85;
        elmt_Cytosol.elmt_product34 = Reacs.elmt_product34;
        elmt_Cytosol.elmt_reactant80 = Reacs.elmt_reactant80;
        elmt_Cytosol.elmt_R02665 = Reacs.elmt_R02665;
        elmt_Cytosol.elmt_R02702 = Reacs.elmt_R02702;
        elmt_Cytosol.elmt_R02701 = Reacs.elmt_R02701;
        elmt_Cytosol.elmt_reactant89 = Reacs.elmt_reactant89;
        elmt_Cytosol.elmt_R02668 = Reacs.elmt_R02668;
        elmt_Cytosol.elmt_reactant153 = Reacs.elmt_reactant153;
        elmt_Cytosol.elmt_R04323 = Reacs.elmt_R04323;
        elmt_Cytosol.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_Cytosol.elmt_R04171_Kat1 = Reacs.elmt_R04171_Kat1;
        elmt_Cytosol.elmt_R04171_Kat2 = Reacs.elmt_R04171_Kat2;
        elmt_Cytosol.elmt_product29 = Reacs.elmt_product29;
        elmt_Cytosol.elmt_R04171_Kat3 = Reacs.elmt_R04171_Kat3;
        elmt_Cytosol.elmt_TRPtrans_Slc7a5 = Reacs.elmt_TRPtrans_Slc7a5;
        elmt_Cytosol.elmt_product40 = Reacs.elmt_product40;
        elmt_Cytosol.elmt_TRPtrans_Slc7a8 = Reacs.elmt_TRPtrans_Slc7a8;
        elmt_Cytosol.elmt_product43 = Reacs.elmt_product43;
        elmt_Cytosol.elmt_reactant93 = Reacs.elmt_reactant93;
        elmt_Cytosol.elmt_R03348 = Reacs.elmt_R03348;
        elmt_Cytosol.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_Cytosol.elmt_R01960 = Reacs.elmt_R01960;
        elmt_Cytosol.elmt_reactant99 = Reacs.elmt_reactant99;
        elmt_Cytosol.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_Cytosol.elmt_reactant165 = Reacs.elmt_reactant165;
        elmt_Cytosol.elmt_reactant160 = Reacs.elmt_reactant160;
        elmt_Cytosol.elmt_AANAT_Trypta = Reacs.elmt_AANAT_Trypta;
        elmt_Cytosol.elmt_R01959 = Reacs.elmt_R01959;
        elmt_Cytosol.elmt_R00988 = Reacs.elmt_R00988;
        elmt_Cytosol.elmt_reactant64 = Reacs.elmt_reactant64;
        elmt_Cytosol.elmt_product53 = Reacs.elmt_product53;
        elmt_Cytosol.elmt_reactant60 = Reacs.elmt_reactant60;
        elmt_Cytosol.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_Cytosol.elmt_R00987 = Reacs.elmt_R00987;
        elmt_Cytosol.elmt_R02908_Maob = Reacs.elmt_R02908_Maob;
        elmt_Cytosol.elmt_reactant131 = Reacs.elmt_reactant131;
        elmt_Cytosol.elmt_product49 = Reacs.elmt_product49;
        elmt_Cytosol.elmt_reactant139 = Reacs.elmt_reactant139;
        elmt_Cytosol.elmt_product46 = Reacs.elmt_product46;
        elmt_Cytosol.elmt_reactant135 = Reacs.elmt_reactant135;
        elmt_Cytosol.elmt_R02174_metTrypta = Reacs.elmt_R02174_metTrypta;
        elmt_Cytosol.elmt_R02908_Maoa = Reacs.elmt_R02908_Maoa;
        elmt_Cytosol.elmt_reactant72 = Reacs.elmt_reactant72;
        elmt_Cytosol.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_Cytosol.elmt_product65 = Reacs.elmt_product65;
        elmt_Cytosol.elmt_R02911 = Reacs.elmt_R02911;
        elmt_Cytosol.elmt_R02910 = Reacs.elmt_R02910;
        elmt_Cytosol.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_Cytosol.elmt_reactant143 = Reacs.elmt_reactant143;
        elmt_Cytosol.elmt_reactant147 = Reacs.elmt_reactant147;
        elmt_Cytosol.elmt_R00678_Tdo = Reacs.elmt_R00678_Tdo;

end Stavrum2013___Tryptophan_Metabolism_in_Liver;
