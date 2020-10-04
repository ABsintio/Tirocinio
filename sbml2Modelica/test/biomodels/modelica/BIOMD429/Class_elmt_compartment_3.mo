within BIOMD429;
class Class_elmt_compartment_3

    input Real elmt_compartment_1;
    input Real elmt_parameter_13;

    Real elmt_compartment_3(unit = "") "V";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI4\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2010-08-12T14:20:17Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                                                                                                  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation


    equation
        assert(elmt_compartment_3 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        elmt_compartment_3 = (elmt_parameter_13 + elmt_compartment_1);

    algorithm
end Class_elmt_compartment_3;
