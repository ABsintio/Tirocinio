within BIOMD480;
class Class_elmt_event_1 "2nd Dose" annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI149\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-02-22T10:05:01Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                </annotation>"));

    input Real elmt_parameter_6;
    input Real elmt_s1;
    input Real elmt_species_7;
    input Real elmt_species_10;
    input Real elmt_species_11;
    Boolean trigger;
    Real    value_elmt_species_10;
    Real    value_elmt_s1;

    equation
        trigger = (time >= 2.0);
        algorithm
            value_elmt_species_10 := (pre(elmt_species_10) + elmt_species_11);
            value_elmt_s1 := (pre(elmt_s1) + (elmt_species_7 * elmt_parameter_6));
end Class_elmt_event_1;
