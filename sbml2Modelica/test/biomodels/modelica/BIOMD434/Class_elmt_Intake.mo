within BIOMD434;
class Class_elmt_Intake

    Real elmt_Intake(unit = "") "Intake";
    Real elmt_species_1_conc(unit = "");
    Real elmt_species_1_amount(unit = "");
    Real elmt_species_1(unit = "") "DC";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI3\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T15:15:53Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Intake = 1.0;
        elmt_species_1_conc = 304.0;


    equation
        assert(elmt_Intake >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Intake) = 0;
        elmt_species_1 = elmt_species_1_conc;
        der(elmt_species_1_amount) = 0;

    algorithm
        elmt_species_1_conc := elmt_species_1_amount / elmt_Intake;
end Class_elmt_Intake;
