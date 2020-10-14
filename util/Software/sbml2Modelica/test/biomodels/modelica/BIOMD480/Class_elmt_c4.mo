within BIOMD480;
class Class_elmt_c4

    input Real elmt_re15;
    input Real elmt_reactant63;
    input Real elmt_reactant82;
    input Real elmt_reactant65;
    input Real elmt_re13;
    input Real elmt_reaction_25;
    input Real elmt_reaction_26;
    input Real elmt_product110;
    input Real elmt_reaction_23;
    input Real elmt_reactant113;
    input Real elmt_reaction_43;
    input Real elmt_reactant111;
    input Real elmt_reactant4;
    input Real elmt_product66;
    input Real elmt_product64;
    input Real elmt_reactant14;
    input Real elmt_product1;
    input Real elmt_re2;
    input Real elmt_reaction_1;
    input Real elmt_reaction_2;
    input Real elmt_product5;
    input Real elmt_reactant11;
    input Real elmt_reactant0;
    input Real elmt_reaction_17;
    input Real elmt_product126;
    input Real elmt_re4;
    input Real elmt_product15;
    input Real elmt_reactant125;

    Real elmt_c4(unit = "") "Epithelium";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI4\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-01-28T11:08:37Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s4_conc(unit = "");
    Real elmt_s4_amount(unit = "");
    Real elmt_s4(unit = "") "iDC";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI32\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2010-11-11T15:24:20Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s2_conc(unit = "");
    Real elmt_s2_amount(unit = "");
    Real elmt_s2(unit = "") "E";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI29\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2010-11-11T15:23:51Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s3_conc(unit = "");
    Real elmt_s3_amount(unit = "");
    Real elmt_s3(unit = "") "Ep";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI30\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2010-11-11T15:23:59Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_5_conc(unit = "");
    Real elmt_species_5_amount(unit = "");
    Real elmt_species_5(unit = "") "Edead";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI31\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2010-11-11T15:23:40Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_c4 = 1.0;
        elmt_s4_conc = 4501139.56260765;
        elmt_s2_conc = 10000.0;
        elmt_s3_conc = 0.0;
        elmt_species_5_conc = 0.0;


    equation
        assert(elmt_c4 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_c4) = 0;
        elmt_s4 = elmt_s4_conc;
        elmt_s2 = elmt_s2_conc;
        elmt_s3 = elmt_s3_conc;
        elmt_species_5 = elmt_species_5_conc;
        der(elmt_s4_amount) = ((- (elmt_reaction_25 * elmt_reactant111)) + (- (elmt_reaction_26 * elmt_reactant113)) + (elmt_reaction_23 * elmt_product110) + (- (elmt_reaction_17 * elmt_reactant82)) + (- (elmt_re13 * elmt_reactant11)));
        der(elmt_s2_amount) = ((- (elmt_re2 * elmt_reactant0)) + (elmt_reaction_1 * elmt_product64) + (elmt_reaction_2 * elmt_product66) + (- (elmt_re15 * elmt_reactant14)) + (- (elmt_reaction_43 * elmt_reactant125)));
        der(elmt_s3_amount) = ((elmt_re2 * elmt_product1) + (- (elmt_reaction_1 * elmt_reactant63)) + (- (elmt_re4 * elmt_reactant4)) + (elmt_reaction_43 * elmt_product126));
        der(elmt_species_5_amount) = ((- (elmt_reaction_2 * elmt_reactant65)) + (elmt_re4 * elmt_product5) + (elmt_re15 * elmt_product15));

    algorithm
        elmt_s4_conc := elmt_s4_amount / elmt_c4;
        elmt_s2_conc := elmt_s2_amount / elmt_c4;
        elmt_s3_conc := elmt_s3_amount / elmt_c4;
        elmt_species_5_conc := elmt_species_5_amount / elmt_c4;
end Class_elmt_c4;
