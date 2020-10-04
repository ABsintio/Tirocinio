within BIOMD570;
class Reactions

    input Real elmt_parameter_9;
    input Real elmt_parameter_8;
    input Real elmt_parameter_19;
    input Real elmt_parameter_18;
    input Real elmt_parameter_17;
    input Real elmt_parameter_16;
    input Real elmt_parameter_15;
    input Real elmt_parameter_14;
    input Real elmt_compartment_1;
    input Real elmt_parameter_6;
    input Real elmt_parameter_5;
    input Real elmt_parameter_4;
    input Real elmt_parameter_3;
    input Real elmt_parameter_2;
    input Real elmt_parameter_1;
    input Real elmt_compartment_4;
    input Real elmt_compartment_3;
    input Real elmt_compartment_2;
    input Real elmt_parameter_20;
    input Real elmt_parameter_29;
    input Real elmt_parameter_27;
    input Real elmt_parameter_26;
    input Real elmt_parameter_25;
    input Real elmt_parameter_24;
    input Real elmt_parameter_23;
    input Real elmt_species_2;
    input Real elmt_species_3;
    input Real elmt_species_1;
    input Real elmt_parameter_33;
    input Real elmt_parameter_32;
    input Real elmt_parameter_30;
    input Real elmt_species_6;
    input Real elmt_species_7;
    input Real elmt_species_4;
    input Real elmt_dHb;
    input Real elmt_F_out;
    input Real elmt_species_5;
    input Real elmt_parameter_38;
    input Real elmt_parameter_37;
    input Real elmt_species_8;
    input Real elmt_parameter_35;
    input Real elmt_species_9;
    input Real elmt_parameter_34;
    input Real elmt_species_15;
    input Real elmt_species_16;
    input Real elmt_species_17;
    input Real elmt_v_Mito_H3;
    input Real elmt_species_18;
    input Real elmt_species_19;
    input Real elmt_species_10;
    input Real elmt_species_11;
    input Real elmt_species_12;
    input Real elmt_species_13;
    input Real elmt_species_14;
    input Real elmt_v_stim_constant;

    Real elmt_mitochondrial_respiration(unit = "") "mitochondrial respiration";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI79\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-28T11:52:33Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant36 "";
    Real elmt_reactant37 "";
    Real elmt_reactant38 "";
    Real elmt_product39 "";
    Real elmt_Na__inflow_after_stimulation(unit = "") "Na+ inflow after stimulation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI81\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-16T15:06:26Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product41 "";
    Real elmt_ATPases(unit = "") "ATPases";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI80\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-29T10:36:45Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    parameter Real elmt_ATPases_elmt_v(unit "") = 0.149 "";
    Real elmt_reactant40 "";
    Real elmt_inflow_of_dHb(unit = "") "inflow of dHb";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI82\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-06-24T11:54:38Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product42 "";
    Real elmt_reaction_3(unit = "") "Blood-brain transport of glucose";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI68\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-11T12:18:52Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_reaction_4(unit = "") "Hexokinase-phosphofructokinase system";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI69\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-11T12:35:24Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product9 "";
    Real elmt_product8 "";
    Real elmt_reactant6 "";
    Real elmt_reactant7 "";
    Real elmt_reaction_1(unit = "") "Sodium leak";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI66\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-09T16:36:18Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product0 "";
    Real elmt_reaction_2(unit = "") "Na/K - pump";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI67\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-09T16:41:59Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_reactant1 "";
    Real elmt_product3 "";
    Real elmt_reaction_9(unit = "") "Creatine Kinase";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI74\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-14T10:48:45Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant25 "";
    Real elmt_product27 "";
    Real elmt_product26 "";
    Real elmt_reactant24 "";
    Real elmt_reaction_7(unit = "") "Lactate dehydrogenase";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI72\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-11T14:24:01Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant18 "";
    Real elmt_reactant19 "";
    Real elmt_product21 "";
    Real elmt_product20 "";
    Real elmt_outflow_of_dHb(unit = "") "outflow of dHb";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI83\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-06-24T11:55:54Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant43 "";
    Real elmt_reaction_8(unit = "") "Blood-brain transport of lactate";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI73\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-11T14:37:40Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_reaction_5(unit = "") "Phosphoglycerate kinase";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI70\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-11T12:57:34Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product12 "";
    Real elmt_product13 "";
    Real elmt_reactant10 "";
    Real elmt_reactant11 "";
    Real elmt_reaction_6(unit = "") "Pyruvate kinase";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI71\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-11T14:02:02Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_product17 "";
    Real elmt_reaction_12(unit = "") "Blood flow contribution to GLC_c variation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI77\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-14T11:56:47Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product33 "";
    Real elmt_reactant32 "";
    Real elmt_reaction_13(unit = "") "Blood flow contribution to LAC_c variation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI78\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-14T12:14:20Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_product35 "";
    Real elmt_reactant34 "";
    Real elmt_reaction_10(unit = "") "Blood-brain transport of oxygen";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI75\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-14T11:03:08Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_reaction_11(unit = "") "Blood flow contribution to O2 variation";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI76\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-14T11:40:03Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_reactant30 "";
    Real elmt_product31 "";


    initial equation
        elmt_reactant40 = 1.0;
        elmt_product12 = 1.0;
        elmt_product33 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant28 = 100.0;
        elmt_reactant43 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product27 = 1.0;
        elmt_product26 = 1.0;
        elmt_product29 = 1.0;
        elmt_product41 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product8 = 2.0;
        elmt_reactant1 = 3.0;
        elmt_reactant4 = 100.0;
        elmt_reactant30 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product23 = 100.0;
        elmt_product21 = 1.0;
        elmt_product42 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant38 = 3.0;
        elmt_product5 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_product16 = 1.0;
        elmt_product13 = 1.0;
        elmt_product35 = 1.0;
        elmt_product39 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_mitochondrial_respiration = (elmt_compartment_1 * (elmt_v_Mito_H3));
        elmt_Na__inflow_after_stimulation = (elmt_compartment_1 * (elmt_v_stim_constant));
        elmt_ATPases = (elmt_compartment_1 * (elmt_ATPases_elmt_v));
        elmt_inflow_of_dHb = (elmt_compartment_3 * ((elmt_parameter_37 * 2.0 * ((elmt_species_14 / elmt_compartment_2) - (elmt_species_19 / elmt_compartment_3)))));
        elmt_reaction_3 = ((elmt_parameter_14 * (((elmt_species_17 / elmt_compartment_3) / ((elmt_species_17 / elmt_compartment_3) + elmt_parameter_15)) - ((elmt_species_4 / elmt_compartment_1) / ((elmt_species_4 / elmt_compartment_1) + elmt_parameter_15)))));
        elmt_reaction_4 = (elmt_compartment_1 * (((elmt_parameter_16 * (elmt_species_2 / elmt_compartment_1) * ((elmt_species_4 / elmt_compartment_1) / ((elmt_species_4 / elmt_compartment_1) + elmt_parameter_19))) / (1.0 + Functions.pow(((elmt_species_2 / elmt_compartment_1) / elmt_parameter_17), elmt_parameter_18)))));
        elmt_reaction_1 = (elmt_compartment_1 * ((elmt_parameter_1 * (elmt_parameter_2 / elmt_parameter_3) * ((elmt_parameter_4 * log((elmt_parameter_6 / (elmt_species_1 / elmt_compartment_1)))) - elmt_parameter_5))));
        elmt_reaction_2 = (elmt_compartment_1 * (((elmt_parameter_1 * elmt_parameter_8 * (elmt_species_2 / elmt_compartment_1) * (elmt_species_1 / elmt_compartment_1)) / (1.0 + ((elmt_species_2 / elmt_compartment_1) / elmt_parameter_9)))));
        elmt_reaction_9 = (elmt_compartment_1 * ((elmt_parameter_29 * (elmt_species_11 / elmt_compartment_1) * (elmt_species_3 / elmt_compartment_1)) - (elmt_parameter_30 * (elmt_species_12 / elmt_compartment_1) * (elmt_species_2 / elmt_compartment_1))));
        elmt_reaction_7 = (elmt_compartment_1 * ((elmt_parameter_24 * (elmt_species_8 / elmt_compartment_1) * (elmt_species_7 / elmt_compartment_1)) - (elmt_parameter_25 * (elmt_species_10 / elmt_compartment_1) * (elmt_species_6 / elmt_compartment_1))));
        elmt_outflow_of_dHb = (elmt_compartment_3 * (((elmt_F_out * (elmt_dHb / elmt_compartment_3)) / elmt_compartment_4)));
        elmt_reaction_8 = ((elmt_parameter_26 * (((elmt_species_10 / elmt_compartment_1) / ((elmt_species_10 / elmt_compartment_1) + elmt_parameter_27)) - ((elmt_species_18 / elmt_compartment_3) / ((elmt_species_18 / elmt_compartment_3) + elmt_parameter_27)))));
        elmt_reaction_5 = (elmt_compartment_1 * ((elmt_parameter_20 * (elmt_species_5 / elmt_compartment_1) * (elmt_species_3 / elmt_compartment_1) * ((elmt_species_6 / elmt_compartment_1) / (elmt_species_7 / elmt_compartment_1)))));
        elmt_reaction_6 = (elmt_parameter_23 * elmt_species_3 * (elmt_species_9 / elmt_compartment_1));
        elmt_reaction_12 = ((((2.0 * elmt_parameter_37) / elmt_parameter_38) * ((elmt_species_15 / elmt_compartment_2) - (elmt_species_17 / elmt_compartment_3))));
        elmt_reaction_13 = ((((2.0 * elmt_parameter_37) / elmt_parameter_38) * ((elmt_species_16 / elmt_compartment_2) - (elmt_species_18 / elmt_compartment_3))));
        elmt_reaction_10 = ((elmt_parameter_32 * ((elmt_parameter_33 * Functions.pow(((elmt_parameter_34 / (elmt_species_19 / elmt_compartment_3)) - 1.0), ((- 1.0) / elmt_parameter_35))) - (elmt_species_13 / elmt_compartment_1))));
        elmt_reaction_11 = ((((2.0 * elmt_parameter_37) / elmt_parameter_38) * ((elmt_species_14 / elmt_compartment_2) - (elmt_species_19 / elmt_compartment_3))));
        der(elmt_reactant40) = 0;
        der(elmt_product12) = 0;
        der(elmt_product33) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant43) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product27) = 0;
        der(elmt_product26) = 0;
        der(elmt_product29) = 0;
        der(elmt_product41) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product23) = 0;
        der(elmt_product21) = 0;
        der(elmt_product42) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_product16) = 0;
        der(elmt_product13) = 0;
        der(elmt_product35) = 0;
        der(elmt_product39) = 0;
        der(elmt_product17) = 0;

end Reactions;
