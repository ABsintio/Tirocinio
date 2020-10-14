within BIOMD404;
class Class_elmt_event_2 "Remove ASP" annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI40\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-11-27T22:01:46Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                              </annotation>"));

    Boolean trigger;
    Real    value_elmt_asp;

    equation
        trigger = (time >= 10.0);
        algorithm
            value_elmt_asp := 0.0;
end Class_elmt_event_2;
