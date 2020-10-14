within BIOMD552;
class Class_elmt_Brain

    input Real elmt_reactant2;
    input Real elmt_Effect_of_extracellular_ACh;
    input Real elmt_reactant3;
    input Real elmt_Abeta_formation_from_APP;
    input Real elmt_product1;
    input Real elmt_Loss_of_intracellular_choline;
    input Real elmt_Decrease_in_the_extracellular_concentration_of_beta_amyloid;
    input Real elmt_reactant0;

    Real elmt_Brain(unit = "") "Brain";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_aRel_conc(unit = "");
    Real elmt_aRel_amount(unit = "");
    Real elmt_aRel(unit = "") "aRel";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI3\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-10-18T11:57:59Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_a_conc(unit = "");
    Real elmt_a_amount(unit = "");
    Real elmt_a(unit = "") "a";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI1\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-10-18T11:46:09Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_b_conc(unit = "");
    Real elmt_b_amount(unit = "");
    Real elmt_b(unit = "") "b";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI2\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-10-18T11:47:15Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Brain = 1.0;
        elmt_a_conc = 50.0;
        elmt_b_conc = 0.0;


    equation
        assert(elmt_Brain >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Brain) = 0;
        elmt_aRel = elmt_aRel_conc;
        elmt_a = elmt_a_conc;
        elmt_b = elmt_b_conc;
        elmt_aRel_amount = (elmt_a / 50.0) * elmt_Brain;
        der(elmt_a_amount) = (- (elmt_Loss_of_intracellular_choline * elmt_reactant0));
        der(elmt_b_amount) = ((- (elmt_Effect_of_extracellular_ACh * elmt_reactant2)) + (elmt_Abeta_formation_from_APP * elmt_product1) + (- (elmt_Decrease_in_the_extracellular_concentration_of_beta_amyloid * elmt_reactant3)));

    algorithm
        elmt_aRel_conc := elmt_aRel_amount / elmt_Brain;
        elmt_a_conc := elmt_a_amount / elmt_Brain;
        elmt_b_conc := elmt_b_amount / elmt_Brain;
end Class_elmt_Brain;
