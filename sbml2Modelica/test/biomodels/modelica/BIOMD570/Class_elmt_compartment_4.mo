within BIOMD570;
class Class_elmt_compartment_4

    input Real elmt_F_out;
    input Real elmt_parameter_37;

    Real elmt_compartment_4(unit = "") "Venous balloon";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI3\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-16T12:29:51Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment_4 = 0.0237;


    equation
        assert(elmt_compartment_4 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_4) = (elmt_parameter_37 - elmt_F_out);

    algorithm
end Class_elmt_compartment_4;
