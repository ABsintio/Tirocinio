within BIOMD576;
class Class_elmt_blood

    input Real elmt_cortisolTransport;
    input Real elmt_product124;
    input Real elmt_reactant121;
    input Real elmt_reactant120;
    input Real elmt_cort_distribution;
    input Real elmt_product122;
    input Real elmt_Cortisol_CBG;
    input Real elmt_reactant118;
    input Real elmt_reactant117;
    input Real elmt_Cort_Alb;
    input Real elmt_product119;
    input Real elmt_reactant68;

    Real elmt_blood(unit = "m3.0") "blood";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI2\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-06-02T23:23:00Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_Alb_conc(unit = "m-120.0.");
    Real elmt_Alb_amount(unit = "m-117.0.");
    Real elmt_Alb(unit = "m-120.0.") "Alb";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI42\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-06-15T00:26:25Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_CBG_conc(unit = "m-114.0.");
    Real elmt_CBG_amount(unit = "m-111.0.");
    Real elmt_CBG(unit = "m-114.0.") "CBG";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI40\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-06-15T00:26:14Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_CortAdded_conc(unit = "m-126.0.");
    Real elmt_CortAdded_amount(unit = "m-123.0.");
    Real elmt_CortAdded(unit = "m-126.0.") "CortAdded";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI44\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-06-15T01:53:46Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_s2_conc(unit = "m-108.0.");
    Real elmt_s2_amount(unit = "m-105.0.");
    Real elmt_s2(unit = "m-108.0.") "CortOUT";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI38\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2010-08-01T19:14:58Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_DEXout_conc(unit = "m-111.0.");
    Real elmt_DEXout_amount(unit = "m-108.0.");
    Real elmt_DEXout(unit = "m-111.0.") "DEXout";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI39\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-06-05T16:40:08Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_Alb_CortOUT_conc(unit = "m-123.0.");
    Real elmt_Alb_CortOUT_amount(unit = "m-120.0.");
    Real elmt_Alb_CortOUT(unit = "m-123.0.") "Alb_CortOUT";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI43\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-06-15T00:25:34Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_CBG_CortOUT_conc(unit = "m-117.0.");
    Real elmt_CBG_CortOUT_amount(unit = "m-114.0.");
    Real elmt_CBG_CortOUT(unit = "m-117.0.") "CBG_CortOUT";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI41\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2011-06-15T00:26:41Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_blood = 5.0;
        elmt_Alb_conc = 60000.0178341918;
        elmt_CBG_conc = 550.000163480092;
        elmt_CortAdded_conc = 0.0;
        elmt_s2_conc = 0.0;
        elmt_DEXout_conc = 0.0;
        elmt_Alb_CortOUT_conc = 0.0;
        elmt_CBG_CortOUT_conc = 0.0;


    equation
        assert(elmt_blood >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_blood) = 0;
        elmt_Alb = elmt_Alb_conc;
        elmt_CBG = elmt_CBG_conc;
        elmt_CortAdded = elmt_CortAdded_conc;
        elmt_s2 = elmt_s2_conc;
        elmt_DEXout = elmt_DEXout_conc;
        elmt_Alb_CortOUT = elmt_Alb_CortOUT_conc;
        elmt_CBG_CortOUT = elmt_CBG_CortOUT_conc;
        der(elmt_CortAdded_amount) = 0;
        der(elmt_DEXout_amount) = 0;
        der(elmt_Alb_amount) = (- (elmt_Cort_Alb * elmt_reactant120));
        der(elmt_CBG_amount) = (- (elmt_Cortisol_CBG * elmt_reactant118));
        der(elmt_s2_amount) = ((- (elmt_cortisolTransport * elmt_reactant68)) + (elmt_cort_distribution * elmt_product124) + (- (elmt_Cort_Alb * elmt_reactant121)) + (- (elmt_Cortisol_CBG * elmt_reactant117)));
        der(elmt_Alb_CortOUT_amount) = (elmt_Cort_Alb * elmt_product122);
        der(elmt_CBG_CortOUT_amount) = (elmt_Cortisol_CBG * elmt_product119);

    algorithm
        elmt_Alb_conc := elmt_Alb_amount / elmt_blood;
        elmt_CBG_conc := elmt_CBG_amount / elmt_blood;
        elmt_CortAdded_conc := elmt_CortAdded_amount / elmt_blood;
        elmt_s2_conc := elmt_s2_amount / elmt_blood;
        elmt_DEXout_conc := elmt_DEXout_amount / elmt_blood;
        elmt_Alb_CortOUT_conc := elmt_Alb_CortOUT_amount / elmt_blood;
        elmt_CBG_CortOUT_conc := elmt_CBG_CortOUT_amount / elmt_blood;
end Class_elmt_blood;
