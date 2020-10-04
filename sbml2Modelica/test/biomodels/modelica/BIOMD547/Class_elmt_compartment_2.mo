within BIOMD547;
class Class_elmt_compartment_2

    input Real elmt_parameter_9;
    input Real elmt_parameter_8;
    input Real elmt_parameter_7;
    input Real elmt_parameter_6;
    input Real elmt_parameter_5;

    Real elmt_compartment_2(unit = "") "Medium";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI2\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-02-16T17:53:25Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_species_6_amount(unit = "");
    Real elmt_species_6_conc(unit = "");
    Real elmt_species_6(unit = "") "AsIIIex";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI6\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-02-16T17:58:36Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment_2 = 5.0E-11;


    equation
        assert(elmt_compartment_2 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_2) = 0;
        elmt_species_6 = elmt_species_6_amount;
        elmt_species_6_amount = ((if (time < elmt_parameter_7) then elmt_parameter_5 else (if (time > elmt_parameter_8) then ((elmt_parameter_5 + elmt_parameter_6) * exp(((elmt_parameter_8 - time) / elmt_parameter_9))) else (elmt_parameter_5 + (elmt_parameter_6 * (1.0 - exp(((elmt_parameter_7 - time) / elmt_parameter_9))))))) * elmt_compartment_2);

    algorithm
        elmt_species_6_conc := elmt_species_6_amount / elmt_compartment_2;
end Class_elmt_compartment_2;
