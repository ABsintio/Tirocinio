within BIOMD628;
class Class_elmt_event_1 "Ca spike on" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI275\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-07T13:39:03Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));

    input Real elmt_parameter_8;
    input Real elmt_parameter_6;
    Boolean trigger;
    Real    value_elmt_parameter_7;
    Real    value_elmt_parameter_1;

    equation
        trigger = Functions.eq(elmt_parameter_6, 1.0);
        algorithm
            value_elmt_parameter_7 := time;
            value_elmt_parameter_1 := elmt_parameter_8;
end Class_elmt_event_1;
