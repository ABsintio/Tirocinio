within BIOMD547;
class Class_elmt_compartment_1

    input Real elmt_species_3;
    input Real elmt_reaction_18;
    input Real elmt_product16;
    input Real elmt_reactant26;
    input Real elmt_species_5;
    input Real elmt_parameter_38;
    input Real elmt_parameter_37;
    input Real elmt_parameter_36;
    input Real elmt_compartment_4;
    input Real elmt_compartment_3;
    input Real elmt_reaction_10;

    Real elmt_compartment_1(unit = "") "Vac";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI4\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-05-23T10:47:45Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_species_4_amount(unit = "");
    Real elmt_species_4_conc(unit = "");
    Real elmt_species_4(unit = "") "vAsGS3";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI13\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-02-16T16:55:41Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment_1 = (0.4 * elmt_compartment_3);
        elmt_species_4_amount = ((if (elmt_parameter_38 > 0.0) then ((elmt_parameter_36 * (elmt_species_5 / elmt_compartment_3) * (elmt_species_3 / elmt_compartment_4)) / elmt_parameter_37) else 0.0) * elmt_compartment_1);


    equation
        assert(elmt_compartment_1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_1) = 0;
        elmt_species_4 = elmt_species_4_amount;
        der(elmt_species_4_amount) = ((- (elmt_reaction_18 * elmt_reactant26)) + (elmt_reaction_10 * elmt_product16));

    algorithm
        elmt_species_4_conc := elmt_species_4_amount / elmt_compartment_1;
end Class_elmt_compartment_1;
