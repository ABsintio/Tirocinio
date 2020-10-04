within BIOMD475;
class Parameters

    input Real elmt_species_16;
    input Real elmt_species_17;
    input Real elmt_species_19;
    input Real elmt_species_20;
    input Real elmt_species_21;
    input Real elmt_species_22;
    input Real elmt_species_11;
    input Real elmt_species_12;
    input Real elmt_species_14;

    Real elmt_parameter_1(unit = "") "PCNA_sum";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI3\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2013-09-06T11:23:40Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));


    initial equation


    equation
        elmt_parameter_1 = (elmt_species_12 + elmt_species_19 + elmt_species_22 + elmt_species_11 + elmt_species_14 + elmt_species_17 + elmt_species_21 + elmt_species_20 + elmt_species_16);

end Parameters;
