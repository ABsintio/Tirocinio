within BIOMD433;
class Class_elmt_compartment_2

    Real elmt_compartment_2(unit = "") "No Name";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI3\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-10-28T13:34:03Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
                                                                            </annotation>"));

    initial equation
        elmt_compartment_2 = 1.0;


    equation
        assert(elmt_compartment_2 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_2) = 0;

    algorithm
end Class_elmt_compartment_2;
