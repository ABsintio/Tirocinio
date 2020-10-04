within BIOMD404;
class Class_elmt_event_1 "Add ASP" annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI39\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-11-27T22:01:40Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                              </annotation>"));

    input Real elmt_parameter_1;
    Boolean trigger;
    Real    value_elmt_asp;

    equation
        trigger = (time >= 5.0);
        algorithm
            value_elmt_asp := elmt_parameter_1;
end Class_elmt_event_1;
