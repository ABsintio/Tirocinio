within BIOMD570;
class Parameters

    input Real elmt_mitochondrial_respiration;
    input Real elmt_ATPases;
    input Real elmt_species_7;
    input Real elmt_reaction_4;
    input Real elmt_reaction_2;
    input Real elmt_species_8;
    input Real elmt_reaction_9;
    input Real elmt_species_19;
    input Real elmt_reaction_5;
    input Real elmt_reaction_6;
    input Real elmt_compartment_1;
    input Real elmt_compartment_4;
    input Real elmt_compartment_3;
    input Real elmt_species_13;
    input Real elmt_species_14;
    input Real elmt_compartment_2;

    input Boolean elmt_from_decrease_to_at_rest;    input Boolean elmt_from_increase_to_stable;    input Boolean elmt_from_stable_to_decrease__end_of_stimulation;
    input Real assign_elmt_is_maximum;
    input Real assign_elmt_is_falling;
    input Real assign_elmt_is_rising;
    input Real assign_elmt_v_stim_constant;


    Real elmt_parameter_11(unit = "") "qAK";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI29\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-29T10:21:03Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_10(unit = "") "ADP";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI28\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-09T16:41:39Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_9(unit = "") "Km_pump";
    Real elmt_parameter_8(unit = "") "k_pump";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI27\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-09T16:38:26Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_7(unit = "") "ATP";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI26\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-09T16:41:46Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_19(unit = "") "Kg";
    Real elmt_parameter_18(unit = "") "nH";
    Real elmt_parameter_17(unit = "") "KI,ATP";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI32\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-16T15:12:50Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_KI_Mito(unit = "") "KI,Mito";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI46\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-19T12:02:38Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_16(unit = "") "kHK-PFK";
    Real elmt_parameter_15(unit = "") "Kt,GLC";
    Real elmt_parameter_14(unit = "") "Tmax,GLC";
    Real elmt_parameter_13(unit = "") "AMP";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI31\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-09T17:23:55Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_12(unit = "") "A";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI30\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-09T17:24:23Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_6(unit = "") "Na_extracellular";
    Real elmt_Km_Mito(unit = "") "Km,Mito";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI45\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-19T12:02:31Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_5(unit = "") "Vm";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI25\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-14T11:37:53Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_ModelValue_50(unit = "") "Initial for alpha_F_in";
 annotation(Documentation(info="<annotation>
          <initialValue xmlns=\"http://copasi.org/initialValue\" parent=\"alpha_F_in\"/>
        </annotation>"));
    Real elmt_parameter_4(unit = "") "RT/F";
    Real elmt_ModelValue_51(unit = "") "Initial for maximum";
 annotation(Documentation(info="<annotation>
          <initialValue xmlns=\"http://copasi.org/initialValue\" parent=\"maximum\"/>
        </annotation>"));
    Real elmt_parameter_3(unit = "") "F";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI24\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-16T15:12:47Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_ModelValue_52(unit = "") "Initial for t_on";
 annotation(Documentation(info="<annotation>
          <initialValue xmlns=\"http://copasi.org/initialValue\" parent=\"t_on\"/>
        </annotation>"));
    Real elmt_parameter_2(unit = "") "gNa";
    Real elmt_ModelValue_53(unit = "") "Initial for t_end";
 annotation(Documentation(info="<annotation>
          <initialValue xmlns=\"http://copasi.org/initialValue\" parent=\"t_end\"/>
        </annotation>"));
    Real elmt_parameter_1(unit = "") "S/V";
    Real elmt_parameter_22(unit = "") "NAD+";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI33\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-11T12:52:27Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_21(unit = "") "N";
    Real elmt_parameter_20(unit = "") "kPGK";
    Real elmt_rCMRO2(unit = "") "rCMRO2";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI59\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-19T12:04:30Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_dAMP_dATP(unit = "") "dAMP/dATP";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI42\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-29T10:21:28Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_rVv(unit = "") "rVv";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI60\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-02-27T09:30:58Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_t_end(unit = "") "t_end";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI54\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-16T15:12:56Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_29(unit = "") "k+CK";
    Real elmt_parameter_28(unit = "") "vATPase";
    Real elmt_parameter_27(unit = "") "Kt,LAC";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI36\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-11T14:35:09Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_26(unit = "") "Tmax,LAC";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI35\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-11T14:35:24Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_ratioO2c_bar(unit = "") "ratioO2c_bar";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI62\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-02-27T09:38:46Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_25(unit = "") "k-LDH";
    Real elmt_maximum(unit = "") "maximum";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI52\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-16T12:36:11Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_24(unit = "") "k+LDH";
    Real elmt_parameter_23(unit = "") "kPK";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI34\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-11T14:12:28Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_alpha_F_in(unit = "") "alpha_F_in";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI51\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-19T12:02:15Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_33(unit = "") "KO2";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI38\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-19T12:02:50Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_32(unit = "") "PS/V";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI37\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-20T09:54:48Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_rCBF(unit = "") "rCBF";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI58\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-19T12:03:44Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_31(unit = "") "C";
    Real elmt_slope_down(unit = "") "slope_down";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI55\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-16T12:39:35Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_30(unit = "") "k-CK";
    Real elmt_O2c_bar(unit = "") "O2c_bar";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI61\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2015-02-27T09:33:00Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_38(unit = "") "V_cap";
    Real elmt_F_out(unit = "") "F_out";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI56\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-16T13:01:26Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_37(unit = "") "F_in";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI40\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-04-14T11:35:31Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_36(unit = "") "F0";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI39\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-16T12:31:26Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_35(unit = "") "nh";
    Real elmt_parameter_34(unit = "") "Hb*OP";
    Real elmt_ModelValue_35(unit = "") "Initial for F0";
 annotation(Documentation(info="<annotation>
          <initialValue xmlns=\"http://copasi.org/initialValue\" parent=\"parameter_36\"/>
        </annotation>"));
    Real elmt_v_Mito_H3(unit = "") "v_Mito_H3";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI43\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-14T15:37:32Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_is_maximum(unit = "") "is_maximum";
    Real elmt_Compartment_7(unit = "") "Initial for Venous balloon";
 annotation(Documentation(info="<annotation>
          <initialValue xmlns=\"http://copasi.org/initialValue\" parent=\"compartment_4\"/>
        </annotation>"));
    Real elmt_V_max_Mito(unit = "") "V_max_Mito";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI44\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-14T15:40:00Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_n_Mito(unit = "") "n_Mito";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI47\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-19T12:02:42Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_is_falling(unit = "") "is_falling";
    Real elmt_K_O2_Mito(unit = "") "K_O2_Mito";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI48\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-19T12:03:11Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_parameter_47(unit = "") "v_Mito";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI41\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-14T15:37:17Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_is_rising(unit = "") "is_rising";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI49\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-16T12:33:51Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_t_on(unit = "") "t_on";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI53\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-16T15:12:59Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_ModelValue_60(unit = "") "Initial for O2c_bar";
 annotation(Documentation(info="<annotation>
          <initialValue xmlns=\"http://copasi.org/initialValue\" parent=\"O2c_bar\"/>
        </annotation>"));
    Real elmt_v_stim_constant(unit = "") "v_stim_constant";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI57\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-19T12:01:56Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));
    Real elmt_slope_up(unit = "") "slope_up";
 annotation(Documentation(info="<annotation>
          <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
            <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
              <rdf:Description rdf:about=\"#COPASI50\">
                <dcterms:created>
                  <rdf:Description>
                    <dcterms:W3CDTF>2014-05-16T12:35:44Z</dcterms:W3CDTF>
                  </rdf:Description>
                </dcterms:created>
              </rdf:Description>
            </rdf:RDF>
          </COPASI>
        </annotation>"));


    initial equation
        elmt_parameter_11 = 0.92;
        elmt_parameter_9 = 0.5;
        elmt_parameter_8 = 2.9E-7;
        elmt_parameter_7 = 2.2;
        elmt_parameter_19 = 0.05;
        elmt_parameter_18 = 4.0;
        elmt_parameter_17 = 1.0;
        elmt_KI_Mito = 183.3;
        elmt_parameter_16 = 0.12;
        elmt_parameter_15 = 9.0;
        elmt_parameter_14 = 0.0476;
        elmt_parameter_12 = 2.212;
        elmt_parameter_6 = 150.0;
        elmt_Km_Mito = 0.05;
        elmt_parameter_5 = (-70.0);
        elmt_ModelValue_50 = elmt_alpha_F_in;
        elmt_parameter_4 = 26.73;
        elmt_ModelValue_51 = elmt_maximum;
        elmt_parameter_3 = 96500.0;
        elmt_ModelValue_52 = elmt_t_on;
        elmt_parameter_2 = 0.0039;
        elmt_ModelValue_53 = elmt_t_end;
        elmt_parameter_1 = 90000.0;
        elmt_parameter_21 = 0.212;
        elmt_parameter_20 = 42.6;
        elmt_t_end = 360.0;
        elmt_parameter_29 = 3666.0;
        elmt_parameter_28 = 0.149;
        elmt_parameter_27 = 0.5;
        elmt_parameter_26 = 0.00628;
        elmt_parameter_25 = 44.8;
        elmt_parameter_24 = 2000.0;
        elmt_parameter_23 = 86.7;
        elmt_alpha_F_in = 0.5;
        elmt_parameter_33 = 0.0361;
        elmt_parameter_32 = 1.6;
        elmt_parameter_31 = 10.0;
        elmt_parameter_30 = 20.0;
        elmt_parameter_38 = 0.0055;
        elmt_parameter_36 = 0.012;
        elmt_parameter_35 = 2.73;
        elmt_parameter_34 = 8.6;
        elmt_ModelValue_35 = elmt_parameter_36;
        elmt_is_maximum = 0.0;
        elmt_Compartment_7 = elmt_compartment_4;
        elmt_V_max_Mito = 0.05233;
        elmt_n_Mito = 0.1;
        elmt_is_falling = 0.0;
        elmt_K_O2_Mito = 0.001;
        elmt_parameter_47 = 0.0192;
        elmt_is_rising = 1.0;
        elmt_t_on = 5.0;
        elmt_ModelValue_60 = elmt_O2c_bar;
        elmt_v_stim_constant = 0.23;


    equation
        der(elmt_parameter_11) = 0;
        elmt_parameter_10 = ((elmt_parameter_7 / 2.0) * ((- elmt_parameter_11) + Functions.pow((Functions.pow(elmt_parameter_11, 2.0) + (4.0 * elmt_parameter_11 * ((elmt_parameter_12 / elmt_parameter_7) - 1.0))), 0.5)));
        der(elmt_parameter_9) = 0;
        der(elmt_parameter_8) = 0;
        der(elmt_parameter_7) = (((((((- 2.0) * elmt_reaction_4) + elmt_reaction_5 + elmt_reaction_6) - elmt_reaction_2) + (15.0 * elmt_mitochondrial_respiration) + elmt_reaction_9) - elmt_ATPases) * Functions.pow((1.0 - elmt_dAMP_dATP), (- 1.0)));
        der(elmt_parameter_19) = 0;
        der(elmt_parameter_18) = 0;
        der(elmt_parameter_17) = 0;
        der(elmt_KI_Mito) = 0;
        der(elmt_parameter_16) = 0;
        der(elmt_parameter_15) = 0;
        der(elmt_parameter_14) = 0;
        elmt_parameter_13 = ((elmt_parameter_12 - elmt_parameter_7) - elmt_parameter_10);
        der(elmt_parameter_12) = 0;
        der(elmt_parameter_6) = 0;
        der(elmt_Km_Mito) = 0;
        der(elmt_parameter_5) = 0;
        der(elmt_ModelValue_50) = 0;
        der(elmt_parameter_4) = 0;
        der(elmt_ModelValue_51) = 0;
        der(elmt_parameter_3) = 0;
        der(elmt_ModelValue_52) = 0;
        der(elmt_parameter_2) = 0;
        der(elmt_ModelValue_53) = 0;
        der(elmt_parameter_1) = 0;
        elmt_parameter_22 = (elmt_parameter_21 - (elmt_species_7 / elmt_compartment_1));
        der(elmt_parameter_21) = 0;
        der(elmt_parameter_20) = 0;
        elmt_rCMRO2 = (elmt_mitochondrial_respiration / 0.0192);
        elmt_dAMP_dATP = ((((- 1.0) + (elmt_parameter_11 / 2.0)) - ((1.0 / 2.0) * Functions.pow((Functions.pow(elmt_parameter_11, 2.0) + (4.0 * elmt_parameter_11 * ((elmt_parameter_12 / elmt_parameter_7) - 1.0))), (1.0 / 2.0)))) + ((elmt_parameter_11 * elmt_parameter_12) / (elmt_parameter_7 * Functions.pow((Functions.pow(elmt_parameter_11, 2.0) + (4.0 * elmt_parameter_11 * ((elmt_parameter_12 / elmt_parameter_7) - 1.0))), (1.0 / 2.0)))));
        elmt_rVv = (elmt_compartment_4 / elmt_Compartment_7);
        der(elmt_t_end) = 0;
        der(elmt_parameter_29) = 0;
        der(elmt_parameter_28) = 0;
        der(elmt_parameter_27) = 0;
        der(elmt_parameter_26) = 0;
        elmt_ratioO2c_bar = (elmt_O2c_bar / elmt_ModelValue_60);
        der(elmt_parameter_25) = 0;
        elmt_maximum = (elmt_ModelValue_35 * elmt_ModelValue_50);
        der(elmt_parameter_24) = 0;
        der(elmt_parameter_23) = 0;
        der(elmt_alpha_F_in) = 0;
        der(elmt_parameter_33) = 0;
        der(elmt_parameter_32) = 0;
        elmt_rCBF = (elmt_parameter_37 / elmt_ModelValue_35);
        der(elmt_parameter_31) = 0;
        elmt_slope_down = ((elmt_maximum * ((elmt_t_on + elmt_t_end) - time)) / elmt_t_on);
        der(elmt_parameter_30) = 0;
        elmt_O2c_bar = ((2.0 * (elmt_species_19 / elmt_compartment_3)) - (elmt_species_14 / elmt_compartment_2));
        der(elmt_parameter_38) = 0;
        elmt_F_out = ((elmt_parameter_36 * (Functions.pow((elmt_compartment_4 / elmt_Compartment_7), 2.0) + (Functions.pow((elmt_compartment_4 / elmt_Compartment_7), (- 0.5)) * 35.0 * (1.0 / elmt_Compartment_7) * elmt_parameter_37))) / (1.0 + (elmt_parameter_36 * Functions.pow((elmt_compartment_4 / elmt_Compartment_7), (- 0.5)) * 35.0 * (1.0 / elmt_Compartment_7))));
        elmt_parameter_37 = (elmt_parameter_36 + (elmt_is_rising * elmt_slope_up) + (elmt_is_maximum * elmt_maximum) + (elmt_is_falling * elmt_slope_down));
        der(elmt_parameter_36) = 0;
        der(elmt_parameter_35) = 0;
        der(elmt_parameter_34) = 0;
        der(elmt_ModelValue_35) = 0;
        elmt_v_Mito_H3 = (elmt_V_max_Mito * ((elmt_species_8 / elmt_compartment_1) / (elmt_Km_Mito + (elmt_species_8 / elmt_compartment_1))) * (1.0 / (1.0 + Functions.pow((elmt_parameter_7 / (elmt_parameter_10 * elmt_KI_Mito)), elmt_n_Mito))) * ((elmt_species_13 / elmt_compartment_1) / (elmt_K_O2_Mito + (elmt_species_13 / elmt_compartment_1))));
        der(elmt_is_maximum) = 0.0;
        der(elmt_Compartment_7) = 0;
        der(elmt_V_max_Mito) = 0;
        der(elmt_n_Mito) = 0;
        der(elmt_is_falling) = 0.0;
        der(elmt_K_O2_Mito) = 0;
        der(elmt_parameter_47) = 0;
        der(elmt_is_rising) = 0.0;
        der(elmt_t_on) = 0;
        der(elmt_ModelValue_60) = 0;
        der(elmt_v_stim_constant) = 0.0;
        elmt_slope_up = ((elmt_ModelValue_51 / elmt_ModelValue_52) * time);

        when elmt_from_decrease_to_at_rest then
            reinit(elmt_is_falling, assign_elmt_is_falling);
        end when;
        when elmt_from_increase_to_stable then
            reinit(elmt_is_maximum, assign_elmt_is_maximum);
            reinit(elmt_is_rising, assign_elmt_is_rising);
        end when;
        when elmt_from_stable_to_decrease__end_of_stimulation then
            reinit(elmt_is_maximum, assign_elmt_is_maximum);
            reinit(elmt_is_falling, assign_elmt_is_falling);
            reinit(elmt_v_stim_constant, assign_elmt_v_stim_constant);
        end when;
end Parameters;
