within BIOMD466;
class Reactions

    input Real elmt_s49;
    input Real elmt_s44;
    input Real elmt_s43;
    input Real elmt_s42;
    input Real elmt_s100;
    input Real elmt_s107;
    input Real elmt_s106;
    input Real elmt_s104;
    input Real elmt_s103;
    input Real elmt_s102;
    input Real elmt_s101;
    input Real elmt_s96;
    input Real elmt_s93;
    input Real elmt_s92;
    input Real elmt_s91;
    input Real elmt_s99;
    input Real elmt_s98;
    input Real elmt_s97;
    input Real elmt_s111;
    input Real elmt_s110;
    input Real elmt_s39;
    input Real elmt_s115;
    input Real elmt_s114;
    input Real elmt_s113;
    input Real elmt_s112;

    Real elmt_re118(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa117\" species=\"s99\">
<celldesigner:linkAnchor position=\"ESE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa122\" species=\"s104\">
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
<celldesigner:modification aliases=\"sa123\" editPoints=\"0.22094521283066548,0.2530451141678203 0.7883587228606679,-0.24238946139734363\" modifiers=\"s43\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa123\" species=\"s43\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re118_elmt_k17(unit "s-1.0") = 0.002 "";
    parameter Real elmt_re118_elmt_Km17(unit "") = 30.0 "";
    Real elmt_reactant36 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa117</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product37 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa122</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re119(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa122\" species=\"s104\">
<celldesigner:linkAnchor position=\"WNW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa117\" species=\"s99\">
<celldesigner:linkAnchor position=\"ENE\"/>
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
    parameter Real elmt_re119_elmt_V18(unit ".s-1.0") = 0.05 "";
    parameter Real elmt_re119_elmt_Km18(unit "") = 15.0 "";
    Real elmt_reactant38 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa122</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product39 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa117</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re114(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa115\" species=\"s97\">
<celldesigner:linkAnchor position=\"ESE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa119\" species=\"s101\">
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
<celldesigner:modification aliases=\"sa120\" editPoints=\"0.2150678630829317,0.2516125579987136 0.7928983509399599,-0.24229271142036923\" modifiers=\"s102\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa120\" species=\"s102\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re114_elmt_Km11(unit "") = 10.0 "";
    parameter Real elmt_re114_elmt_k11(unit "s-1.0") = 0.035 "";
    Real elmt_reactant28 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa115</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product29 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa119</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re115(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa119\" species=\"s101\">
<celldesigner:linkAnchor position=\"WNW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa115\" species=\"s97\">
<celldesigner:linkAnchor position=\"ENE\"/>
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
    parameter Real elmt_re115_elmt_V12(unit ".s-1.0") = 0.125 "";
    parameter Real elmt_re115_elmt_Km12(unit "") = 8.0 "";
    Real elmt_reactant30 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa119</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product31 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa115</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re116(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa114\" species=\"s96\">
<celldesigner:linkAnchor position=\"ESE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa118\" species=\"s100\">
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
<celldesigner:modification aliases=\"sa119\" editPoints=\"0.14192464766772872,0.2513772671755983 0.9002128081048362,-0.17674330717001174\" modifiers=\"s101\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa119\" species=\"s101\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re116_elmt_Km13(unit "") = 15.0 "";
    parameter Real elmt_re116_elmt_k13(unit "s-1.0") = 0.005 "";
    Real elmt_product33 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa118</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant32 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa114</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re117(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa118\" species=\"s100\">
<celldesigner:linkAnchor position=\"WNW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa114\" species=\"s96\">
<celldesigner:linkAnchor position=\"ENE\"/>
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
    parameter Real elmt_re117_elmt_Km14(unit "") = 15.0 "";
    parameter Real elmt_re117_elmt_V14(unit ".s-1.0") = 0.375 "";
    Real elmt_product35 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa114</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant34 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa118</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re110(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>TRANSPORT</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa129\" species=\"s115\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa128\" species=\"s106\">
<celldesigner:linkAnchor position=\"E\"/>
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
    parameter Real elmt_re110_elmt_k25(unit "s-1.0") = 0.001 "";
    Real elmt_reactant20 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa129</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product21 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa128</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re111(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>TRANSCRIPTION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa132\" species=\"s108\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa129\" species=\"s115\">
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
<celldesigner:modification aliases=\"sa131\" editPoints=\"0.40212232367540746,-0.20645487481552216 0.6107282759927528,0.19985720841006938\" modifiers=\"s107\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa131\" species=\"s107\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa133\" editPoints=\"0.5697797890363541,-0.43864874832088274 0.9419069691144362,0.04472330499334953\" modifiers=\"s49\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa133\" species=\"s49\">
<celldesigner:linkAnchor position=\"SSE\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re111_elmt_k24t2(unit ".s-1.0") = 9.0E-6 "";
    parameter Real elmt_re111_elmt_k24t1(unit ".s-1.0") = 1.2E-4 "";
    Real elmt_product23 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa129</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant22 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa132</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re112(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa121\" species=\"s103\">
<celldesigner:linkAnchor position=\"ESE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa120\" species=\"s102\">
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
<celldesigner:modification aliases=\"csa13\" editPoints=\"-0.0026937366737687096,0.04274909329521526 0.9933513636989433,0.1055126049578543\" modifiers=\"s114\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"csa13\" species=\"s114\">
<celldesigner:linkAnchor position=\"SSE\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re112_elmt_Km9(unit "") = 0.181 "";
    parameter Real elmt_re112_elmt_k9(unit "s-1.0") = 0.222 "";
    Real elmt_product25 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa120</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant24 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa121</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re113(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa120\" species=\"s102\">
<celldesigner:linkAnchor position=\"WNW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa121\" species=\"s103\">
<celldesigner:linkAnchor position=\"ENE\"/>
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
    parameter Real elmt_re113_elmt_V10(unit ".s-1.0") = 0.289 "";
    parameter Real elmt_re113_elmt_Km10(unit "") = 0.0571 "";
    Real elmt_product27 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa121</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant26 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa120</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re107(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"csa12\" species=\"s113\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"csa13\" species=\"s114\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:baseProduct>
<celldesigner:baseProduct alias=\"sa110\" species=\"s93\">
<celldesigner:linkAnchor position=\"WSW\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"0\" index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"1\" index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"1\" index=\"2\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"1\" value=\"horizontal\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"1\" num1=\"2\" num2=\"1\" tShapeIndex=\"0\">0.9875075368400559,0.11106935456795153 0.12127731941676423,0.19775239164380842 0.846382062072097,-0.2504863627488225 0.8816918276655425,-0.3229726748400519 1.4753499471081701,0.2728234396910132</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re107_elmt_kr6(unit "mol-1.0.s-1.0") = 15700.0 "";
    parameter Real elmt_re107_elmt_k6(unit "s-1.0") = 2040.0 "";
    Real elmt_product14 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa110</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product13 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa13</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant12 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa12</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re129(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>TRANSLATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa124\" species=\"s105\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa133\" species=\"s49\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"2\" value=\"horizontal\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints>0.8409579957839775,4.505078446874755E-4 0.8409582827668753,-8.519990504485264E-5</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa111\" editPoints=\"0.8105132726063144,-0.39189476589425987\" modifiers=\"s39\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"1\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa111\" species=\"s39\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re129_elmt_tau(unit "") = 0.55 "";
    parameter Real elmt_re129_elmt_tc(unit "") = 3600.0 "";
    parameter Real elmt_re129_elmt_unity(unit ".s-1.0") = 20.0 "";
    parameter Real elmt_re129_elmt_uc(unit "") = 3600.0 "";
    parameter Real elmt_re129_elmt_delay(unit "") = 5.0 "";
    Real elmt_reactant58 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa124</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product59 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa133</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re108(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa116\" species=\"s98\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa107\" species=\"s91\">
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
    parameter Real elmt_re108_elmt_Km8(unit "") = 340.0 "";
    parameter Real elmt_re108_elmt_V8(unit ".s-1.0") = 154.0 "";
    Real elmt_product16 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa107</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant15 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa116</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re109(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"csa13\" species=\"s114\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa116\" species=\"s98\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseProduct>
<celldesigner:baseProduct alias=\"csa10\" species=\"s111\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"0\" index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"0\" index=\"2\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"1\" index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"1\" index=\"2\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"2\" index=\"2\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"3\" value=\"horizontal\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"2\" num1=\"2\" num2=\"3\" tShapeIndex=\"0\">0.22104131930366133,0.5052650600891715 1.0595714193868018,0.13617072541410113 0.4999999999999982,8.881784197001252E-16 0.4999999999999982,8.881784197001252E-16 -0.09769503372468125,0.22463992217869944 0.8359416402339238,0.6293007924383445 1.0914564568666458,0.0397740595316769 0.6148895606652705,-0.2230590168423926</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re109_elmt_k7(unit "s-1.0") = 40.8 "";
    Real elmt_reactant17 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa13</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product19 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa10</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product18 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa116</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re103(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa112\" species=\"s94\">
<celldesigner:linkAnchor position=\"WNW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa109\" species=\"s92\">
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
<celldesigner:modification aliases=\"sa111,sa142\" editPoints=\"0.12161558098232295,-0.21451676147446808 0.8783844190176779,0.2145167614744663 789.7595969770848,285.0488796346376\" modificationType=\"CATALYSIS\" modifiers=\"s39,s119\" targetLineIndex=\"-1,3\" type=\"BOOLEAN_LOGIC_GATE_AND\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa111\" editPoints=\"-0.08858723950035197,-0.2265079323763386 0.8173533073787098,-0.5808212288577748 1.0386071409609663,-0.015099250639269535\" modifiers=\"s39\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"2\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"3\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa111\" species=\"s39\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa142\" editPoints=\"0.005900323030602728,0.06840269032094715 0.9985147230261249,-0.017218877739043847\" modifiers=\"s119\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa142\" species=\"s119\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re103_elmt_normal(unit ".s-1.0") = 0.026 "";
    parameter Real elmt_re103_elmt_unimol(unit "") = 1.0 "";
    parameter Real elmt_re103_elmt_tf(unit "") = 540.0 "";
    parameter Real elmt_re103_elmt_unity(unit "") = 1.0 "";
    Real elmt_reactant2 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa112</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product3 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa109</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re125(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa130\" species=\"s44\">
<celldesigner:linkAnchor position=\"WNW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa122\" species=\"s104\">
<celldesigner:linkAnchor position=\"ENE\"/>
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
    parameter Real elmt_re125_elmt_V20(unit ".s-1.0") = 0.05 "";
    parameter Real elmt_re125_elmt_Km20(unit "") = 15.0 "";
    Real elmt_reactant50 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa130</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product51 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa122</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re104(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa107\" species=\"s91\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
<celldesigner:baseReactant alias=\"sa110\" species=\"s93\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"csa9\" species=\"s110\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"0\" index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"0\" index=\"2\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"1\" index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"1\" index=\"2\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"2\" index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"2\" num1=\"2\" num2=\"2\" tShapeIndex=\"0\">0.3888888888888884,0.0 0.3888888888888884,4.440892098500626E-16 0.4705882352941124,0.0 0.47058823529411953,-8.881784197001252E-16 0.510383864023606,-0.004477766633297353 0.5104481304263384,0.004295000648265379 0.6192468619246868,4.440892098500626E-16</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re104_elmt_kr3(unit "s-1.0") = 1.0 "";
    parameter Real elmt_re104_elmt_k3(unit "mol-1.0.s-1.0") = 0.1 "";
    Real elmt_reactant4 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa107</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product6 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa9</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant5 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa110</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re126(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa122\" species=\"s104\">
<celldesigner:linkAnchor position=\"ESE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa130\" species=\"s44\">
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
<celldesigner:modification aliases=\"sa123\" editPoints=\"0.3659306736633652,-0.23020695138516878 0.6494785556727467,0.22051300670119822\" modifiers=\"s43\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa123\" species=\"s43\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re126_elmt_k19(unit "s-1.0") = 0.002 "";
    parameter Real elmt_re126_elmt_Km19(unit "") = 30.0 "";
    Real elmt_reactant52 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa122</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product53 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa130</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re105(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"csa9\" species=\"s110\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"csa11\" species=\"s112\">
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
<celldesigner:modification aliases=\"sa109\" editPoints=\"0.4679207225472173,-0.49896985876714783\" modifiers=\"s92\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa109\" species=\"s92\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re105_elmt_kr4(unit "s-1.0") = 5.0 "";
    parameter Real elmt_re105_elmt_k4(unit "mol-1.0.s-1.0") = 8.33 "";
    Real elmt_product8 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa11</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant7 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa9</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re127(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa125\" species=\"s42\">
<celldesigner:linkAnchor position=\"ENE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa131\" species=\"s107\">
<celldesigner:linkAnchor position=\"WNW\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
<celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
<celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints>0.5,0.0 0.5,0.0</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa130\" editPoints=\"0.4996091227891776,-0.036694487865860825 0.5049745522748278,0.03635783346676158\" modifiers=\"s44\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa130\" species=\"s44\">
<celldesigner:linkAnchor position=\"SSW\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re127_elmt_Km21(unit "") = 25.0 "";
    parameter Real elmt_re127_elmt_k21(unit "s-1.0") = 4.0E-5 "";
    Real elmt_product55 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa131</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant54 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa125</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re106(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"csa11\" species=\"s112\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseReactant>
<celldesigner:baseReactant alias=\"csa10\" species=\"s111\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"csa12\" species=\"s113\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"0\" index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"1\" index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"2\" index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"1\" num1=\"1\" num2=\"2\" tShapeIndex=\"0\">0.9564114948080178,-0.20417773484665513 0.9513280302008891,0.2151813401644862 0.49999999999999467,0.0 0.49999999999999467,1.7763568394002505E-15 0.33288337692286174,0.35293455946455143</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re106_elmt_kr5(unit "s-1.0") = 546.0 "";
    parameter Real elmt_re106_elmt_k5(unit "mol-1.0.s-1.0") = 60.0 "";
    Real elmt_product11 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa12</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant9 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa11</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant10 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa10</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re128(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa131\" species=\"s107\">
<celldesigner:linkAnchor position=\"WSW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa125\" species=\"s42\">
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
    parameter Real elmt_re128_elmt_V22(unit ".s-1.0") = 0.002 "";
    parameter Real elmt_re128_elmt_Km22(unit "") = 5.0 "";
    Real elmt_product57 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa125</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant56 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa131</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re121(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>TRANSLATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa126\" species=\"s37\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa49\" species=\"s51\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"1\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints>0.9925081618770306,-0.08623056583664734</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa128\" editPoints=\"0.8503074189998507,-0.3567698308344791\" modifiers=\"s106\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"1\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa128\" species=\"s106\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re121_elmt_V27(unit ".s-1.0") = 0.02824 "";
    parameter Real elmt_re121_elmt_Km27(unit "") = 16.0 "";
    Real elmt_reactant42 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa126</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product43 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa49</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re122(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa108\" species=\"s38\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa111\" species=\"s39\">
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
    parameter Real elmt_re122_elmt_unitime(unit ".s-1.0") = 1.0 "";
    Real elmt_product45 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa111</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant44 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa108</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re123(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa123\" species=\"s43\">
<celldesigner:linkAnchor position=\"WNW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa118\" species=\"s100\">
<celldesigner:linkAnchor position=\"ENE\"/>
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
    parameter Real elmt_re123_elmt_V16(unit ".s-1.0") = 0.375 "";
    parameter Real elmt_re123_elmt_Km16(unit "") = 15.0 "";
    Real elmt_product47 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa118</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant46 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa123</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re102(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa113\" species=\"s95\">
<celldesigner:linkAnchor position=\"WNW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa110\" species=\"s93\">
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
<celldesigner:modification aliases=\"sa111,sa142\" editPoints=\"0.8573417553268641,0.34972399102708884 783.259596977085,201.04887963463716\" modificationType=\"CATALYSIS\" modifiers=\"s39,s119\" targetLineIndex=\"-1,3\" type=\"BOOLEAN_LOGIC_GATE_AND\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"1\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa111\" editPoints=\"-0.14839694242474089,-0.10671027622396245 0.10481405350283524,-0.4588388519678013 0.9123695107124545,0.12186358365489092\" modifiers=\"s39\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"2\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"3\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa111\" species=\"s39\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa142\" editPoints=\"-0.0017741190166152276,-0.15799278738357336 0.998099803880182,-0.16922048562350767\" modifiers=\"s119\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa142\" species=\"s119\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re102_elmt_normal(unit ".s-1.0") = 4.0 "";
    parameter Real elmt_re102_elmt_unimol(unit "") = 1.0 "";
    parameter Real elmt_re102_elmt_tf(unit "") = 60.0 "";
    parameter Real elmt_re102_elmt_unity(unit "") = 1.0 "";
    parameter Real elmt_re102_elmt_tiny_num(unit "") = 1.0E-6 "";
    Real elmt_product1 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa110</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant0 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa113</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re124(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa118\" species=\"s100\">
<celldesigner:linkAnchor position=\"ESE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa123\" species=\"s43\">
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
<celldesigner:modification aliases=\"sa119\" editPoints=\"0.17901100404898518,-0.2685724586690341 0.871407455885806,0.19292900971498206\" modifiers=\"s101\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa119\" species=\"s101\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re124_elmt_Km15(unit "") = 15.0 "";
    parameter Real elmt_re124_elmt_k15(unit "s-1.0") = 0.005 "";
    Real elmt_product49 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa123</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant48 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa118</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re120(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa128\" species=\"s106\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa134\" species=\"s35\">
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
    parameter Real elmt_re120_elmt_k26(unit "s-1.0") = 2.8E-5 "";
    Real elmt_product41 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa134</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant40 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa128</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));


    initial equation
        elmt_reactant40 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product33 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product25 = 1.0;
        elmt_product29 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_product45 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_product37 = 1.0;
        elmt_product35 = 1.0;
        elmt_product39 = 1.0;
        elmt_product51 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product55 = 1.0;
        elmt_product11 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_product49 = 1.0;
        elmt_product47 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product6 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product16 = 1.0;
        elmt_product59 = 1.0;
        elmt_product14 = 1.0;
        elmt_product13 = 1.0;
        elmt_product57 = 1.0;
        elmt_product19 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_re118 = ((elmt_re118_elmt_k17 * elmt_s99 * elmt_s43) / (elmt_s99 + elmt_re118_elmt_Km17));
        elmt_re119 = ((elmt_re119_elmt_V18 * elmt_s104) / (elmt_s104 + elmt_re119_elmt_Km18));
        elmt_re114 = ((elmt_re114_elmt_k11 * elmt_s102 * elmt_s97) / (elmt_re114_elmt_Km11 + elmt_s97));
        elmt_re115 = ((elmt_re115_elmt_V12 * elmt_s101) / (elmt_re115_elmt_Km12 + elmt_s101));
        elmt_re116 = ((elmt_re116_elmt_k13 * elmt_s101 * elmt_s96) / (elmt_re116_elmt_Km13 + elmt_s96));
        elmt_re117 = ((elmt_re117_elmt_V14 * elmt_s100) / (elmt_s100 + elmt_re117_elmt_Km14));
        elmt_re110 = (elmt_re110_elmt_k25 * elmt_s115);
        elmt_re111 = ((elmt_re111_elmt_k24t1 * elmt_s107) + (elmt_re111_elmt_k24t2 * elmt_s49));
        elmt_re112 = ((elmt_re112_elmt_k9 * elmt_s114 * elmt_s103) / (elmt_s103 + elmt_re112_elmt_Km9));
        elmt_re113 = ((elmt_re113_elmt_V10 * elmt_s102) / (elmt_re113_elmt_Km10 + elmt_s102));
        elmt_re107 = ((elmt_re107_elmt_k6 * elmt_s113) - (elmt_re107_elmt_kr6 * elmt_s93 * elmt_s114));
        elmt_re129 = (((exp((elmt_re129_elmt_tau * (elmt_re129_elmt_delay - (elmt_s39 / elmt_re129_elmt_tc)))) / (1.0 + (2.0 * exp((elmt_re129_elmt_tau * (elmt_re129_elmt_delay - (elmt_s39 / elmt_re129_elmt_tc))))) + exp((2.0 * elmt_re129_elmt_tau * (elmt_re129_elmt_delay - (elmt_s39 / elmt_re129_elmt_tc)))))) / elmt_re129_elmt_uc) * 29.256);
        elmt_re108 = ((elmt_re108_elmt_V8 * elmt_s98) / (elmt_re108_elmt_Km8 + elmt_s98));
        elmt_re109 = (elmt_re109_elmt_k7 * elmt_s114);
        elmt_re103 = (exp((elmt_re103_elmt_unity - Functions.pow((elmt_s39 / elmt_re103_elmt_tf), 1.3))) * elmt_re103_elmt_normal * Functions.pow((elmt_s39 / elmt_re103_elmt_unimol), 0.3) * (elmt_re103_elmt_unity - Functions.pow((elmt_s39 / elmt_re103_elmt_tf), 1.3)));
        elmt_re125 = ((elmt_re125_elmt_V20 * elmt_s44) / (elmt_re125_elmt_Km20 + elmt_s44));
        elmt_re104 = ((elmt_re104_elmt_k3 * elmt_s91 * elmt_s93) - (elmt_re104_elmt_kr3 * elmt_s110));
        elmt_re126 = ((elmt_re126_elmt_k19 * elmt_s104 * elmt_s43) / (elmt_re126_elmt_Km19 + elmt_s104));
        elmt_re105 = ((elmt_re105_elmt_k4 * elmt_s110 * elmt_s92) - (elmt_re105_elmt_kr4 * elmt_s112));
        elmt_re127 = ((elmt_s44 * elmt_s42 * elmt_re127_elmt_k21) / (elmt_re127_elmt_Km21 + elmt_s42));
        elmt_re106 = ((elmt_re106_elmt_k5 * elmt_s111 * elmt_s112) - (elmt_re106_elmt_kr5 * elmt_s113));
        elmt_re128 = ((elmt_re128_elmt_V22 * elmt_s107) / (elmt_s107 + elmt_re128_elmt_Km22));
        elmt_re121 = ((elmt_re121_elmt_V27 * elmt_s106) / (elmt_s106 + elmt_re121_elmt_Km27));
        elmt_re122 = elmt_re122_elmt_unitime;
        elmt_re123 = ((elmt_re123_elmt_V16 * elmt_s43) / (elmt_s43 + elmt_re123_elmt_Km16));
        elmt_re102 = (exp((elmt_re102_elmt_unity - Functions.pow((elmt_s39 / elmt_re102_elmt_tf), 0.35))) * elmt_re102_elmt_normal * Functions.pow(((elmt_s39 + elmt_re102_elmt_tiny_num) / elmt_re102_elmt_unimol), (-0.65)) * (elmt_re102_elmt_unity - Functions.pow((elmt_s39 / elmt_re102_elmt_tf), 0.35)));
        elmt_re124 = ((elmt_re124_elmt_k15 * elmt_s100 * elmt_s101) / (elmt_re124_elmt_Km15 + elmt_s100));
        elmt_re120 = (elmt_re120_elmt_k26 * elmt_s106);
        der(elmt_reactant40) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product33) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_product29) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_product45) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_product37) = 0;
        der(elmt_product35) = 0;
        der(elmt_product39) = 0;
        der(elmt_product51) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product55) = 0;
        der(elmt_product11) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_product49) = 0;
        der(elmt_product47) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product6) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product16) = 0;
        der(elmt_product59) = 0;
        der(elmt_product14) = 0;
        der(elmt_product13) = 0;
        der(elmt_product57) = 0;
        der(elmt_product19) = 0;
        der(elmt_product18) = 0;

end Reactions;
