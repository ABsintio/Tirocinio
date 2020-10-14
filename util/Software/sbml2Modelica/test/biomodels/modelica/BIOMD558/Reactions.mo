within BIOMD558;
class Reactions

    input Real elmt_k1;
    input Real elmt_ROS;
    input Real elmt_kalphasyn;
    input Real elmt_Neuron;
    input Real elmt_S1;
    input Real elmt_alpha_syn;
    input Real elmt_dalphasyn;
    input Real elmt_S2_4;
    input Real elmt_k4;
    input Real elmt_k2;
    input Real elmt_k3;

    Real elmt_ROS_1(unit = "") "ROS 1";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI12\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-09-16T14:28:23Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product0 "";
    Real elmt_ROS_2(unit = "") "ROS 2";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI13\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-09-16T14:30:56Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant1 "";
    Real elmt_aSyn_1(unit = "") "aSyn 1";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI14\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-09-16T14:31:31Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product2 "";
    Real elmt_aSyn_2(unit = "") "aSyn 2";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI15\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-09-16T14:33:45Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant3 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product0 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_ROS_1 = (elmt_Neuron * ((elmt_k1 * (1.0 + elmt_S1 + (elmt_dalphasyn * (Functions.pow((elmt_alpha_syn / elmt_kalphasyn), 4.0) / (1.0 + Functions.pow((elmt_alpha_syn / elmt_kalphasyn), 4.0))))))));
        elmt_ROS_2 = (elmt_Neuron * ((elmt_k2 * elmt_ROS * elmt_S2_4)));
        elmt_aSyn_1 = (elmt_Neuron * ((elmt_k3 * elmt_ROS * elmt_S2_4)));
        elmt_aSyn_2 = (elmt_Neuron * ((elmt_k4 * elmt_alpha_syn * elmt_S2_4)));
        der(elmt_reactant1) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product0) = 0;
        der(elmt_product2) = 0;

end Reactions;
