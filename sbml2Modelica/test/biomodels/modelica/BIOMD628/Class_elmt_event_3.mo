within BIOMD628;
class Class_elmt_event_3 "Ca_spikes" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI277\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-12T22:32:44Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));

    input Real elmt_ModelValue_131;
    input Real elmt_ModelValue_130;
    input Real elmt_parameter_3;
    input Real elmt_ModelValue_128;
    Boolean trigger;
    Real    value_elmt_parameter_6;
    Real    value_elmt_parameter_3;

    equation
        trigger = (Functions.eq(time, elmt_ModelValue_128) or (Functions.eq(time, (elmt_ModelValue_128 + (elmt_parameter_3 / elmt_ModelValue_131))) and (time < (elmt_ModelValue_128 + (elmt_ModelValue_130 / elmt_ModelValue_131)))));
        algorithm
            value_elmt_parameter_6 := 1.0;
            value_elmt_parameter_3 := (pre(elmt_parameter_3) + 1.0);
end Class_elmt_event_3;
