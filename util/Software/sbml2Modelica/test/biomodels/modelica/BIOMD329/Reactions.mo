within BIOMD329;
class Reactions

    input Real elmt_compartment;
    input Real elmt_c;
    input Real elmt_a;
    input Real elmt_b;

    Real elmt_R7(unit = "") "R7";
    parameter Real elmt_R7_elmt_constant(unit "") = 13.58 "";
    Real elmt_product6 "";
    Real elmt_R8(unit = "") "R8";
    parameter Real elmt_R8_elmt_Km(unit "") = 0.16 "";
    parameter Real elmt_R8_elmt_V(unit "") = 153.0 "";
    Real elmt_reactant7 "";
    Real elmt_R5(unit = "") "R5";
    parameter Real elmt_R5_elmt_constant(unit "") = 1.24 "";
    Real elmt_product4 "";
    Real elmt_R6(unit = "") "R6";
    parameter Real elmt_R6_elmt_Km(unit "") = 29.09 "";
    parameter Real elmt_R6_elmt_V(unit "") = 32.24 "";
    Real elmt_reactant5 "";
    Real elmt_R3(unit = "") "R3";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI1\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-12-10T15:05:10Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_R3_elmt_Km(unit "") = 0.19 "";
    parameter Real elmt_R3_elmt_V(unit "") = 1.52 "";
    Real elmt_reactant2 "";
    Real elmt_R4(unit = "") "R4";
    parameter Real elmt_R4_elmt_Km(unit "") = 1.18 "";
    parameter Real elmt_R4_elmt_V(unit "") = 4.88 "";
    Real elmt_reactant3 "";
    Real elmt_R1(unit = "") "R1";
    parameter Real elmt_R1_elmt_v(unit "") = 0.212 "";
    Real elmt_product0 "";
    Real elmt_R2(unit = "") "R2";
    parameter Real elmt_R2_elmt_constant(unit "") = 2.9 "";
    Real elmt_product1 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product1 = 1.0;
        elmt_product0 = 1.0;
        elmt_product4 = 1.0;


    equation
        elmt_R7 = (elmt_compartment * ((elmt_R7_elmt_constant * elmt_a)));
        elmt_R8 = (elmt_compartment * (((elmt_R8_elmt_V * elmt_c) / (elmt_R8_elmt_Km + elmt_c))));
        elmt_R5 = (elmt_compartment * ((elmt_R5_elmt_constant * elmt_a)));
        elmt_R6 = (elmt_compartment * (((elmt_R6_elmt_V * elmt_b) / (elmt_R6_elmt_Km + elmt_b))));
        elmt_R3 = (elmt_compartment * (((elmt_R3_elmt_V * elmt_b * elmt_a) / (elmt_R3_elmt_Km + elmt_a))));
        elmt_R4 = (elmt_compartment * (((elmt_R4_elmt_V * elmt_c * elmt_a) / (elmt_R4_elmt_Km + elmt_a))));
        elmt_R1 = (elmt_compartment * (elmt_R1_elmt_v));
        elmt_R2 = (elmt_compartment * ((elmt_R2_elmt_constant * elmt_a)));
        der(elmt_reactant2) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product1) = 0;
        der(elmt_product0) = 0;
        der(elmt_product4) = 0;

end Reactions;
