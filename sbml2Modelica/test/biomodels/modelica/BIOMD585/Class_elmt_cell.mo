within BIOMD585;
class Class_elmt_cell

    input Real elmt_k1;
    input Real elmt_scale_Stat1nex;
    input Real elmt_scale_Stat1Pcex;
    input Real elmt_taud;
    input Real elmt_scale_Stat1Pex;
    input Real elmt_k9;
    input Real elmt_k6;
    input Real elmt_k4;
    input Real elmt_k5;
    input Real elmt_k3;
    input Real elmt_tau;
    input Real elmt_scale_Stat1Pnex;
    input Real elmt_scale_Stat1cex;
    input Real elmt_k14;
    input Real elmt_tauj;
    input Real elmt_k13;
    input Real elmt_k12;
    input Real elmt_k11;
    input Real elmt_k10;

    Real elmt_cell(unit = "") "cell";
    Real elmt_d1_conc(unit = "");
    Real elmt_d1_amount(unit = "");
    Real elmt_d1(unit = "") "d1";
    Real elmt_d2_conc(unit = "");
    Real elmt_d2_amount(unit = "");
    Real elmt_d2(unit = "") "d2";
    Real elmt_Stat1Un_conc(unit = "");
    Real elmt_Stat1Un_amount(unit = "");
    Real elmt_Stat1Un(unit = "") "STAT1Un";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI5\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-14T08:50:06Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_Stat1Pdn_conc(unit = "");
    Real elmt_Stat1Pdn_amount(unit = "");
    Real elmt_Stat1Pdn(unit = "") "STAT1Dn";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI3\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-14T08:49:03Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_j3_conc(unit = "");
    Real elmt_j3_amount(unit = "");
    Real elmt_j3(unit = "") "j3";
    Real elmt_Ir_conc(unit = "");
    Real elmt_Ir_amount(unit = "");
    Real elmt_Ir(unit = "") "Ir";
    Real elmt_j4_conc(unit = "");
    Real elmt_j4_amount(unit = "");
    Real elmt_j4(unit = "") "j4";
    Real elmt_Stat1U_conc(unit = "");
    Real elmt_Stat1U_amount(unit = "");
    Real elmt_Stat1U(unit = "") "STAT1Uc";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI4\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-14T08:50:13Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_j1_conc(unit = "");
    Real elmt_j1_amount(unit = "");
    Real elmt_j1(unit = "") "j1";
    Real elmt_Stat1cex_conc(unit = "");
    Real elmt_Stat1cex_amount(unit = "");
    Real elmt_Stat1cex(unit = "") "STAT1c (observed)";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI8\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-14T08:43:18Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_j2_conc(unit = "");
    Real elmt_j2_amount(unit = "");
    Real elmt_j2(unit = "") "j2";
    Real elmt_RSNCex_conc(unit = "");
    Real elmt_RSNCex_amount(unit = "");
    Real elmt_RSNCex(unit = "") "RSNC (observed)";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI14\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-14T08:41:14Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_Stat1nex_conc(unit = "");
    Real elmt_Stat1nex_amount(unit = "");
    Real elmt_Stat1nex(unit = "") "STAT1n (observed)";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI9\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-14T08:44:54Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_Stat1Pnex_conc(unit = "");
    Real elmt_Stat1Pnex_amount(unit = "");
    Real elmt_Stat1Pnex(unit = "") "STAT1Dn (observed)";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI12\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-14T08:53:01Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_Ifng_conc(unit = "");
    Real elmt_Ifng_amount(unit = "");
    Real elmt_Ifng(unit = "") "Ifng";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI1\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-14T08:54:03Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_Stat1Pcex_conc(unit = "");
    Real elmt_Stat1Pcex_amount(unit = "");
    Real elmt_Stat1Pcex(unit = "") "STAT1Dc (observed)";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI11\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-14T08:45:59Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_II_conc(unit = "");
    Real elmt_II_amount(unit = "");
    Real elmt_II(unit = "") "II";
    Real elmt_Socs1ex_conc(unit = "");
    Real elmt_Socs1ex_amount(unit = "");
    Real elmt_Socs1ex(unit = "") "SOCS1 (observed)";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI13\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-14T08:42:38Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:isEncodedBy rdf:resource=\"http://identifiers.org/ensembl/ENSG00000185338\"/>
                <CopasiMT:isEncodedBy rdf:resource=\"http://identifiers.org/hgnc.symbol/SOCS1\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_i4_conc(unit = "");
    Real elmt_i4_amount(unit = "");
    Real elmt_i4(unit = "") "i4";
    Real elmt_Stat1Pd_conc(unit = "");
    Real elmt_Stat1Pd_amount(unit = "");
    Real elmt_Stat1Pd(unit = "") "STAT1D";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI2\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-14T08:48:51Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_i2_conc(unit = "");
    Real elmt_i2_amount(unit = "");
    Real elmt_i2(unit = "") "i2";
    Real elmt_mRNA_conc(unit = "");
    Real elmt_mRNA_amount(unit = "");
    Real elmt_mRNA(unit = "") "SOCS1";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI6\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-14T08:42:02Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_i3_conc(unit = "");
    Real elmt_i3_amount(unit = "");
    Real elmt_i3(unit = "") "i3";
    Real elmt_i1_conc(unit = "");
    Real elmt_i1_amount(unit = "");
    Real elmt_i1(unit = "") "i1";
    Real elmt_Stat1ex_conc(unit = "");
    Real elmt_Stat1ex_amount(unit = "");
    Real elmt_Stat1ex(unit = "") "STAT1 (observed)";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI7\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-14T08:44:32Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
                <CopasiMT:isEncodedBy rdf:resource=\"http://identifiers.org/ensembl/ENSG00000115415\"/>
                <CopasiMT:isEncodedBy rdf:resource=\"http://identifiers.org/hgnc.symbol/STAT1\"/>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Stat1Pex_conc(unit = "");
    Real elmt_Stat1Pex_amount(unit = "");
    Real elmt_Stat1Pex(unit = "") "STAT1D (observed)";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI10\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-03-14T08:47:31Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_d3_conc(unit = "");
    Real elmt_d3_amount(unit = "");
    Real elmt_d3(unit = "") "d3";
    Real elmt_d4_conc(unit = "");
    Real elmt_d4_amount(unit = "");
    Real elmt_d4(unit = "") "d4";

    initial equation
        elmt_cell = 1.0;
        elmt_d1_conc = 0.0;
        elmt_d2_conc = 0.0;
        elmt_Stat1Un_conc = 0.661213;
        elmt_Stat1Pdn_conc = 0.0;
        elmt_j3_conc = 0.0;
        elmt_Ir_conc = 0.05721;
        elmt_j4_conc = 0.0;
        elmt_Stat1U_conc = 0.950418;
        elmt_j1_conc = 0.0;
        elmt_j2_conc = 0.0;
        elmt_Ifng_conc = 100.0;
        elmt_II_conc = 0.0;
        elmt_i4_conc = 0.0;
        elmt_Stat1Pd_conc = 0.0;
        elmt_i2_conc = 0.0;
        elmt_mRNA_conc = 0.108325;
        elmt_i3_conc = 0.0;
        elmt_i1_conc = 0.0;
        elmt_d3_conc = 0.0;
        elmt_d4_conc = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_d1 = elmt_d1_conc;
        elmt_d2 = elmt_d2_conc;
        elmt_Stat1Un = elmt_Stat1Un_conc;
        elmt_Stat1Pdn = elmt_Stat1Pdn_conc;
        elmt_j3 = elmt_j3_conc;
        elmt_Ir = elmt_Ir_conc;
        elmt_j4 = elmt_j4_conc;
        elmt_Stat1U = elmt_Stat1U_conc;
        elmt_j1 = elmt_j1_conc;
        elmt_Stat1cex = elmt_Stat1cex_conc;
        elmt_j2 = elmt_j2_conc;
        elmt_RSNCex = elmt_RSNCex_conc;
        elmt_Stat1nex = elmt_Stat1nex_conc;
        elmt_Stat1Pnex = elmt_Stat1Pnex_conc;
        elmt_Ifng = elmt_Ifng_conc;
        elmt_Stat1Pcex = elmt_Stat1Pcex_conc;
        elmt_II = elmt_II_conc;
        elmt_Socs1ex = elmt_Socs1ex_conc;
        elmt_i4 = elmt_i4_conc;
        elmt_Stat1Pd = elmt_Stat1Pd_conc;
        elmt_i2 = elmt_i2_conc;
        elmt_mRNA = elmt_mRNA_conc;
        elmt_i3 = elmt_i3_conc;
        elmt_i1 = elmt_i1_conc;
        elmt_Stat1ex = elmt_Stat1ex_conc;
        elmt_Stat1Pex = elmt_Stat1Pex_conc;
        elmt_d3 = elmt_d3_conc;
        elmt_d4 = elmt_d4_conc;
        der(elmt_d1_amount / elmt_cell) = ((4.0 * (elmt_II - elmt_d1)) / elmt_taud);
        der(elmt_d2_amount / elmt_cell) = ((4.0 * (elmt_d1 - elmt_d2)) / elmt_taud);
        der(elmt_Stat1Un_amount / elmt_cell) = (((elmt_k11 * elmt_Stat1U) - (elmt_k12 * elmt_Stat1Un)) + (elmt_k5 * elmt_Stat1Pdn));
        der(elmt_Stat1Pdn_amount / elmt_cell) = ((elmt_k6 * elmt_Stat1Pd) - (elmt_k5 * elmt_Stat1Pdn));
        der(elmt_j3_amount / elmt_cell) = ((4.0 * (elmt_j2 - elmt_j3)) / elmt_tauj);
        der(elmt_Ir_amount / elmt_cell) = (- (elmt_k1 * elmt_Ifng * elmt_Ir));
        der(elmt_j4_amount / elmt_cell) = ((4.0 * (elmt_j3 - elmt_j4)) / elmt_tauj);
        der(elmt_Stat1U_amount / elmt_cell) = ((((elmt_k3 * elmt_d4) + (elmt_k12 * elmt_Stat1Un)) - (elmt_k11 * elmt_Stat1U)) - ((elmt_k4 * elmt_II * elmt_Stat1U) / (1.0 + (elmt_k14 * elmt_j4))));
        der(elmt_j1_amount / elmt_cell) = ((4.0 * (elmt_mRNA - elmt_j1)) / elmt_tauj);
        elmt_Stat1cex_amount = ((elmt_Stat1U + elmt_Stat1Pd) * elmt_scale_Stat1cex) * elmt_cell;
        der(elmt_j2_amount / elmt_cell) = ((4.0 * (elmt_j1 - elmt_j2)) / elmt_tauj);
        elmt_RSNCex_amount = ((elmt_Stat1Un + elmt_Stat1Pdn) / (elmt_Stat1U + elmt_Stat1Pd)) * elmt_cell;
        elmt_Stat1nex_amount = ((elmt_Stat1Un + elmt_Stat1Pdn) * elmt_scale_Stat1nex) * elmt_cell;
        elmt_Stat1Pnex_amount = (elmt_Stat1Pdn * elmt_scale_Stat1Pnex) * elmt_cell;
        der(elmt_Ifng_amount / elmt_cell) = (- (elmt_k1 * elmt_Ifng * elmt_Ir));
        elmt_Stat1Pcex_amount = (elmt_Stat1Pd * elmt_scale_Stat1Pcex) * elmt_cell;
        der(elmt_II_amount / elmt_cell) = (elmt_k1 * elmt_Ifng * elmt_Ir);
        elmt_Socs1ex_amount = elmt_mRNA * elmt_cell;
        der(elmt_i4_amount / elmt_cell) = ((4.0 * (elmt_i3 - elmt_i4)) / elmt_tau);
        der(elmt_Stat1Pd_amount / elmt_cell) = (((elmt_k4 * elmt_II * elmt_Stat1U) / (1.0 + (elmt_k14 * elmt_j4))) - (elmt_k6 * elmt_Stat1Pd));
        der(elmt_i2_amount / elmt_cell) = ((4.0 * (elmt_i1 - elmt_i2)) / elmt_tau);
        der(elmt_mRNA_amount / elmt_cell) = ((elmt_k13 + (elmt_k9 * elmt_i4)) - (elmt_k10 * elmt_mRNA));
        der(elmt_i3_amount / elmt_cell) = ((4.0 * (elmt_i2 - elmt_i3)) / elmt_tau);
        der(elmt_i1_amount / elmt_cell) = ((4.0 * (elmt_Stat1Pdn - elmt_i1)) / elmt_tau);
        elmt_Stat1ex_amount = ((elmt_Stat1U + elmt_Stat1Pd + elmt_Stat1Un + elmt_Stat1Pdn) / 2.0) * elmt_cell;
        elmt_Stat1Pex_amount = (((elmt_Stat1Pd + elmt_Stat1Pdn) / 2.0) * elmt_scale_Stat1Pex) * elmt_cell;
        der(elmt_d3_amount / elmt_cell) = ((4.0 * (elmt_d2 - elmt_d3)) / elmt_taud);
        der(elmt_d4_amount / elmt_cell) = ((4.0 * (elmt_d3 - elmt_d4)) / elmt_taud);

    algorithm
        elmt_d1_conc := elmt_d1_amount / elmt_cell;
        elmt_d2_conc := elmt_d2_amount / elmt_cell;
        elmt_Stat1Un_conc := elmt_Stat1Un_amount / elmt_cell;
        elmt_Stat1Pdn_conc := elmt_Stat1Pdn_amount / elmt_cell;
        elmt_j3_conc := elmt_j3_amount / elmt_cell;
        elmt_Ir_conc := elmt_Ir_amount / elmt_cell;
        elmt_j4_conc := elmt_j4_amount / elmt_cell;
        elmt_Stat1U_conc := elmt_Stat1U_amount / elmt_cell;
        elmt_j1_conc := elmt_j1_amount / elmt_cell;
        elmt_Stat1cex_conc := elmt_Stat1cex_amount / elmt_cell;
        elmt_j2_conc := elmt_j2_amount / elmt_cell;
        elmt_RSNCex_conc := elmt_RSNCex_amount / elmt_cell;
        elmt_Stat1nex_conc := elmt_Stat1nex_amount / elmt_cell;
        elmt_Stat1Pnex_conc := elmt_Stat1Pnex_amount / elmt_cell;
        elmt_Ifng_conc := elmt_Ifng_amount / elmt_cell;
        elmt_Stat1Pcex_conc := elmt_Stat1Pcex_amount / elmt_cell;
        elmt_II_conc := elmt_II_amount / elmt_cell;
        elmt_Socs1ex_conc := elmt_Socs1ex_amount / elmt_cell;
        elmt_i4_conc := elmt_i4_amount / elmt_cell;
        elmt_Stat1Pd_conc := elmt_Stat1Pd_amount / elmt_cell;
        elmt_i2_conc := elmt_i2_amount / elmt_cell;
        elmt_mRNA_conc := elmt_mRNA_amount / elmt_cell;
        elmt_i3_conc := elmt_i3_amount / elmt_cell;
        elmt_i1_conc := elmt_i1_amount / elmt_cell;
        elmt_Stat1ex_conc := elmt_Stat1ex_amount / elmt_cell;
        elmt_Stat1Pex_conc := elmt_Stat1Pex_amount / elmt_cell;
        elmt_d3_conc := elmt_d3_amount / elmt_cell;
        elmt_d4_conc := elmt_d4_amount / elmt_cell;
end Class_elmt_cell;
