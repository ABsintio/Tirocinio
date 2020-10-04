within BIOMD575;
class Class_elmt_Proteasome

    Real elmt_Proteasome(unit = "") "Proteasome";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_Proteasome_0_conc(unit = "");
    Real elmt_Proteasome_0_amount(unit = "");
    Real elmt_Proteasome_0(unit = "") "Proteasome";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI75\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-04-01T17:59:00Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_Proteasome = 1.0;
        elmt_Proteasome_0_conc = 1.5;


    equation
        assert(elmt_Proteasome >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Proteasome) = 0;
        elmt_Proteasome_0 = elmt_Proteasome_0_conc;
        der(elmt_Proteasome_0_amount) = 0;

    algorithm
        elmt_Proteasome_0_conc := elmt_Proteasome_0_amount / elmt_Proteasome;
end Class_elmt_Proteasome;
