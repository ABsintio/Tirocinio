within BIOMD573;
class Class_elmt_compartment

    input Real elmt_Kvc;
    input Real elmt_reactant1;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_reactant8;
    input Real elmt_product10;
    input Real elmt_product0;
    input Real elmt_Kv;
    input Real elmt_Kdv;
    input Real elmt_Kcv;
    input Real elmt_product5;
    input Real elmt_reactant11;
    input Real elmt_product2;
    input Real elmt_reactant9;
    input Real elmt_Kb;
    input Real elmt_Kc;
    input Real elmt_Kdc;

    Real elmt_compartment(unit = "") "cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_V_conc(unit = "");
    Real elmt_V_amount(unit = "");
    Real elmt_V(unit = "") "V";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI1\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-02-07T21:45:58Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C_conc(unit = "");
    Real elmt_C_amount(unit = "");
    Real elmt_C(unit = "") "C";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI2\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-02-07T21:46:03Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_V_conc = 1.0;
        elmt_C_conc = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_V = elmt_V_conc;
        elmt_C = elmt_C_conc;
        der(elmt_V_amount) = ((- (elmt_Kvc * elmt_reactant8)) + (elmt_Kvc * elmt_product10) + (- (elmt_Kv * elmt_reactant1)) + (elmt_Kv * elmt_product2) + (- (elmt_Kdv * elmt_reactant6)) + (- (elmt_Kcv * elmt_reactant3)) + (elmt_Kb * elmt_product0));
        der(elmt_C_amount) = ((- (elmt_Kvc * elmt_reactant9)) + (- (elmt_Kcv * elmt_reactant4)) + (elmt_Kcv * elmt_product5) + (elmt_Kc * elmt_product7) + (- (elmt_Kdc * elmt_reactant11)));

    algorithm
        elmt_V_conc := elmt_V_amount / elmt_compartment;
        elmt_C_conc := elmt_C_amount / elmt_compartment;
end Class_elmt_compartment;
