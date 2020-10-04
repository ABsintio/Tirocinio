within BIOMD573;
class Reactions

    input Real elmt_compartment;
    input Real elmt_V;
    input Real elmt_C;

    Real elmt_Kvc(unit = "") "Kcv";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI8\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-02-07T21:41:50Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Kvc_elmt_k1(unit "") = 0.927 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_Kv(unit = "") "Kv";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI4\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-02-07T21:38:28Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Kv_elmt_Vmax(unit "") = 0.134 "";
    parameter Real elmt_Kv_elmt_Km(unit "") = 380.0 "";
    Real elmt_reactant1 "";
    Real elmt_product2 "";
    Real elmt_Kdv(unit = "") "Kdv";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI6\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-02-07T21:42:03Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Kdv_elmt_k1(unit "") = 6.85E-5 "";
    Real elmt_reactant6 "";
    Real elmt_Kcv(unit = "") "Kvc";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI5\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-02-07T21:41:30Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Kcv_elmt_k1(unit "") = 0.0295 "";
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_Kb(unit = "") "Kb";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI3\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-02-07T21:40:00Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Kb_elmt_v(unit "") = 0.00134 "";
    Real elmt_product0 "";
    Real elmt_Kc(unit = "") "Kc";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI7\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-02-07T21:41:12Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Kc_elmt_v(unit "") = 0.07 "";
    Real elmt_product7 "";
    Real elmt_Kdc(unit = "") "Kdc";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI9\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-02-07T21:42:17Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Kdc_elmt_k1(unit "") = 5.01E-5 "";
    Real elmt_reactant11 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product0 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_product2 = 2.0;


    equation
        elmt_Kvc = (elmt_compartment * elmt_Kvc_elmt_k1 * elmt_V * elmt_C);
        elmt_Kv = (elmt_compartment * (((elmt_Kv_elmt_Vmax * elmt_V) / (elmt_Kv_elmt_Km + elmt_V))));
        elmt_Kdv = (elmt_compartment * elmt_Kdv_elmt_k1 * elmt_V);
        elmt_Kcv = (elmt_compartment * elmt_Kcv_elmt_k1 * elmt_V * elmt_C);
        elmt_Kb = (elmt_compartment * (elmt_Kb_elmt_v));
        elmt_Kc = (elmt_compartment * (elmt_Kc_elmt_v));
        elmt_Kdc = (elmt_compartment * elmt_Kdc_elmt_k1 * elmt_C);
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product0) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_product2) = 0;

end Reactions;
