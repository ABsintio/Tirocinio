within BIOMD465;
class Reactions

    input Real elmt_s27;
    input Real elmt_s16;
    input Real elmt_s26;
    input Real elmt_s15;
    input Real elmt_s25;
    input Real elmt_s14;
    input Real elmt_s24;
    input Real elmt_s23;
    input Real elmt_s20;
    input Real elmt_s19;
    input Real elmt_s18;
    input Real elmt_s17;
    input Real elmt_s28;

    Real elmt_re59(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa64\" species=\"s17\">
<celldesigner:linkAnchor position=\"ESE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa67\" species=\"s19\">
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
<celldesigner:modification aliases=\"sa66\" modifiers=\"s18\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa66\" species=\"s18\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re59_elmt_Km3(unit "") = 80.9 "";
    parameter Real elmt_re59_elmt_k3(unit "s-1.0") = 7.5 "";
    Real elmt_reactant4 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa64</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product5 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa67</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re62(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"csa1\" species=\"s26\">
<celldesigner:linkAnchor position=\"WNW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"csa3\" species=\"s27\">
<celldesigner:linkAnchor position=\"NNW\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"1\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints>0.0834670431936333,0.2765868686220396</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa72\" editPoints=\"0.02274985649121586,-0.14910499830939594\" modifiers=\"s24\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"1\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa72\" species=\"s24\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re62_elmt_Km10(unit "") = 80000.0 "";
    parameter Real elmt_re62_elmt_k10(unit "s-1.0") = 20.0 "";
    Real elmt_product12 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa3</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant11 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa1</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re63(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"csa1\" species=\"s26\">
<celldesigner:linkAnchor position=\"ESE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"csa2\" species=\"s28\">
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
<celldesigner:modification aliases=\"sa63\" editPoints=\"0.32380017932634264,-0.24633681954896947 0.6903948799260008,0.23553767250461988\" modifiers=\"s15\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa63\" species=\"s15\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re63_elmt_Km7(unit "") = 8800.0 "";
    parameter Real elmt_re63_elmt_k7(unit "s-1.0") = 0.037 "";
    Real elmt_product14 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa2</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant13 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa1</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re64(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"csa3\" species=\"s27\">
<celldesigner:linkAnchor position=\"NNE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"csa1\" species=\"s26\">
<celldesigner:linkAnchor position=\"WSW\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\" rectangleIndex=\"1\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints>0.9750971949631848,-0.1558289297213893</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa63\" editPoints=\"0.4645189416501667,0.14451494560039269 0.552765186225816,-0.13913773796516793\" modifiers=\"s15\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa63\" species=\"s15\">
<celldesigner:linkAnchor position=\"NNW\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re64_elmt_Km9(unit "") = 48000.0 "";
    parameter Real elmt_re64_elmt_k9(unit "s-1.0") = 0.04 "";
    Real elmt_product16 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa1</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant15 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa3</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re65(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"csa3\" species=\"s27\">
<celldesigner:linkAnchor position=\"ENE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa64\" species=\"s17\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseProduct>
<celldesigner:baseProduct alias=\"sa62\" species=\"s16\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"0\" index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"0\" index=\"2\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"1\" index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"1\" index=\"2\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"1\" value=\"horizontal\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"2\" num1=\"2\" num2=\"1\" tShapeIndex=\"0\">0.31134239628529414,0.27204469681914434 0.744284068716333,-0.22343941534433354 0.127957993946902,-0.21425524567853937 0.8650545388068505,0.22595519083504456 0.30455707625274897,0.4602195818923036 0.82649165617131,-0.1633540617128304</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa63\" editPoints=\"0.038510704142147745,-0.13863070052721582 0.9668699497727355,0.11926144104129754\" modifiers=\"s15\" targetLineIndex=\"0,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa63\" species=\"s15\">
<celldesigner:linkAnchor position=\"NNE\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re65_elmt_Km11(unit "") = 48000.0 "";
    parameter Real elmt_re65_elmt_k11(unit "s-1.0") = 0.163 "";
    Real elmt_reactant17 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa3</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product19 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa62</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product18 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa64</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re66(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa73\" species=\"s25\">
<celldesigner:linkAnchor position=\"NNE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa65\" species=\"s14\">
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
<celldesigner:modification aliases=\"sa64\" editPoints=\"0.510606032192507,-0.49988749942475197\" modifiers=\"s17\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa64\" species=\"s17\">
<celldesigner:linkAnchor position=\"SSE\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re66_elmt_k5(unit "mol-1.0.s-1.0") = 7.0E-4 "";
    Real elmt_reactant20 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa73</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product21 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa65</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re67(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa65\" species=\"s14\">
<celldesigner:linkAnchor position=\"SSW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa73\" species=\"s25\">
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
    parameter Real elmt_re67_elmt_k6(unit "s-1.0") = 0.98 "";
    Real elmt_product23 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa73</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant22 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa65</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re57(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa70\" species=\"s22\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa68\" species=\"s20\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa71,sa142\" editPoints=\"0.730805636725087,-0.4435411571161456 1026.5,350.58785932872956\" modificationType=\"CATALYSIS\" modifiers=\"s23,s119\" targetLineIndex=\"-1,2\" type=\"BOOLEAN_LOGIC_GATE_AND\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"1\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa71\" editPoints=\"0.1590140278680181,0.2431996030812167 0.8595350577718293,-0.21483021752691212\" modifiers=\"s23\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa71\" species=\"s23\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa142\" editPoints=\"0.7723692380615945,-0.4065901777417773 0.9893558805497085,0.0056032713447518034\" modifiers=\"s119\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa142\" species=\"s119\">
<celldesigner:linkAnchor position=\"SE\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re57_elmt_normal(unit ".s-1.0") = 0.907 "";
    parameter Real elmt_re57_elmt_unimol(unit "") = 1.0 "";
    parameter Real elmt_re57_elmt_tf(unit "") = 15.0 "";
    parameter Real elmt_re57_elmt_unity(unit "") = 1.0 "";
    Real elmt_product1 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa68</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant0 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa70</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re68(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa69\" species=\"s21\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa71\" species=\"s23\">
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
    parameter Real elmt_re68_elmt_unitime(unit ".s-1.0") = 1.0 "";
    Real elmt_product25 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa71</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant24 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa69</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re58(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa67\" species=\"s19\">
<celldesigner:linkAnchor position=\"WNW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa64\" species=\"s17\">
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
<celldesigner:modification aliases=\"sa68\" editPoints=\"0.32548754618906184,0.5425193707887952 1.0608104562837468,0.10135825737945492\" modifiers=\"s20\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa68\" species=\"s20\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re58_elmt_Km2(unit "") = 6170.0 "";
    parameter Real elmt_re58_elmt_k2(unit "s-1.0") = 0.2 "";
    Real elmt_reactant2 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa67</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product3 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa64</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re60(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa64\" species=\"s17\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseReactant>
<celldesigner:baseReactant alias=\"sa62\" species=\"s16\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"csa2\" species=\"s28\">
<celldesigner:linkAnchor position=\"ESE\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"0\" index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"1\" index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"1\" index=\"2\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"2\" index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"2\" value=\"horizontal\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"1\" num1=\"2\" num2=\"2\" tShapeIndex=\"0\">0.16292541636495628,-0.36929761042723186 0.5,0.0 0.5,3.552713678800501E-15 0.35082934358552365,-0.001270991753500983 0.3509657143667759,0.002351334743991629 0.15847676803710042,0.3446000178364379</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re60_elmt_kr4(unit "s-1.0") = 0.089 "";
    parameter Real elmt_re60_elmt_k4(unit "mol-1.0.s-1.0") = 0.045 "";
    Real elmt_product8 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa2</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant6 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa64</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant7 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa62</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re61(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"csa2\" species=\"s28\">
<celldesigner:linkAnchor position=\"WNW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"csa1\" species=\"s26\">
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
<celldesigner:modification aliases=\"sa65\" editPoints=\"1.1701225395112274,0.462919711845188 1.3054538779800096,0.12084257537297383\" modifiers=\"s14\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa65\" species=\"s14\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re61_elmt_Km8(unit "") = 80000.0 "";
    parameter Real elmt_re61_elmt_k8(unit "s-1.0") = 20.0 "";
    Real elmt_product10 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa1</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant9 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa2</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));


    initial equation
        elmt_reactant20 = 1.0;
        elmt_product12 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product25 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product16 = 1.0;
        elmt_product14 = 1.0;
        elmt_product19 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_re59 = ((elmt_re59_elmt_k3 * elmt_s17 * elmt_s18) / (elmt_re59_elmt_Km3 + elmt_s17));
        elmt_re62 = ((elmt_re62_elmt_k10 * elmt_s26 * elmt_s24) / (elmt_re62_elmt_Km10 + elmt_s26));
        elmt_re63 = ((elmt_re63_elmt_k7 * elmt_s26 * elmt_s15) / (elmt_re63_elmt_Km7 + elmt_s26));
        elmt_re64 = ((elmt_re64_elmt_k9 * elmt_s27 * elmt_s15) / (elmt_re64_elmt_Km9 + elmt_s27));
        elmt_re65 = ((elmt_re65_elmt_k11 * elmt_s27 * elmt_s15) / (elmt_re65_elmt_Km11 + elmt_s27));
        elmt_re66 = (elmt_re66_elmt_k5 * elmt_s17 * elmt_s25);
        elmt_re67 = (elmt_re67_elmt_k6 * elmt_s14);
        elmt_re57 = (exp((elmt_re57_elmt_unity - Functions.pow((elmt_s23 / elmt_re57_elmt_tf), 1.8))) * elmt_re57_elmt_normal * Functions.pow((elmt_s23 / elmt_re57_elmt_unimol), 0.8) * (elmt_re57_elmt_unity - Functions.pow((elmt_s23 / elmt_re57_elmt_tf), 1.8)));
        elmt_re68 = elmt_re68_elmt_unitime;
        elmt_re58 = ((elmt_re58_elmt_k2 * elmt_s19 * elmt_s20) / (elmt_re58_elmt_Km2 + elmt_s19));
        elmt_re60 = ((elmt_re60_elmt_k4 * elmt_s17 * elmt_s16) - (elmt_re60_elmt_kr4 * elmt_s28));
        elmt_re61 = ((elmt_re61_elmt_k8 * elmt_s28 * elmt_s14) / (elmt_re61_elmt_Km8 + elmt_s28));
        der(elmt_reactant20) = 0;
        der(elmt_product12) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product16) = 0;
        der(elmt_product14) = 0;
        der(elmt_product19) = 0;
        der(elmt_product18) = 0;

end Reactions;
