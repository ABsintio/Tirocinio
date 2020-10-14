within BIOMD447;
class Parameters

    Real elmt_parameter_11(unit = "") "k4";
    Real elmt_parameter_22(unit = "") "alpha1";
    Real elmt_parameter_10(unit = "") "k_3";
    Real elmt_parameter_21(unit = "") "u_pdeg";
    Real elmt_parameter_20(unit = "") "u_edeg";
    Real elmt_parameter_9(unit = "") "k3";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI11\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-11-20T10:45:27Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                </annotation>"));
    Real elmt_parameter_8(unit = "") "kp2";
    Real elmt_parameter_7(unit = "") "kp1";
    Real elmt_parameter_19(unit = "") "k9";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI12\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2012-11-20T10:47:55Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
                                </annotation>"));
    Real elmt_parameter_18(unit = "") "k8";
    Real elmt_parameter_17(unit = "") "k_7";
    Real elmt_parameter_16(unit = "") "k7";
    Real elmt_parameter_15(unit = "") "k_6";
    Real elmt_parameter_14(unit = "") "k6";
    Real elmt_parameter_13(unit = "") "k_5";
    Real elmt_parameter_12(unit = "") "k5";
    Real elmt_parameter_23(unit = "") "alpha2";
    Real elmt_parameter_6(unit = "") "kothers";
    Real elmt_parameter_5(unit = "") "k2";
    Real elmt_parameter_4(unit = "") "k1";
    Real elmt_parameter_3(unit = "") "keff3";
    Real elmt_parameter_2(unit = "") "keff2";
    Real elmt_parameter_1(unit = "") "keff1";


    initial equation
        elmt_parameter_11 = 0.35;
        elmt_parameter_22 = 0.0035;
        elmt_parameter_10 = 0.0245;
        elmt_parameter_21 = 0.0175;
        elmt_parameter_20 = 0.0525;
        elmt_parameter_9 = 17.5;
        elmt_parameter_8 = 1.05;
        elmt_parameter_7 = 0.35;
        elmt_parameter_19 = 0.21;
        elmt_parameter_18 = 24.5;
        elmt_parameter_17 = 0.0035;
        elmt_parameter_16 = 0.07;
        elmt_parameter_15 = 0.0035;
        elmt_parameter_14 = 0.035;
        elmt_parameter_13 = 0.0105;
        elmt_parameter_12 = 24.5;
        elmt_parameter_23 = 0.035;
        elmt_parameter_6 = 0.005;
        elmt_parameter_5 = 24.5;
        elmt_parameter_4 = 0.035;
        elmt_parameter_3 = 1.4;
        elmt_parameter_2 = 0.35;
        elmt_parameter_1 = 0.035;


    equation
        der(elmt_parameter_11) = 0;
        der(elmt_parameter_22) = 0;
        der(elmt_parameter_10) = 0;
        der(elmt_parameter_21) = 0;
        der(elmt_parameter_20) = 0;
        der(elmt_parameter_9) = 0;
        der(elmt_parameter_8) = 0;
        der(elmt_parameter_7) = 0;
        der(elmt_parameter_19) = 0;
        der(elmt_parameter_18) = 0;
        der(elmt_parameter_17) = 0;
        der(elmt_parameter_16) = 0;
        der(elmt_parameter_15) = 0;
        der(elmt_parameter_14) = 0;
        der(elmt_parameter_13) = 0;
        der(elmt_parameter_12) = 0;
        der(elmt_parameter_23) = 0;
        der(elmt_parameter_6) = 0;
        der(elmt_parameter_5) = 0;
        der(elmt_parameter_4) = 0;
        der(elmt_parameter_3) = 0;
        der(elmt_parameter_2) = 0;
        der(elmt_parameter_1) = 0;

end Parameters;
