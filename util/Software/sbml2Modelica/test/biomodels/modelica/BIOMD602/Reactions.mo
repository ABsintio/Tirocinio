within BIOMD602;
class Reactions

    input Real elmt_M_Lkynr_ex;
    input Real elmt_DDC_Km_trp_DASH_L;
    input Real elmt_TRP_ex;
    input Real elmt_AADAT_kcat_hLkynr;
    input Real elmt_M_trypta_c;
    input Real elmt_AANAT_Km_trypta;
    input Real elmt_KYNU_Km_hLkynr;
    input Real elmt_M_nadph_c;
    input Real elmt_M_trna_trp_c;
    input Real elmt_M_srtn_c;
    input Real elmt_IDO_Km_trp_DASH_L;
    input Real elmt_Cytosol;
    input Real elmt_M_thbpt;
    input Real elmt_scaling;
    input Real elmt_IDO_Km_5htrp;
    input Real elmt_MAO_Km_trypta;
    input Real elmt_M_quln_c;
    input Real elmt_IMNT_E_T;
    input Real elmt_Transporter_kcat_Trp;
    input Real elmt_AANAT_Km_Srtn;
    input Real elmt_IMNT_Km_srtn;
    input Real elmt_M_Lfmkynr_c;
    input Real elmt_IMNT_Km_trypta;
    input Real elmt_Transporter_kcat_Lkynr;
    input Real elmt_M_trp_DASH_L_c;
    input Real elmt_M_3hanthrn_c;
    input Real elmt_AADAT_Km_hLkynr;
    input Real elmt_AFMID_Km_nformanth;
    input Real elmt_M_cmusa_c;
    input Real elmt_AFMID_Km_Lfmkynr;
    input Real elmt_AANAT_E_T;
    input Real elmt_M_Lkynr_c;
    input Real elmt_Transporter_Km_Trp_Slc7a5;
    input Real elmt_AADAT_E_T_kat1;
    input Real elmt_Transporter_Km_Trp_Slc7a8;
    input Real elmt_AADAT_E_T_kat3;
    input Real elmt_KYNU_E_T;
    input Real elmt_AADAT_E_T_kat2;
    input Real elmt_M_nicrnt_c;
    input Real elmt_M_atp_c;
    input Real elmt_KYNU_Km_Lfmkynr;
    input Real elmt_IMNT_Km_nmtrpta;
    input Real elmt_DDC_Km_5htrp;
    input Real elmt_AADAT_Km_Lkynr;
    input Real elmt_IDO_Km_O2;
    input Real elmt_MAO_Km_srtn;
    input Real elmt_DDC_E_T;
    input Real elmt_M_prpp_c;
    input Real elmt_IDO_E_T;
    input Real elmt_M_nmtrpta_c;
    input Real elmt_M_5htrp_c;
    input Real elmt_M_5hoxnfkyn_c;
    input Real elmt_M_o2_c;
    input Real elmt_MAOB_E_T;
    input Real elmt_M_h2o_c;
    input Real elmt_M_hLkynr_c;
    input Real elmt_AADAT_kcat_Lkynr;
    input Real elmt_AFMID_E_T;
    input Real elmt_IDO_Km_srtn;
    input Real elmt_M_h_c;
    input Real elmt_M_nformanth_c;
    input Real elmt_AFMID_Km_5hoxnfky;
    input Real elmt_KYNU_Km_Lkynr;
    input Real elmt_Transporter_Km_Lkynr;
    input Real elmt_MAOA_E_T;
    input Real elmt_Transporter_E_T_Slc7a5;
    input Real elmt_Transporter_E_T_Slc7a8;

    Real elmt_R01959(unit = "") "AFMID_FKyn";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI106\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/4190298\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/3.5.1.9\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R01959\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/125061\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
                <CopasiMT:occursIn>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"urn:miriam:brenda:209258\"/>
                  </rdf:Bag>
                </CopasiMT:occursIn>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R01959_elmt_kcat_A(unit "") = 100.0 "";
    Real elmt_reactant26 "";
    Real elmt_reactant27 "";
    Real elmt_product29 "";
    Real elmt_product28 "";
    Real elmt_R00988(unit = "") "AFMID_FAA";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI122\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/4190298\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R00988\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/3.5.1.9\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/125061\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R00988_elmt_kcat_A(unit "") = 13.57 "";
    Real elmt_reactant94 "";
    Real elmt_product96 "";
    Real elmt_product95 "";
    Real elmt_reactant93 "";
    Real elmt_R01814_Tph1(unit = "") "TPH1";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI104\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/15663479\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/19816759\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-11-29T01:01:25Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/1.14.16.4\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"urn:miriam:kegg.reaction:R01814\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/7166\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R01814_Tph1_elmt_Ka(unit "") = 0.0228 "";
    parameter Real elmt_R01814_Tph1_elmt_kcat(unit "") = 0.57 "";
    parameter Real elmt_R01814_Tph1_elmt_Kb(unit "") = 0.109 "";
    parameter Real elmt_R01814_Tph1_elmt_E_T(unit "") = 503.141 "";
    Real elmt_reactant18 "";
    Real elmt_product21 "";
    Real elmt_product20 "";
    Real elmt_reactant16 "";
    Real elmt_reactant17 "";
    Real elmt_product19 "";
    Real elmt_R03936(unit = "") "KYNU_FKyn";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI121\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/118164\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-11-29T01:05:38Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"urn:miriam:kegg.reaction:R03936\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/3.7.1.3\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/8942\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R03936_elmt_kcat_A(unit "") = 0.013 "";
    Real elmt_reactant90 "";
    Real elmt_product92 "";
    Real elmt_product91 "";
    Real elmt_reactant89 "";
    Real elmt_R02909(unit = "") "IDO_Serotonin";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI128\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/26687\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/19737010\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-11-29T01:04:09Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"urn:miriam:kegg.reaction:R02909\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/1.13.11.52\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/3620\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R02909_elmt_kcat(unit "") = 0.002 "";
    Real elmt_reactant121 "";
    Real elmt_reactant120 "";
    Real elmt_product122 "";
    Real elmt_R01814_Tph2(unit = "") "TPH2";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI138\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/15663479\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/19816759\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R01814\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/1.14.16.4\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/121278\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R01814_Tph2_elmt_Ka(unit "") = 0.0403 "";
    parameter Real elmt_R01814_Tph2_elmt_kcat(unit "") = 0.18 "";
    parameter Real elmt_R01814_Tph2_elmt_Kb(unit "") = 0.273 "";
    parameter Real elmt_R01814_Tph2_elmt_E_T(unit "") = 235.128 "";
    Real elmt_reactant165 "";
    Real elmt_product168 "";
    Real elmt_reactant164 "";
    Real elmt_product167 "";
    Real elmt_product169 "";
    Real elmt_reactant166 "";
    Real elmt_R00685(unit = "") "DDC_Trypta";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI102\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/4991409\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R00685\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/4.1.1.28\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/1644\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R00685_elmt_kcat_B(unit "") = 0.38 "";
    Real elmt_product11 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_R02665(unit = "") "HAAO";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI109\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"urn:miriam:pubmed:3112306 \"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/12672479\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-11-29T00:45:22Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/1.13.11.6\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"urn:miriam:kegg.reaction:R02665\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/23498\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
                <CopasiMT:occursIn>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"urn:miriam:brenda:439367\"/>
                  </rdf:Bag>
                </CopasiMT:occursIn>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R02665_elmt_Ka(unit "") = 0.016 "";
    parameter Real elmt_R02665_elmt_kcat(unit "") = 64.0 "";
    parameter Real elmt_R02665_elmt_Kb(unit "") = 0.615 "";
    parameter Real elmt_R02665_elmt_E_T(unit "") = 10308.4 "";
    Real elmt_reactant41 "";
    Real elmt_reactant42 "";
    Real elmt_product43 "";
    Real elmt_Lkynr_trans_Slc7a5(unit = "") "Lkynr_Transporter_Slc7a5";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI140\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/2723766\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/2872885\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/uniprot/Q01650\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/8140\"/>
                  </rdf:Bag>
                </CopasiMT:is>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant172 "";
    Real elmt_product173 "";
    Real elmt_R00678_Indo(unit = "") "IDO";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI119\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/26687\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/19737010\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/1.13.11.52\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R00678\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/3620\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R00678_Indo_elmt_kcat(unit "") = 1.65 "";
    Real elmt_product82 "";
    Real elmt_reactant80 "";
    Real elmt_reactant81 "";
    Real elmt_R00987(unit = "") "KYNU_L-Kyn";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI103\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/17300176\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/19143568\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/457635\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-11-29T00:47:25Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/3.7.1.3\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"urn:miriam:kegg.reaction:R00987\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/8942\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R00987_elmt_kcat_A(unit "") = 0.23 "";
    Real elmt_product15 "";
    Real elmt_product14 "";
    Real elmt_reactant12 "";
    Real elmt_reactant13 "";
    Real elmt_R02702(unit = "") "IDO_5HTrp";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI112\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/26687\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/19737010\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/1.13.11.52\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R02702\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/3620\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
                <CopasiMT:occursIn>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"urn:miriam:brenda:685239\"/>
                  </rdf:Bag>
                </CopasiMT:occursIn>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R02702_elmt_kcat(unit "") = 0.043 "";
    Real elmt_reactant51 "";
    Real elmt_reactant52 "";
    Real elmt_product53 "";
    Real elmt_R02668(unit = "") "KYNU_3HKyn";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI110\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/19143568\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/3.7.1.3\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R02668\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/8942\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R02668_elmt_kcat_A(unit "") = 3.5 "";
    Real elmt_product47 "";
    Real elmt_product46 "";
    Real elmt_reactant44 "";
    Real elmt_reactant45 "";
    Real elmt_R02701(unit = "") "DDC_5HTrp";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI111\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/18547057\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/4.1.1.28\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R02701\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/1644\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R02701_elmt_kcat_B(unit "") = 2.0 "";
    Real elmt_product50 "";
    Real elmt_product49 "";
    Real elmt_reactant48 "";
    Real elmt_Lkynr_trans_Slc7a8(unit = "") "Lkynr_Transporter_Slc7a8";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI141\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/2872885\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/2723766\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/uniprot/Q9UHI5\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/23428\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant174 "";
    Real elmt_product175 "";
    Real elmt_R02908_Maob(unit = "") "MAOB_Serotonin";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI135\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/15848762\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R02908\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/1.4.3.4\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/4129\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R02908_Maob_elmt_kcat_B(unit "") = 18.6 "";
    Real elmt_product152 "";
    Real elmt_reactant149 "";
    Real elmt_product151 "";
    Real elmt_reactant148 "";
    Real elmt_product150 "";
    Real elmt_reactant147 "";
    Real elmt_R01956_Kat1(unit = "") "KAT1_L-Kyn";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI105\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/18620547\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R01956\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/2.6.1.7\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/883\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    Real elmt_product25 "";
    Real elmt_product24 "";
    Real elmt_reactant22 "";
    Real elmt_reactant23 "";
    Real elmt_R04323(unit = "") "ACMSD";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI124\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/17288562\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/4.1.1.45\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R04323\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/130013\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
                <CopasiMT:occursIn>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"urn:miriam:brenda:679800\"/>
                  </rdf:Bag>
                </CopasiMT:occursIn>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R04323_elmt_Km(unit "") = 0.0065 "";
    parameter Real elmt_R04323_elmt_kcat(unit "") = 1.0 "";
    parameter Real elmt_R04323_elmt_E_T(unit "") = 48858.2 "";
    Real elmt_product104 "";
    Real elmt_product103 "";
    Real elmt_reactant102 "";
    Real elmt_R01956_Kat2(unit = "") "KAT2_3HKyn";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI131\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/18620547\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R04171\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/2.6.1.7\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/51166\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant132 "";
    Real elmt_reactant131 "";
    Real elmt_product134 "";
    Real elmt_product133 "";
    Real elmt_R01956_Kat3(unit = "") "KAT3_3HKyn";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI132\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/18620547\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R04171\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/2.6.1.7\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/56267\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    Real elmt_product137 "";
    Real elmt_reactant136 "";
    Real elmt_reactant135 "";
    Real elmt_product138 "";
    Real elmt_R04171_Kat1(unit = "") "KAT1_3HKyn";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI127\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/18620547\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/2.6.1.7\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R04171\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/883\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant117 "";
    Real elmt_reactant116 "";
    Real elmt_product119 "";
    Real elmt_product118 "";
    Real elmt_R04171_Kat2(unit = "") "KAT2_L-Kyn";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI133\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/18620547\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R01956\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/2.6.1.7\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/51166\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant140 "";
    Real elmt_product142 "";
    Real elmt_product141 "";
    Real elmt_reactant139 "";
    Real elmt_R02174_metTrypta(unit = "") "INMT_MTrypta";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI129\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/9852119\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/2.1.1.49\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/11185\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R02174_metTrypta_elmt_kcat_A(unit "") = 0.176 "";
    Real elmt_product126 "";
    Real elmt_product125 "";
    Real elmt_reactant124 "";
    Real elmt_reactant123 "";
    Real elmt_R04171_Kat3(unit = "") "KAT3_L-Kyn";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI134\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/18620547\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R01956\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/2.6.1.7\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/56267\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant143 "";
    Real elmt_product146 "";
    Real elmt_product145 "";
    Real elmt_reactant144 "";
    Real elmt_R02908_Maoa(unit = "") "MAOA_Serotonin";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI125\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/15848762\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/1.4.3.4\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R02908\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/4128\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R02908_Maoa_elmt_kcat_B(unit "") = 18.6 "";
    Real elmt_product110 "";
    Real elmt_reactant107 "";
    Real elmt_reactant106 "";
    Real elmt_product109 "";
    Real elmt_reactant105 "";
    Real elmt_product108 "";
    Real elmt_TRPtrans_Slc7a5(unit = "") "Tryptophan_Transport Slc7a5";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI118\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/2872885\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/uniprot/Q01650\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/8140\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    Real elmt_product79 "";
    Real elmt_reactant78 "";
    Real elmt_TRPtrans_Slc7a8(unit = "") "Tryptophan_Transport Slc7a8";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI139\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/2872885\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/uniprot/Q9UHI5\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/23428\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant170 "";
    Real elmt_product171 "";
    Real elmt_R04911(unit = "") "AFMID_5HFKyn";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI114\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/4135014\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-12-07T00:50:19Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R04911\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/3.5.1.9\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/125061\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
                <CopasiMT:occursIn>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"urn:miriam:brenda:209255\"/>
                  </rdf:Bag>
                </CopasiMT:occursIn>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R04911_elmt_kcat_A(unit "") = 100.0 "";
    Real elmt_reactant61 "";
    Real elmt_product63 "";
    Real elmt_product62 "";
    Real elmt_reactant60 "";
    Real elmt_R03348(unit = "") "QPRT";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI120\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/17868694\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-11-29T01:13:41Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"urn:miriam:kegg.reaction:R03348\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/2.4.2.19\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/23475\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
                <CopasiMT:occursIn>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"urn:miriam:brenda:693620\"/>
                  </rdf:Bag>
                </CopasiMT:occursIn>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R03348_elmt_Ka(unit "") = 0.022 "";
    parameter Real elmt_R03348_elmt_kcat(unit "") = 0.255 "";
    parameter Real elmt_R03348_elmt_Kb(unit "") = 0.023 "";
    parameter Real elmt_R03348_elmt_E_T(unit "") = 138709.0 "";
    Real elmt_reactant83 "";
    Real elmt_reactant84 "";
    Real elmt_reactant85 "";
    Real elmt_product88 "";
    Real elmt_product87 "";
    Real elmt_product86 "";
    Real elmt_R02173_Maoa(unit = "") "MAOA_Trypta";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI116\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/11754741\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/1.4.3.4\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R02173\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/4128\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R02173_Maoa_elmt_kcat_B(unit "") = 3.5 "";
    Real elmt_product71 "";
    Real elmt_product69 "";
    Real elmt_product70 "";
    Real elmt_reactant66 "";
    Real elmt_reactant67 "";
    Real elmt_reactant68 "";
    Real elmt_R03005(unit = "") "NMNAT1";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI123\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/17402747\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-11-29T01:10:11Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/2.7.7.1\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R03005\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/64802\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R03005_elmt_Km(unit "") = 0.0677 "";
    parameter Real elmt_R03005_elmt_kcat(unit "") = 42.9 "";
    parameter Real elmt_R03005_elmt_E_T(unit "") = 4658.65 "";
    Real elmt_product101 "";
    Real elmt_reactant97 "";
    Real elmt_product100 "";
    Real elmt_reactant98 "";
    Real elmt_reactant99 "";
    Real elmt_R01960(unit = "") "KMO";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI107\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"urn:miriam:pubmed:10672018 \"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/16973376\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/1.14.13.9\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R01960\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/8564\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R01960_elmt_Ka(unit "") = 0.1 "";
    parameter Real elmt_R01960_elmt_kcat(unit "") = 2.2 "";
    parameter Real elmt_R01960_elmt_Kb(unit "") = 0.071 "";
    parameter Real elmt_R01960_elmt_E_T(unit "") = 9766.18 "";
    parameter Real elmt_R01960_elmt_Kc(unit "") = 0.153 "";
    Real elmt_reactant30 "";
    Real elmt_reactant31 "";
    Real elmt_product34 "";
    Real elmt_product36 "";
    Real elmt_product35 "";
    Real elmt_reactant32 "";
    Real elmt_reactant33 "";
    Real elmt_R03664(unit = "") "WARS";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI113\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/11676605\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-11-29T00:44:29Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/6.1.1.2\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"urn:miriam:kegg.reaction:R03664\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/7453\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
                <CopasiMT:occursIn>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"urn:miriam:brenda:653740\"/>
                  </rdf:Bag>
                </CopasiMT:occursIn>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R03664_elmt_Ka(unit "") = 0.0074 "";
    parameter Real elmt_R03664_elmt_kcat(unit "") = 1.1 "";
    parameter Real elmt_R03664_elmt_Kb(unit "") = 0.0011 "";
    parameter Real elmt_R03664_elmt_E_T(unit "") = 15961.5 "";
    Real elmt_product59 "";
    Real elmt_product58 "";
    Real elmt_product57 "";
    Real elmt_reactant54 "";
    Real elmt_reactant55 "";
    Real elmt_reactant56 "";
    Real elmt_R02911(unit = "") "AANAT_Serotonin";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI126\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/15477086\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-11-23T12:26:02Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R02911\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/2.3.1.87\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/15\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R02911_elmt_kcat_B(unit "") = 25.9 "";
    Real elmt_product113 "";
    Real elmt_product115 "";
    Real elmt_product114 "";
    Real elmt_reactant112 "";
    Real elmt_reactant111 "";
    Real elmt_R02910(unit = "") "INMT_Serotonin";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI130\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/9852119\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R02910\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/2.1.1.49\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/11185\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R02910_elmt_kcat_A(unit "") = 0.044 "";
    Real elmt_product130 "";
    Real elmt_reactant128 "";
    Real elmt_reactant127 "";
    Real elmt_product129 "";
    Real elmt_R02173_Maob(unit = "") "MAOB_Trypta";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI136\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/11754741\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R02173\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/1.4.3.4\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/4129\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R02173_Maob_elmt_kcat_B(unit "") = 3.5 "";
    Real elmt_reactant154 "";
    Real elmt_product157 "";
    Real elmt_reactant153 "";
    Real elmt_product156 "";
    Real elmt_product158 "";
    Real elmt_reactant155 "";
    Real elmt_R00677(unit = "") "IL4I1";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI100\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/15383589\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-11-29T01:06:57Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/1.4.3.2\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"urn:miriam:kegg.reaction:R00677\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/259307\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R00677_elmt_Ka(unit "") = 6.5 "";
    parameter Real elmt_R00677_elmt_kcat(unit "") = 1.0 "";
    parameter Real elmt_R00677_elmt_Kb(unit "") = 1.2 "";
    parameter Real elmt_R00677_elmt_E_T(unit "") = 2046.74 "";
    Real elmt_reactant2 "";
    Real elmt_reactant1 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_R02174(unit = "") "INMT_Trypta";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI108\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/9852119\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/3949799\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-11-29T00:53:53Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"urn:miriam:kegg.reaction:R02174\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/2.1.1.49\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/11185\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
                <CopasiMT:occursIn>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"urn:miriam:brenda:441354\"/>
                  </rdf:Bag>
                </CopasiMT:occursIn>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R02174_elmt_kcat_A(unit "") = 0.4 "";
    Real elmt_product40 "";
    Real elmt_reactant37 "";
    Real elmt_reactant38 "";
    Real elmt_product39 "";
    Real elmt_quin_form(unit = "") "Quinolic Acid formation (spontaneous)";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI115\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/15656614\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-11-29T01:21:20Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_quin_form_elmt_k1(unit "") = 2.5E-4 "";
    Real elmt_reactant64 "";
    Real elmt_product65 "";
    Real elmt_R02670(unit = "") "Cinnavalinate formation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI117\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/2949752\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-11-29T00:59:48Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/1.11.1.6\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"urn:miriam:kegg.reaction:R02670\"/>
                  </rdf:Bag>
                </CopasiMT:is>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R02670_elmt_k1(unit "") = 5.6667E-5 "";
    parameter Real elmt_R02670_elmt_e2(unit "") = 4.0 "";
    parameter Real elmt_R02670_elmt_e1(unit "") = 2.0 "";
    Real elmt_reactant72 "";
    Real elmt_product74 "";
    Real elmt_reactant73 "";
    Real elmt_product77 "";
    Real elmt_product76 "";
    Real elmt_product75 "";
    Real elmt_AANAT_Trypta(unit = "") "AANAT_Trypta";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI137\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/15477086\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/18771288\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-11-23T12:26:14Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/2.3.1.87\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/15\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_AANAT_Trypta_elmt_kcat_B(unit "") = 25.9 "";
    Real elmt_reactant160 "";
    Real elmt_product163 "";
    Real elmt_product162 "";
    Real elmt_reactant159 "";
    Real elmt_product161 "";
    Real elmt_R00678_Tdo(unit = "") "TDO";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI101\">
                <dcterms:bibliographicCitation>
                  <rdf:Bag>
                    <rdf:li>
                      <rdf:Description>
                        <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/18370401\"/>
                      </rdf:Description>
                    </rdf:li>
                  </rdf:Bag>
                </dcterms:bibliographicCitation>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ec-code/1.13.11.11\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/kegg.reaction/R00678\"/>
                  </rdf:Bag>
                </CopasiMT:is>
                <CopasiMT:isEncodedBy>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/ncbigene/6999\"/>
                  </rdf:Bag>
                </CopasiMT:isEncodedBy>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	



	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_R00678_Tdo_elmt_Ka(unit "") = 0.222 "";
    parameter Real elmt_R00678_Tdo_elmt_kcat(unit "") = 1.4 "";
    parameter Real elmt_R00678_Tdo_elmt_Kb(unit "") = 0.037 "";
    parameter Real elmt_R00678_Tdo_elmt_E_T(unit "") = 943912.0 "";
    Real elmt_product8 "";
    Real elmt_reactant6 "";
    Real elmt_reactant7 "";


    initial equation
        elmt_product74 = 1.0;
        elmt_reactant41 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product71 = 1.0;
        elmt_product77 = 2.0;
        elmt_product76 = 2.0;
        elmt_product75 = 2.0;
        elmt_product171 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_product173 = 1.0;
        elmt_product70 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_product175 = 1.0;
        elmt_reactant117 = 1.0;
        elmt_reactant116 = 1.0;
        elmt_product69 = 1.0;
        elmt_reactant112 = 1.0;
        elmt_reactant111 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_product82 = 1.0;
        elmt_product88 = 1.0;
        elmt_product87 = 1.0;
        elmt_product86 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_reactant121 = 1.0;
        elmt_reactant120 = 1.0;
        elmt_product101 = 1.0;
        elmt_product104 = 1.0;
        elmt_product103 = 1.0;
        elmt_product100 = 1.0;
        elmt_product109 = 1.0;
        elmt_reactant128 = 1.0;
        elmt_reactant127 = 1.0;
        elmt_product79 = 1.0;
        elmt_reactant124 = 1.0;
        elmt_reactant123 = 1.0;
        elmt_product108 = 1.0;
        elmt_product96 = 1.0;
        elmt_product95 = 1.0;
        elmt_product11 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_product151 = 1.0;
        elmt_product150 = 1.0;
        elmt_product92 = 1.0;
        elmt_product91 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_product157 = 1.0;
        elmt_product156 = 1.0;
        elmt_reactant174 = 1.0;
        elmt_product158 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant172 = 1.0;
        elmt_product152 = 1.0;
        elmt_reactant170 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_product21 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_product162 = 1.0;
        elmt_product161 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_product4 = 1.0;
        elmt_product3 = 1.0;
        elmt_product168 = 1.0;
        elmt_product167 = 1.0;
        elmt_product169 = 1.0;
        elmt_product163 = 1.0;
        elmt_reactant107 = 1.0;
        elmt_product15 = 1.0;
        elmt_reactant106 = 1.0;
        elmt_product14 = 1.0;
        elmt_reactant105 = 1.0;
        elmt_product19 = 1.0;
        elmt_reactant102 = 1.0;
        elmt_reactant83 = 1.0;
        elmt_reactant84 = 1.0;
        elmt_reactant85 = 1.0;
        elmt_product34 = 1.0;
        elmt_reactant80 = 1.0;
        elmt_reactant81 = 1.0;
        elmt_reactant89 = 1.0;
        elmt_reactant154 = 1.0;
        elmt_product134 = 1.0;
        elmt_reactant153 = 1.0;
        elmt_product137 = 1.0;
        elmt_product130 = 1.0;
        elmt_product133 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product25 = 1.0;
        elmt_product24 = 1.0;
        elmt_reactant159 = 1.0;
        elmt_product138 = 1.0;
        elmt_product29 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant155 = 1.0;
        elmt_reactant94 = 1.0;
        elmt_product40 = 1.0;
        elmt_reactant97 = 1.0;
        elmt_reactant90 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant93 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant98 = 1.0;
        elmt_reactant99 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_reactant165 = 1.0;
        elmt_product146 = 1.0;
        elmt_reactant164 = 1.0;
        elmt_product145 = 1.0;
        elmt_product142 = 1.0;
        elmt_product141 = 1.0;
        elmt_reactant160 = 1.0;
        elmt_product36 = 1.0;
        elmt_product35 = 1.0;
        elmt_reactant166 = 1.0;
        elmt_product39 = 1.0;
        elmt_reactant61 = 1.0;
        elmt_product50 = 1.0;
        elmt_reactant64 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant60 = 1.0;
        elmt_reactant66 = 1.0;
        elmt_reactant67 = 1.0;
        elmt_reactant68 = 1.0;
        elmt_reactant132 = 1.0;
        elmt_product113 = 1.0;
        elmt_reactant131 = 1.0;
        elmt_product115 = 1.0;
        elmt_product114 = 1.0;
        elmt_product110 = 1.0;
        elmt_product49 = 1.0;
        elmt_reactant139 = 1.0;
        elmt_product47 = 1.0;
        elmt_product46 = 1.0;
        elmt_reactant136 = 1.0;
        elmt_reactant135 = 1.0;
        elmt_product119 = 1.0;
        elmt_product118 = 1.0;
        elmt_product63 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant72 = 2.0;
        elmt_product62 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant73 = 4.0;
        elmt_reactant6 = 1.0;
        elmt_product65 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant78 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant143 = 1.0;
        elmt_product126 = 1.0;
        elmt_reactant140 = 1.0;
        elmt_product125 = 1.0;
        elmt_product122 = 1.0;
        elmt_product59 = 1.0;
        elmt_reactant149 = 1.0;
        elmt_product58 = 1.0;
        elmt_reactant148 = 1.0;
        elmt_product57 = 1.0;
        elmt_reactant147 = 1.0;
        elmt_reactant144 = 1.0;
        elmt_product129 = 1.0;


    equation
        elmt_R01959 = (elmt_Cytosol * ((elmt_AFMID_E_T * elmt_R01959_elmt_kcat_A * elmt_scaling * elmt_M_Lfmkynr_c * elmt_AFMID_Km_5hoxnfky * elmt_AFMID_Km_nformanth) / ((elmt_AFMID_Km_Lfmkynr * elmt_AFMID_Km_5hoxnfky * elmt_AFMID_Km_nformanth) + (elmt_AFMID_Km_5hoxnfky * elmt_AFMID_Km_nformanth * elmt_M_Lfmkynr_c) + (elmt_AFMID_Km_Lfmkynr * elmt_AFMID_Km_nformanth * elmt_M_5hoxnfkyn_c) + (elmt_AFMID_Km_Lfmkynr * elmt_AFMID_Km_5hoxnfky * elmt_M_nformanth_c))));
        elmt_R00988 = (elmt_Cytosol * ((elmt_AFMID_E_T * elmt_R00988_elmt_kcat_A * elmt_scaling * elmt_M_nformanth_c * elmt_AFMID_Km_Lfmkynr * elmt_AFMID_Km_5hoxnfky) / ((elmt_AFMID_Km_nformanth * elmt_AFMID_Km_Lfmkynr * elmt_AFMID_Km_5hoxnfky) + (elmt_AFMID_Km_Lfmkynr * elmt_AFMID_Km_5hoxnfky * elmt_M_nformanth_c) + (elmt_AFMID_Km_nformanth * elmt_AFMID_Km_5hoxnfky * elmt_M_Lfmkynr_c) + (elmt_AFMID_Km_nformanth * elmt_AFMID_Km_Lfmkynr * elmt_M_5hoxnfkyn_c))));
        elmt_R01814_Tph1 = (elmt_Cytosol * ((elmt_R01814_Tph1_elmt_kcat * elmt_R01814_Tph1_elmt_E_T * elmt_M_trp_DASH_L_c * elmt_M_o2_c * elmt_M_thbpt * elmt_scaling) / ((elmt_R01814_Tph1_elmt_Ka * elmt_R01814_Tph1_elmt_Kb) + (elmt_R01814_Tph1_elmt_Kb * elmt_M_trp_DASH_L_c) + (elmt_R01814_Tph1_elmt_Ka * elmt_M_o2_c) + (elmt_M_trp_DASH_L_c * elmt_M_o2_c))));
        elmt_R03936 = (elmt_Cytosol * ((elmt_KYNU_E_T * elmt_R03936_elmt_kcat_A * elmt_scaling * elmt_M_Lfmkynr_c * elmt_KYNU_Km_Lkynr * elmt_KYNU_Km_hLkynr) / ((elmt_KYNU_Km_Lfmkynr * elmt_KYNU_Km_Lkynr * elmt_KYNU_Km_hLkynr) + (elmt_KYNU_Km_Lkynr * elmt_KYNU_Km_hLkynr * elmt_M_Lfmkynr_c) + (elmt_KYNU_Km_Lfmkynr * elmt_KYNU_Km_hLkynr * elmt_M_Lkynr_c) + (elmt_KYNU_Km_Lfmkynr * elmt_KYNU_Km_Lkynr * elmt_M_hLkynr_c))));
        elmt_R02909 = (elmt_Cytosol * ((elmt_R02909_elmt_kcat * elmt_IDO_E_T * elmt_M_srtn_c * elmt_M_o2_c * elmt_IDO_Km_5htrp * elmt_IDO_Km_trp_DASH_L * elmt_scaling) / ((elmt_IDO_Km_srtn * elmt_IDO_Km_O2 * elmt_IDO_Km_5htrp * elmt_IDO_Km_trp_DASH_L) + (elmt_M_srtn_c * elmt_IDO_Km_O2 * elmt_IDO_Km_5htrp * elmt_IDO_Km_trp_DASH_L) + (elmt_M_o2_c * elmt_IDO_Km_srtn * elmt_IDO_Km_5htrp * elmt_IDO_Km_trp_DASH_L) + (elmt_M_5htrp_c * elmt_IDO_Km_srtn * elmt_IDO_Km_O2 * elmt_IDO_Km_trp_DASH_L) + (elmt_M_trp_DASH_L_c * elmt_IDO_Km_srtn * elmt_IDO_Km_O2 * elmt_IDO_Km_5htrp) + (elmt_M_srtn_c * elmt_M_o2_c * elmt_IDO_Km_5htrp * elmt_IDO_Km_trp_DASH_L) + (elmt_M_5htrp_c * elmt_M_o2_c * elmt_IDO_Km_srtn * elmt_IDO_Km_trp_DASH_L) + (elmt_M_trp_DASH_L_c * elmt_M_o2_c * elmt_IDO_Km_srtn * elmt_IDO_Km_5htrp))));
        elmt_R01814_Tph2 = (elmt_Cytosol * ((elmt_R01814_Tph2_elmt_kcat * elmt_R01814_Tph2_elmt_E_T * elmt_M_trp_DASH_L_c * elmt_M_o2_c * elmt_M_thbpt * elmt_scaling) / ((elmt_R01814_Tph2_elmt_Ka * elmt_R01814_Tph2_elmt_Kb) + (elmt_R01814_Tph2_elmt_Kb * elmt_M_trp_DASH_L_c) + (elmt_R01814_Tph2_elmt_Ka * elmt_M_o2_c) + (elmt_M_trp_DASH_L_c * elmt_M_o2_c))));
        elmt_R00685 = (elmt_Cytosol * ((elmt_DDC_E_T * elmt_R00685_elmt_kcat_B * elmt_scaling * elmt_M_trp_DASH_L_c * elmt_DDC_Km_5htrp) / ((elmt_DDC_Km_trp_DASH_L * elmt_DDC_Km_5htrp) + (elmt_DDC_Km_trp_DASH_L * elmt_M_5htrp_c) + (elmt_DDC_Km_5htrp * elmt_M_trp_DASH_L_c))));
        elmt_R02665 = (elmt_Cytosol * ((elmt_R02665_elmt_kcat * elmt_R02665_elmt_E_T * elmt_M_3hanthrn_c * elmt_M_o2_c * elmt_scaling) / ((elmt_R02665_elmt_Ka * elmt_R02665_elmt_Kb) + (elmt_R02665_elmt_Ka * elmt_M_o2_c) + (elmt_R02665_elmt_Kb * elmt_M_3hanthrn_c) + (elmt_M_3hanthrn_c * elmt_M_o2_c))));
        elmt_Lkynr_trans_Slc7a5 = (elmt_Cytosol * ((elmt_scaling * (((elmt_Transporter_E_T_Slc7a5 * elmt_Transporter_kcat_Lkynr * elmt_M_Lkynr_c) / elmt_Transporter_Km_Lkynr) - ((elmt_Transporter_E_T_Slc7a5 * elmt_Transporter_kcat_Lkynr * elmt_M_Lkynr_ex) / elmt_Transporter_Km_Lkynr))) / (1.0 + (elmt_M_Lkynr_c / elmt_Transporter_Km_Lkynr) + (elmt_M_trp_DASH_L_c / elmt_Transporter_Km_Trp_Slc7a5) + (elmt_M_Lkynr_ex / elmt_Transporter_Km_Lkynr) + (elmt_TRP_ex / elmt_Transporter_Km_Trp_Slc7a5))));
        elmt_R00678_Indo = (elmt_Cytosol * ((elmt_R00678_Indo_elmt_kcat * elmt_IDO_E_T * elmt_M_trp_DASH_L_c * elmt_M_o2_c * elmt_IDO_Km_5htrp * elmt_IDO_Km_srtn * elmt_scaling) / ((elmt_IDO_Km_trp_DASH_L * elmt_IDO_Km_O2 * elmt_IDO_Km_5htrp * elmt_IDO_Km_srtn) + (elmt_M_trp_DASH_L_c * elmt_IDO_Km_O2 * elmt_IDO_Km_5htrp * elmt_IDO_Km_srtn) + (elmt_M_o2_c * elmt_IDO_Km_trp_DASH_L * elmt_IDO_Km_5htrp * elmt_IDO_Km_srtn) + (elmt_M_5htrp_c * elmt_IDO_Km_trp_DASH_L * elmt_IDO_Km_O2 * elmt_IDO_Km_srtn) + (elmt_M_srtn_c * elmt_IDO_Km_trp_DASH_L * elmt_IDO_Km_O2 * elmt_IDO_Km_5htrp) + (elmt_M_trp_DASH_L_c * elmt_M_o2_c * elmt_IDO_Km_5htrp * elmt_IDO_Km_srtn) + (elmt_M_5htrp_c * elmt_M_o2_c * elmt_IDO_Km_trp_DASH_L * elmt_IDO_Km_srtn) + (elmt_M_srtn_c * elmt_M_o2_c * elmt_IDO_Km_trp_DASH_L * elmt_IDO_Km_5htrp))));
        elmt_R00987 = (elmt_Cytosol * ((elmt_KYNU_E_T * elmt_R00987_elmt_kcat_A * elmt_scaling * elmt_M_Lkynr_c * elmt_KYNU_Km_hLkynr * elmt_KYNU_Km_Lfmkynr) / ((elmt_KYNU_Km_Lkynr * elmt_KYNU_Km_hLkynr * elmt_KYNU_Km_Lfmkynr) + (elmt_KYNU_Km_hLkynr * elmt_KYNU_Km_Lfmkynr * elmt_M_Lkynr_c) + (elmt_KYNU_Km_Lkynr * elmt_KYNU_Km_Lfmkynr * elmt_M_hLkynr_c) + (elmt_KYNU_Km_Lkynr * elmt_KYNU_Km_hLkynr * elmt_M_Lfmkynr_c))));
        elmt_R02702 = (elmt_Cytosol * ((elmt_R02702_elmt_kcat * elmt_IDO_E_T * elmt_M_5htrp_c * elmt_M_o2_c * elmt_IDO_Km_trp_DASH_L * elmt_IDO_Km_srtn * elmt_scaling) / ((elmt_IDO_Km_5htrp * elmt_IDO_Km_O2 * elmt_IDO_Km_trp_DASH_L * elmt_IDO_Km_srtn) + (elmt_M_5htrp_c * elmt_IDO_Km_O2 * elmt_IDO_Km_trp_DASH_L * elmt_IDO_Km_srtn) + (elmt_M_o2_c * elmt_IDO_Km_5htrp * elmt_IDO_Km_trp_DASH_L * elmt_IDO_Km_srtn) + (elmt_M_trp_DASH_L_c * elmt_IDO_Km_5htrp * elmt_IDO_Km_O2 * elmt_IDO_Km_srtn) + (elmt_M_srtn_c * elmt_IDO_Km_5htrp * elmt_IDO_Km_O2 * elmt_IDO_Km_trp_DASH_L) + (elmt_M_5htrp_c * elmt_M_o2_c * elmt_IDO_Km_trp_DASH_L * elmt_IDO_Km_srtn) + (elmt_M_trp_DASH_L_c * elmt_M_o2_c * elmt_IDO_Km_5htrp * elmt_IDO_Km_srtn) + (elmt_M_srtn_c * elmt_M_o2_c * elmt_IDO_Km_5htrp * elmt_IDO_Km_trp_DASH_L))));
        elmt_R02668 = (elmt_Cytosol * ((elmt_KYNU_E_T * elmt_R02668_elmt_kcat_A * elmt_scaling * elmt_M_hLkynr_c * elmt_KYNU_Km_Lkynr * elmt_KYNU_Km_Lfmkynr) / ((elmt_KYNU_Km_hLkynr * elmt_KYNU_Km_Lkynr * elmt_KYNU_Km_Lfmkynr) + (elmt_KYNU_Km_Lkynr * elmt_KYNU_Km_Lfmkynr * elmt_M_hLkynr_c) + (elmt_KYNU_Km_hLkynr * elmt_KYNU_Km_Lfmkynr * elmt_M_Lkynr_c) + (elmt_KYNU_Km_hLkynr * elmt_KYNU_Km_Lkynr * elmt_M_Lfmkynr_c))));
        elmt_R02701 = (elmt_Cytosol * ((elmt_DDC_E_T * elmt_R02701_elmt_kcat_B * elmt_scaling * elmt_M_5htrp_c * elmt_DDC_Km_trp_DASH_L) / ((elmt_DDC_Km_5htrp * elmt_DDC_Km_trp_DASH_L) + (elmt_DDC_Km_5htrp * elmt_M_trp_DASH_L_c) + (elmt_DDC_Km_trp_DASH_L * elmt_M_5htrp_c))));
        elmt_Lkynr_trans_Slc7a8 = (elmt_Cytosol * ((elmt_scaling * (((elmt_Transporter_E_T_Slc7a8 * elmt_Transporter_kcat_Lkynr * elmt_M_Lkynr_c) / elmt_Transporter_Km_Lkynr) - ((elmt_Transporter_E_T_Slc7a8 * elmt_Transporter_kcat_Lkynr * elmt_M_Lkynr_ex) / elmt_Transporter_Km_Lkynr))) / (1.0 + (elmt_M_Lkynr_c / elmt_Transporter_Km_Lkynr) + (elmt_M_trp_DASH_L_c / elmt_Transporter_Km_Trp_Slc7a8) + (elmt_M_Lkynr_ex / elmt_Transporter_Km_Lkynr) + (elmt_TRP_ex / elmt_Transporter_Km_Trp_Slc7a8))));
        elmt_R02908_Maob = (elmt_Cytosol * ((elmt_MAOB_E_T * elmt_R02908_Maob_elmt_kcat_B * elmt_scaling * elmt_M_srtn_c * elmt_MAO_Km_trypta) / ((elmt_MAO_Km_srtn * elmt_MAO_Km_trypta) + (elmt_MAO_Km_srtn * elmt_M_trypta_c) + (elmt_MAO_Km_trypta * elmt_M_srtn_c))));
        elmt_R01956_Kat1 = (elmt_Cytosol * ((elmt_AADAT_E_T_kat1 * elmt_AADAT_kcat_Lkynr * elmt_scaling * elmt_M_Lkynr_c * elmt_AADAT_Km_hLkynr) / ((elmt_AADAT_Km_Lkynr * elmt_AADAT_Km_hLkynr) + (elmt_AADAT_Km_Lkynr * elmt_M_hLkynr_c) + (elmt_AADAT_Km_hLkynr * elmt_M_Lkynr_c))));
        elmt_R04323 = (elmt_Cytosol * ((elmt_R04323_elmt_E_T * elmt_R04323_elmt_kcat * elmt_M_cmusa_c * elmt_scaling) / (elmt_R04323_elmt_Km + elmt_M_cmusa_c)));
        elmt_R01956_Kat2 = (elmt_Cytosol * ((elmt_AADAT_E_T_kat2 * elmt_AADAT_kcat_hLkynr * elmt_scaling * elmt_M_hLkynr_c * elmt_AADAT_Km_Lkynr) / ((elmt_AADAT_Km_hLkynr * elmt_AADAT_Km_Lkynr) + (elmt_AADAT_Km_hLkynr * elmt_M_Lkynr_c) + (elmt_AADAT_Km_Lkynr * elmt_M_hLkynr_c))));
        elmt_R01956_Kat3 = (elmt_Cytosol * ((elmt_AADAT_E_T_kat3 * elmt_AADAT_kcat_hLkynr * elmt_scaling * elmt_M_hLkynr_c * elmt_AADAT_Km_Lkynr) / ((elmt_AADAT_Km_hLkynr * elmt_AADAT_Km_Lkynr) + (elmt_AADAT_Km_hLkynr * elmt_M_Lkynr_c) + (elmt_AADAT_Km_Lkynr * elmt_M_hLkynr_c))));
        elmt_R04171_Kat1 = (elmt_Cytosol * ((elmt_AADAT_E_T_kat1 * elmt_AADAT_kcat_hLkynr * elmt_scaling * elmt_M_hLkynr_c * elmt_AADAT_Km_Lkynr) / ((elmt_AADAT_Km_hLkynr * elmt_AADAT_Km_Lkynr) + (elmt_AADAT_Km_hLkynr * elmt_M_Lkynr_c) + (elmt_AADAT_Km_Lkynr * elmt_M_hLkynr_c))));
        elmt_R04171_Kat2 = (elmt_Cytosol * ((elmt_AADAT_E_T_kat2 * elmt_AADAT_kcat_Lkynr * elmt_scaling * elmt_M_Lkynr_c * elmt_AADAT_Km_hLkynr) / ((elmt_AADAT_Km_Lkynr * elmt_AADAT_Km_hLkynr) + (elmt_AADAT_Km_Lkynr * elmt_M_hLkynr_c) + (elmt_AADAT_Km_hLkynr * elmt_M_Lkynr_c))));
        elmt_R02174_metTrypta = (elmt_Cytosol * ((elmt_IMNT_E_T * elmt_R02174_metTrypta_elmt_kcat_A * elmt_scaling * elmt_M_nmtrpta_c * elmt_IMNT_Km_srtn * elmt_IMNT_Km_trypta) / ((elmt_IMNT_Km_nmtrpta * elmt_IMNT_Km_srtn * elmt_IMNT_Km_trypta) + (elmt_IMNT_Km_srtn * elmt_IMNT_Km_trypta * elmt_M_nmtrpta_c) + (elmt_IMNT_Km_nmtrpta * elmt_IMNT_Km_trypta * elmt_M_srtn_c) + (elmt_IMNT_Km_nmtrpta * elmt_IMNT_Km_srtn * elmt_M_trypta_c))));
        elmt_R04171_Kat3 = (elmt_Cytosol * ((elmt_AADAT_E_T_kat3 * elmt_AADAT_kcat_Lkynr * elmt_scaling * elmt_M_Lkynr_c * elmt_AADAT_Km_hLkynr) / ((elmt_AADAT_Km_Lkynr * elmt_AADAT_Km_hLkynr) + (elmt_AADAT_Km_Lkynr * elmt_M_hLkynr_c) + (elmt_AADAT_Km_hLkynr * elmt_M_Lkynr_c))));
        elmt_R02908_Maoa = (elmt_Cytosol * ((elmt_MAOA_E_T * elmt_R02908_Maoa_elmt_kcat_B * elmt_scaling * elmt_M_srtn_c * elmt_MAO_Km_trypta) / ((elmt_MAO_Km_srtn * elmt_MAO_Km_trypta) + (elmt_MAO_Km_srtn * elmt_M_trypta_c) + (elmt_MAO_Km_trypta * elmt_M_srtn_c))));
        elmt_TRPtrans_Slc7a5 = (elmt_Cytosol * ((elmt_scaling * (((elmt_Transporter_E_T_Slc7a5 * elmt_Transporter_kcat_Trp * elmt_TRP_ex) / elmt_Transporter_Km_Trp_Slc7a5) - ((elmt_Transporter_E_T_Slc7a5 * elmt_Transporter_kcat_Trp * elmt_M_trp_DASH_L_c) / elmt_Transporter_Km_Trp_Slc7a5))) / (1.0 + (elmt_TRP_ex / elmt_Transporter_Km_Trp_Slc7a5) + (elmt_M_Lkynr_ex / elmt_Transporter_Km_Lkynr) + (elmt_M_trp_DASH_L_c / elmt_Transporter_Km_Trp_Slc7a5) + (elmt_M_Lkynr_c / elmt_Transporter_Km_Lkynr))));
        elmt_TRPtrans_Slc7a8 = (elmt_Cytosol * ((elmt_scaling * (((elmt_Transporter_E_T_Slc7a8 * elmt_Transporter_kcat_Trp * elmt_TRP_ex) / elmt_Transporter_Km_Trp_Slc7a8) - ((elmt_Transporter_E_T_Slc7a8 * elmt_Transporter_kcat_Trp * elmt_M_trp_DASH_L_c) / elmt_Transporter_Km_Trp_Slc7a8))) / (1.0 + (elmt_TRP_ex / elmt_Transporter_Km_Trp_Slc7a8) + (elmt_M_Lkynr_ex / elmt_Transporter_Km_Lkynr) + (elmt_M_trp_DASH_L_c / elmt_Transporter_Km_Trp_Slc7a8) + (elmt_M_Lkynr_c / elmt_Transporter_Km_Lkynr))));
        elmt_R04911 = (elmt_Cytosol * ((elmt_AFMID_E_T * elmt_R04911_elmt_kcat_A * elmt_scaling * elmt_M_5hoxnfkyn_c * elmt_AFMID_Km_Lfmkynr * elmt_AFMID_Km_nformanth) / ((elmt_AFMID_Km_5hoxnfky * elmt_AFMID_Km_Lfmkynr * elmt_AFMID_Km_nformanth) + (elmt_AFMID_Km_Lfmkynr * elmt_AFMID_Km_nformanth * elmt_M_5hoxnfkyn_c) + (elmt_AFMID_Km_5hoxnfky * elmt_AFMID_Km_nformanth * elmt_M_Lfmkynr_c) + (elmt_AFMID_Km_5hoxnfky * elmt_AFMID_Km_Lfmkynr * elmt_M_nformanth_c))));
        elmt_R03348 = (elmt_Cytosol * ((elmt_R03348_elmt_kcat * elmt_R03348_elmt_E_T * elmt_M_quln_c * elmt_M_prpp_c * elmt_M_h_c * elmt_scaling) / ((elmt_R03348_elmt_Ka * elmt_R03348_elmt_Kb) + (elmt_R03348_elmt_Kb * elmt_M_quln_c) + (elmt_R03348_elmt_Ka * elmt_M_prpp_c) + (elmt_M_quln_c * elmt_M_prpp_c))));
        elmt_R02173_Maoa = (elmt_Cytosol * ((elmt_MAOA_E_T * elmt_R02173_Maoa_elmt_kcat_B * elmt_scaling * elmt_M_trypta_c * elmt_MAO_Km_srtn) / ((elmt_MAO_Km_trypta * elmt_MAO_Km_srtn) + (elmt_MAO_Km_trypta * elmt_M_srtn_c) + (elmt_MAO_Km_srtn * elmt_M_trypta_c))));
        elmt_R03005 = (elmt_Cytosol * ((elmt_R03005_elmt_E_T * elmt_R03005_elmt_kcat * elmt_M_nicrnt_c * elmt_M_h_c * elmt_M_atp_c * elmt_scaling) / (elmt_R03005_elmt_Km + elmt_M_nicrnt_c)));
        elmt_R01960 = (elmt_Cytosol * ((elmt_R01960_elmt_kcat * elmt_R01960_elmt_E_T * elmt_M_Lkynr_c * elmt_M_o2_c * elmt_M_nadph_c * elmt_M_h_c * elmt_scaling) / ((elmt_R01960_elmt_Ka * elmt_R01960_elmt_Kb * elmt_R01960_elmt_Kc) + (elmt_M_Lkynr_c * elmt_R01960_elmt_Kb * elmt_R01960_elmt_Kc) + (elmt_M_o2_c * elmt_R01960_elmt_Ka * elmt_R01960_elmt_Kc) + (elmt_M_nadph_c * elmt_R01960_elmt_Ka * elmt_R01960_elmt_Kb) + (elmt_M_Lkynr_c * elmt_M_o2_c * elmt_R01960_elmt_Kc) + (elmt_M_o2_c * elmt_M_nadph_c * elmt_R01960_elmt_Ka) + (elmt_M_Lkynr_c * elmt_M_nadph_c * elmt_R01960_elmt_Kb) + (elmt_M_Lkynr_c * elmt_M_o2_c * elmt_M_nadph_c))));
        elmt_R03664 = (elmt_Cytosol * ((elmt_R03664_elmt_kcat * elmt_R03664_elmt_E_T * elmt_M_trp_DASH_L_c * elmt_M_trna_trp_c * elmt_M_atp_c * elmt_scaling) / ((elmt_R03664_elmt_Ka * elmt_R03664_elmt_Kb) + (elmt_R03664_elmt_Kb * elmt_M_trp_DASH_L_c) + (elmt_R03664_elmt_Ka * elmt_M_trna_trp_c) + (elmt_M_trp_DASH_L_c * elmt_M_trna_trp_c))));
        elmt_R02911 = (elmt_Cytosol * ((elmt_AANAT_E_T * elmt_R02911_elmt_kcat_B * elmt_scaling * elmt_M_srtn_c * elmt_AANAT_Km_trypta) / ((elmt_AANAT_Km_Srtn * elmt_AANAT_Km_trypta) + (elmt_AANAT_Km_Srtn * elmt_M_trypta_c) + (elmt_AANAT_Km_trypta * elmt_M_srtn_c))));
        elmt_R02910 = (elmt_Cytosol * ((elmt_IMNT_E_T * elmt_R02910_elmt_kcat_A * elmt_scaling * elmt_M_srtn_c * elmt_IMNT_Km_nmtrpta * elmt_IMNT_Km_trypta) / ((elmt_IMNT_Km_srtn * elmt_IMNT_Km_nmtrpta * elmt_IMNT_Km_trypta) + (elmt_IMNT_Km_nmtrpta * elmt_IMNT_Km_trypta * elmt_M_srtn_c) + (elmt_IMNT_Km_srtn * elmt_IMNT_Km_trypta * elmt_M_nmtrpta_c) + (elmt_IMNT_Km_srtn * elmt_IMNT_Km_nmtrpta * elmt_M_trypta_c))));
        elmt_R02173_Maob = (elmt_Cytosol * ((elmt_MAOB_E_T * elmt_R02173_Maob_elmt_kcat_B * elmt_scaling * elmt_M_trypta_c * elmt_MAO_Km_srtn) / ((elmt_MAO_Km_trypta * elmt_MAO_Km_srtn) + (elmt_MAO_Km_trypta * elmt_M_srtn_c) + (elmt_MAO_Km_srtn * elmt_M_trypta_c))));
        elmt_R00677 = (elmt_Cytosol * ((elmt_R00677_elmt_kcat * elmt_R00677_elmt_E_T * elmt_M_trp_DASH_L_c * elmt_M_o2_c * elmt_M_h2o_c * elmt_scaling) / ((elmt_R00677_elmt_Ka * elmt_R00677_elmt_Kb) + (elmt_R00677_elmt_Kb * elmt_M_trp_DASH_L_c) + (elmt_R00677_elmt_Ka * elmt_M_o2_c) + (elmt_M_trp_DASH_L_c * elmt_M_o2_c))));
        elmt_R02174 = (elmt_Cytosol * ((elmt_IMNT_E_T * elmt_R02174_elmt_kcat_A * elmt_scaling * elmt_M_trypta_c * elmt_IMNT_Km_nmtrpta * elmt_IMNT_Km_srtn) / ((elmt_IMNT_Km_trypta * elmt_IMNT_Km_nmtrpta * elmt_IMNT_Km_srtn) + (elmt_IMNT_Km_nmtrpta * elmt_IMNT_Km_srtn * elmt_M_trypta_c) + (elmt_IMNT_Km_trypta * elmt_IMNT_Km_srtn * elmt_M_nmtrpta_c) + (elmt_IMNT_Km_trypta * elmt_IMNT_Km_nmtrpta * elmt_M_srtn_c))));
        elmt_quin_form = (elmt_Cytosol * elmt_quin_form_elmt_k1 * elmt_M_cmusa_c);
        elmt_R02670 = (elmt_Cytosol * elmt_R02670_elmt_k1 * Functions.pow(elmt_M_3hanthrn_c, elmt_R02670_elmt_e1) * Functions.pow(elmt_M_o2_c, elmt_R02670_elmt_e2));
        elmt_AANAT_Trypta = (elmt_Cytosol * ((elmt_AANAT_E_T * elmt_AANAT_Trypta_elmt_kcat_B * elmt_scaling * elmt_M_trypta_c * elmt_AANAT_Km_Srtn) / ((elmt_AANAT_Km_trypta * elmt_AANAT_Km_Srtn) + (elmt_AANAT_Km_trypta * elmt_M_srtn_c) + (elmt_AANAT_Km_Srtn * elmt_M_trypta_c))));
        elmt_R00678_Tdo = (elmt_Cytosol * ((elmt_R00678_Tdo_elmt_kcat * elmt_R00678_Tdo_elmt_E_T * elmt_M_trp_DASH_L_c * elmt_M_o2_c * elmt_scaling) / ((elmt_R00678_Tdo_elmt_Ka * elmt_R00678_Tdo_elmt_Kb) + (elmt_R00678_Tdo_elmt_Ka * elmt_M_o2_c) + (elmt_R00678_Tdo_elmt_Kb * elmt_M_trp_DASH_L_c) + (elmt_M_trp_DASH_L_c * elmt_M_o2_c))));
        der(elmt_product74) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product71) = 0;
        der(elmt_product77) = 0;
        der(elmt_product76) = 0;
        der(elmt_product75) = 0;
        der(elmt_product171) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_product173) = 0;
        der(elmt_product70) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_product175) = 0;
        der(elmt_reactant117) = 0;
        der(elmt_reactant116) = 0;
        der(elmt_product69) = 0;
        der(elmt_reactant112) = 0;
        der(elmt_reactant111) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_product82) = 0;
        der(elmt_product88) = 0;
        der(elmt_product87) = 0;
        der(elmt_product86) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_reactant121) = 0;
        der(elmt_reactant120) = 0;
        der(elmt_product101) = 0;
        der(elmt_product104) = 0;
        der(elmt_product103) = 0;
        der(elmt_product100) = 0;
        der(elmt_product109) = 0;
        der(elmt_reactant128) = 0;
        der(elmt_reactant127) = 0;
        der(elmt_product79) = 0;
        der(elmt_reactant124) = 0;
        der(elmt_reactant123) = 0;
        der(elmt_product108) = 0;
        der(elmt_product96) = 0;
        der(elmt_product95) = 0;
        der(elmt_product11) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_product151) = 0;
        der(elmt_product150) = 0;
        der(elmt_product92) = 0;
        der(elmt_product91) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_product157) = 0;
        der(elmt_product156) = 0;
        der(elmt_reactant174) = 0;
        der(elmt_product158) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant172) = 0;
        der(elmt_product152) = 0;
        der(elmt_reactant170) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product21) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_product162) = 0;
        der(elmt_product161) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_product4) = 0;
        der(elmt_product3) = 0;
        der(elmt_product168) = 0;
        der(elmt_product167) = 0;
        der(elmt_product169) = 0;
        der(elmt_product163) = 0;
        der(elmt_reactant107) = 0;
        der(elmt_product15) = 0;
        der(elmt_reactant106) = 0;
        der(elmt_product14) = 0;
        der(elmt_reactant105) = 0;
        der(elmt_product19) = 0;
        der(elmt_reactant102) = 0;
        der(elmt_reactant83) = 0;
        der(elmt_reactant84) = 0;
        der(elmt_reactant85) = 0;
        der(elmt_product34) = 0;
        der(elmt_reactant80) = 0;
        der(elmt_reactant81) = 0;
        der(elmt_reactant89) = 0;
        der(elmt_reactant154) = 0;
        der(elmt_product134) = 0;
        der(elmt_reactant153) = 0;
        der(elmt_product137) = 0;
        der(elmt_product130) = 0;
        der(elmt_product133) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_product24) = 0;
        der(elmt_reactant159) = 0;
        der(elmt_product138) = 0;
        der(elmt_product29) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant155) = 0;
        der(elmt_reactant94) = 0;
        der(elmt_product40) = 0;
        der(elmt_reactant97) = 0;
        der(elmt_reactant90) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant93) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant98) = 0;
        der(elmt_reactant99) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_reactant165) = 0;
        der(elmt_product146) = 0;
        der(elmt_reactant164) = 0;
        der(elmt_product145) = 0;
        der(elmt_product142) = 0;
        der(elmt_product141) = 0;
        der(elmt_reactant160) = 0;
        der(elmt_product36) = 0;
        der(elmt_product35) = 0;
        der(elmt_reactant166) = 0;
        der(elmt_product39) = 0;
        der(elmt_reactant61) = 0;
        der(elmt_product50) = 0;
        der(elmt_reactant64) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant60) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_reactant67) = 0;
        der(elmt_reactant68) = 0;
        der(elmt_reactant132) = 0;
        der(elmt_product113) = 0;
        der(elmt_reactant131) = 0;
        der(elmt_product115) = 0;
        der(elmt_product114) = 0;
        der(elmt_product110) = 0;
        der(elmt_product49) = 0;
        der(elmt_reactant139) = 0;
        der(elmt_product47) = 0;
        der(elmt_product46) = 0;
        der(elmt_reactant136) = 0;
        der(elmt_reactant135) = 0;
        der(elmt_product119) = 0;
        der(elmt_product118) = 0;
        der(elmt_product63) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant72) = 0;
        der(elmt_product62) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant73) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product65) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant78) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant143) = 0;
        der(elmt_product126) = 0;
        der(elmt_reactant140) = 0;
        der(elmt_product125) = 0;
        der(elmt_product122) = 0;
        der(elmt_product59) = 0;
        der(elmt_reactant149) = 0;
        der(elmt_product58) = 0;
        der(elmt_reactant148) = 0;
        der(elmt_product57) = 0;
        der(elmt_reactant147) = 0;
        der(elmt_reactant144) = 0;
        der(elmt_product129) = 0;

end Reactions;
