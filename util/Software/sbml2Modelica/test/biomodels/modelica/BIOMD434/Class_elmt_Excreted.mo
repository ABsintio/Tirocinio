within BIOMD434;
class Class_elmt_Excreted

    input Real elmt_product9;
    input Real elmt_reaction_8;
    input Real elmt_reaction_5;
    input Real elmt_product15;

    Real elmt_Excreted(unit = "") "Excreted";
    Real elmt_species_6_conc(unit = "");
    Real elmt_species_6_amount(unit = "");
    Real elmt_species_6(unit = "") "EBS";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI8\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T15:44:59Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_8_conc(unit = "");
    Real elmt_species_8_amount(unit = "");
    Real elmt_species_8(unit = "") "EC";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI10\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T16:02:36Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Excreted = 1.0;
        elmt_species_6_conc = 0.0;
        elmt_species_8_conc = 0.0;


    equation
        assert(elmt_Excreted >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Excreted) = 0;
        elmt_species_6 = elmt_species_6_conc;
        elmt_species_8 = elmt_species_8_conc;
        der(elmt_species_6_amount) = (elmt_reaction_5 * elmt_product9);
        der(elmt_species_8_amount) = (elmt_reaction_8 * elmt_product15);

    algorithm
        elmt_species_6_conc := elmt_species_6_amount / elmt_Excreted;
        elmt_species_8_conc := elmt_species_8_amount / elmt_Excreted;
end Class_elmt_Excreted;
