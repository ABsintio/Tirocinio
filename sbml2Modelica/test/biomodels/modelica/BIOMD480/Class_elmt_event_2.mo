within BIOMD480;
class Class_elmt_event_2 "3rd Dose" annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI150\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-02-22T10:10:18Z</dcterms:W3CDTF>
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
    Real    value_elmt_s1;
    Real    value_elmt_species_10;

    equation
        trigger = (time >= 4.0);
        algorithm
            value_elmt_s1 := (pre(elmt_s1) + (elmt_species_7 * elmt_parameter_6));
            value_elmt_species_10 := (pre(elmt_species_10) + elmt_species_11);
end Class_elmt_event_2;
