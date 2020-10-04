within BIOMD323;
class Reactions

    input Real elmt_species_2;
    input Real elmt_species_3;
    input Real elmt_species_1;
    input Real elmt_compartment_1;
    input Real elmt_parameter_3;
    input Real elmt_parameter_2;
    input Real elmt_parameter_1;

    Real elmt_reaction_5(unit = "") "reaction5";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI10\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2010-12-08T17:09:43Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                              </annotation>"));
    Real elmt_reactant10 "";
    Real elmt_reaction_6(unit = "") "reaction6";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI11\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2010-12-08T17:10:04Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                              </annotation>"));
    Real elmt_reactant11 "";
    Real elmt_reaction_3(unit = "") "reaction3";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI8\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2010-12-08T17:01:10Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                              </annotation>"));
    parameter Real elmt_reaction_3_elmt_Shalve(unit "") = 1.0 "";
    Real elmt_product8 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reaction_4(unit = "") "reaction4";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI9\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2010-12-08T17:05:38Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                              </annotation>"));
    Real elmt_reactant9 "";
    Real elmt_reaction_1(unit = "") "reaction1";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI6\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2010-12-08T16:57:50Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                              </annotation>"));
    parameter Real elmt_reaction_1_elmt_Shalve(unit "") = 1.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_reaction_2(unit = "") "reaction2";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI7\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2010-12-08T17:00:26Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                              </annotation>"));
    parameter Real elmt_reaction_2_elmt_Shalve(unit "") = 1.0 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";


    initial equation
        elmt_product8 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_reaction_5 = (elmt_compartment_1 * (((elmt_species_2 / elmt_parameter_2) / (1.0 + (elmt_species_2 / elmt_parameter_2)))));
        elmt_reaction_6 = (elmt_compartment_1 * (((elmt_species_3 / elmt_parameter_2) / (1.0 + (elmt_species_3 / elmt_parameter_2)))));
        elmt_reaction_3 = (elmt_compartment_1 * ((elmt_parameter_1 / (Functions.pow(elmt_reaction_3_elmt_Shalve, elmt_parameter_3) + Functions.pow(elmt_species_3, elmt_parameter_3)))));
        elmt_reaction_4 = (elmt_compartment_1 * (((elmt_species_1 / elmt_parameter_2) / (1.0 + (elmt_species_1 / elmt_parameter_2)))));
        elmt_reaction_1 = (elmt_compartment_1 * ((elmt_parameter_1 / (Functions.pow(elmt_reaction_1_elmt_Shalve, elmt_parameter_3) + Functions.pow(elmt_species_1, elmt_parameter_3)))));
        elmt_reaction_2 = (elmt_compartment_1 * ((elmt_parameter_1 / (Functions.pow(elmt_reaction_2_elmt_Shalve, elmt_parameter_3) + Functions.pow(elmt_species_2, elmt_parameter_3)))));
        der(elmt_product8) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;

end Reactions;
