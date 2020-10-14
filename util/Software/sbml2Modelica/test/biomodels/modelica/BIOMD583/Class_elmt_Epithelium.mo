within BIOMD583;
class Class_elmt_Epithelium

    input Real elmt_product30;
    input Real elmt_reactant50;
    input Real elmt_product51;
    input Real elmt_M_Death;
    input Real elmt_reactant31;
    input Real elmt_product6;
    input Real elmt_reactant5;
    input Real elmt_E_i_Damage;
    input Real elmt_reactant25;
    input Real elmt_reactant27;
    input Real elmt_reactant34;
    input Real elmt_E_Inflame;
    input Real elmt_product26;
    input Real elmt_E_i_Natural_Death;
    input Real elmt_M_Activation;
    input Real elmt_product35;
    input Real elmt_E_Damage;
    input Real elmt_E_Heal;
    input Real elmt_product28;

    Real elmt_Epithelium(unit = "") "Epithelium";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI2\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T13:03:24Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_M_LP_conc(unit = "");
    Real elmt_M_LP_amount(unit = "");
    Real elmt_M_LP(unit = "") "M_LP";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI16\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-11T11:28:48Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_iDC_E_conc(unit = "");
    Real elmt_iDC_E_amount(unit = "");
    Real elmt_iDC_E(unit = "") "iDC_E";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI14\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T14:20:22Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E_i_conc(unit = "");
    Real elmt_E_i_amount(unit = "");
    Real elmt_E_i(unit = "") "E_i";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI15\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T14:13:46Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E_conc(unit = "");
    Real elmt_E_amount(unit = "");
    Real elmt_E(unit = "") "E";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI12\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T13:26:01Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E_d_conc(unit = "");
    Real elmt_E_d_amount(unit = "");
    Real elmt_E_d(unit = "") "E_d";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI13\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T13:26:02Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Epithelium = 4.0;
        elmt_M_LP_conc = 3250.0;
        elmt_iDC_E_conc = 500000.0;
        elmt_E_i_conc = 0.0;
        elmt_E_conc = 1052500.0;
        elmt_E_d_conc = 0.0;


    equation
        assert(elmt_Epithelium >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Epithelium) = 0;
        elmt_M_LP = elmt_M_LP_conc;
        elmt_iDC_E = elmt_iDC_E_conc;
        elmt_E_i = elmt_E_i_conc;
        elmt_E = elmt_E_conc;
        elmt_E_d = elmt_E_d_conc;
        der(elmt_iDC_E_amount) = 0;
        der(elmt_M_LP_amount) = ((- (elmt_M_Death * elmt_reactant31)) + (elmt_M_Activation * elmt_product30));
        der(elmt_E_i_amount) = ((elmt_E_Inflame * elmt_product26) + (- (elmt_E_i_Damage * elmt_reactant27)) + (- (elmt_E_i_Natural_Death * elmt_reactant50)));
        der(elmt_E_amount) = ((- (elmt_E_Inflame * elmt_reactant25)) + (- (elmt_E_Damage * elmt_reactant5)) + (elmt_E_Heal * elmt_product35));
        der(elmt_E_d_amount) = ((elmt_E_i_Damage * elmt_product28) + (elmt_E_i_Natural_Death * elmt_product51) + (elmt_E_Damage * elmt_product6) + (- (elmt_E_Heal * elmt_reactant34)));

    algorithm
        elmt_M_LP_conc := elmt_M_LP_amount / elmt_Epithelium;
        elmt_iDC_E_conc := elmt_iDC_E_amount / elmt_Epithelium;
        elmt_E_i_conc := elmt_E_i_amount / elmt_Epithelium;
        elmt_E_conc := elmt_E_amount / elmt_Epithelium;
        elmt_E_d_conc := elmt_E_d_amount / elmt_Epithelium;
end Class_elmt_Epithelium;
