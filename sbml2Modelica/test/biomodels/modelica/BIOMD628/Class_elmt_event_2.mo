within BIOMD628;
class Class_elmt_event_2 "Ca spike off" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI276\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-07T14:42:22Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));

    input Real elmt_parameter_9;
    input Real elmt_parameter_7;
    input Real elmt_parameter_6;
    Boolean trigger;
    Real    value_elmt_parameter_6;
    Real    value_elmt_parameter_7;
    Real    value_elmt_parameter_1;

    equation
        trigger = (Functions.eq(elmt_parameter_6, 1.0) and Functions.eq(time, (elmt_parameter_7 + elmt_parameter_9)));
        algorithm
            value_elmt_parameter_6 := 0.0;
            value_elmt_parameter_7 := 0.0;
            value_elmt_parameter_1 := 0.0;
end Class_elmt_event_2;
