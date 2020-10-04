within BIOMD543;
class Class_elmt_default

    input Real elmt_reactant340;
    input Real elmt_reaction_69;
    input Real elmt_reaction_70;
    input Real elmt_product342;
    input Real elmt_reactant346;
    input Real elmt_reaction_67;
    input Real elmt_reaction_68;
    input Real elmt_product347;
    input Real elmt_reactant343;
    input Real elmt_product339;

    Real elmt_default(unit = "m3.0") "Extracellular";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI2\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-06-19T10:08:59Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_17_conc(unit = "m-9.0.");
    Real elmt_species_17_amount(unit = "m-6.0.");
    Real elmt_species_17(unit = "m-9.0.") "(IL6-gp80-gp130-JAK)2*-STAT1C-STAT3C";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_1_conc(unit = "m-3.0.");
    Real elmt_species_1_amount(unit = "");
    Real elmt_species_1(unit = "m-3.0.") "IL6";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI6\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-11-22T17:12:33Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_67_conc(unit = "m-12.0.");
    Real elmt_species_67_amount(unit = "m-9.0.");
    Real elmt_species_67(unit = "m-12.0.") "(IL6-gp80-gp130-JAK)2*-STAT1C";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_species_79_conc(unit = "m-6.0.");
    Real elmt_species_79_amount(unit = "m-3.0.");
    Real elmt_species_79(unit = "m-6.0.") "IFN";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI7\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-05-09T15:19:04Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_default = 1.0;
        elmt_species_17_conc = 0.0;
        elmt_species_1_conc = 0.0;
        elmt_species_67_conc = 0.0;
        elmt_species_79_conc = 0.1;


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;
        elmt_species_17 = elmt_species_17_conc;
        elmt_species_1 = elmt_species_1_conc;
        elmt_species_67 = elmt_species_67_conc;
        elmt_species_79 = elmt_species_79_conc;
        der(elmt_species_1_amount) = 0;
        der(elmt_species_79_amount) = 0;
        der(elmt_species_17_amount) = ((- (elmt_reaction_70 * elmt_reactant346)) + (- (elmt_reaction_69 * elmt_reactant343)) + (elmt_reaction_67 * elmt_product339) + (elmt_reaction_68 * elmt_product342));
        der(elmt_species_67_amount) = ((elmt_reaction_70 * elmt_product347) + (- (elmt_reaction_68 * elmt_reactant340)));

    algorithm
        elmt_species_17_conc := elmt_species_17_amount / elmt_default;
        elmt_species_1_conc := elmt_species_1_amount / elmt_default;
        elmt_species_67_conc := elmt_species_67_amount / elmt_default;
        elmt_species_79_conc := elmt_species_79_amount / elmt_default;
end Class_elmt_default;
