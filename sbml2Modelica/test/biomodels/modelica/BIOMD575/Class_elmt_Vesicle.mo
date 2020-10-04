within BIOMD575;
class Class_elmt_Vesicle

    input Real elmt_product40;
    input Real elmt_product43;
    input Real elmt_J16;
    input Real elmt_J17;
    input Real elmt_product46;
    input Real elmt_J15;

    Real elmt_Vesicle(unit = "") "Vesicle";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_V_ntox_ba_conc(unit = "");
    Real elmt_V_ntox_ba_amount(unit = "");
    Real elmt_V_ntox_ba(unit = "") "V-ntox-ba";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI72\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-31T18:25:49Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_Vesicle_0_conc(unit = "");
    Real elmt_Vesicle_0_amount(unit = "");
    Real elmt_Vesicle_0(unit = "") "Vesicle";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI73\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-04-01T18:16:12Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_V_DA_conc(unit = "");
    Real elmt_V_DA_amount(unit = "");
    Real elmt_V_DA(unit = "") "V-DA";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI71\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-31T18:13:28Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_Vesicle = 1.0;
        elmt_V_ntox_ba_conc = 0.3;
        elmt_Vesicle_0_conc = 1.0;
        elmt_V_DA_conc = 10.0;


    equation
        assert(elmt_Vesicle >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Vesicle) = 0;
        elmt_V_ntox_ba = elmt_V_ntox_ba_conc;
        elmt_Vesicle_0 = elmt_Vesicle_0_conc;
        elmt_V_DA = elmt_V_DA_conc;
        der(elmt_Vesicle_0_amount) = 0;
        der(elmt_V_ntox_ba_amount) = ((elmt_J16 * elmt_product43) + (elmt_J17 * elmt_product46));
        der(elmt_V_DA_amount) = (elmt_J15 * elmt_product40);

    algorithm
        elmt_V_ntox_ba_conc := elmt_V_ntox_ba_amount / elmt_Vesicle;
        elmt_Vesicle_0_conc := elmt_Vesicle_0_amount / elmt_Vesicle;
        elmt_V_DA_conc := elmt_V_DA_amount / elmt_Vesicle;
end Class_elmt_Vesicle;
