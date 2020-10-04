within BIOMD639;
class Reactions

    input Real elmt_compartment;
    input Real elmt_THF;
    input Real elmt_Glycine;
    input Real elmt_H2_HMPterinPP;
    input Real elmt_NADPH;
    input Real elmt_ATP;
    input Real elmt_L_Glutamate;
    input Real elmt_H2_Pteroate;
    input Real elmt_H2_HMPt;
    input Real elmt_DHF;
    input Real elmt_CH2_THF;
    input Real elmt_p_ABA;
    input Real elmt_L_serine;

    Real elmt_H2_HMPt_production(unit = "") "H2-HMPt_production";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI26\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-06T11:43:17Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_H2_HMPt_production_elmt_v(unit "") = 1.66E-7 "";
    Real elmt_product26 "";
    Real elmt_p_ABA_production(unit = "") "p-ABA_production";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI25\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-06T11:42:21Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_p_ABA_production_elmt_v(unit "") = 1.66E-7 "";
    Real elmt_product25 "";
    Real elmt_CH2_THF_drain(unit = "") "CH2-THF_drain";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI28\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-06T11:55:20Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_CH2_THF_drain_elmt_Km(unit "") = 5.921E-5 "";
    parameter Real elmt_CH2_THF_drain_elmt_V(unit "") = 1.726E-7 "";
    Real elmt_reactant28 "";
    Real elmt_FolC(unit = "") "FolC";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI21\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-04T02:08:18Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_FolC_elmt_k1(unit "") = 6184.0 "";
    Real elmt_product12 "";
    Real elmt_product11 "";
    Real elmt_reactant8 "";
    Real elmt_reactant9 "";
    Real elmt_product13 "";
    Real elmt_reactant10 "";
    Real elmt_THF_drain(unit = "") "THF_drain";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI27\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-06T11:54:33Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_THF_drain_elmt_Km(unit "") = 1.571E-4 "";
    parameter Real elmt_THF_drain_elmt_V(unit "") = 1.243E-7 "";
    Real elmt_reactant27 "";
    Real elmt_FolP(unit = "") "FolP";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI20\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-04T02:04:35Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_FolP_elmt_k1(unit "") = 4000.0 "";
    Real elmt_reactant4 "";
    Real elmt_product7 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_GlyA(unit = "") "GlyA";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI22\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-04T16:38:30Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_GlyA_elmt_k1(unit "") = 4080.0 "";
    parameter Real elmt_GlyA_elmt_k2(unit "") = 2000.0 "";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_product17 "";
    Real elmt_FolA(unit = "") "FolA";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI23\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-05T00:08:35Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_FolA_elmt_k1(unit "") = 31170.0 "";
    Real elmt_reactant18 "";
    Real elmt_reactant19 "";
    Real elmt_product21 "";
    Real elmt_product20 "";
    Real elmt_FolK(unit = "") "FolK";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI19\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-04T02:00:39Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_FolK_elmt_k1(unit "") = 15.8 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";
    Real elmt_PanB(unit = "") "PanB";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI24\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-05T01:23:23Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_PanB_elmt_k1(unit "") = 0.004 "";
    Real elmt_product23 "";
    Real elmt_product24 "";
    Real elmt_reactant22 "";


    initial equation
        elmt_product12 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product26 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product25 = 1.0;
        elmt_product24 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_product6 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product21 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_product2 = 1.0;
        elmt_product16 = 1.0;
        elmt_product13 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_H2_HMPt_production = (elmt_compartment * (elmt_H2_HMPt_production_elmt_v));
        elmt_p_ABA_production = (elmt_compartment * (elmt_p_ABA_production_elmt_v));
        elmt_CH2_THF_drain = (elmt_compartment * (((elmt_CH2_THF_drain_elmt_V * elmt_CH2_THF) / (elmt_CH2_THF_drain_elmt_Km + elmt_CH2_THF))));
        elmt_FolC = (elmt_compartment * elmt_FolC_elmt_k1 * elmt_L_Glutamate * elmt_ATP * elmt_H2_Pteroate);
        elmt_THF_drain = (elmt_compartment * (((elmt_THF_drain_elmt_V * elmt_THF) / (elmt_THF_drain_elmt_Km + elmt_THF))));
        elmt_FolP = (elmt_compartment * elmt_FolP_elmt_k1 * elmt_p_ABA * elmt_H2_HMPterinPP);
        elmt_GlyA = (elmt_compartment * ((elmt_GlyA_elmt_k1 * elmt_THF * elmt_L_serine) - (elmt_GlyA_elmt_k2 * elmt_CH2_THF * elmt_Glycine)));
        elmt_FolA = (elmt_compartment * elmt_FolA_elmt_k1 * elmt_DHF * elmt_NADPH);
        elmt_FolK = (elmt_compartment * elmt_FolK_elmt_k1 * elmt_ATP * elmt_H2_HMPt);
        elmt_PanB = (elmt_compartment * elmt_PanB_elmt_k1 * elmt_CH2_THF);
        der(elmt_product12) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product26) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_product24) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_product6) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product21) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;
        der(elmt_product16) = 0;
        der(elmt_product13) = 0;
        der(elmt_product17) = 0;

end Reactions;
