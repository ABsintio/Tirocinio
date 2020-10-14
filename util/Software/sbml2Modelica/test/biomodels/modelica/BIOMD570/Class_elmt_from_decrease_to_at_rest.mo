within BIOMD570;
class Class_elmt_from_decrease_to_at_rest "from decrease to at_rest" annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI65\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-16T12:48:21Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));

    input Real elmt_ModelValue_52;
    input Real elmt_ModelValue_53;
    Boolean trigger;
    Real    value_elmt_is_falling;

    equation
        trigger = Functions.eq(time, (elmt_ModelValue_53 + elmt_ModelValue_52));
        algorithm
            value_elmt_is_falling := 0.0;
end Class_elmt_from_decrease_to_at_rest;
