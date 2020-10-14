within BIOMD530;
class Reactions

    input Real elmt_species_2;
    input Real elmt_species_3;
    input Real elmt_species_1;
    input Real elmt_compartment_1;
    input Real elmt_species_6;
    input Real elmt_species_7;
    input Real elmt_species_4;
    input Real elmt_species_10;
    input Real elmt_species_5;
    input Real elmt_species_8;
    input Real elmt_species_9;

    Real elmt_reaction_3(unit = "") "triplex association";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI14\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2013-10-23T21:20:35Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    parameter Real elmt_reaction_3_elmt_k1(unit "") = 0.999534 "";
    Real elmt_product9 "";
    Real elmt_reactant6 "";
    Real elmt_reactant8 "";
    Real elmt_reactant7 "";
    Real elmt_reaction_4(unit = "") "mRNA synthesis";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI15\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2014-01-16T19:26:22Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    parameter Real elmt_reaction_4_elmt_k_syn_mRNA(unit "") = 1.0 "";
    Real elmt_product10 "";
    Real elmt_reaction_1(unit = "") "duplex 1 association";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI12\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2013-10-23T20:51:55Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    parameter Real elmt_reaction_1_elmt_k1(unit "") = 4.5298E-4 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_reaction_2(unit = "") "duplex 2 association";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI13\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2013-10-23T21:18:14Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    parameter Real elmt_reaction_2_elmt_k1(unit "") = 1.30837E-5 "";
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_reaction_16(unit = "") "protein synthesis";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI27\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2014-02-20T22:03:30Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    parameter Real elmt_reaction_16_elmt_k_syn_prot(unit "") = 1.0 "";
    Real elmt_product29 "";
    Real elmt_reaction_17(unit = "") "protein degradation";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI28\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2014-02-20T22:05:30Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    parameter Real elmt_reaction_17_elmt_k1(unit "") = 1.0 "";
    Real elmt_reactant30 "";
    Real elmt_reaction_9(unit = "") "miRNA_2 degradation";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI20\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2013-10-23T20:59:34Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    parameter Real elmt_reaction_9_elmt_k1(unit "") = 1.0 "";
    Real elmt_reactant15 "";
    Real elmt_reaction_14(unit = "") "duplex 2 degradation";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI25\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2014-01-16T19:25:42Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    parameter Real elmt_reaction_14_elmt_k1(unit "") = 1.0 "";
    Real elmt_reactant27 "";
    Real elmt_reaction_15(unit = "") "triplex degradation";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI26\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2013-10-28T21:44:51Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    parameter Real elmt_reaction_15_elmt_k1(unit "") = 1.0 "";
    Real elmt_reactant28 "";
    Real elmt_reaction_7(unit = "") "mRNA degradation";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI18\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2014-01-16T19:26:15Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    parameter Real elmt_reaction_7_elmt_k1(unit "") = 1.0 "";
    Real elmt_reactant13 "";
    Real elmt_reaction_8(unit = "") "miRNA_1 degradation";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI19\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2014-01-16T19:25:53Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    parameter Real elmt_reaction_8_elmt_k1(unit "") = 1.0 "";
    Real elmt_reactant14 "";
    Real elmt_reaction_5(unit = "") "miRNA_1 synthesis";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI16\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2014-01-16T19:25:59Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    parameter Real elmt_reaction_5_elmt_k_syn_miRNA_1(unit "") = 1.0 "";
    Real elmt_product11 "";
    Real elmt_reaction_6(unit = "") "miRNA_2 synthesis";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI17\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2013-10-23T20:59:34Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    parameter Real elmt_reaction_6_elmt_k_syn_miRNA_2(unit "") = 1.0 "";
    Real elmt_product12 "";
    Real elmt_reaction_12(unit = "") "triplex dissociation";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI23\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2013-10-23T21:21:11Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    parameter Real elmt_reaction_12_elmt_k1(unit "") = 0.187796 "";
    Real elmt_product23 "";
    Real elmt_product25 "";
    Real elmt_product24 "";
    Real elmt_reactant22 "";
    Real elmt_reaction_13(unit = "") "duplex 1 degradation";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI24\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2013-10-28T21:43:21Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    parameter Real elmt_reaction_13_elmt_k1(unit "") = 1.0 "";
    Real elmt_reactant26 "";
    Real elmt_reaction_10(unit = "") "duplex 1 dissociation";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI21\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2013-10-23T21:17:53Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    parameter Real elmt_reaction_10_elmt_k1(unit "") = 0.249955 "";
    Real elmt_reactant16 "";
    Real elmt_product18 "";
    Real elmt_product17 "";
    Real elmt_reaction_11(unit = "") "duplex 2 dissociation";
 annotation(Documentation(info="<annotation>
        <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI22\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2013-10-23T21:20:03Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
      </annotation>"));
    parameter Real elmt_reaction_11_elmt_k1(unit "") = 0.241033 "";
    Real elmt_reactant19 "";
    Real elmt_product21 "";
    Real elmt_product20 "";


    initial equation
        elmt_product12 = 1.0;
        elmt_product11 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product25 = 1.0;
        elmt_product24 = 1.0;
        elmt_product29 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product18 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_reaction_3 = (elmt_compartment_1 * elmt_reaction_3_elmt_k1 * elmt_species_1 * elmt_species_2 * elmt_species_3);
        elmt_reaction_4 = (elmt_compartment_1 * ((elmt_reaction_4_elmt_k_syn_mRNA * elmt_species_7)));
        elmt_reaction_1 = (elmt_compartment_1 * elmt_reaction_1_elmt_k1 * elmt_species_1 * elmt_species_2);
        elmt_reaction_2 = (elmt_compartment_1 * elmt_reaction_2_elmt_k1 * elmt_species_1 * elmt_species_3);
        elmt_reaction_16 = (elmt_compartment_1 * ((elmt_reaction_16_elmt_k_syn_prot * elmt_species_1)));
        elmt_reaction_17 = (elmt_compartment_1 * elmt_reaction_17_elmt_k1 * elmt_species_10);
        elmt_reaction_9 = (elmt_compartment_1 * elmt_reaction_9_elmt_k1 * elmt_species_3);
        elmt_reaction_14 = (elmt_compartment_1 * elmt_reaction_14_elmt_k1 * elmt_species_5);
        elmt_reaction_15 = (elmt_compartment_1 * elmt_reaction_15_elmt_k1 * elmt_species_6);
        elmt_reaction_7 = (elmt_compartment_1 * elmt_reaction_7_elmt_k1 * elmt_species_1);
        elmt_reaction_8 = (elmt_compartment_1 * elmt_reaction_8_elmt_k1 * elmt_species_2);
        elmt_reaction_5 = (elmt_compartment_1 * ((elmt_reaction_5_elmt_k_syn_miRNA_1 * elmt_species_8)));
        elmt_reaction_6 = (elmt_compartment_1 * ((elmt_reaction_6_elmt_k_syn_miRNA_2 * elmt_species_9)));
        elmt_reaction_12 = (elmt_compartment_1 * elmt_reaction_12_elmt_k1 * elmt_species_6);
        elmt_reaction_13 = (elmt_compartment_1 * elmt_reaction_13_elmt_k1 * elmt_species_4);
        elmt_reaction_10 = (elmt_compartment_1 * elmt_reaction_10_elmt_k1 * elmt_species_4);
        elmt_reaction_11 = (elmt_compartment_1 * elmt_reaction_11_elmt_k1 * elmt_species_5);
        der(elmt_product12) = 0;
        der(elmt_product11) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product25) = 0;
        der(elmt_product24) = 0;
        der(elmt_product29) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product18) = 0;
        der(elmt_product17) = 0;

end Reactions;
