within BIOMD429;
class Class_elmt_compartment_2

    input Real elmt_product12;
    input Real elmt_reaction_8;
    input Real elmt_species_1;
    input Real elmt_compartment_1;
    input Real elmt_compartment_3;

    Real elmt_compartment_2(unit = "") "Vex";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI3\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2010-10-05T15:24:07Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                                                                                                  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_13_amount(unit = "");
    Real elmt_species_13_conc(unit = "");
    Real elmt_species_13(unit = "") "Glyex";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI16\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2010-10-05T15:14:41Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                                                                                                  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment_2 = (1000.0 * elmt_compartment_3);
        elmt_species_13_amount = (((elmt_species_1 / elmt_compartment_1) / 100.0) * elmt_compartment_2);


    equation
        assert(elmt_compartment_2 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_2) = 0;
        elmt_species_13 = elmt_species_13_amount;
        der(elmt_species_13_amount) = (elmt_reaction_8 * elmt_product12);

    algorithm
        elmt_species_13_conc := elmt_species_13_amount / elmt_compartment_2;
end Class_elmt_compartment_2;
