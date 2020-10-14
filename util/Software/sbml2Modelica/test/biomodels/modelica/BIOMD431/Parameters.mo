within BIOMD431;
class Parameters

    Real elmt_parameter_1(unit = "") "quantity_1";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI28\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-12-13T11:19:52Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
                                                                            </annotation>"));


    initial equation
        elmt_parameter_1 = 0.0;


    equation
        der(elmt_parameter_1) = 0;

end Parameters;
