within BIOMD583;
class Class_elmt_Lumen

    input Real elmt_reactant41;
    input Real elmt_product33;
    input Real elmt_reactant48;
    input Real elmt_reactant49;
    input Real elmt_reactant46;
    input Real elmt_tDC_Migration;
    input Real elmt_Cdiff_Growth;
    input Real elmt_Commensal_Harmful_Death;
    input Real elmt_Cdiff_Death;
    input Real elmt_tDC_Degradation;
    input Real elmt_N_Degradation;
    input Real elmt_product40;
    input Real elmt_Commensal_Regrowth;
    input Real elmt_tDC_Production;
    input Real elmt_reactant4;
    input Real elmt_reactant15;
    input Real elmt_reactant37;
    input Real elmt_N_Activation_Migration;
    input Real elmt_reactant39;
    input Real elmt_reactant10;
    input Real elmt_reactant32;
    input Real elmt_reactant12;
    input Real elmt_eDC_Production;
    input Real elmt_Commensal_Death;
    input Real elmt_product16;
    input Real elmt_product38;
    input Real elmt_product14;
    input Real elmt_Treg_Differentiation;

    Real elmt_Lumen(unit = "") "Lumen";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI1\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T13:03:38Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Cdiff_conc(unit = "");
    Real elmt_Cdiff_amount(unit = "");
    Real elmt_Cdiff(unit = "") "Cdiff";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI5\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T13:25:57Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_tDC_LP_conc(unit = "");
    Real elmt_tDC_LP_amount(unit = "");
    Real elmt_tDC_LP(unit = "") "tDC_LP";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI8\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-09-19T12:35:39Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_tDC_MLN_conc(unit = "");
    Real elmt_tDC_MLN_amount(unit = "");
    Real elmt_tDC_MLN(unit = "") "tDC_MLN";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI9\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-09-19T12:35:40Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Commensal_Beneficial_conc(unit = "");
    Real elmt_Commensal_Beneficial_amount(unit = "");
    Real elmt_Commensal_Beneficial(unit = "") "Commensal_Beneficial";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI6\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-11T11:27:43Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Commensal_Dead_conc(unit = "");
    Real elmt_Commensal_Dead_amount(unit = "");
    Real elmt_Commensal_Dead(unit = "") "Commensal_Dead";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI7\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-11T22:01:41Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Commensal_Harmful_conc(unit = "");
    Real elmt_Commensal_Harmful_amount(unit = "");
    Real elmt_Commensal_Harmful(unit = "") "Commensal_Harmful";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI10\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-12-09T13:33:37Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_N_Lum_conc(unit = "");
    Real elmt_N_Lum_amount(unit = "");
    Real elmt_N_Lum(unit = "") "N_Lum";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI11\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-08T13:52:16Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Lumen = 1.0;
        elmt_Cdiff_conc = 484.0;
        elmt_tDC_LP_conc = 0.0;
        elmt_tDC_MLN_conc = 0.0;
        elmt_Commensal_Beneficial_conc = 1.0;
        elmt_Commensal_Dead_conc = 5.0E10;
        elmt_Commensal_Harmful_conc = 1.5E10;
        elmt_N_Lum_conc = 0.0;


    equation
        assert(elmt_Lumen >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Lumen) = 0;
        elmt_Cdiff = elmt_Cdiff_conc;
        elmt_tDC_LP = elmt_tDC_LP_conc;
        elmt_tDC_MLN = elmt_tDC_MLN_conc;
        elmt_Commensal_Beneficial = elmt_Commensal_Beneficial_conc;
        elmt_Commensal_Dead = elmt_Commensal_Dead_conc;
        elmt_Commensal_Harmful = elmt_Commensal_Harmful_conc;
        elmt_N_Lum = elmt_N_Lum_conc;
        der(elmt_Cdiff_amount) = ((elmt_Cdiff_Growth * elmt_product16) + (- (elmt_Cdiff_Growth * elmt_reactant15)) + (- (elmt_Cdiff_Death * elmt_reactant12)) + (- (elmt_tDC_Production * elmt_reactant37)) + (- (elmt_eDC_Production * elmt_reactant10)));
        der(elmt_tDC_LP_amount) = ((- (elmt_tDC_Migration * elmt_reactant39)) + (elmt_tDC_Production * elmt_product38));
        der(elmt_tDC_MLN_amount) = ((elmt_tDC_Migration * elmt_product40) + (- (elmt_tDC_Degradation * elmt_reactant41)) + (- (elmt_Treg_Differentiation * elmt_reactant46)));
        der(elmt_Commensal_Beneficial_amount) = (- (elmt_Commensal_Regrowth * elmt_reactant32));
        der(elmt_Commensal_Dead_amount) = ((elmt_Commensal_Regrowth * elmt_product33) + (- (elmt_Commensal_Death * elmt_reactant49)));
        der(elmt_Commensal_Harmful_amount) = (- (elmt_Commensal_Harmful_Death * elmt_reactant48));
        der(elmt_N_Lum_amount) = ((- (elmt_N_Degradation * elmt_reactant4)) + (elmt_N_Activation_Migration * elmt_product14));

    algorithm
        elmt_Cdiff_conc := elmt_Cdiff_amount / elmt_Lumen;
        elmt_tDC_LP_conc := elmt_tDC_LP_amount / elmt_Lumen;
        elmt_tDC_MLN_conc := elmt_tDC_MLN_amount / elmt_Lumen;
        elmt_Commensal_Beneficial_conc := elmt_Commensal_Beneficial_amount / elmt_Lumen;
        elmt_Commensal_Dead_conc := elmt_Commensal_Dead_amount / elmt_Lumen;
        elmt_Commensal_Harmful_conc := elmt_Commensal_Harmful_amount / elmt_Lumen;
        elmt_N_Lum_conc := elmt_N_Lum_amount / elmt_Lumen;
end Class_elmt_Lumen;
