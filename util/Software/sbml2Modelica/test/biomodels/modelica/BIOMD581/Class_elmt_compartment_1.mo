within BIOMD581;
class Class_elmt_compartment_1

    input Real elmt_product95;
    input Real elmt_reactant31;
    input Real elmt_product33;
    input Real elmt_reactant93;
    input Real elmt_reactant48;
    input Real elmt_reaction_2;
    input Real elmt_product91;
    input Real elmt_reactant56;
    input Real elmt_reactant89;
    input Real elmt_reactant13;
    input Real elmt_reaction_15;
    input Real elmt_reaction_5;
    input Real elmt_reaction_19;
    input Real elmt_product49;
    input Real elmt_reaction_41;
    input Real elmt_product15;
    input Real elmt_product57;
    input Real elmt_reaction_23;

    Real elmt_compartment_1(unit = "") "Membrane";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI2\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2010-06-16T12:24:42Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_15_conc(unit = "");
    Real elmt_species_15_amount(unit = "");
    Real elmt_species_15(unit = "") "IR_beta_refractory";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI6\">
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/uniprot/P06213 \"/>
                  </rdf:Bag>
                </CopasiMT:is>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_41_conc(unit = "");
    Real elmt_species_41_amount(unit = "");
    Real elmt_species_41(unit = "") "Insulin";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI7\">
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/uniprot/P01308 \"/>
                  </rdf:Bag>
                </CopasiMT:is>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_20_conc(unit = "");
    Real elmt_species_20_amount(unit = "");
    Real elmt_species_20(unit = "") "IR_beta";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI4\">
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/uniprot/P06213 \"/>
                  </rdf:Bag>
                </CopasiMT:is>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_21_conc(unit = "");
    Real elmt_species_21_amount(unit = "");
    Real elmt_species_21(unit = "") "IR_beta_pY1146";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI5\">
                <CopasiMT:is>
                  <rdf:Bag>
                    <rdf:li rdf:resource=\"http://identifiers.org/uniprot/P06213 \"/>
                  </rdf:Bag>
                </CopasiMT:is>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment_1 = 1.0;
        elmt_species_15_conc = 0.0;
        elmt_species_41_conc = 100.0;
        elmt_species_20_conc = 12.1175;
        elmt_species_21_conc = 0.0;


    equation
        assert(elmt_compartment_1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_1) = 0;
        elmt_species_15 = elmt_species_15_conc;
        elmt_species_41 = elmt_species_41_conc;
        elmt_species_20 = elmt_species_20_conc;
        elmt_species_21 = elmt_species_21_conc;
        der(elmt_species_41_amount) = 0;
        der(elmt_species_15_amount) = ((elmt_reaction_2 * elmt_product49) + (- (elmt_reaction_5 * elmt_reactant56)));
        der(elmt_species_20_amount) = ((- (elmt_reaction_41 * elmt_reactant31)) + (elmt_reaction_5 * elmt_product57));
        der(elmt_species_21_amount) = ((elmt_reaction_41 * elmt_product33) + (elmt_reaction_23 * elmt_product15) + (- (elmt_reaction_23 * elmt_reactant13)) + (- (elmt_reaction_2 * elmt_reactant48)) + (elmt_reaction_15 * elmt_product91) + (- (elmt_reaction_15 * elmt_reactant89)) + (elmt_reaction_19 * elmt_product95) + (- (elmt_reaction_19 * elmt_reactant93)));

    algorithm
        elmt_species_15_conc := elmt_species_15_amount / elmt_compartment_1;
        elmt_species_41_conc := elmt_species_41_amount / elmt_compartment_1;
        elmt_species_20_conc := elmt_species_20_amount / elmt_compartment_1;
        elmt_species_21_conc := elmt_species_21_amount / elmt_compartment_1;
end Class_elmt_compartment_1;
