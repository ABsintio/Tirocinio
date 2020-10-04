within BIOMD570;
class Class_elmt_compartment_2

    Real elmt_compartment_2(unit = "") "Arteries";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_15_amount(unit = "");
    Real elmt_species_15_conc(unit = "");
    Real elmt_species_15(unit = "") "GLC";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI18\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-17T11:20:54Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"http://identifiers.org/chebi/CHEBI:4167\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_16_amount(unit = "");
    Real elmt_species_16_conc(unit = "");
    Real elmt_species_16(unit = "") "LAC";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI19\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-14T12:17:00Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"http://identifiers.org/chebi/CHEBI:422\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_14_amount(unit = "");
    Real elmt_species_14_conc(unit = "");
    Real elmt_species_14(unit = "") "O2";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI17\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-16T15:31:38Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:is rdf:resource=\"http://identifiers.org/chebi/CHEBI:15379\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment_2 = 1.0;
        elmt_species_15_amount = 4.8;
        elmt_species_16_amount = 0.313;
        elmt_species_14_amount = 8.34;


    equation
        assert(elmt_compartment_2 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_2) = 0;
        elmt_species_15 = elmt_species_15_amount;
        elmt_species_16 = elmt_species_16_amount;
        elmt_species_14 = elmt_species_14_amount;
        der(elmt_species_15_amount) = 0;
        der(elmt_species_16_amount) = 0;
        der(elmt_species_14_amount) = 0;

    algorithm
        elmt_species_15_conc := elmt_species_15_amount / elmt_compartment_2;
        elmt_species_16_conc := elmt_species_16_amount / elmt_compartment_2;
        elmt_species_14_conc := elmt_species_14_amount / elmt_compartment_2;
end Class_elmt_compartment_2;
