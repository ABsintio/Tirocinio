within BIOMD570;
class Class_elmt_from_increase_to_stable "from increase to stable" annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI63\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-16T12:45:48Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));

    input Real elmt_ModelValue_52;
    Boolean trigger;
    Real    value_elmt_is_maximum;
    Real    value_elmt_is_rising;

    equation
        trigger = Functions.eq(time, elmt_ModelValue_52);
        algorithm
            value_elmt_is_maximum := 1.0;
            value_elmt_is_rising := 0.0;
end Class_elmt_from_increase_to_stable;
