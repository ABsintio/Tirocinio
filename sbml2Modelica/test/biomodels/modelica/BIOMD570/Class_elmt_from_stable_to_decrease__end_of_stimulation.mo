within BIOMD570;
class Class_elmt_from_stable_to_decrease__end_of_stimulation "from stable to decrease (end of stimulation)" annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI64\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-16T12:47:21Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));

    input Real elmt_ModelValue_53;
    Boolean trigger;
    Real    value_elmt_v_stim_constant;
    Real    value_elmt_is_falling;
    Real    value_elmt_is_maximum;

    equation
        trigger = Functions.eq(time, elmt_ModelValue_53);
        algorithm
            value_elmt_v_stim_constant := 0.0;
            value_elmt_is_falling := 1.0;
            value_elmt_is_maximum := 0.0;
end Class_elmt_from_stable_to_decrease__end_of_stimulation;
