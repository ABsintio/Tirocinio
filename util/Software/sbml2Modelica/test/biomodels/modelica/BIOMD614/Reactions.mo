within BIOMD614;
class Reactions

    input Real elmt_k1;
    input Real elmt_compartment_;
    input Real elmt_f;
    input Real elmt_a;
    input Real elmt_k2;

    Real elmt_R3(unit = "") "R3";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI6\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-08-15T11:23:23Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_R4(unit = "") "R4";
    Real elmt_reactant3 "";
    Real elmt_R1(unit = "") "R1";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI5\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-08-15T11:23:09Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product0 "";
    Real elmt_R2(unit = "") "R2";
    Real elmt_product1 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product1 = 1.0;
        elmt_product0 = 1.0;


    equation
        elmt_R3 = (elmt_compartment_ * ((elmt_k1 * elmt_f)));
        elmt_R4 = (elmt_compartment_ * ((elmt_k2 * elmt_a * elmt_f * elmt_f)));
        elmt_R1 = (elmt_compartment_ * (elmt_k1));
        elmt_R2 = (elmt_compartment_ * ((elmt_k2 * elmt_a * elmt_f)));
        der(elmt_reactant2) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product1) = 0;
        der(elmt_product0) = 0;

end Reactions;
