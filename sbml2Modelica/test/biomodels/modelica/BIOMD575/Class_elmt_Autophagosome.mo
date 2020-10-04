within BIOMD575;
class Class_elmt_Autophagosome

    input Real elmt_J52;
    input Real elmt_product157;
    input Real elmt_J53;
    input Real elmt_J50;
    input Real elmt_J51;
    input Real elmt_product163;
    input Real elmt_product154;
    input Real elmt_product160;
    input Real elmt_J36;
    input Real elmt_reactant124;

    Real elmt_Autophagosome(unit = "") "Autophagosome";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_Autophagosome_0_conc(unit = "");
    Real elmt_Autophagosome_0_amount(unit = "");
    Real elmt_Autophagosome_0(unit = "") "Autophagosome";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI74\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-04-01T16:04:49Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_Autophagosome = 1.0;
        elmt_Autophagosome_0_conc = 0.5;


    equation
        assert(elmt_Autophagosome >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Autophagosome) = 0;
        elmt_Autophagosome_0 = elmt_Autophagosome_0_conc;
        der(elmt_Autophagosome_0_amount) = ((elmt_J52 * elmt_product160) + (elmt_J53 * elmt_product163) + (elmt_J50 * elmt_product154) + (elmt_J51 * elmt_product157) + (- (elmt_J36 * elmt_reactant124)));

    algorithm
        elmt_Autophagosome_0_conc := elmt_Autophagosome_0_amount / elmt_Autophagosome;
end Class_elmt_Autophagosome;
