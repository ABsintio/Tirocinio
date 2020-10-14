within BIOMD494;
class Reactions

    input Real elmt_p28;
    input Real elmt_p27;
    input Real elmt_p26;
    input Real elmt_p25;
    input Real elmt_p24;
    input Real elmt_Ant_R;
    input Real elmt_p23;
    input Real elmt_p173;
    input Real elmt_facP4;
    input Real elmt_p174;
    input Real elmt_p171;
    input Real elmt_p172;
    input Real elmt_p170;
    input Real elmt_R_FSH_des;
    input Real elmt_FSH_R;
    input Real elmt_p177;
    input Real elmt_Ant_d;
    input Real elmt_p178;
    input Real elmt_Ant_c;
    input Real elmt_Sc2;
    input Real elmt_p175;
    input Real elmt_Sc1;
    input Real elmt_p33;
    input Real elmt_p32;
    input Real elmt_p31;
    input Real elmt_p30;
    input Real elmt_p39;
    input Real elmt_p38;
    input Real elmt_p37;
    input Real elmt_p36;
    input Real elmt_p35;
    input Real elmt_p34;
    input Real elmt_p160;
    input Real elmt_p161;
    input Real elmt_p168;
    input Real elmt_p169;
    input Real elmt_p166;
    input Real elmt_p320;
    input Real elmt_p167;
    input Real elmt_LH_R;
    input Real elmt_p164;
    input Real elmt_p165;
    input Real elmt_p44;
    input Real elmt_p43;
    input Real elmt_p42;
    input Real elmt_p41;
    input Real elmt_p40;
    input Real elmt_p5;
    input Real elmt_p6;
    input Real elmt_p3;
    input Real elmt_p4;
    input Real elmt_p49;
    input Real elmt_Ago_R_a;
    input Real elmt_p1;
    input Real elmt_p48;
    input Real elmt_p2;
    input Real elmt_p47;
    input Real elmt_p46;
    input Real elmt_p45;
    input Real elmt_p152;
    input Real elmt_p273;
    input Real elmt_p9;
    input Real elmt_LH_bld;
    input Real elmt_p7;
    input Real elmt_p8;
    input Real elmt_p159;
    input Real elmt_p313;
    input Real elmt_p314;
    input Real elmt_p157;
    input Real elmt_p311;
    input Real elmt_p158;
    input Real elmt_p312;
    input Real elmt_p155;
    input Real elmt_p310;
    input Real elmt_p156;
    input Real elmt_facE2;
    input Real elmt_p274;
    input Real elmt_p154;
    input Real elmt_p275;
    input Real elmt_p55;
    input Real elmt_p54;
    input Real elmt_p53;
    input Real elmt_p319;
    input Real elmt_p52;
    input Real elmt_Ago_R_i;
    input Real elmt_p51;
    input Real elmt_p50;
    input Real elmt_p315;
    input Real elmt_mass;
    input Real elmt_facLH;
    input Real elmt_P4;
    input Real elmt_p57;
    input Real elmt_p56;
    input Real elmt_OvF;
    input Real elmt_R_FSH;
    input Real elmt_InhA_delay;
    input Real elmt_p302;
    input Real elmt_Ago_c;
    input Real elmt_p303;
    input Real elmt_Ago_d;
    input Real elmt_p300;
    input Real elmt_p308;
    input Real elmt_p309;
    input Real elmt_p306;
    input Real elmt_p307;
    input Real elmt_p304;
    input Real elmt_p305;
    input Real elmt_facFSH;
    input Real elmt_E2;
    input Real elmt_R_GnRH_a;
    input Real elmt_GnRH_R_a;
    input Real elmt_InhB;
    input Real elmt_FSH_bld;
    input Real elmt_p240;
    input Real elmt_GnRH_R_i;
    input Real elmt_LH_Pit;
    input Real elmt_p80;
    input Real elmt_p244;
    input Real elmt_PrF;
    input Real elmt_p241;
    input Real elmt_p242;
    input Real elmt_InhA;
    input Real elmt_p84;
    input Real elmt_p83;
    input Real elmt_R_LH;
    input Real elmt_p91;
    input Real elmt_p90;
    input Real elmt_p512;
    input Real elmt_p234;
    input Real elmt_p476;
    input Real elmt_p477;
    input Real elmt_p232;
    input Real elmt_p474;
    input Real elmt_p475;
    input Real elmt_p230;
    input Real elmt_p231;
    input Real elmt_p473;
    input Real elmt_p11;
    input Real elmt_R_GnRH_i;
    input Real elmt_GnRH;
    input Real elmt_R_Foll;
    input Real elmt_p95;
    input Real elmt_p94;
    input Real elmt_p93;
    input Real elmt_p513;
    input Real elmt_p92;
    input Real elmt_p514;
    input Real elmt_Lut1;
    input Real elmt_p18;
    input Real elmt_p17;
    input Real elmt_p16;
    input Real elmt_FSH_pit;
    input Real elmt_p13;
    input Real elmt_p12;
    input Real elmt_Ant_p;
    input Real elmt_freq;
    input Real elmt_default;
    input Real elmt_Lut4;
    input Real elmt_Lut3;
    input Real elmt_Lut2;
    input Real elmt_p22;
    input Real elmt_AF4;
    input Real elmt_p21;
    input Real elmt_p20;
    input Real elmt_AF2;
    input Real elmt_AF3;
    input Real elmt_AF1;
    input Real elmt_R_LH_des;

    Real elmt_re37(unit = "") "re37";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa38\" species=\"R_LH_des\">
                <celldesigner:linkAnchor position=\"NNW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa37\" species=\"R_LH\">
                <celldesigner:linkAnchor position=\"ESE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product34 "";
    Real elmt_reactant33 "";
    Real elmt_re38(unit = "") "re38";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa28\" species=\"LH_bld\">
                <celldesigner:linkAnchor position=\"SSE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa41\" species=\"sa28_degraded\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product36 "";
    Real elmt_reactant35 "";
    Real elmt_re39(unit = "") "re39";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"csa11\" species=\"FSH_R\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa46\" species=\"R_FSH_des\">
                <celldesigner:linkAnchor position=\"NW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_re73(unit = "") "re73";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa86\" species=\"InhB\">
                <celldesigner:linkAnchor position=\"SW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa88\" species=\"sa86_degraded\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant91 "";
    Real elmt_product92 "";
    Real elmt_re74(unit = "") "re74";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa35\" species=\"InhA_delay\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa89\" species=\"sa35_degraded\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product94 "";
    Real elmt_reactant93 "";
    Real elmt_re75(unit = "") "re75";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa90\" species=\"s85\"/>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa1\" species=\"R_GnRH_i\">
                <celldesigner:linkAnchor position=\"SSW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product96 "";
    Real elmt_reactant95 "";
    Real elmt_re76(unit = "") "re76";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"csa1\" species=\"GnRH_R_i\">
                <celldesigner:linkAnchor position=\"ESE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa91\" species=\"csa1_degraded\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant97 "";
    Real elmt_product98 "";
    Real elmt_re78(unit = "") "re78";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa92\" species=\"s87\">
                <celldesigner:linkAnchor position=\"SSE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa3\" species=\"GnRH\">
                <celldesigner:linkAnchor position=\"WNW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa10\" editPoints=\"0.6045972840776215,-0.17225957367448985\" modifiers=\"E2\" targetLineIndex=\"-1,3\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa10\" species=\"E2\">
                  <celldesigner:linkAnchor position=\"NNE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa11\" modifiers=\"P4\" targetLineIndex=\"-1,6\" type=\"INHIBITION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa11\" species=\"P4\">
                  <celldesigner:linkAnchor position=\"NNE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product100 "";
    Real elmt_reactant99 "";
    Real elmt_re35(unit = "") "re35";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa28\" species=\"LH_bld\"/>
              <celldesigner:baseReactant alias=\"sa37\" species=\"R_LH\">
                <celldesigner:linkAnchor position=\"WSW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"csa7\" species=\"LH_R\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints num0=\"0\" num1=\"0\" num2=\"0\" tShapeIndex=\"0\">0.30399596621706904,0.21247951594604686</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_reactant28 "";
    Real elmt_re36(unit = "") "re36";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"csa7\" species=\"LH_R\"/>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa38\" species=\"R_LH_des\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant31 "";
    Real elmt_product32 "";
    Real elmt_re82(unit = "") "re82";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa31\" species=\"FSH_bld\">
                <celldesigner:linkAnchor position=\"ESE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa96\" species=\"sa31_degraded\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product102 "";
    Real elmt_reactant101 "";
    Real elmt_re83(unit = "") "re83";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa98\" species=\"s93\"/>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa28\" species=\"LH_bld\">
                <celldesigner:linkAnchor position=\"NNE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa27\" modifiers=\"LH_Pit\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa27\" species=\"LH_Pit\">
                  <celldesigner:linkAnchor position=\"SSE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"csa2\" modifiers=\"GnRH_R_a\" targetLineIndex=\"-1,6\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa2\" species=\"GnRH_R_a\">
                  <celldesigner:linkAnchor position=\"NW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"csa13\" modifiers=\"Ago_R_a\" targetLineIndex=\"-1,5\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa13\" species=\"Ago_R_a\">
                  <celldesigner:linkAnchor position=\"WNW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product104 "";
    Real elmt_reactant103 "";
    Real elmt_re26(unit = "") "re26";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa34\" species=\"s38\"/>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa30\" species=\"FSH_pit\">
                <celldesigner:linkAnchor position=\"NW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa35\" modifiers=\"InhA_delay\" targetLineIndex=\"-1,6\" type=\"INHIBITION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa35\" species=\"InhA_delay\">
                  <celldesigner:linkAnchor position=\"NNE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa33\" modifiers=\"InhB\" targetLineIndex=\"-1,3\" type=\"INHIBITION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa33\" species=\"InhB\">
                  <celldesigner:linkAnchor position=\"ENE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_re28(unit = "") "re28";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa27\" species=\"LH_Pit\"/>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa97\" species=\"s92\"/>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"csa2\" modifiers=\"GnRH_R_a\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa2\" species=\"GnRH_R_a\">
                  <celldesigner:linkAnchor position=\"NW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"csa13\" modifiers=\"Ago_R_a\" targetLineIndex=\"-1,5\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa13\" species=\"Ago_R_a\">
                  <celldesigner:linkAnchor position=\"WNW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product25 "";
    Real elmt_reactant24 "";
    Real elmt_re29(unit = "") "re29";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa30\" species=\"FSH_pit\"/>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa99\" species=\"s94\">
                <celldesigner:linkAnchor position=\"NE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"csa2\" modifiers=\"GnRH_R_a\" targetLineIndex=\"-1,4\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa2\" species=\"GnRH_R_a\">
                  <celldesigner:linkAnchor position=\"W\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"csa13\" modifiers=\"Ago_R_a\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa13\" species=\"Ago_R_a\">
                  <celldesigner:linkAnchor position=\"W\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_re3(unit = "") "re3";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"csa1\" species=\"GnRH_R_i\">
                <celldesigner:linkAnchor position=\"WSW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"csa2\" species=\"GnRH_R_a\">
                <celldesigner:linkAnchor position=\"ESE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_re62(unit = "") "re62";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa72\" species=\"s71\">
                <celldesigner:linkAnchor position=\"SSW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa54\" species=\"Sc1\">
                <celldesigner:linkAnchor position=\"NW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa53\" modifiers=\"OvF\" targetLineIndex=\"-1,3\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa53\" species=\"OvF\">
                  <celldesigner:linkAnchor position=\"NE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant75 "";
    Real elmt_product76 "";
    Real elmt_re2(unit = "") "re2";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"csa2\" species=\"GnRH_R_a\">
                <celldesigner:linkAnchor position=\"ENE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"csa1\" species=\"GnRH_R_i\">
                <celldesigner:linkAnchor position=\"WNW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_re64(unit = "") "re64";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa59\" species=\"Lut4\">
                <celldesigner:linkAnchor position=\"NNE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa73\" species=\"s72\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"csa2\" modifiers=\"GnRH_R_a\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa2\" species=\"GnRH_R_a\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"csa13\" modifiers=\"Ago_R_a\" targetLineIndex=\"-1,5\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa13\" species=\"Ago_R_a\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product78 "";
    Real elmt_reactant77 "";
    Real elmt_re65(unit = "") "re65";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa76\" species=\"s74\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa75\" species=\"E2\">
                <celldesigner:linkAnchor position=\"SE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa50\" editPoints=\"0.13168032777232908,0.14264985665515484\" modifiers=\"AF3\" targetLineIndex=\"-1,7\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa51\" modifiers=\"AF4\" targetLineIndex=\"-1,7\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa56\" modifiers=\"Lut1\" targetLineIndex=\"-1,6\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa56\" species=\"Lut1\">
                  <celldesigner:linkAnchor position=\"SSE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa59\" modifiers=\"Lut4\" targetLineIndex=\"-1,6\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa59\" species=\"Lut4\">
                  <celldesigner:linkAnchor position=\"SW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa49\" editPoints=\"0.039889690701262914,0.29709224831650893\" modifiers=\"AF2\" targetLineIndex=\"-1,7\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa52\" modifiers=\"PrF\" targetLineIndex=\"-1,7\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa28\" modifiers=\"LH_bld\" targetLineIndex=\"-1,3\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa28\" species=\"LH_bld\">
                  <celldesigner:linkAnchor position=\"SW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product80 "";
    Real elmt_reactant79 "";
    Real elmt_re66(unit = "") "re66";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa75\" species=\"E2\">
                <celldesigner:linkAnchor position=\"NNW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa77\" species=\"sa75_degraded\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product82 "";
    Real elmt_reactant81 "";
    Real elmt_re67(unit = "") "re67";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa79\" species=\"s76\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa78\" species=\"P4\">
                <celldesigner:linkAnchor position=\"ENE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa59\" modifiers=\"Lut4\" targetLineIndex=\"-1,3\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa59\" species=\"Lut4\">
                  <celldesigner:linkAnchor position=\"E\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant83 "";
    Real elmt_product84 "";
    Real elmt_re24(unit = "") "re24";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa3\" species=\"GnRH\">
                <celldesigner:linkAnchor position=\"NE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa24\" species=\"sa3_degraded\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_re25(unit = "") "re25";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa29\" species=\"s33\">
                <celldesigner:linkAnchor position=\"ENE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa27\" species=\"LH_Pit\">
                <celldesigner:linkAnchor position=\"WSW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa10\" modifiers=\"E2\" targetLineIndex=\"-1,3\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa10\" species=\"E2\">
                  <celldesigner:linkAnchor position=\"NE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa11\" modifiers=\"P4\" targetLineIndex=\"-1,4\" type=\"INHIBITION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa11\" species=\"P4\">
                  <celldesigner:linkAnchor position=\"SE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant20 "";
    Real elmt_product21 "";
    Real elmt_re69(unit = "") "re69";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa82\" species=\"s78\">
                <celldesigner:linkAnchor position=\"WSW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa81\" species=\"InhA\">
                <celldesigner:linkAnchor position=\"NNE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa52\" modifiers=\"PrF\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa52\" species=\"PrF\">
                  <celldesigner:linkAnchor position=\"SSE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa54\" modifiers=\"Sc1\" targetLineIndex=\"-1,6\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa56\" modifiers=\"Lut1\" targetLineIndex=\"-1,6\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa57\" modifiers=\"Lut2\" targetLineIndex=\"-1,6\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa57\" species=\"Lut2\">
                  <celldesigner:linkAnchor position=\"NNE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa58\" modifiers=\"Lut3\" targetLineIndex=\"-1,6\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa58\" species=\"Lut3\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa59\" modifiers=\"Lut4\" targetLineIndex=\"-1,3\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa59\" species=\"Lut4\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant85 "";
    Real elmt_product86 "";
    Real elmt_re8(unit = "") "re8";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa3\" species=\"GnRH\"/>
              <celldesigner:baseReactant alias=\"sa2\" species=\"R_GnRH_a\">
                <celldesigner:linkAnchor position=\"WNW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"csa2\" species=\"GnRH_R_a\">
                <celldesigner:linkAnchor position=\"NNW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints num0=\"0\" num1=\"0\" num2=\"0\" tShapeIndex=\"0\">0.6095198905231723,-0.04981961204627805</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product12 "";
    Real elmt_reactant10 "";
    Real elmt_reactant11 "";
    Real elmt_re6(unit = "") "re6";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"csa1\" species=\"GnRH_R_i\"/>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa1\" species=\"R_GnRH_i\">
                <celldesigner:linkAnchor position=\"SW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_re5(unit = "") "re5";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa2\" species=\"R_GnRH_a\">
                <celldesigner:linkAnchor position=\"SSE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa1\" species=\"R_GnRH_i\">
                <celldesigner:linkAnchor position=\"NNE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_re71(unit = "") "re71";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa78\" species=\"P4\">
                <celldesigner:linkAnchor position=\"SSW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa84\" species=\"sa78_degraded\">
                <celldesigner:linkAnchor position=\"NNE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product88 "";
    Real elmt_reactant87 "";
    Real elmt_re4(unit = "") "re4";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa1\" species=\"R_GnRH_i\">
                <celldesigner:linkAnchor position=\"NNW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa2\" species=\"R_GnRH_a\">
                <celldesigner:linkAnchor position=\"SSW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_re72(unit = "") "re72";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa87\" species=\"s82\">
                <celldesigner:linkAnchor position=\"NNE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa86\" species=\"InhB\">
                <celldesigner:linkAnchor position=\"SSE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa49\" editPoints=\"0.5233841329062772,0.5987295039414395\" modifiers=\"AF2\" targetLineIndex=\"-1,6\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa49\" species=\"AF2\">
                  <celldesigner:linkAnchor position=\"SW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa55\" editPoints=\"0.40653747888136027,-0.13894465268283596\" modifiers=\"Sc2\" targetLineIndex=\"-1,4\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa55\" species=\"Sc2\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant89 "";
    Real elmt_product90 "";
    Real elmt_re15(unit = "") "re15";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"csa2\" species=\"GnRH_R_a\"/>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa3\" species=\"GnRH\"/>
              <celldesigner:baseProduct alias=\"sa2\" species=\"R_GnRH_a\"/>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints num0=\"0\" num1=\"0\" num2=\"0\" tShapeIndex=\"0\">0.29990334650755646,0.510340009761047</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_product17 "";
    Real elmt_re59(unit = "") "re59";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa52\" species=\"PrF\">
                <celldesigner:linkAnchor position=\"ESE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa69\" species=\"sa52_degraded\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa61\" modifiers=\"R_Foll\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa61\" species=\"R_Foll\">
                  <celldesigner:linkAnchor position=\"SSW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"csa7\" modifiers=\"LH_R\" targetLineIndex=\"-1,6\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa7\" species=\"LH_R\">
                  <celldesigner:linkAnchor position=\"SSE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant69 "";
    Real elmt_product70 "";
    Real elmt_re51(unit = "") "re51";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa56\" species=\"Lut1\">
                <celldesigner:linkAnchor position=\"NE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa57\" species=\"Lut2\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"csa2\" modifiers=\"GnRH_R_a\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa2\" species=\"GnRH_R_a\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"csa13\" modifiers=\"Ago_R_a\" targetLineIndex=\"-1,5\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa13\" species=\"Ago_R_a\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product56 "";
    Real elmt_reactant55 "";
    Real elmt_re95(unit = "") "re95";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"csa14\" species=\"Ago_R_i\">
                <celldesigner:linkAnchor position=\"WNW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa108\" species=\"s106\">
                <celldesigner:linkAnchor position=\"SE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant118 "";
    Real elmt_product119 "";
    Real elmt_re52(unit = "") "re52";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa57\" species=\"Lut2\">
                <celldesigner:linkAnchor position=\"SE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa58\" species=\"Lut3\">
                <celldesigner:linkAnchor position=\"WNW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"csa2\" modifiers=\"GnRH_R_a\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa2\" species=\"GnRH_R_a\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"csa13\" modifiers=\"Ago_R_a\" targetLineIndex=\"-1,5\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa13\" species=\"Ago_R_a\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product58 "";
    Real elmt_reactant57 "";
    Real elmt_re53(unit = "") "re53";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa58\" species=\"Lut3\">
                <celldesigner:linkAnchor position=\"ESE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa59\" species=\"Lut4\">
                <celldesigner:linkAnchor position=\"WNW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"csa2\" modifiers=\"GnRH_R_a\" targetLineIndex=\"-1,3\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa2\" species=\"GnRH_R_a\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"csa13\" modifiers=\"Ago_R_a\" targetLineIndex=\"-1,5\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa13\" species=\"Ago_R_a\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product60 "";
    Real elmt_reactant59 "";
    Real elmt_re97(unit = "") "re97";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa2\" species=\"R_GnRH_a\">
                <celldesigner:linkAnchor position=\"ESE\"/>
              </celldesigner:baseReactant>
              <celldesigner:baseReactant alias=\"sa101\" species=\"Ago_c\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"csa13\" species=\"Ago_R_a\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints num0=\"0\" num1=\"0\" num2=\"0\" tShapeIndex=\"0\">0.38472589357544784,0.29404666130329815</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant121 "";
    Real elmt_reactant120 "";
    Real elmt_product122 "";
    Real elmt_re54(unit = "") "re54";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa62\" species=\"s64\">
                <celldesigner:linkAnchor position=\"SSW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa61\" species=\"R_Foll\">
                <celldesigner:linkAnchor position=\"WNW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa31\" modifiers=\"FSH_bld\" targetLineIndex=\"-1,5\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa31\" species=\"FSH_bld\">
                  <celldesigner:linkAnchor position=\"SE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant61 "";
    Real elmt_product62 "";
    Real elmt_re98(unit = "") "re98";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"csa13\" species=\"Ago_R_a\">
                <celldesigner:linkAnchor position=\"NNW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa101\" species=\"Ago_c\">
                <celldesigner:linkAnchor position=\"WSW\"/>
              </celldesigner:baseProduct>
              <celldesigner:baseProduct alias=\"sa2\" species=\"R_GnRH_a\">
                <celldesigner:linkAnchor position=\"SE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints num0=\"0\" num1=\"0\" num2=\"0\" tShapeIndex=\"0\">0.17627284220203876,0.3898977129065644</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product124 "";
    Real elmt_product125 "";
    Real elmt_reactant123 "";
    Real elmt_re11(unit = "") "re11";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa1\" species=\"R_GnRH_i\">
                <celldesigner:linkAnchor position=\"SSE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa13\" species=\"sa1_degraded\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product14 "";
    Real elmt_reactant13 "";
    Real elmt_re99(unit = "") "re99";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"csa14\" species=\"Ago_R_i\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa1\" species=\"R_GnRH_i\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant126 "";
    Real elmt_product127 "";
    Real elmt_re56(unit = "") "re56";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa61\" species=\"R_Foll\">
                <celldesigner:linkAnchor position=\"ENE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa63\" species=\"sa61_degraded\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa78\" editPoints=\"-0.183654808427693,0.3033878774070103 0.0912005269682985,0.7212454808874131 0.9289141801699583,0.19498509464525587\" modifiers=\"P4\" targetLineIndex=\"-1,5\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa78\" species=\"P4\">
                  <celldesigner:linkAnchor position=\"NNW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant63 "";
    Real elmt_product64 "";
    Real elmt_re57(unit = "") "re57";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa66\" species=\"s66\"/>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa50\" species=\"AF3\">
                <celldesigner:linkAnchor position=\"SW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"csa11\" modifiers=\"FSH_R\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa11\" species=\"FSH_R\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa50\" modifiers=\"AF3\" targetLineIndex=\"-1,3\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa50\" species=\"AF3\">
                  <celldesigner:linkAnchor position=\"SSW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product66 "";
    Real elmt_reactant65 "";
    Real elmt_re58(unit = "") "re58";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa68\" species=\"s67\"/>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa51\" species=\"AF4\">
                <celldesigner:linkAnchor position=\"SW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"csa7\" modifiers=\"LH_R\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa7\" species=\"LH_R\">
                  <celldesigner:linkAnchor position=\"SSW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa51\" modifiers=\"AF4\" targetLineIndex=\"-1,7\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa51\" species=\"AF4\">
                  <celldesigner:linkAnchor position=\"SSW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product68 "";
    Real elmt_reactant67 "";
    Real elmt_re60(unit = "") "re60";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa70\" species=\"s69\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa53\" species=\"OvF\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa61\" modifiers=\"R_Foll\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa61\" species=\"R_Foll\">
                  <celldesigner:linkAnchor position=\"SE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"csa7\" modifiers=\"LH_R\" targetLineIndex=\"-1,6\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa7\" species=\"LH_R\">
                  <celldesigner:linkAnchor position=\"SE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa52\" modifiers=\"PrF\" targetLineIndex=\"-1,7\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product72 "";
    Real elmt_reactant71 "";
    Real elmt_re61(unit = "") "re61";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa53\" species=\"OvF\">
                <celldesigner:linkAnchor position=\"SSE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa71\" species=\"sa53_degraded\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product74 "";
    Real elmt_reactant73 "";
    Real elmt_re49(unit = "") "re49";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa54\" species=\"Sc1\">
                <celldesigner:linkAnchor position=\"ENE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa55\" species=\"Sc2\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_re40(unit = "") "re40";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa46\" species=\"R_FSH_des\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa47\" species=\"R_FSH\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product40 "";
    Real elmt_reactant39 "";
    Real elmt_re84(unit = "") "re84";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa100\" species=\"s95\">
                <celldesigner:linkAnchor position=\"ESE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa31\" species=\"FSH_bld\">
                <celldesigner:linkAnchor position=\"WSW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa30\" modifiers=\"FSH_pit\" targetLineIndex=\"-1,4\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa30\" species=\"FSH_pit\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"csa2\" modifiers=\"GnRH_R_a\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa2\" species=\"GnRH_R_a\">
                  <celldesigner:linkAnchor position=\"W\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"csa13\" modifiers=\"Ago_R_a\" targetLineIndex=\"-1,3\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa13\" species=\"Ago_R_a\">
                  <celldesigner:linkAnchor position=\"W\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant105 "";
    Real elmt_product106 "";
    Real elmt_re107(unit = "") "re107";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"csa15\" species=\"Ant_R\">
                <celldesigner:linkAnchor position=\"ENE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa117\" species=\"s116\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product145 "";
    Real elmt_reactant144 "";
    Real elmt_re85(unit = "") "re85";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa31\" species=\"FSH_bld\">
                <celldesigner:linkAnchor position=\"SSW\"/>
              </celldesigner:baseReactant>
              <celldesigner:baseReactant alias=\"sa47\" species=\"R_FSH\"/>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"csa11\" species=\"FSH_R\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints num0=\"0\" num1=\"0\" num2=\"0\" tShapeIndex=\"0\">-0.8123452714969446,0.9941134400616161</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant108 "";
    Real elmt_reactant107 "";
    Real elmt_product109 "";
    Real elmt_re108(unit = "") "re108";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa112\" species=\"Ant_c\">
                <celldesigner:linkAnchor position=\"SSE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa113\" species=\"Ant_p\">
                <celldesigner:linkAnchor position=\"NNE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product147 "";
    Real elmt_reactant146 "";
    Real elmt_re42(unit = "") "re42";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa48\" species=\"AF1\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa49\" species=\"AF2\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"csa11\" modifiers=\"FSH_R\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa11\" species=\"FSH_R\">
                  <celldesigner:linkAnchor position=\"WSW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant41 "";
    Real elmt_product42 "";
    Real elmt_re109(unit = "") "re109";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa113\" species=\"Ant_p\">
                <celldesigner:linkAnchor position=\"NNW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa112\" species=\"Ant_c\">
                <celldesigner:linkAnchor position=\"SSW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant148 "";
    Real elmt_product149 "";
    Real elmt_re43(unit = "") "re43";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa60\" species=\"s62\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa48\" species=\"AF1\">
                <celldesigner:linkAnchor position=\"WNW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"csa11\" modifiers=\"FSH_R\" targetLineIndex=\"-1,4\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa11\" species=\"FSH_R\">
                  <celldesigner:linkAnchor position=\"W\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product44 "";
    Real elmt_reactant43 "";
    Real elmt_re87(unit = "") "re87";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa81\" species=\"InhA\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa35\" species=\"InhA_delay\">
                <celldesigner:linkAnchor position=\"SSE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant110 "";
    Real elmt_product111 "";
    Real elmt_re44(unit = "") "re44";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa49\" species=\"AF2\"/>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa50\" species=\"AF3\">
                <celldesigner:linkAnchor position=\"WSW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"csa7\" editPoints=\"0.429489257530815,-0.10154010233523625\" modifiers=\"LH_R\" targetLineIndex=\"-1,4\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa7\" species=\"LH_R\">
                  <celldesigner:linkAnchor position=\"WSW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa61\" modifiers=\"R_Foll\" targetLineIndex=\"-1,6\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa61\" species=\"R_Foll\">
                  <celldesigner:linkAnchor position=\"WSW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product46 "";
    Real elmt_reactant45 "";
    Real elmt_re103(unit = "") "re103";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa115\" species=\"s114\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa112\" species=\"Ant_c\">
                <celldesigner:linkAnchor position=\"NNE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa111\" modifiers=\"Ant_d\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa111\" species=\"Ant_d\">
                  <celldesigner:linkAnchor position=\"NW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product135 "";
    Real elmt_reactant134 "";
    Real elmt_re45(unit = "") "re45";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa50\" species=\"AF3\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa51\" species=\"AF4\">
                <celldesigner:linkAnchor position=\"NW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa61\" modifiers=\"R_Foll\" targetLineIndex=\"-1,5\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa61\" species=\"R_Foll\">
                  <celldesigner:linkAnchor position=\"WSW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"csa7\" modifiers=\"LH_R\" targetLineIndex=\"-1,4\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa7\" species=\"LH_R\">
                  <celldesigner:linkAnchor position=\"SW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant47 "";
    Real elmt_product48 "";
    Real elmt_re104(unit = "") "re104";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa112\" species=\"Ant_c\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa116\" species=\"s115\">
                <celldesigner:linkAnchor position=\"SSE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product137 "";
    Real elmt_reactant136 "";
    Real elmt_re46(unit = "") "re46";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa51\" species=\"AF4\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa52\" species=\"PrF\">
                <celldesigner:linkAnchor position=\"WNW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"csa7\" modifiers=\"LH_R\" targetLineIndex=\"-1,4\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"csa7\" species=\"LH_R\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa61\" modifiers=\"R_Foll\" targetLineIndex=\"-1,5\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa61\" species=\"R_Foll\">
                  <celldesigner:linkAnchor position=\"WSW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product50 "";
    Real elmt_reactant49 "";
    Real elmt_re105(unit = "") "re105";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"csa15\" species=\"Ant_R\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa2\" species=\"R_GnRH_a\">
                <celldesigner:linkAnchor position=\"NNE\"/>
              </celldesigner:baseProduct>
              <celldesigner:baseProduct alias=\"sa112\" species=\"Ant_c\">
                <celldesigner:linkAnchor position=\"NNW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints num0=\"0\" num1=\"0\" num2=\"0\" tShapeIndex=\"0\">0.1929620377729826,0.48410355399114025</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant138 "";
    Real elmt_product140 "";
    Real elmt_product139 "";
    Real elmt_re106(unit = "") "re106";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa2\" species=\"R_GnRH_a\">
                <celldesigner:linkAnchor position=\"NNW\"/>
              </celldesigner:baseReactant>
              <celldesigner:baseReactant alias=\"sa112\" species=\"Ant_c\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"csa15\" species=\"Ant_R\">
                <celldesigner:linkAnchor position=\"SSW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints num0=\"0\" num1=\"0\" num2=\"0\" tShapeIndex=\"0\">0.07488361530600152,0.32190303167934564</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant142 "";
    Real elmt_reactant141 "";
    Real elmt_product143 "";
    Real elmt_re100(unit = "") "re100";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa105\" species=\"Ago_d\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa109\" species=\"s107\">
                <celldesigner:linkAnchor position=\"NNW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant128 "";
    Real elmt_product129 "";
    Real elmt_re101(unit = "") "re101";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa110\" species=\"s108\">
                <celldesigner:linkAnchor position=\"NNW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa101\" species=\"Ago_c\">
                <celldesigner:linkAnchor position=\"SSE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa105\" modifiers=\"Ago_d\" targetLineIndex=\"-1,7\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa105\" species=\"Ago_d\">
                  <celldesigner:linkAnchor position=\"SW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant130 "";
    Real elmt_product131 "";
    Real elmt_re90(unit = "") "re90";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa101\" species=\"Ago_c\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa107\" species=\"s102\">
                <celldesigner:linkAnchor position=\"NNW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product113 "";
    Real elmt_reactant112 "";
    Real elmt_re102(unit = "") "re102";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa111\" species=\"Ant_d\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa114\" species=\"s113\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant132 "";
    Real elmt_product133 "";
    Real elmt_re93(unit = "") "re93";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"csa13\" species=\"Ago_R_a\">
                <celldesigner:linkAnchor position=\"WSW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"csa14\" species=\"Ago_R_i\">
                <celldesigner:linkAnchor position=\"NNE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_product115 "";
    Real elmt_reactant114 "";
    Real elmt_re50(unit = "") "re50";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa55\" species=\"Sc2\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa56\" species=\"Lut1\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant53 "";
    Real elmt_product54 "";
    Real elmt_re94(unit = "") "re94";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"csa14\" species=\"Ago_R_i\">
                <celldesigner:linkAnchor position=\"ENE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"csa13\" species=\"Ago_R_a\">
                <celldesigner:linkAnchor position=\"SSW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
                                                                                                </annotation>"));
    Real elmt_reactant116 "";
    Real elmt_product117 "";


    initial equation
        elmt_product74 = 1.0;
        elmt_product72 = 1.0;
        elmt_reactant41 = 1.0;
        elmt_product78 = 1.0;
        elmt_product76 = 1.0;
        elmt_reactant108 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_product70 = 1.0;
        elmt_reactant43 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_reactant110 = 1.0;
        elmt_reactant118 = 1.0;
        elmt_reactant116 = 1.0;
        elmt_product68 = 1.0;
        elmt_reactant114 = 1.0;
        elmt_reactant112 = 1.0;
        elmt_product84 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_product82 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_product88 = 1.0;
        elmt_product86 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_product80 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_product102 = 1.0;
        elmt_reactant121 = 1.0;
        elmt_reactant120 = 1.0;
        elmt_product104 = 1.0;
        elmt_product100 = 1.0;
        elmt_product109 = 1.0;
        elmt_reactant128 = 1.0;
        elmt_reactant126 = 1.0;
        elmt_product106 = 1.0;
        elmt_reactant123 = 1.0;
        elmt_product96 = 1.0;
        elmt_product94 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product12 = 1.0;
        elmt_product98 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_product92 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_product90 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product9 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_product23 = 1.0;
        elmt_product21 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 1.0;
        elmt_reactant107 = 1.0;
        elmt_product14 = 1.0;
        elmt_reactant105 = 1.0;
        elmt_reactant103 = 1.0;
        elmt_product19 = 1.0;
        elmt_reactant101 = 1.0;
        elmt_product17 = 1.0;
        elmt_product30 = 1.0;
        elmt_reactant83 = 1.0;
        elmt_reactant85 = 1.0;
        elmt_product34 = 1.0;
        elmt_product32 = 1.0;
        elmt_reactant81 = 1.0;
        elmt_reactant87 = 1.0;
        elmt_reactant89 = 1.0;
        elmt_product135 = 1.0;
        elmt_product137 = 1.0;
        elmt_product131 = 1.0;
        elmt_product133 = 1.0;
        elmt_product27 = 1.0;
        elmt_product25 = 1.0;
        elmt_product139 = 1.0;
        elmt_reactant95 = 1.0;
        elmt_product40 = 1.0;
        elmt_reactant97 = 1.0;
        elmt_reactant91 = 1.0;
        elmt_product44 = 1.0;
        elmt_reactant93 = 1.0;
        elmt_product42 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_product140 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant99 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product145 = 1.0;
        elmt_product147 = 1.0;
        elmt_product143 = 1.0;
        elmt_product38 = 1.0;
        elmt_product36 = 1.0;
        elmt_product149 = 1.0;
        elmt_reactant61 = 1.0;
        elmt_product52 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_product50 = 1.0;
        elmt_product56 = 1.0;
        elmt_product54 = 1.0;
        elmt_reactant69 = 1.0;
        elmt_reactant65 = 1.0;
        elmt_reactant67 = 1.0;
        elmt_product113 = 1.0;
        elmt_reactant132 = 1.0;
        elmt_reactant130 = 1.0;
        elmt_product115 = 1.0;
        elmt_product111 = 1.0;
        elmt_product48 = 1.0;
        elmt_reactant138 = 1.0;
        elmt_product46 = 1.0;
        elmt_reactant136 = 1.0;
        elmt_product117 = 1.0;
        elmt_product119 = 1.0;
        elmt_reactant134 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product62 = 1.0;
        elmt_reactant73 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant75 = 1.0;
        elmt_product60 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product66 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product64 = 1.0;
        elmt_reactant71 = 1.0;
        elmt_reactant77 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant79 = 1.0;
        elmt_product124 = 1.0;
        elmt_reactant142 = 1.0;
        elmt_reactant141 = 1.0;
        elmt_product125 = 1.0;
        elmt_product122 = 1.0;
        elmt_product58 = 1.0;
        elmt_reactant148 = 1.0;
        elmt_product127 = 1.0;
        elmt_reactant146 = 1.0;
        elmt_reactant144 = 1.0;
        elmt_product129 = 1.0;


    equation
        elmt_re37 = (elmt_default * (((elmt_p232 * elmt_R_LH_des * elmt_default) / elmt_default)));
        elmt_re38 = (elmt_default * (((elmt_p231 * elmt_LH_bld * elmt_default) / elmt_default)));
        elmt_re39 = (elmt_default * (((elmt_p244 * elmt_FSH_R * elmt_default) / elmt_default)));
        elmt_re73 = (elmt_default * (((elmt_p157 * elmt_InhB * elmt_default) / elmt_default)));
        elmt_re74 = (elmt_default * (((elmt_p30 * elmt_InhA_delay * elmt_default) / elmt_default)));
        elmt_re75 = (elmt_default * ((elmt_p311 / elmt_default)));
        elmt_re76 = (elmt_default * (((elmt_p304 * elmt_GnRH_R_i * elmt_default) / elmt_default)));
        elmt_re78 = (elmt_default * (((elmt_freq * elmt_mass) / elmt_default)));
        elmt_re35 = (elmt_default * ((((elmt_p230 / elmt_facLH) * elmt_LH_bld * elmt_default * elmt_R_LH * elmt_default) / elmt_default)));
        elmt_re36 = (elmt_default * (((elmt_p234 * elmt_LH_R * elmt_default) / elmt_default)));
        elmt_re82 = (elmt_default * (((elmt_p241 * elmt_FSH_bld * elmt_default) / elmt_default)));
        elmt_re83 = (elmt_default * ((((elmt_facLH / elmt_p12) * (elmt_p16 + ((elmt_p5 * Functions.pow((((elmt_GnRH_R_a * elmt_default) + (elmt_Ago_R_a * elmt_default)) / elmt_p8), elmt_p9)) / (1.0 + Functions.pow((((elmt_GnRH_R_a * elmt_default) + (elmt_Ago_R_a * elmt_default)) / elmt_p8), elmt_p9)))) * elmt_LH_Pit * elmt_default) / elmt_default)));
        elmt_re26 = (elmt_default * (((((elmt_p21 / (1.0 + Functions.pow(((elmt_InhA_delay * elmt_default) / elmt_p22), elmt_p24) + Functions.pow(((elmt_InhB * elmt_default) / elmt_p23), elmt_p25))) * 1.0) / (1.0 + Functions.pow((elmt_freq / elmt_p11), elmt_p13))) / elmt_default)));
        elmt_re28 = (elmt_default * ((((elmt_p16 + ((elmt_p5 * Functions.pow((((elmt_GnRH_R_a * elmt_default) + (elmt_Ago_R_a * elmt_default)) / elmt_p8), elmt_p9)) / (1.0 + Functions.pow((((elmt_GnRH_R_a * elmt_default) + (elmt_Ago_R_a * elmt_default)) / elmt_p8), elmt_p9)))) * elmt_LH_Pit * elmt_default) / elmt_default)));
        elmt_re29 = (elmt_default * ((((elmt_p17 + ((elmt_p28 * Functions.pow((((elmt_GnRH_R_a * elmt_default) + (elmt_Ago_R_a * elmt_default)) / elmt_p18), elmt_p20)) / (1.0 + Functions.pow((((elmt_GnRH_R_a * elmt_default) + (elmt_Ago_R_a * elmt_default)) / elmt_p18), elmt_p20)))) * elmt_FSH_pit * elmt_default) / elmt_default)));
        elmt_re3 = (elmt_default * (((elmt_p310 * elmt_GnRH_R_i * elmt_default) / elmt_default)));
        elmt_re62 = (elmt_default * ((((elmt_p26 * Functions.pow(((elmt_OvF * elmt_default) / elmt_p56), elmt_p57)) / (1.0 + Functions.pow(((elmt_OvF * elmt_default) / elmt_p56), elmt_p57))) / elmt_default)));
        elmt_re2 = (elmt_default * (((elmt_p309 * elmt_GnRH_R_a * elmt_default) / elmt_default)));
        elmt_re64 = (elmt_default * (((elmt_p42 * (1.0 + ((elmt_p80 * Functions.pow((((elmt_GnRH_R_a * elmt_default) + (elmt_Ago_R_a * elmt_default)) / elmt_p83), elmt_p84)) / (1.0 + Functions.pow((((elmt_GnRH_R_a * elmt_default) + (elmt_Ago_R_a * elmt_default)) / elmt_p83), elmt_p84)))) * elmt_Lut4 * elmt_default) / elmt_default)));
        elmt_re65 = (elmt_default * (((elmt_facE2 * (elmt_p158 + (elmt_p152 * elmt_AF2 * elmt_default) + (elmt_p159 * elmt_AF3 * elmt_default * elmt_LH_bld * elmt_default) + (elmt_p160 * elmt_AF4 * elmt_default) + (elmt_p161 * elmt_PrF * elmt_default * elmt_LH_bld * elmt_default) + (elmt_p164 * elmt_Lut1 * elmt_default) + (elmt_p165 * elmt_Lut4 * elmt_default))) / elmt_default)));
        elmt_re66 = (elmt_default * (((elmt_p154 * elmt_E2 * elmt_default) / elmt_default)));
        elmt_re67 = (elmt_default * (((elmt_facP4 * (elmt_p166 + (elmt_p167 * elmt_Lut4 * elmt_default))) / elmt_default)));
        elmt_re24 = (elmt_default * (((elmt_p300 * elmt_GnRH * elmt_default) / elmt_default)));
        elmt_re25 = (elmt_default * ((((elmt_p1 + ((elmt_p2 * Functions.pow(((elmt_E2 * elmt_default) / (elmt_p3 * elmt_facE2)), elmt_p6)) / (1.0 + Functions.pow(((elmt_E2 * elmt_default) / (elmt_p3 * elmt_facE2)), elmt_p6)))) / (1.0 + Functions.pow(((elmt_P4 * elmt_default) / (elmt_p4 * elmt_facP4)), elmt_p7))) / elmt_default)));
        elmt_re69 = (elmt_default * (((elmt_p168 + (elmt_p169 * elmt_PrF * elmt_default) + (elmt_p177 * elmt_Sc1 * elmt_default) + (elmt_p178 * elmt_Lut1 * elmt_default) + (elmt_p170 * elmt_Lut2 * elmt_default) + (elmt_p171 * elmt_Lut3 * elmt_default) + (elmt_p172 * elmt_Lut4 * elmt_default)) / elmt_default)));
        elmt_re8 = (elmt_default * (((elmt_p302 * elmt_GnRH * elmt_default * elmt_R_GnRH_a * elmt_default) / elmt_default)));
        elmt_re6 = (elmt_default * (((elmt_p305 * elmt_GnRH_R_i * elmt_default) / elmt_default)));
        elmt_re5 = (elmt_default * (((elmt_p306 * elmt_R_GnRH_a * elmt_default) / elmt_default)));
        elmt_re71 = (elmt_default * (((elmt_p155 * elmt_P4 * elmt_default) / elmt_default)));
        elmt_re4 = (elmt_default * (((elmt_p307 * elmt_R_GnRH_i * elmt_default) / elmt_default)));
        elmt_re72 = (elmt_default * (((elmt_p173 + (elmt_p174 * elmt_AF2 * elmt_default) + (elmt_p175 * elmt_Sc2 * elmt_default)) / elmt_default)));
        elmt_re15 = (elmt_default * (((elmt_p303 * elmt_GnRH_R_a * elmt_default) / elmt_default)));
        elmt_re59 = (elmt_default * (((elmt_p35 * Functions.pow(((elmt_LH_R * elmt_default) / elmt_p52), elmt_p45) * elmt_R_Foll * elmt_default * elmt_PrF * elmt_default) / elmt_default)));
        elmt_re51 = (elmt_default * (((elmt_p39 * (1.0 + ((elmt_p80 * Functions.pow((((elmt_GnRH_R_a * elmt_default) + (elmt_Ago_R_a * elmt_default)) / elmt_p83), elmt_p84)) / (1.0 + Functions.pow((((elmt_GnRH_R_a * elmt_default) + (elmt_Ago_R_a * elmt_default)) / elmt_p83), elmt_p84)))) * elmt_Lut1 * elmt_default) / elmt_default)));
        elmt_re95 = (elmt_default * (((elmt_p314 * elmt_Ago_R_i * elmt_default) / elmt_default)));
        elmt_re52 = (elmt_default * (((elmt_p40 * (1.0 + ((elmt_p80 * Functions.pow((((elmt_GnRH_R_a * elmt_default) + (elmt_Ago_R_a * elmt_default)) / elmt_p83), elmt_p84)) / (1.0 + Functions.pow((((elmt_GnRH_R_a * elmt_default) + (elmt_Ago_R_a * elmt_default)) / elmt_p83), elmt_p84)))) * elmt_Lut2 * elmt_default) / elmt_default)));
        elmt_re53 = (elmt_default * (((elmt_p41 * (1.0 + ((elmt_p80 * Functions.pow((((elmt_GnRH_R_a * elmt_default) + (elmt_Ago_R_a * elmt_default)) / elmt_p83), elmt_p84)) / (1.0 + Functions.pow((((elmt_GnRH_R_a * elmt_default) + (elmt_Ago_R_a * elmt_default)) / elmt_p83), elmt_p84)))) * elmt_Lut3 * elmt_default) / elmt_default)));
        elmt_re97 = (elmt_default * (((elmt_p312 * elmt_R_GnRH_a * elmt_default * elmt_Ago_c * elmt_default) / elmt_default)));
        elmt_re54 = (elmt_default * ((((elmt_p94 * Functions.pow(((elmt_FSH_bld * elmt_default) / elmt_p90), elmt_p91)) / (1.0 + Functions.pow(((elmt_FSH_bld * elmt_default) / elmt_p90), elmt_p91))) / elmt_default)));
        elmt_re98 = (elmt_default * (((elmt_p313 * elmt_Ago_R_a * elmt_default) / elmt_default)));
        elmt_re11 = (elmt_default * (((elmt_p308 * elmt_R_GnRH_i * elmt_default) / elmt_default)));
        elmt_re99 = (elmt_default * (((elmt_p315 * elmt_Ago_R_i * elmt_default) / elmt_default)));
        elmt_re56 = (elmt_default * (((((elmt_p95 * Functions.pow(((elmt_P4 * elmt_default) / (elmt_p92 * elmt_facP4)), elmt_p93)) / (1.0 + Functions.pow(((elmt_P4 * elmt_default) / (elmt_p92 * elmt_facP4)), elmt_p93))) * elmt_R_Foll * elmt_default) / elmt_default)));
        elmt_re57 = (elmt_default * (((elmt_p31 * elmt_FSH_R * elmt_default * elmt_AF3 * elmt_default * (1.0 - ((elmt_AF3 * elmt_default) / elmt_p55))) / elmt_default)));
        elmt_re58 = (elmt_default * (((elmt_p33 * Functions.pow(((elmt_LH_R * elmt_default) / elmt_p52), elmt_p44) * elmt_AF4 * elmt_default * (1.0 - ((elmt_AF4 * elmt_default) / elmt_p55))) / elmt_default)));
        elmt_re60 = (elmt_default * ((((elmt_p27 * elmt_R_Foll * elmt_default * Functions.pow(((elmt_LH_R * elmt_default) / elmt_p52), elmt_p45) * Functions.pow(((elmt_PrF * elmt_default) / elmt_p53), elmt_p54)) / (1.0 + Functions.pow(((elmt_PrF * elmt_default) / elmt_p53), elmt_p54))) / elmt_default)));
        elmt_re61 = (elmt_default * (((elmt_p36 * elmt_OvF * elmt_default) / elmt_default)));
        elmt_re49 = (elmt_default * (((elmt_p37 * elmt_Sc1 * elmt_default) / elmt_default)));
        elmt_re40 = (elmt_default * (((elmt_p242 * elmt_R_FSH_des * elmt_default) / elmt_default)));
        elmt_re84 = (elmt_default * ((((elmt_facFSH / elmt_p12) * (elmt_p17 + ((elmt_p28 * Functions.pow((((elmt_GnRH_R_a * elmt_default) + (elmt_Ago_R_a * elmt_default)) / elmt_p18), elmt_p20)) / (1.0 + Functions.pow((((elmt_GnRH_R_a * elmt_default) + (elmt_Ago_R_a * elmt_default)) / elmt_p18), elmt_p20)))) * elmt_FSH_pit * elmt_default) / elmt_default)));
        elmt_re107 = (elmt_default * (((elmt_p514 * elmt_Ant_R) / elmt_default)));
        elmt_re85 = (elmt_default * ((((elmt_p240 / elmt_facFSH) * elmt_FSH_bld * elmt_default * elmt_R_FSH * elmt_default) / elmt_default)));
        elmt_re108 = (elmt_default * (((elmt_p476 * elmt_Ant_c) / elmt_default)));
        elmt_re42 = (elmt_default * (((elmt_p50 * elmt_FSH_R * elmt_default * elmt_AF1 * elmt_default) / elmt_default)));
        elmt_re109 = (elmt_default * (((elmt_p477 * elmt_Ant_p) / elmt_default)));
        elmt_re43 = (elmt_default * ((((elmt_p49 * Functions.pow(((elmt_FSH_R * elmt_default) / elmt_p48), elmt_p47)) / (1.0 + Functions.pow(((elmt_FSH_R * elmt_default) / elmt_p48), elmt_p47))) / elmt_default)));
        elmt_re87 = (elmt_default * (((elmt_p156 * elmt_InhA * elmt_default) / elmt_default)));
        elmt_re44 = (elmt_default * (((elmt_p51 * Functions.pow(((elmt_LH_R * elmt_default) / elmt_p52), elmt_p46) * elmt_R_Foll * elmt_default * elmt_AF2 * elmt_default) / elmt_default)));
        elmt_re103 = (elmt_default * ((((elmt_p474 / elmt_p473) * elmt_Ant_d) / elmt_default)));
        elmt_re45 = (elmt_default * (((elmt_p32 * Functions.pow(((elmt_LH_R * elmt_default) / elmt_p52), elmt_p43) * elmt_R_Foll * elmt_default * elmt_AF3 * elmt_default) / elmt_default)));
        elmt_re104 = (elmt_default * (((elmt_p475 * elmt_Ant_c) / elmt_default)));
        elmt_re46 = (elmt_default * (((((elmt_p34 * elmt_LH_R * elmt_default) / elmt_p52) * elmt_R_Foll * elmt_default * elmt_AF4 * elmt_default) / elmt_default)));
        elmt_re105 = (elmt_default * (((elmt_p513 * elmt_Ant_R) / elmt_default)));
        elmt_re106 = (elmt_default * (((elmt_p512 * elmt_R_GnRH_a * elmt_default * elmt_Ant_c) / elmt_default)));
        elmt_re100 = (elmt_default * (((elmt_p274 * elmt_Ago_d * elmt_default) / elmt_default)));
        elmt_re101 = (elmt_default * ((((elmt_p274 / elmt_p273) * elmt_Ago_d * elmt_default) / elmt_default)));
        elmt_re90 = (elmt_default * (((elmt_p275 * elmt_Ago_c * elmt_default) / elmt_default)));
        elmt_re102 = (elmt_default * (((elmt_p474 * elmt_Ant_d) / elmt_default)));
        elmt_re93 = (elmt_default * (((elmt_p319 * elmt_Ago_R_a * elmt_default) / elmt_default)));
        elmt_re50 = (elmt_default * (((elmt_p38 * elmt_Sc2 * elmt_default) / elmt_default)));
        elmt_re94 = (elmt_default * (((elmt_p320 * elmt_Ago_R_i * elmt_default) / elmt_default)));
        der(elmt_product74) = 0;
        der(elmt_product72) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_product78) = 0;
        der(elmt_product76) = 0;
        der(elmt_reactant108) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_product70) = 0;
        der(elmt_reactant43) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_reactant110) = 0;
        der(elmt_reactant118) = 0;
        der(elmt_reactant116) = 0;
        der(elmt_product68) = 0;
        der(elmt_reactant114) = 0;
        der(elmt_reactant112) = 0;
        der(elmt_product84) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_product82) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_product88) = 0;
        der(elmt_product86) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_product80) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_product102) = 0;
        der(elmt_reactant121) = 0;
        der(elmt_reactant120) = 0;
        der(elmt_product104) = 0;
        der(elmt_product100) = 0;
        der(elmt_product109) = 0;
        der(elmt_reactant128) = 0;
        der(elmt_reactant126) = 0;
        der(elmt_product106) = 0;
        der(elmt_reactant123) = 0;
        der(elmt_product96) = 0;
        der(elmt_product94) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product12) = 0;
        der(elmt_product98) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_product92) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_product90) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product9) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product23) = 0;
        der(elmt_product21) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_reactant107) = 0;
        der(elmt_product14) = 0;
        der(elmt_reactant105) = 0;
        der(elmt_reactant103) = 0;
        der(elmt_product19) = 0;
        der(elmt_reactant101) = 0;
        der(elmt_product17) = 0;
        der(elmt_product30) = 0;
        der(elmt_reactant83) = 0;
        der(elmt_reactant85) = 0;
        der(elmt_product34) = 0;
        der(elmt_product32) = 0;
        der(elmt_reactant81) = 0;
        der(elmt_reactant87) = 0;
        der(elmt_reactant89) = 0;
        der(elmt_product135) = 0;
        der(elmt_product137) = 0;
        der(elmt_product131) = 0;
        der(elmt_product133) = 0;
        der(elmt_product27) = 0;
        der(elmt_product25) = 0;
        der(elmt_product139) = 0;
        der(elmt_reactant95) = 0;
        der(elmt_product40) = 0;
        der(elmt_reactant97) = 0;
        der(elmt_reactant91) = 0;
        der(elmt_product44) = 0;
        der(elmt_reactant93) = 0;
        der(elmt_product42) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_product140) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant99) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product145) = 0;
        der(elmt_product147) = 0;
        der(elmt_product143) = 0;
        der(elmt_product38) = 0;
        der(elmt_product36) = 0;
        der(elmt_product149) = 0;
        der(elmt_reactant61) = 0;
        der(elmt_product52) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_product50) = 0;
        der(elmt_product56) = 0;
        der(elmt_product54) = 0;
        der(elmt_reactant69) = 0;
        der(elmt_reactant65) = 0;
        der(elmt_reactant67) = 0;
        der(elmt_product113) = 0;
        der(elmt_reactant132) = 0;
        der(elmt_reactant130) = 0;
        der(elmt_product115) = 0;
        der(elmt_product111) = 0;
        der(elmt_product48) = 0;
        der(elmt_reactant138) = 0;
        der(elmt_product46) = 0;
        der(elmt_reactant136) = 0;
        der(elmt_product117) = 0;
        der(elmt_product119) = 0;
        der(elmt_reactant134) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product62) = 0;
        der(elmt_reactant73) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant75) = 0;
        der(elmt_product60) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product66) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product64) = 0;
        der(elmt_reactant71) = 0;
        der(elmt_reactant77) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant79) = 0;
        der(elmt_product124) = 0;
        der(elmt_reactant142) = 0;
        der(elmt_reactant141) = 0;
        der(elmt_product125) = 0;
        der(elmt_product122) = 0;
        der(elmt_product58) = 0;
        der(elmt_reactant148) = 0;
        der(elmt_product127) = 0;
        der(elmt_reactant146) = 0;
        der(elmt_reactant144) = 0;
        der(elmt_product129) = 0;

end Reactions;
