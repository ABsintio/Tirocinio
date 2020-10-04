within BIOMD575;
class Class_elmt_Lysosome

    Real elmt_Lysosome(unit = "") "Lysosome";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_Lysosome_0_conc(unit = "");
    Real elmt_Lysosome_0_amount(unit = "");
    Real elmt_Lysosome_0(unit = "") "Lysosome";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI76\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-04-01T18:24:36Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_Lysosome = 1.0;
        elmt_Lysosome_0_conc = 2.5;


    equation
        assert(elmt_Lysosome >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Lysosome) = 0;
        elmt_Lysosome_0 = elmt_Lysosome_0_conc;
        der(elmt_Lysosome_0_amount) = 0;

    algorithm
        elmt_Lysosome_0_conc := elmt_Lysosome_0_amount / elmt_Lysosome;
end Class_elmt_Lysosome;
