within BIOMD434;
class Class_elmt_Intestine

    input Real elmt_reactant6;
    input Real elmt_reactant8;
    input Real elmt_product1;
    input Real elmt_reactant14;
    input Real elmt_reaction_3;
    input Real elmt_reaction_4;
    input Real elmt_reaction_1;
    input Real elmt_reaction_2;
    input Real elmt_product5;
    input Real elmt_product3;
    input Real elmt_reactant12;
    input Real elmt_reaction_7;
    input Real elmt_reaction_8;
    input Real elmt_reaction_5;
    input Real elmt_product19;
    input Real elmt_reaction_10;

    Real elmt_Intestine(unit = "") "Intestine";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_2_conc(unit = "");
    Real elmt_species_2_amount(unit = "");
    Real elmt_species_2(unit = "") "IC";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI4\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T15:37:28Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_3_conc(unit = "");
    Real elmt_species_3_amount(unit = "");
    Real elmt_species_3(unit = "") "ICS";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI5\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T15:32:15Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                                </annotation>"));
    Real elmt_species_5_conc(unit = "");
    Real elmt_species_5_amount(unit = "");
    Real elmt_species_5(unit = "") "IBS";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI7\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-08-21T15:37:10Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Intestine = 1.0;
        elmt_species_2_conc = 3150.0;
        elmt_species_3_conc = 0.0;
        elmt_species_5_conc = 467.0;


    equation
        assert(elmt_Intestine >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Intestine) = 0;
        elmt_species_2 = elmt_species_2_conc;
        elmt_species_3 = elmt_species_3_conc;
        elmt_species_5 = elmt_species_5_conc;
        der(elmt_species_3_amount) = 0;
        der(elmt_species_2_amount) = ((elmt_reaction_1 * elmt_product1) + (elmt_reaction_2 * elmt_product3) + (- (elmt_reaction_7 * elmt_reactant12)) + (- (elmt_reaction_8 * elmt_reactant14)) + (elmt_reaction_10 * elmt_product19));
        der(elmt_species_5_amount) = ((elmt_reaction_3 * elmt_product5) + (- (elmt_reaction_4 * elmt_reactant6)) + (- (elmt_reaction_5 * elmt_reactant8)));

    algorithm
        elmt_species_2_conc := elmt_species_2_amount / elmt_Intestine;
        elmt_species_3_conc := elmt_species_3_amount / elmt_Intestine;
        elmt_species_5_conc := elmt_species_5_amount / elmt_Intestine;
end Class_elmt_Intestine;
