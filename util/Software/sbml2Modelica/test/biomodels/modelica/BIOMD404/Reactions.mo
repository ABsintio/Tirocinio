within BIOMD404;
class Reactions

    input Real elmt_TW;
    input Real elmt_MYpYp;
    input Real elmt_Tasp_A;
    input Real elmt_asp;
    input Real elmt_Tasp_WA;
    input Real elmt_Tni_W;
    input Real elmt_WA;
    input Real elmt_cell;
    input Real elmt_MYp;
    input Real elmt_Y;
    input Real elmt_Z;
    input Real elmt_W;
    input Real elmt_Tni;
    input Real elmt_ni;
    input Real elmt_Tni_A;
    input Real elmt_parameter_2;
    input Real elmt_alpha;
    input Real elmt_T;
    input Real elmt_MYpYpYp;
    input Real elmt_Yp;
    input Real elmt_MYpYpYpYp;
    input Real elmt_Tasp;
    input Real elmt_M;
    input Real elmt_Tni_WA;
    input Real elmt_kappa;
    input Real elmt_Tasp_W;
    input Real elmt_TA;
    input Real elmt_Bp;
    input Real elmt_TWA;
    input Real elmt_A;
    input Real elmt_B;
    input Real elmt_ka;
    input Real elmt_Ap;

    Real elmt_phosphorylation_r5(unit = "") "Ap+Y->A+Yp";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI45\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:29:01Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_phosphorylation_r5_elmt_k1(unit "") = 200000.0 "";
    Real elmt_product12 "";
    Real elmt_product13 "";
    Real elmt_reactant10 "";
    Real elmt_reactant11 "";
    Real elmt_phosphorylation_r6(unit = "") "Y ->Yp";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI46\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:29:17Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_phosphorylation_r6_elmt_kcat(unit "") = 0.0 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_phosphorylation_r7(unit = "") "Yp->Y";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI47\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:29:41Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_phosphorylation_r7_elmt_k1(unit "") = 0.037 "";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_phosphorylation_r8(unit = "") "Yp+Z->Y+Z";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI48\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:29:52Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_phosphorylation_r8_elmt_k1(unit "") = 500000.0 "";
    Real elmt_reactant18 "";
    Real elmt_reactant19 "";
    Real elmt_product21 "";
    Real elmt_product20 "";
    Real elmt_phosphorylation_r9(unit = "") "Ap+B->A+Bp";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI49\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:30:04Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_phosphorylation_r9_elmt_k1(unit "") = 1000000.0 "";
    Real elmt_product25 "";
    Real elmt_product24 "";
    Real elmt_reactant22 "";
    Real elmt_reactant23 "";
    Real elmt_regulatory_r12(unit = "") "Tasp_A+W<->Tasp_WA";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI62\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:26:15Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_regulatory_r12_elmt_k1(unit "") = 400000.0 "";
    parameter Real elmt_regulatory_r12_elmt_k2(unit "") = 1.0 "";
    Real elmt_reactant61 "";
    Real elmt_product63 "";
    Real elmt_reactant62 "";
    Real elmt_regulatory_r11(unit = "") "Tasp_W+A<->Tasp_WA";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI61\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-11-27T23:04:05Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_regulatory_r11_elmt_k1(unit "") = 400000.0 "";
    parameter Real elmt_regulatory_r11_elmt_k2(unit "") = 1.0 "";
    Real elmt_product60 "";
    Real elmt_reactant58 "";
    Real elmt_reactant59 "";
    Real elmt_regulatory_r14(unit = "") "Tni+W<->Tni_W";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI64\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:26:23Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_regulatory_r14_elmt_k1(unit "") = 0.1 "";
    parameter Real elmt_regulatory_r14_elmt_k2(unit "") = 1.0 "";
    Real elmt_product69 "";
    Real elmt_reactant67 "";
    Real elmt_reactant68 "";
    Real elmt_regulatory_r13(unit = "") "Tasp+WA<->Tasp_WA";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI63\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:26:20Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_regulatory_r13_elmt_k1(unit "") = 400000.0 "";
    parameter Real elmt_regulatory_r13_elmt_k2(unit "") = 1.0 "";
    Real elmt_reactant64 "";
    Real elmt_product66 "";
    Real elmt_reactant65 "";
    Real elmt_phosphorylation_r1(unit = "") "A->Ap";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI41\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:11:23Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_phosphorylation_r1_elmt_kcat(unit "") = 0.001 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_phosphorylation_r2(unit = "") "TWA+A->TWA+Ap";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI42\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:27:37Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_phosphorylation_r2_elmt_kcat(unit "") = 75000.0 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_phosphorylation_r3(unit = "") "Tni_WA+A->Tni_WA+Ap";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI43\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:28:18Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_phosphorylation_r3_elmt_kcat(unit "") = 200000.0 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_regulatory_r10(unit = "") "Tasp+A<->Tasp_A";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI60\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-11-27T22:04:31Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_regulatory_r10_elmt_k1(unit "") = 10000.0 "";
    parameter Real elmt_regulatory_r10_elmt_k2(unit "") = 1.0 "";
    Real elmt_product57 "";
    Real elmt_reactant55 "";
    Real elmt_reactant56 "";
    Real elmt_phosphorylation_r4(unit = "") "Tasp_WA+Yp->Tasp_WA+Y";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI44\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:28:41Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_phosphorylation_r4_elmt_k1(unit "") = 1.0E8 "";
    Real elmt_product9 "";
    Real elmt_product8 "";
    Real elmt_reactant6 "";
    Real elmt_reactant7 "";
    Real elmt_regulatory_r9(unit = "") "Tasp+W<->Tasp_W";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI59\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:26:59Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_regulatory_r9_elmt_k1(unit "") = 100000.0 "";
    parameter Real elmt_regulatory_r9_elmt_k2(unit "") = 1.0 "";
    Real elmt_reactant52 "";
    Real elmt_reactant53 "";
    Real elmt_product54 "";
    Real elmt_regulatory_r8(unit = "") "T+WA<->TWA";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI58\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:26:54Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_regulatory_r8_elmt_k1(unit "") = 400000.0 "";
    parameter Real elmt_regulatory_r8_elmt_k2(unit "") = 1.0 "";
    Real elmt_reactant50 "";
    Real elmt_product51 "";
    Real elmt_reactant49 "";
    Real elmt_regulatory_r5(unit = "") "W+A<->WA";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI55\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:26:47Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_regulatory_r5_elmt_k1(unit "") = 100000.0 "";
    parameter Real elmt_regulatory_r5_elmt_k2(unit "") = 1.0 "";
    Real elmt_reactant40 "";
    Real elmt_reactant41 "";
    Real elmt_product42 "";
    Real elmt_regulatory_r4(unit = "") "T+A<->TA";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI54\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:26:39Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_regulatory_r4_elmt_k1(unit "") = 10000.0 "";
    parameter Real elmt_regulatory_r4_elmt_k2(unit "") = 1.0 "";
    Real elmt_reactant37 "";
    Real elmt_reactant38 "";
    Real elmt_product39 "";
    Real elmt_regulatory_r7(unit = "") "TA+W<->TWA";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI57\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:26:53Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_regulatory_r7_elmt_k1(unit "") = 400000.0 "";
    parameter Real elmt_regulatory_r7_elmt_k2(unit "") = 1.0 "";
    Real elmt_reactant47 "";
    Real elmt_product48 "";
    Real elmt_reactant46 "";
    Real elmt_regulatory_r6(unit = "") "TW+A<->TWA";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI56\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:26:51Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_regulatory_r6_elmt_k1(unit "") = 400000.0 "";
    parameter Real elmt_regulatory_r6_elmt_k2(unit "") = 1.0 "";
    Real elmt_product45 "";
    Real elmt_reactant43 "";
    Real elmt_reactant44 "";
    Real elmt_regulatory_r1(unit = "") "T+asp<->Tasp";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI51\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:26:01Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_regulatory_r1_elmt_k1(unit "") = 1000000.0 "";
    parameter Real elmt_regulatory_r1_elmt_k2(unit "") = 1.0 "";
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_reactant28 "";
    Real elmt_reaction_3(unit = "") "TWA+asp <-> Tasp_WA";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI75\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-12-23T14:28:07Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_3_elmt_k1(unit "") = 1000000.0 "";
    parameter Real elmt_reaction_3_elmt_k2(unit "") = 1.0 "";
    Real elmt_product102 "";
    Real elmt_reactant101 "";
    Real elmt_reactant100 "";
    Real elmt_regulatory_r3(unit = "") "T+W<->TW";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI53\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:26:34Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_regulatory_r3_elmt_k1(unit "") = 100000.0 "";
    parameter Real elmt_regulatory_r3_elmt_k2(unit "") = 1.0 "";
    Real elmt_product36 "";
    Real elmt_reactant34 "";
    Real elmt_reactant35 "";
    Real elmt_reaction_1(unit = "") "TA + asp <-> Tasp_A";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI73\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-12-23T14:25:51Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_1_elmt_k1(unit "") = 1000000.0 "";
    parameter Real elmt_reaction_1_elmt_k2(unit "") = 1.0 "";
    Real elmt_reactant94 "";
    Real elmt_product96 "";
    Real elmt_reactant95 "";
    Real elmt_regulatory_r2(unit = "") "T+ni<->Tni";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI52\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:26:33Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_regulatory_r2_elmt_k1(unit "") = 1000.0 "";
    parameter Real elmt_regulatory_r2_elmt_k2(unit "") = 1.0 "";
    Real elmt_reactant31 "";
    Real elmt_product33 "";
    Real elmt_reactant32 "";
    Real elmt_reaction_2(unit = "") "TW+asp <-> Tasp_W";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI74\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-12-23T14:26:54Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_2_elmt_k1(unit "") = 1000000.0 "";
    parameter Real elmt_reaction_2_elmt_k2(unit "") = 1.0 "";
    Real elmt_reactant97 "";
    Real elmt_product99 "";
    Real elmt_reactant98 "";
    Real elmt_regulatory_r16(unit = "") "Tni_W+A<->Tni_WA";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI66\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:26:26Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_regulatory_r16_elmt_k1(unit "") = 0.4 "";
    parameter Real elmt_regulatory_r16_elmt_k2(unit "") = 1.0 "";
    Real elmt_reactant73 "";
    Real elmt_reactant74 "";
    Real elmt_product75 "";
    Real elmt_regulatory_r15(unit = "") "Tni+A<->Tni_A";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI65\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:26:25Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_regulatory_r15_elmt_k1(unit "") = 0.01 "";
    parameter Real elmt_regulatory_r15_elmt_k2(unit "") = 1.0 "";
    Real elmt_product72 "";
    Real elmt_reactant70 "";
    Real elmt_reactant71 "";
    Real elmt_regulatory_r18(unit = "") "Tni+WA<->Tni_WA";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI68\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:26:29Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_regulatory_r18_elmt_k1(unit "") = 0.4 "";
    parameter Real elmt_regulatory_r18_elmt_k2(unit "") = 1.0 "";
    Real elmt_reactant80 "";
    Real elmt_product81 "";
    Real elmt_reactant79 "";
    Real elmt_regulatory_r17(unit = "") "Tni_A+W<->Tni_WA";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI67\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:26:28Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_regulatory_r17_elmt_k1(unit "") = 0.4 "";
    parameter Real elmt_regulatory_r17_elmt_k2(unit "") = 1.0 "";
    Real elmt_product78 "";
    Real elmt_reactant76 "";
    Real elmt_reactant77 "";
    Real elmt_phosphorylation_r10(unit = "") "Bp->B";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI50\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:30:27Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_phosphorylation_r10_elmt_k1(unit "") = 1.0 "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_motor_r4(unit = "") "MYpYpYp+Yp<->MYpYpYpYp";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI72\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:11:20Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product93 "";
    Real elmt_reactant91 "";
    Real elmt_reactant92 "";
    Real elmt_motor_r3(unit = "") "MYpYp+Yp<->MYpYpYp";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI71\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:11:20Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant88 "";
    Real elmt_reactant89 "";
    Real elmt_product90 "";
    Real elmt_motor_r2(unit = "") "MYp+Yp<->MYpYp";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI70\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:11:13Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant85 "";
    Real elmt_reactant86 "";
    Real elmt_product87 "";
    Real elmt_motor_r1(unit = "") "M+Yp<->MYp";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI69\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-03-14T22:11:08Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant83 "";
    Real elmt_product84 "";
    Real elmt_reactant82 "";


    initial equation
        elmt_reactant40 = 1.0;
        elmt_reactant41 = 1.0;
        elmt_product72 = 1.0;
        elmt_product78 = 1.0;
        elmt_product75 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_reactant43 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_product69 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product84 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_product87 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_product81 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_product102 = 1.0;
        elmt_product96 = 1.0;
        elmt_product93 = 1.0;
        elmt_product12 = 1.0;
        elmt_product99 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_product90 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product9 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_product21 = 1.0;
        elmt_product20 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;
        elmt_reactant101 = 1.0;
        elmt_product17 = 1.0;
        elmt_reactant100 = 1.0;
        elmt_product30 = 1.0;
        elmt_reactant83 = 1.0;
        elmt_reactant85 = 1.0;
        elmt_reactant86 = 1.0;
        elmt_product33 = 1.0;
        elmt_reactant80 = 1.0;
        elmt_reactant82 = 1.0;
        elmt_reactant88 = 1.0;
        elmt_reactant89 = 1.0;
        elmt_product27 = 1.0;
        elmt_product25 = 1.0;
        elmt_product24 = 1.0;
        elmt_reactant94 = 1.0;
        elmt_reactant95 = 1.0;
        elmt_reactant97 = 1.0;
        elmt_product45 = 1.0;
        elmt_reactant91 = 1.0;
        elmt_reactant92 = 1.0;
        elmt_product42 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant98 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_product36 = 1.0;
        elmt_product39 = 1.0;
        elmt_reactant61 = 1.0;
        elmt_reactant62 = 1.0;
        elmt_product51 = 1.0;
        elmt_reactant64 = 1.0;
        elmt_product54 = 1.0;
        elmt_reactant65 = 1.0;
        elmt_reactant67 = 1.0;
        elmt_reactant68 = 1.0;
        elmt_product48 = 1.0;
        elmt_product63 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant73 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant74 = 1.0;
        elmt_product60 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product66 = 1.0;
        elmt_reactant70 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant71 = 1.0;
        elmt_reactant76 = 1.0;
        elmt_reactant77 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant79 = 1.0;
        elmt_product57 = 1.0;


    equation
        elmt_phosphorylation_r5 = (elmt_cell * elmt_phosphorylation_r5_elmt_k1 * elmt_Ap * elmt_Y);
        elmt_phosphorylation_r6 = (elmt_cell * ((elmt_phosphorylation_r6_elmt_kcat * elmt_parameter_2 * elmt_Y)));
        elmt_phosphorylation_r7 = (elmt_cell * elmt_phosphorylation_r7_elmt_k1 * elmt_Yp);
        elmt_phosphorylation_r8 = (elmt_cell * elmt_phosphorylation_r8_elmt_k1 * elmt_Yp * elmt_Z);
        elmt_phosphorylation_r9 = (elmt_cell * elmt_phosphorylation_r9_elmt_k1 * elmt_Ap * elmt_B);
        elmt_regulatory_r12 = (elmt_cell * ((elmt_regulatory_r12_elmt_k1 * elmt_Tasp_A * elmt_W) - (elmt_regulatory_r12_elmt_k2 * elmt_Tasp_WA)));
        elmt_regulatory_r11 = (elmt_cell * ((elmt_regulatory_r11_elmt_k1 * elmt_Tasp_W * elmt_A) - (elmt_regulatory_r11_elmt_k2 * elmt_Tasp_WA)));
        elmt_regulatory_r14 = (elmt_cell * ((elmt_regulatory_r14_elmt_k1 * elmt_Tni * elmt_W) - (elmt_regulatory_r14_elmt_k2 * elmt_Tni_W)));
        elmt_regulatory_r13 = (elmt_cell * ((elmt_regulatory_r13_elmt_k1 * elmt_Tasp * elmt_WA) - (elmt_regulatory_r13_elmt_k2 * elmt_Tasp_WA)));
        elmt_phosphorylation_r1 = (elmt_cell * ((elmt_phosphorylation_r1_elmt_kcat * elmt_parameter_2 * elmt_A)));
        elmt_phosphorylation_r2 = (elmt_cell * ((elmt_TWA * elmt_A * elmt_phosphorylation_r2_elmt_kcat * elmt_parameter_2)));
        elmt_phosphorylation_r3 = (elmt_cell * ((elmt_Tni_WA * elmt_A * elmt_phosphorylation_r3_elmt_kcat * elmt_parameter_2)));
        elmt_regulatory_r10 = (elmt_cell * ((elmt_regulatory_r10_elmt_k1 * elmt_Tasp * elmt_A) - (elmt_regulatory_r10_elmt_k2 * elmt_Tasp_A)));
        elmt_phosphorylation_r4 = (elmt_cell * elmt_phosphorylation_r4_elmt_k1 * elmt_Tasp_WA * elmt_Yp);
        elmt_regulatory_r9 = (elmt_cell * ((elmt_regulatory_r9_elmt_k1 * elmt_Tasp * elmt_W) - (elmt_regulatory_r9_elmt_k2 * elmt_Tasp_W)));
        elmt_regulatory_r8 = (elmt_cell * ((elmt_regulatory_r8_elmt_k1 * elmt_T * elmt_WA) - (elmt_regulatory_r8_elmt_k2 * elmt_TWA)));
        elmt_regulatory_r5 = (elmt_cell * ((elmt_regulatory_r5_elmt_k1 * elmt_W * elmt_A) - (elmt_regulatory_r5_elmt_k2 * elmt_WA)));
        elmt_regulatory_r4 = (elmt_cell * ((elmt_regulatory_r4_elmt_k1 * elmt_T * elmt_A) - (elmt_regulatory_r4_elmt_k2 * elmt_TA)));
        elmt_regulatory_r7 = (elmt_cell * ((elmt_regulatory_r7_elmt_k1 * elmt_TA * elmt_W) - (elmt_regulatory_r7_elmt_k2 * elmt_TWA)));
        elmt_regulatory_r6 = (elmt_cell * ((elmt_regulatory_r6_elmt_k1 * elmt_TW * elmt_A) - (elmt_regulatory_r6_elmt_k2 * elmt_TWA)));
        elmt_regulatory_r1 = (elmt_cell * ((elmt_regulatory_r1_elmt_k1 * elmt_T * elmt_asp) - (elmt_regulatory_r1_elmt_k2 * elmt_Tasp)));
        elmt_reaction_3 = (elmt_cell * ((elmt_reaction_3_elmt_k1 * elmt_TWA * elmt_asp) - (elmt_reaction_3_elmt_k2 * elmt_Tasp_WA)));
        elmt_regulatory_r3 = (elmt_cell * ((elmt_regulatory_r3_elmt_k1 * elmt_T * elmt_W) - (elmt_regulatory_r3_elmt_k2 * elmt_TW)));
        elmt_reaction_1 = (elmt_cell * ((elmt_reaction_1_elmt_k1 * elmt_TA * elmt_asp) - (elmt_reaction_1_elmt_k2 * elmt_Tasp_A)));
        elmt_regulatory_r2 = (elmt_cell * ((elmt_regulatory_r2_elmt_k1 * elmt_T * elmt_ni) - (elmt_regulatory_r2_elmt_k2 * elmt_Tni)));
        elmt_reaction_2 = (elmt_cell * ((elmt_reaction_2_elmt_k1 * elmt_TW * elmt_asp) - (elmt_reaction_2_elmt_k2 * elmt_Tasp_W)));
        elmt_regulatory_r16 = (elmt_cell * ((elmt_regulatory_r16_elmt_k1 * elmt_Tni_W * elmt_A) - (elmt_regulatory_r16_elmt_k2 * elmt_Tni_WA)));
        elmt_regulatory_r15 = (elmt_cell * ((elmt_regulatory_r15_elmt_k1 * elmt_Tni * elmt_A) - (elmt_regulatory_r15_elmt_k2 * elmt_Tni_A)));
        elmt_regulatory_r18 = (elmt_cell * ((elmt_regulatory_r18_elmt_k1 * elmt_Tni * elmt_WA) - (elmt_regulatory_r18_elmt_k2 * elmt_Tni_WA)));
        elmt_regulatory_r17 = (elmt_cell * ((elmt_regulatory_r17_elmt_k1 * elmt_Tni_A * elmt_W) - (elmt_regulatory_r17_elmt_k2 * elmt_Tni_WA)));
        elmt_phosphorylation_r10 = (elmt_cell * elmt_phosphorylation_r10_elmt_k1 * elmt_Bp);
        elmt_motor_r4 = (elmt_cell * (((elmt_ka * ((elmt_MYpYpYp * elmt_Yp) - (4.0 * elmt_alpha * elmt_alpha * elmt_alpha * elmt_kappa * elmt_MYpYpYpYp))) / elmt_cell)));
        elmt_motor_r3 = (elmt_cell * (((elmt_ka * ((elmt_MYpYp * elmt_Yp) - (((3.0 * elmt_alpha * elmt_alpha * elmt_kappa) / 2.0) * elmt_MYpYpYp))) / elmt_cell)));
        elmt_motor_r2 = (elmt_cell * (((elmt_ka * ((elmt_MYp * elmt_Yp) - (((2.0 * elmt_alpha * elmt_kappa) / 3.0) * elmt_MYpYp))) / elmt_cell)));
        elmt_motor_r1 = (elmt_cell * (((elmt_ka * ((elmt_M * elmt_Yp) - ((elmt_kappa / 4.0) * elmt_MYp))) / elmt_cell)));
        der(elmt_reactant40) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_product72) = 0;
        der(elmt_product78) = 0;
        der(elmt_product75) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_reactant43) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_product69) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product84) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_product87) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_product81) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_product102) = 0;
        der(elmt_product96) = 0;
        der(elmt_product93) = 0;
        der(elmt_product12) = 0;
        der(elmt_product99) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_product90) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product9) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product21) = 0;
        der(elmt_product20) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;
        der(elmt_reactant101) = 0;
        der(elmt_product17) = 0;
        der(elmt_reactant100) = 0;
        der(elmt_product30) = 0;
        der(elmt_reactant83) = 0;
        der(elmt_reactant85) = 0;
        der(elmt_reactant86) = 0;
        der(elmt_product33) = 0;
        der(elmt_reactant80) = 0;
        der(elmt_reactant82) = 0;
        der(elmt_reactant88) = 0;
        der(elmt_reactant89) = 0;
        der(elmt_product27) = 0;
        der(elmt_product25) = 0;
        der(elmt_product24) = 0;
        der(elmt_reactant94) = 0;
        der(elmt_reactant95) = 0;
        der(elmt_reactant97) = 0;
        der(elmt_product45) = 0;
        der(elmt_reactant91) = 0;
        der(elmt_reactant92) = 0;
        der(elmt_product42) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant98) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_product36) = 0;
        der(elmt_product39) = 0;
        der(elmt_reactant61) = 0;
        der(elmt_reactant62) = 0;
        der(elmt_product51) = 0;
        der(elmt_reactant64) = 0;
        der(elmt_product54) = 0;
        der(elmt_reactant65) = 0;
        der(elmt_reactant67) = 0;
        der(elmt_reactant68) = 0;
        der(elmt_product48) = 0;
        der(elmt_product63) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant73) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant74) = 0;
        der(elmt_product60) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product66) = 0;
        der(elmt_reactant70) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant71) = 0;
        der(elmt_reactant76) = 0;
        der(elmt_reactant77) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant79) = 0;
        der(elmt_product57) = 0;

end Reactions;
