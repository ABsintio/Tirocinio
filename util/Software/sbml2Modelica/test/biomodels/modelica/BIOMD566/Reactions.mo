within BIOMD566;
class Reactions

    input Real elmt_k1;
    input Real elmt_Brain;
    input Real elmt_k2;
    input Real elmt_A;
    input Real elmt_B;

    Real elmt_Growth(unit = "") "Growth";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI7\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-01-13T17:16:24Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_Nucleation(unit = "") "Nucleation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI6\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-01-13T17:14:42Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product1 = 1.0;
        elmt_product4 = 2.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_Growth = (elmt_Brain * elmt_k2 * elmt_A * elmt_B);
        elmt_Nucleation = (elmt_Brain * elmt_k1 * elmt_A);
        der(elmt_reactant2) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product1) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
