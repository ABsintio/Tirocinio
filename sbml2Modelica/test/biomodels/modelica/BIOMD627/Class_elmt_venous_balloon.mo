within BIOMD627;
class Class_elmt_venous_balloon

    input Real elmt_F_in;
    input Real elmt_F_out;

    Real elmt_venous_balloon(unit = "") "venous balloon";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
          </rdf:RDF>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI5\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-19T10:51:42Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"urn:miriam:go:GO:0005623\"/>
                <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000290\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));

    initial equation
        elmt_venous_balloon = 0.0237;


    equation
        assert(elmt_venous_balloon >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_venous_balloon) = (elmt_F_in - elmt_F_out);

    algorithm
end Class_elmt_venous_balloon;
