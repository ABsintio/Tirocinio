within BIOMD590;
class Class_elmt_compartment

    input Real elmt_r7;
    input Real elmt_r8;
    input Real elmt_r5;
    input Real elmt_r6;
    input Real elmt_utp_degradation;
    input Real elmt_reactant20;
    input Real elmt_product12;
    input Real elmt_r3;
    input Real elmt_r4;
    input Real elmt_product10;
    input Real elmt_utp_dilution;
    input Real elmt_r1;
    input Real elmt_r2;
    input Real elmt_reactant25;
    input Real elmt_reactant26;
    input Real elmt_reactant27;
    input Real elmt_reactant21;
    input Real elmt_udp_dilution;
    input Real elmt_reactant22;
    input Real elmt_reactant23;
    input Real elmt_reactant24;
    input Real elmt_reactant18;
    input Real elmt_reactant19;
    input Real elmt_reactant9;
    input Real elmt_ctp_dilution;
    input Real elmt_omp_dilution;
    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_ctp_degradation;
    input Real elmt_reactant3;
    input Real elmt_product6;
    input Real elmt_ca_dilution;
    input Real elmt_reactant5;
    input Real elmt_cp_dilution;
    input Real elmt_r10;
    input Real elmt_reactant7;
    input Real elmt_reactant15;
    input Real elmt_product0;
    input Real elmt_reactant16;
    input Real elmt_reactant11;
    input Real elmt_oro_dilution;
    input Real elmt_product4;
    input Real elmt_reactant13;
    input Real elmt_product2;
    input Real elmt_product14;
    input Real elmt_ump_dilution;
    input Real elmt_dho_dilution;
    input Real elmt_product17;

    Real elmt_compartment(unit = "") "compartment";
    Real elmt_ump_conc(unit = "");
    Real elmt_ump_amount(unit = "");
    Real elmt_ump(unit = "") "ump";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI6\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-10T14:02:05Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/kegg.compound/C00105\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_omp_conc(unit = "");
    Real elmt_omp_amount(unit = "");
    Real elmt_omp(unit = "") "omp";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI5\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-10T13:57:41Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/kegg.compound/C01103\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_udp_conc(unit = "");
    Real elmt_udp_amount(unit = "");
    Real elmt_udp(unit = "") "udp";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI7\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-10T14:01:28Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/kegg.compound/C00015\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_utp_conc(unit = "");
    Real elmt_utp_amount(unit = "");
    Real elmt_utp(unit = "") "utp";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI8\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-10T14:02:36Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/kegg.compound/C00075\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_cp_conc(unit = "");
    Real elmt_cp_amount(unit = "");
    Real elmt_cp(unit = "") "cp";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-10T13:55:22Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/kegg.compound/C00169\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_ca_conc(unit = "");
    Real elmt_ca_amount(unit = "");
    Real elmt_ca(unit = "") "ca";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI2\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-10T13:45:04Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/kegg.compound/C00438\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_ctp_conc(unit = "");
    Real elmt_ctp_amount(unit = "");
    Real elmt_ctp(unit = "") "ctp";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI9\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-10T13:56:18Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/kegg.compound/C00063\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_oro_conc(unit = "");
    Real elmt_oro_amount(unit = "");
    Real elmt_oro(unit = "") "oro";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI4\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-10T13:46:58Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/kegg.compound/C00295\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_dho_conc(unit = "");
    Real elmt_dho_amount(unit = "");
    Real elmt_dho(unit = "") "dho";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI3\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-10T13:56:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/kegg.compound/C00337\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_ump_conc = 3.7E-4;
        elmt_omp_conc = 3.7E-4;
        elmt_udp_conc = 0.002886;
        elmt_utp_conc = 0.00666;
        elmt_cp_conc = 3.7E-4;
        elmt_ca_conc = 3.7E-4;
        elmt_ctp_conc = 3.7E-4;
        elmt_oro_conc = 3.7E-4;
        elmt_dho_conc = 3.7E-4;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_ump = elmt_ump_conc;
        elmt_omp = elmt_omp_conc;
        elmt_udp = elmt_udp_conc;
        elmt_utp = elmt_utp_conc;
        elmt_cp = elmt_cp_conc;
        elmt_ca = elmt_ca_conc;
        elmt_ctp = elmt_ctp_conc;
        elmt_oro = elmt_oro_conc;
        elmt_dho = elmt_dho_conc;
        der(elmt_ump_amount) = ((elmt_r6 * elmt_product10) + (- (elmt_r10 * elmt_reactant11)) + (- (elmt_ump_dilution * elmt_reactant24)));
        der(elmt_omp_amount) = ((elmt_r5 * elmt_product8) + (- (elmt_r6 * elmt_reactant9)) + (- (elmt_omp_dilution * elmt_reactant23)));
        der(elmt_udp_amount) = ((- (elmt_r7 * elmt_reactant13)) + (elmt_r10 * elmt_product12) + (- (elmt_udp_dilution * elmt_reactant25)));
        der(elmt_utp_amount) = ((elmt_r7 * elmt_product14) + (- (elmt_r8 * elmt_reactant16)) + (- (elmt_utp_degradation * elmt_reactant15)) + (- (elmt_utp_dilution * elmt_reactant26)));
        der(elmt_cp_amount) = ((elmt_r1 * elmt_product0) + (- (elmt_cp_dilution * elmt_reactant19)) + (- (elmt_r2 * elmt_reactant1)));
        der(elmt_ca_amount) = ((- (elmt_r3 * elmt_reactant3)) + (- (elmt_ca_dilution * elmt_reactant20)) + (elmt_r2 * elmt_product2));
        der(elmt_ctp_amount) = ((elmt_r8 * elmt_product17) + (- (elmt_ctp_degradation * elmt_reactant18)) + (- (elmt_ctp_dilution * elmt_reactant27)));
        der(elmt_oro_amount) = ((- (elmt_r5 * elmt_reactant7)) + (elmt_r4 * elmt_product6) + (- (elmt_oro_dilution * elmt_reactant22)));
        der(elmt_dho_amount) = ((elmt_r3 * elmt_product4) + (- (elmt_r4 * elmt_reactant5)) + (- (elmt_dho_dilution * elmt_reactant21)));

    algorithm
        elmt_ump_conc := elmt_ump_amount / elmt_compartment;
        elmt_omp_conc := elmt_omp_amount / elmt_compartment;
        elmt_udp_conc := elmt_udp_amount / elmt_compartment;
        elmt_utp_conc := elmt_utp_amount / elmt_compartment;
        elmt_cp_conc := elmt_cp_amount / elmt_compartment;
        elmt_ca_conc := elmt_ca_amount / elmt_compartment;
        elmt_ctp_conc := elmt_ctp_amount / elmt_compartment;
        elmt_oro_conc := elmt_oro_amount / elmt_compartment;
        elmt_dho_conc := elmt_dho_amount / elmt_compartment;
end Class_elmt_compartment;
