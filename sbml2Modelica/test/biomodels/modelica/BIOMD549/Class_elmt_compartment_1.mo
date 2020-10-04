within BIOMD549;
class Class_elmt_compartment_1

    input Real elmt_parameter_5;
    input Real elmt_parameter_4;
    input Real elmt_parameter_3;
    input Real elmt_parameter_2;
    input Real elmt_parameter_1;

    Real elmt_compartment_1(unit = "") "Synovium";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI2\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-29T16:44:01Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_2_conc(unit = "");
    Real elmt_species_2_amount(unit = "");
    Real elmt_species_2(unit = "") "p";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI4\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-25T11:20:53Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_1_conc(unit = "");
    Real elmt_species_1_amount(unit = "");
    Real elmt_species_1(unit = "") "a";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI3\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-07-25T11:27:57Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment_1 = 1.0;
        elmt_species_2_conc = 0.0203298264712407;
        elmt_species_1_conc = 0.00577667577789773;


    equation
        assert(elmt_compartment_1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_1) = 0;
        elmt_species_2 = elmt_species_2_conc;
        elmt_species_1 = elmt_species_1_conc;
        der(elmt_species_2_amount / elmt_compartment_1) = (((- elmt_parameter_5) * elmt_species_2) + ((1.0 / (1.0 + Functions.pow(elmt_species_1, 2.0))) * (elmt_parameter_1 + (elmt_parameter_2 * (Functions.pow(elmt_species_2, 2.0) / (1.0 + Functions.pow(elmt_species_2, 2.0)))))));
        der(elmt_species_1_amount / elmt_compartment_1) = ((- elmt_species_1) + (elmt_parameter_4 * (Functions.pow(elmt_species_2, 2.0) / (Functions.pow(elmt_parameter_3, 2.0) + Functions.pow(elmt_species_2, 2.0)))));

    algorithm
        elmt_species_2_conc := elmt_species_2_amount / elmt_compartment_1;
        elmt_species_1_conc := elmt_species_1_amount / elmt_compartment_1;
end Class_elmt_compartment_1;
