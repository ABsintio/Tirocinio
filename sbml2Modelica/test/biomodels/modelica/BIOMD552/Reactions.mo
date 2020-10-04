within BIOMD552;
class Reactions

    input Real elmt_k1;
    input Real elmt_Brain;
    input Real elmt_k4;
    input Real elmt_a;
    input Real elmt_k2;
    input Real elmt_k3;
    input Real elmt_b;

    Real elmt_Effect_of_extracellular_ACh(unit = "") "Effect of extracellular ACh";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI10\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-10-18T13:07:18Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_Abeta_formation_from_APP(unit = "") "Abeta formation from APP";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI9\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-10-18T13:04:59Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product1 "";
    Real elmt_Loss_of_intracellular_choline(unit = "") "Loss of intracellular choline";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI8\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-10-18T13:02:45Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant0 "";
    Real elmt_Decrease_in_the_extracellular_concentration_of_beta_amyloid(unit = "") "Decrease in the extracellular concentration of beta-amyloid";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI11\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-10-18T13:08:53Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant3 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_Effect_of_extracellular_ACh = (elmt_Brain * ((elmt_k3 * elmt_a)));
        elmt_Abeta_formation_from_APP = (elmt_Brain * (elmt_k2));
        elmt_Loss_of_intracellular_choline = (elmt_Brain * ((elmt_k1 * elmt_a * elmt_b)));
        elmt_Decrease_in_the_extracellular_concentration_of_beta_amyloid = (elmt_Brain * ((elmt_k4 * elmt_b)));
        der(elmt_reactant2) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
