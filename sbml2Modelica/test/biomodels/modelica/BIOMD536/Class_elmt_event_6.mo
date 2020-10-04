within BIOMD536;
class Class_elmt_event_6 "Week6" annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI15\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-31T16:07:00Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));

    input Real elmt_mwf345ed7a_0622_403c_b816_c8749a2c9ded;
    input Real elmt_ModelValue_4;
    input Real elmt_ModelValue_3;
    Boolean trigger;
    Boolean execution;
    Boolean active;
    Real    trigtime;
    Real    delta;
    Real    value_elmt_mwf345ed7a_0622_403c_b816_c8749a2c9ded;

    equation
        trigger = (time >= 1008.0);
        when trigger then
            trigtime = time;
            delta = 0.0;
            active = true;
            execution = delta <= 0.0;
        elsewhen time >= trigtime + delta then
            execution = pre(active);
            active = false;
        elsewhen not trigger then
            active = false;
        end when;

        algorithm
            when execution then
                value_elmt_mwf345ed7a_0622_403c_b816_c8749a2c9ded := (pre(elmt_mwf345ed7a_0622_403c_b816_c8749a2c9ded) + ((elmt_ModelValue_3 + elmt_ModelValue_4) * 2.346));
            end when;
end Class_elmt_event_6;
