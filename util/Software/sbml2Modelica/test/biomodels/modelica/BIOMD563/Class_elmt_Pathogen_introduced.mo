within BIOMD563;
class Class_elmt_Pathogen_introduced "Pathogen introduced" annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI13\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-21T14:13:32Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));

    Boolean trigger;
    Real    value_elmt_Path_bulk;

    equation
        trigger = (time > 10.0);
        algorithm
            value_elmt_Path_bulk := 1.0;
end Class_elmt_Pathogen_introduced;
