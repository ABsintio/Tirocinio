within BIOMD622;
class Reactions

    input Real elmt_Bmi1ubd;
    input Real elmt_H2A;
    input Real elmt_H2Auba;
    input Real elmt_Zub;
    input Real elmt_compartment;
    input Real elmt_R1Buba;
    input Real elmt_R1B;
    input Real elmt_R1Bubd;
    input Real elmt_Bmi1;
    input Real elmt_Z;
    input Real elmt_USP7tot;
    input Real elmt_R1Bub;

    Real elmt_R7(unit = "") "R7";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI19\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-15T13:15:26Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_R7_elmt_Km(unit "") = 0.0025 "";
    parameter Real elmt_R7_elmt_kc(unit "") = 0.005 "";
    Real elmt_product14 "";
    Real elmt_reactant13 "";
    Real elmt_R8(unit = "") "R8";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI20\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-15T14:05:09Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_R8_elmt_k1(unit "") = 0.012 "";
    parameter Real elmt_R8_elmt_k2(unit "") = 2.0E-5 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_product17 "";
    Real elmt_Bmi1deg(unit = "") "Bmi1deg";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI29\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-15T14:16:14Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Bmi1deg_elmt_k1(unit "") = 3.0E-5 "";
    Real elmt_reactant31 "";
    Real elmt_R5(unit = "") "R5";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI17\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-15T13:11:31Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_R5_elmt_k1(unit "") = 2.0 "";
    parameter Real elmt_R5_elmt_k2(unit "") = 0.2 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_R6(unit = "") "R6";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI18\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-15T13:13:23Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_R6_elmt_k1(unit "") = 0.02 "";
    parameter Real elmt_R6_elmt_k2(unit "") = 0.2 "";
    Real elmt_product12 "";
    Real elmt_reactant11 "";
    Real elmt_Bmi1prod(unit = "") "Bmi1prod";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI28\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-15T14:15:37Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_Bmi1prod_elmt_v(unit "") = 7.5E-6 "";
    Real elmt_product30 "";
    Real elmt_R3(unit = "") "R3";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI15\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-15T13:08:30Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_R3_elmt_k1(unit "") = 0.01 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_R12(unit = "") "R12";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI24\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-15T14:09:52Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_R12_elmt_k1(unit "") = 0.002 "";
    parameter Real elmt_R12_elmt_k2(unit "") = 2.0 "";
    parameter Real elmt_R12_elmt_k3(unit "") = 0.2 "";
    Real elmt_product25 "";
    Real elmt_reactant24 "";
    Real elmt_R4(unit = "") "R4";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI16\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-15T13:09:01Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_R4_elmt_k(unit "") = 0.001 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_R13(unit = "") "R13";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI25\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-15T14:12:57Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_R13_elmt_k1(unit "") = 0.01 "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_R1Bdeg(unit = "") "R1Bdeg";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI27\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-15T14:14:42Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_R1Bdeg_elmt_k1(unit "") = 3.0E-5 "";
    Real elmt_reactant29 "";
    Real elmt_R1(unit = "") "R1";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI13\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-15T13:06:41Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_R1_elmt_k1(unit "") = 0.002 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_R10(unit = "") "R10";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI22\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-15T14:07:37Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_R10_elmt_k(unit "") = 0.0075 "";
    Real elmt_reactant20 "";
    Real elmt_product21 "";
    Real elmt_R2(unit = "") "R2";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI14\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-15T13:08:06Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_R2_elmt_k1(unit "") = 0.002 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_R11(unit = "") "R11";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI23\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-15T14:08:40Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_R11_elmt_k(unit "") = 0.005 "";
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_R9(unit = "") "R9";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI21\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-15T14:06:17Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_R9_elmt_k1(unit "") = 0.2 "";
    parameter Real elmt_R9_elmt_k2(unit "") = 0.2 "";
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_R1Bprod(unit = "") "R1Bprod";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI26\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2016-11-15T14:13:57Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_R1Bprod_elmt_v(unit "") = 7.5E-6 "";
    Real elmt_product28 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product12 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product25 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product21 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 1.0;
        elmt_product14 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_R7 = (elmt_compartment * (((elmt_R7_elmt_kc * elmt_USP7tot * elmt_Zub) / (elmt_R7_elmt_Km + elmt_Zub))));
        elmt_R8 = (elmt_compartment * ((elmt_R8_elmt_k1 * elmt_Zub) - (elmt_R8_elmt_k2 * elmt_R1Buba * elmt_Bmi1)));
        elmt_Bmi1deg = (elmt_compartment * elmt_Bmi1deg_elmt_k1 * elmt_Bmi1ubd);
        elmt_R5 = (elmt_compartment * ((elmt_R5_elmt_k1 * elmt_Bmi1 * elmt_R1B) - (elmt_R5_elmt_k2 * elmt_Z)));
        elmt_R6 = (elmt_compartment * ((elmt_Z * ((elmt_R6_elmt_k1 * elmt_Z) + (elmt_R6_elmt_k2 * elmt_Zub)))));
        elmt_Bmi1prod = (elmt_compartment * (elmt_Bmi1prod_elmt_v));
        elmt_R3 = (elmt_compartment * elmt_R3_elmt_k1 * elmt_R1B);
        elmt_R12 = (elmt_compartment * ((elmt_H2A * ((elmt_R12_elmt_k1 * elmt_R1Bub) + (elmt_R12_elmt_k2 * elmt_Zub) + (elmt_R12_elmt_k3 * elmt_R1Buba)))));
        elmt_R4 = (elmt_compartment * ((elmt_R4_elmt_k * elmt_USP7tot * elmt_R1Bubd)));
        elmt_R13 = (elmt_compartment * elmt_R13_elmt_k1 * elmt_H2Auba);
        elmt_R1Bdeg = (elmt_compartment * elmt_R1Bdeg_elmt_k1 * elmt_R1Bubd);
        elmt_R1 = (elmt_compartment * elmt_R1_elmt_k1 * elmt_Bmi1);
        elmt_R10 = (elmt_compartment * ((elmt_R10_elmt_k * elmt_USP7tot * elmt_R1Bub)));
        elmt_R2 = (elmt_compartment * elmt_R2_elmt_k1 * elmt_Bmi1ubd);
        elmt_R11 = (elmt_compartment * ((elmt_R11_elmt_k * elmt_USP7tot * elmt_R1Buba)));
        elmt_R9 = (elmt_compartment * ((elmt_R1B * ((elmt_R9_elmt_k1 * elmt_R1B) + (elmt_R9_elmt_k2 * elmt_R1Bub)))));
        elmt_R1Bprod = (elmt_compartment * (elmt_R1Bprod_elmt_v));
        der(elmt_product30) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product12) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product21) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product14) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
