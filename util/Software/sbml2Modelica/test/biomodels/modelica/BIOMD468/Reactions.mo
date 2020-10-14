within BIOMD468;
class Reactions

    input Real elmt_Cao;
    input Real elmt_k90;
    input Real elmt_k_CCE;
    input Real elmt_s96;
    input Real elmt_k15;
    input Real elmt_k14;
    input Real elmt_k13;
    input Real elmt_s93;
    input Real elmt_dot_q_inpass;
    input Real elmt_k12;
    input Real elmt_s92;
    input Real elmt_k11;
    input Real elmt_s91;
    input Real elmt_s16;
    input Real elmt_s15;
    input Real elmt_k1;
    input Real elmt_s14;
    input Real elmt_s6;
    input Real elmt_s4;
    input Real elmt_s12;
    input Real elmt_s99;
    input Real elmt_gam;
    input Real elmt_k18;
    input Real elmt_s2;
    input Real elmt_s98;
    input Real elmt_k17;
    input Real elmt_s97;
    input Real elmt_s3;
    input Real elmt_half;
    input Real elmt_k6;
    input Real elmt_k7;
    input Real elmt_k4;
    input Real elmt_k5;
    input Real elmt_s19;
    input Real elmt_k2;
    input Real elmt_s18;
    input Real elmt_s17;
    input Real elmt_k3;
    input Real elmt_tau_I;
    input Real elmt_s1;
    input Real elmt_s27;
    input Real elmt_s26;
    input Real elmt_s25;
    input Real elmt_s24;
    input Real elmt_s23;
    input Real elmt_s20;
    input Real elmt_s28;
    input Real elmt_dot_Vhi;
    input Real elmt_s39;
    input Real elmt_Kmp;
    input Real elmt_kDD;
    input Real elmt_s49;
    input Real elmt_s48;
    input Real elmt_s47;
    input Real elmt_s45;
    input Real elmt_s44;
    input Real elmt_s43;
    input Real elmt_s42;
    input Real elmt_s52;
    input Real elmt_s51;
    input Real elmt_s50;
    input Real elmt_s58;
    input Real elmt_s57;
    input Real elmt_s111;
    input Real elmt_dot_Vp;
    input Real elmt_s110;
    input Real elmt_kr90;
    input Real elmt_dot_Vex;
    input Real elmt_s115;
    input Real elmt_s114;
    input Real elmt_Vdp;
    input Real elmt_s113;
    input Real elmt_s112;
    input Real elmt_k_CICR;
    input Real elmt_s62;
    input Real elmt_tau_II;
    input Real elmt_s61;
    input Real elmt_s60;
    input Real elmt_K_CICR;
    input Real elmt_K1;
    input Real elmt_s66;
    input Real elmt_s65;
    input Real elmt_s100;
    input Real elmt_Kmdp;
    input Real elmt_K4;
    input Real elmt_K5;
    input Real elmt_K2;
    input Real elmt_K3;
    input Real elmt_K_hi;
    input Real elmt_s107;
    input Real elmt_s106;
    input Real elmt_s104;
    input Real elmt_s103;
    input Real elmt_s102;
    input Real elmt_fracK;
    input Real elmt_s101;
    input Real elmt_B_T;
    input Real elmt_kp;
    input Real elmt_R_T;

    Real elmt_re37(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa49\" species=\"s51\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseReactant>
<celldesigner:baseReactant alias=\"sa45\" species=\"s47\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa43\" species=\"s45\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"unknown\"/>
<celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"unknown\"/>
<celldesigner:lineDirection arm=\"1\" index=\"1\" value=\"unknown\"/>
<celldesigner:lineDirection arm=\"1\" index=\"2\" value=\"unknown\"/>
<celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"0\" num1=\"2\" num2=\"0\" tShapeIndex=\"0\">0.5453666187072295,0.3578155033912864 0.8484633221065794,-0.09642323355609506 -0.001232235274787108,0.6697609463567016</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_reactant20 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa49</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product22 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa43</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant21 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa45</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re38(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa46\" species=\"s48\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
<celldesigner:baseReactant alias=\"sa49\" species=\"s51\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa48\" species=\"s50\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"unknown\"/>
<celldesigner:lineDirection arm=\"0\" index=\"1\" value=\"unknown\"/>
<celldesigner:lineDirection arm=\"0\" index=\"2\" value=\"unknown\"/>
<celldesigner:lineDirection arm=\"0\" index=\"3\" value=\"unknown\"/>
<celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"unknown\"/>
<celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"3\" num1=\"0\" num2=\"0\" tShapeIndex=\"0\">-0.12441832828528421,0.19344291051328533 0.46852029703696196,0.5656478145251889 0.8768987676458146,-0.07007199661977648 0.6840015620932078,0.3268680031241864</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_product25 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa48</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant23 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa46</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant24 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa49</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
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
<celldesigner:modification aliases=\"sa123\" editPoints=\"0.22094521283066726,0.25304511416782294 0.7883587228606697,-0.24238946139734097\" modifiers=\"s43\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
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
    parameter Real elmt_re118_elmt_k21(unit "s-1.0") = 0.002 "";
    parameter Real elmt_re118_elmt_K21(unit "") = 30.0 "";
    Real elmt_reactant118 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa117</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product119 "";
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
    parameter Real elmt_re119_elmt_V22(unit ".s-1.0") = 0.05 "";
    parameter Real elmt_re119_elmt_K22(unit "") = 15.0 "";
    Real elmt_reactant120 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa122</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product121 "";
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
<celldesigner:modification aliases=\"sa120\" editPoints=\"0.21506786308292902,0.2516125579987105 0.7928983509399572,-0.24229271142037279\" modifiers=\"s102\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
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
    parameter Real elmt_re114_elmt_K113(unit "") = 10.0 "";
    parameter Real elmt_re114_elmt_k113(unit "s-1.0") = 0.035 "";
    Real elmt_reactant110 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa115</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product111 "";
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
    parameter Real elmt_re115_elmt_K18(unit "") = 8.0 "";
    parameter Real elmt_re115_elmt_V18(unit ".s-1.0") = 0.125 "";
    Real elmt_product113 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa115</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant112 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa119</celldesigner:alias>
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
<celldesigner:modification aliases=\"sa119\" editPoints=\"0.14192464766772517,0.2513772671755907 0.9002128081048326,-0.1767433071700193\" modifiers=\"s101\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
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
    parameter Real elmt_re116_elmt_K19(unit "") = 15.0 "";
    parameter Real elmt_re116_elmt_k19(unit "s-1.0") = 0.005 "";
    Real elmt_product115 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa118</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant114 "";
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
    parameter Real elmt_re117_elmt_V20(unit ".s-1.0") = 0.375 "";
    parameter Real elmt_re117_elmt_K20(unit "") = 15.0 "";
    Real elmt_reactant116 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa118</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product117 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa114</celldesigner:alias>
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
    parameter Real elmt_re110_elmt_kT(unit "s-1.0") = 0.001 "";
    Real elmt_product103 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa128</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant102 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa129</celldesigner:alias>
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
<celldesigner:modification aliases=\"sa131\" editPoints=\"0.40212232367541834,-0.2064548748155275 0.6107282759927637,0.19985720841006227\" modifiers=\"s107\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
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
<celldesigner:modification aliases=\"sa133\" editPoints=\"0.8215211149178097,-0.26719031385620884 0.9171821753956975,0.026935546934939048\" modifiers=\"s49\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
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
    parameter Real elmt_re111_elmt_tr2(unit ".s-1.0") = 3.0E-6 "";
    parameter Real elmt_re111_elmt_ktr1(unit ".s-1.0") = 1.2E-4 "";
    parameter Real elmt_re111_elmt_ktr1k2(unit ".s-1.0") = 9.0E-6 "";
    Real elmt_reactant104 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa132</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product105 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa129</celldesigner:alias>
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
<celldesigner:modification aliases=\"csa13\" editPoints=\"-0.0026937366737682655,0.04274909329521348 0.9933513636989437,0.10551260495785231\" modifiers=\"s114\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
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
    parameter Real elmt_re112_elmt_K111(unit "") = 0.181 "";
    parameter Real elmt_re112_elmt_k111(unit "s-1.0") = 0.222 "";
    Real elmt_reactant106 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa121</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product107 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa120</celldesigner:alias>
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
    parameter Real elmt_re113_elmt_V12(unit ".s-1.0") = 0.289 "";
    parameter Real elmt_re113_elmt_K12(unit "") = 0.0571 "";
    Real elmt_reactant108 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa120</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product109 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa121</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re3(unit = "") "re1";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:name>re1</celldesigner:name>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa4\" species=\"s4\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa3\" species=\"s3\">
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
    Real elmt_product1 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa3</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant0 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa4</celldesigner:alias>
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
<celldesigner:modification aliases=\"sa72\" editPoints=\"0.022749856491216303,-0.14910499830939639\" modifiers=\"s24\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
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
    parameter Real elmt_re62_elmt_k62(unit "s-1.0") = 20.0 "";
    parameter Real elmt_re62_elmt_Km62(unit "") = 80000.0 "";
    Real elmt_product58 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa3</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant57 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa1</celldesigner:alias>
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
<celldesigner:editPoints>0.5555272235279656,-0.004576266129490136 0.5555782211776013,0.0036610129036045436</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa111\" editPoints=\"0.7272491157078269,-0.445373819852504\" modifiers=\"s39\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
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
    Real elmt_reactant140 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa124</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product141 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa133</celldesigner:alias>
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
<celldesigner:modification aliases=\"sa63\" editPoints=\"0.32380017932634253,-0.24633681954897035 0.6903948799260009,0.23553767250462165\" modifiers=\"s15\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
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
    parameter Real elmt_re63_elmt_k63(unit "s-1.0") = 0.037 "";
    parameter Real elmt_re63_elmt_Km63(unit "") = 8800.0 "";
    Real elmt_product60 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa2</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant59 "";
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
<celldesigner:modification aliases=\"sa63\" editPoints=\"0.46451894165016494,0.14451494560039535 0.5527651862258152,-0.13913773796516615\" modifiers=\"s15\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
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
    parameter Real elmt_re64_elmt_Km64(unit "") = 48000.0 "";
    parameter Real elmt_re64_elmt_k64(unit "s-1.0") = 0.04 "";
    Real elmt_reactant61 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa3</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product62 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa1</celldesigner:alias>
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
<celldesigner:modification aliases=\"sa63\" editPoints=\"0.03851070414214952,-0.13863070052721405 0.966869949772736,0.11926144104129754\" modifiers=\"s15\" targetLineIndex=\"0,3\" type=\"CATALYSIS\">
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
    parameter Real elmt_re65_elmt_Km65(unit "") = 48000.0 "";
    parameter Real elmt_re65_elmt_k65(unit "s-1.0") = 0.163 "";
    Real elmt_reactant63 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa3</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product65 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa62</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product64 "";
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
<celldesigner:modification aliases=\"sa64\" editPoints=\"0.5106060321925066,-0.4998874994247524\" modifiers=\"s17\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
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
    parameter Real elmt_re66_elmt_k66(unit "mol-1.0.s-1.0") = 7.0E-4 "";
    Real elmt_product67 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa65</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant66 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa73</celldesigner:alias>
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
    parameter Real elmt_re125_elmt_K39(unit "") = 15.0 "";
    parameter Real elmt_re125_elmt_V39(unit ".s-1.0") = 0.05 "";
    Real elmt_reactant132 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa130</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product133 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa122</celldesigner:alias>
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
    parameter Real elmt_re67_elmt_k67(unit "s-1.0") = 0.98 "";
    Real elmt_product69 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa73</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant68 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa65</celldesigner:alias>
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
<celldesigner:modification aliases=\"sa123\" editPoints=\"0.365930673663454,-0.23020695138522385 0.6494785556728364,0.2205130067011396\" modifiers=\"s43\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
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
    parameter Real elmt_re126_elmt_K40(unit "") = 30.0 "";
    parameter Real elmt_re126_elmt_k40(unit "s-1.0") = 0.002 "";
    Real elmt_product135 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa130</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant134 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa122</celldesigner:alias>
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
    Real elmt_product71 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa71</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant70 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa69</celldesigner:alias>
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
<celldesigner:modification aliases=\"sa130\" editPoints=\"0.49960912278917746,-0.036694487865860825 0.5049745522748275,0.03635783346676158\" modifiers=\"s44\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
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
    parameter Real elmt_re127_elmt_k43(unit "s-1.0") = 4.0E-5 "";
    parameter Real elmt_re127_elmt_K43(unit "") = 25.0 "";
    Real elmt_product137 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa131</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant136 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa125</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re69(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa74\" species=\"s63\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa75\" species=\"s64\">
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
<celldesigner:modification aliases=\"sa43,sa76\" editPoints=\"1521.0,849.4351382360627\" modificationType=\"CATALYSIS\" modifiers=\"s45,s65\" targetLineIndex=\"-1,3\" type=\"BOOLEAN_LOGIC_GATE_AND\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa48\" editPoints=\"0.23246732641423629,0.2853958814847629 0.8336163913780754,-0.20426611076799606\" modifiers=\"s50\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa48\" species=\"s50\">
<celldesigner:linkAnchor position=\"SSE\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa60\" editPoints=\"0.0314211105911002,-0.17445292889579722\" modifiers=\"s61\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"1\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa60\" species=\"s61\">
<celldesigner:linkAnchor position=\"ESE\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa61\" editPoints=\"0.6880390016005284,-0.16598160045628862 0.7430345618589447,0.06198999560400864\" modifiers=\"s62\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa61\" species=\"s62\">
<celldesigner:linkAnchor position=\"SSW\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa57\" editPoints=\"0.06834266243603881,0.10744608765052227 0.7803001283825237,-0.34540491723910455\" modifiers=\"s58\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa57\" species=\"s58\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa59\" editPoints=\"0.3770680148828701,-0.19174574873270522 0.5825282331874334,0.2122917705632208\" modifiers=\"s60\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa59\" species=\"s60\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa43\" editPoints=\"0.004135501478698345,0.04859057968604108 0.9954711322264256,-0.05321248500886577\" modifiers=\"s45\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa43\" species=\"s45\">
<celldesigner:linkAnchor position=\"SSE\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa76\" editPoints=\"-0.021484016776921633,-0.05513198757021254 0.7458970384229011,-0.35416759631202854 0.8992147945127511,0.039274314984490744\" modifiers=\"s65\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"2\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"3\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa76\" species=\"s65\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re69_elmt_K_pcam_no(unit "s-1.0") = 17.0 "";
    parameter Real elmt_re69_elmt_K_cam_no(unit "s-1.0") = 17.0 "";
    parameter Real elmt_re69_elmt_K_p_no(unit "s-1.0") = 5.0 "";
    Real elmt_reactant72 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa74</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product73 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa75</celldesigner:alias>
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
    parameter Real elmt_re128_elmt_V44(unit ".s-1.0") = 0.002 "";
    parameter Real elmt_re128_elmt_K44(unit "") = 5.0 "";
    Real elmt_reactant138 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa131</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product139 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa125</celldesigner:alias>
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
<celldesigner:linkAnchor position=\"SSW\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"1\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints>0.8698220815743513,0.3364990757491224</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa128\" editPoints=\"0.008936533931400703,-0.09410989476507514\" modifiers=\"s106\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
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
    parameter Real elmt_re121_elmt_kP(unit ".s-1.0") = 0.02824 "";
    parameter Real elmt_re121_elmt_K30(unit "") = 16.0 "";
    Real elmt_product125 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa49</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant124 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa126</celldesigner:alias>
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
    Real elmt_reactant126 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa108</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product127 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa111</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re9(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa3\" species=\"s3\">
<celldesigner:linkAnchor position=\"SE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa10\" species=\"s10\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
<celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints>0.22165017357843997,-0.16496430061432266</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_product13 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa10</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant12 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa3</celldesigner:alias>
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
    parameter Real elmt_re123_elmt_K37(unit "") = 15.0 "";
    parameter Real elmt_re123_elmt_V37(unit ".s-1.0") = 0.375 "";
    Real elmt_reactant128 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa123</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product129 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa118</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re8(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa3\" species=\"s3\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa9\" species=\"s9\">
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
    Real elmt_product11 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa9</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant10 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa3</celldesigner:alias>
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
<celldesigner:modification aliases=\"sa119\" editPoints=\"0.1790110040488626,-0.2685724586688494 0.8714074558856835,0.19292900971516502\" modifiers=\"s101\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
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
    parameter Real elmt_re124_elmt_k38(unit "s-1.0") = 0.005 "";
    parameter Real elmt_re124_elmt_K38(unit "") = 15.0 "";
    Real elmt_reactant130 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa118</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product131 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa123</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re7(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa2\" species=\"s2\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa3\" species=\"s3\">
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
<celldesigner:modification aliases=\"sa6\" editPoints=\"0.7313012214488868,0.44565948834230174\" modifiers=\"s6\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
<celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa6\" species=\"s6\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_product9 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa3</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant8 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa2</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re6(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa6\" species=\"s6\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa8\" species=\"s8\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
<celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints>0.108236516833081,-0.30314390705616034</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_product7 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa8</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant6 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa6</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re70(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa76\" species=\"s65\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa77\" species=\"s66\">
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
    Real elmt_reactant74 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa76</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product75 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa77</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re5(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa7\" species=\"s7\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa6\" species=\"s6\">
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
<celldesigner:modification aliases=\"sa3\" editPoints=\"0.12092038307728559,-0.2461409594340318 0.935779512304322,0.1475904760437836\" modifiers=\"s3\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
<celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
<celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa3\" species=\"s3\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa12,sa142\" editPoints=\"0.008483696257246987,0.06457456950253848 0.9915163037427539,-0.06457456950253648 648.0003759511713,322.0964991735758\" modificationType=\"CATALYSIS\" modifiers=\"s12,s119\" targetLineIndex=\"-1,3\" type=\"BOOLEAN_LOGIC_GATE_AND\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa12\" editPoints=\"0.004153870721999686,-0.06431653037924567\" modifiers=\"s12\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa12\" species=\"s12\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa142\" editPoints=\"0.4586734123381041,0.4982891862686003\" modifiers=\"s119\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"1\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa142\" species=\"s119\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_reactant4 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa7</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product5 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa6</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re71(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa77\" species=\"s66\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa49\" species=\"s51\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:baseProduct>
<celldesigner:baseProduct alias=\"sa56\" species=\"s57\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"0\" index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"1\" index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"2\" index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"1\" num1=\"1\" num2=\"2\" tShapeIndex=\"0\">0.3244270862118137,-0.4681603912591541 0.9822532889313855,0.1320294107949498 0.5259641260045163,0.010004574806173672 0.5263258088570621,-0.009009946961673343 0.35080815167434665,0.07140456508108617</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_product78 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa56</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product77 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa49</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant76 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa77</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re4(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa5\" species=\"s5\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa2\" species=\"s2\">
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
<celldesigner:modification aliases=\"sa1\" editPoints=\"0.5870844032352514,-0.24174976941010584 0.7301324392157968,0.10571653442838036\" modifiers=\"s1\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
<celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
<celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa1\" species=\"s1\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_reactant2 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa5</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product3 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa2</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re72(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa61\" species=\"s62\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa76\" species=\"s65\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseProduct>
<celldesigner:baseProduct alias=\"sa46\" species=\"s48\">
<celldesigner:linkAnchor position=\"S\"/>
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
<celldesigner:lineDirection arm=\"2\" index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"1\" num1=\"2\" num2=\"2\" tShapeIndex=\"0\">0.9978295033580737,-0.04653800152835985 0.005042920444222165,-0.0485381092756354 0.9943637947976351,0.05424847507276964 0.2213445262553897,-0.44245339062588007 1.021174077082086,-0.04232561047176242 0.9404420617096321,0.5068494974687949</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_product81 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa46</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product80 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa76</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant79 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa61</celldesigner:alias>
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
    parameter Real elmt_re120_elmt_kD(unit "s-1.0") = 2.8E-5 "";
    Real elmt_product123 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa134</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant122 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa128</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
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
    parameter Real elmt_re59_elmt_Km59(unit "") = 80.9 "";
    parameter Real elmt_re59_elmt_k59(unit "s-1.0") = 7.5 "";
    Real elmt_reactant50 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa64</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product51 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa67</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re51(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa43\" species=\"s45\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
<celldesigner:baseReactant alias=\"sa56\" species=\"s57\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa57\" species=\"s58\">
<celldesigner:linkAnchor position=\"W\"/>
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
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"2\" num1=\"2\" num2=\"1\" tShapeIndex=\"0\">0.4868511066528125,0.0033024676586554946 0.48689711798846247,-0.003480541895148903 0.4038461538461533,-0.019230769230766498 0.4061085972850691,0.02828054298642968 0.8237868451538124,-0.38100141588364167 0.7076697004171066,0.011341588207329778</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_product34 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa57</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant32 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa43</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant33 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa56</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re52(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa57\" species=\"s58\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa60\" species=\"s61\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\" rectangleIndex=\"2\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints>0.2751161590087756,-0.2487351574599881 0.7248838409912217,0.24873515745999164</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa53\" editPoints=\"0.0334789140302616,-0.0016696254934467358 0.035959856034841975,0.04807760489528978\" modifiers=\"s3\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"2\" value=\"horizontal\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa53\" species=\"s3\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_product36 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa60</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant35 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa57</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re53(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa60\" species=\"s61\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa48\" species=\"s50\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseProduct>
<celldesigner:baseProduct alias=\"sa56\" species=\"s57\">
<celldesigner:linkAnchor position=\"NNW\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"0\" index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"1\" index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"1\" index=\"2\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"2\" index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"1\" num1=\"2\" num2=\"2\" tShapeIndex=\"0\">0.8807959958372176,-0.32402840856063975 -0.0017517136329097127,0.002132520944405414 0.5953541507997144,0.4926123381568708 0.15480991455010873,-0.05638837001290753 0.2719423329037931,0.2651896375129539 0.39211788957793736,0.2172191926376601</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_product38 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa48</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant37 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa60</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product39 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa56</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re10(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa11\" species=\"s11\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa3\" species=\"s3\">
<celldesigner:linkAnchor position=\"NE\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
<celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints>0.7667134752900213,0.1295424925726123</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_reactant14 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa11</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product15 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa3</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re54(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa59\" species=\"s60\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa61\" species=\"s62\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\" rectangleIndex=\"2\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints>0.4250522544042332,-0.21543744401310505 0.6294416243654211,0.18781725888327827</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa53\" editPoints=\"-0.0011986944586066528,-0.021296291675683254 0.5050642675940327,-0.04979207941432351 0.5094211304049809,0.027612984525593354\" modifiers=\"s3\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"3\" value=\"horizontal\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa53\" species=\"s3\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_product41 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa61</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant40 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa59</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re11(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa13\" species=\"s13\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa12\" species=\"s12\">
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
    parameter Real elmt_re11_elmt_unisec(unit ".s-1.0") = 1.0 "";
    Real elmt_reactant16 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa13</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product17 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa12</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re55(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa57\" species=\"s58\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa59\" species=\"s60\">
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
<celldesigner:modification aliases=\"csa3\" editPoints=\"0.20435999115897863,0.38521549523605036 0.984732691422848,-0.028778645962525773\" modifiers=\"s27\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"csa3\" species=\"s27\">
<celldesigner:linkAnchor position=\"SSE\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_reactant42 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa57</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product43 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa59</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re136(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa60\" species=\"s61\">
<celldesigner:linkAnchor position=\"NNE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa138\" species=\"s57\">
<celldesigner:linkAnchor position=\"SSW\"/>
</celldesigner:baseProduct>
<celldesigner:baseProduct alias=\"sa140\" species=\"s48\">
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
<celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"2\" index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"2\" value=\"horizontal\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"1\" num1=\"2\" num2=\"2\" tShapeIndex=\"0\">0.8753505765035854,0.33032097226550405 0.5,0.0 0.5,0.0 0.4999999999999991,0.0 0.4999999999999991,0.0 0.1744748002761609,0.22586053851464616</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_product157 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa138</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product158 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa140</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant156 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa60</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re12(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa3\" species=\"s3\">
<celldesigner:linkAnchor position=\"SSE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa9\" species=\"s9\">
<celldesigner:linkAnchor position=\"NE\"/>
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
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa3</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product19 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa9</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re56(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa60\" species=\"s61\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa61\" species=\"s62\">
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
<celldesigner:modification aliases=\"csa3\" editPoints=\"0.07969945861237404,0.2952167197776825 1.0117671613630876,0.043587031068816784\" modifiers=\"s27\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"csa3\" species=\"s27\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_product45 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa61</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant44 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa60</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re137(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa61\" species=\"s62\">
<celldesigner:linkAnchor position=\"NNW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa138\" species=\"s57\">
<celldesigner:linkAnchor position=\"SW\"/>
</celldesigner:baseProduct>
<celldesigner:baseProduct alias=\"sa140\" species=\"s48\">
<celldesigner:linkAnchor position=\"SW\"/>
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
<celldesigner:lineDirection arm=\"2\" index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"1\" num1=\"2\" num2=\"2\" tShapeIndex=\"0\">0.9852626211116764,0.12049974502804783 9.361104610343673E-4,0.0016674467587176611 0.7612918324362274,-0.42519892347296984 0.20000000000000284,1.4000000000000021 1.1800000000000068,1.2600000000000016 0.010355165346140893,0.6530178347456328</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_product160 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa138</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant159 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa61</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product161 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa140</celldesigner:alias>
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
<celldesigner:modification aliases=\"sa71,sa142\" editPoints=\"0.730805636725087,-0.4435411571161456 1856.5,335.58785932872956\" modificationType=\"CATALYSIS\" modifiers=\"s23,s119\" targetLineIndex=\"-1,2\" type=\"BOOLEAN_LOGIC_GATE_AND\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"1\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa71\" editPoints=\"0.15901402786845154,0.24319960308187305 0.8595350577722556,-0.21483021752625753\" modifiers=\"s23\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
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
<celldesigner:modification aliases=\"sa142\" editPoints=\"0.10175379772358789,-0.3746401253700513 1.0330529815448093,-0.12169543964776097\" modifiers=\"s119\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
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
    parameter Real elmt_re57_elmt_normal(unit ".s-1.0") = 0.907 "";
    parameter Real elmt_re57_elmt_unimol(unit "") = 1.0 "";
    parameter Real elmt_re57_elmt_tf(unit "") = 15.0 "";
    parameter Real elmt_re57_elmt_unity(unit "") = 1.0 "";
    Real elmt_product47 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa68</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant46 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa70</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re138(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa57\" species=\"s58\">
<celldesigner:linkAnchor position=\"NNE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa138\" species=\"s57\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseProduct>
<celldesigner:baseProduct alias=\"sa141\" species=\"s47\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"0\" index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"1\" index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"1\" index=\"2\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"2\" index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"2\" value=\"horizontal\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"1\" num1=\"2\" num2=\"2\" tShapeIndex=\"0\">0.9693143880898596,0.17246450397644875 0.5,0.0 0.5,0.0 0.5,0.0 0.5,0.0 0.0934982810970868,0.39835888685353016</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_reactant162 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa57</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product164 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa141</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product163 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa138</celldesigner:alias>
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
<celldesigner:modification aliases=\"sa68\" editPoints=\"0.3254875461890627,0.542519370788793 1.0608104562837468,0.1013582573794527\" modifiers=\"s20\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
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
    parameter Real elmt_re58_elmt_Km58(unit "") = 6170.0 "";
    parameter Real elmt_re58_elmt_k58(unit "s-1.0") = 0.2 "";
    Real elmt_product49 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa64</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant48 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa67</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re139(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa59\" species=\"s60\">
<celldesigner:linkAnchor position=\"NNW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa138\" species=\"s57\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseProduct>
<celldesigner:baseProduct alias=\"sa141\" species=\"s47\">
<celldesigner:linkAnchor position=\"WSW\"/>
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
<celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"2\" index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"2\" value=\"horizontal\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"2\" num1=\"2\" num2=\"2\" tShapeIndex=\"0\">0.5,1.4210854715202004E-14 0.5,1.4210854715202004E-14 0.08310788875662878,0.004328535872740957 0.08581322367709188,-0.04761389460015142 0.5,0.0 0.5,0.0 0.1516007855985042,-0.18171253612809757</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_reactant165 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa59</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product167 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa141</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product166 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa138</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re132(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa43\" species=\"s45\">
<celldesigner:linkAnchor position=\"NNE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa137\" species=\"s117\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseProduct>
<celldesigner:baseProduct alias=\"sa45\" species=\"s47\">
<celldesigner:linkAnchor position=\"NE\"/>
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
<celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"2\" index=\"1\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"2\" num1=\"2\" num2=\"1\" tShapeIndex=\"0\">0.7349999999999994,-0.10499999999998977 0.7549999999999955,0.0350000000000108 0.12118685531478146,-0.053769956868354285 0.28567068323380074,0.3169440815387823 0.9747443855585232,0.1569005047176697 0.36998730593095,-0.0727743536880201</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_product146 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa45</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product145 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa137</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant144 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa43</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re133(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa48\" species=\"s50\">
<celldesigner:linkAnchor position=\"SSW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa137\" species=\"s117\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:baseProduct>
<celldesigner:baseProduct alias=\"sa46\" species=\"s48\">
<celldesigner:linkAnchor position=\"NE\"/>
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
<celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"2\" index=\"1\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"2\" num1=\"2\" num2=\"1\" tShapeIndex=\"0\">0.020782147550029606,-0.06828495985154959 0.9360087898508986,0.2102591758317338 0.7236939480872664,0.0 0.7236939480872664,7.105427357601002E-15 0.968999264164009,0.17331961866337586 0.24216843044470693,0.29407437168769945</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_product148 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa137</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant147 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa48</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product149 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa46</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re134(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa77\" species=\"s66\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa138\" species=\"s57\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseProduct>
<celldesigner:baseProduct alias=\"sa139\" species=\"s118\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"0\" index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"1\" index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"1\" index=\"2\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"2\" index=\"1\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"1\" num1=\"2\" num2=\"1\" tShapeIndex=\"0\">0.9721844773958299,0.16444397011269896 0.25119617224880386,0.0 0.25119617224880386,-1.4210854715202004E-14 0.9430101013408407,0.2318233165796233 0.004064776274717019,0.5639633194588995</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_reactant150 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa77</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product152 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa139</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product151 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa138</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re135(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa76\" species=\"s65\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa139\" species=\"s118\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseProduct>
<celldesigner:baseProduct alias=\"sa138\" species=\"s57\">
<celldesigner:linkAnchor position=\"SSE\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection arm=\"0\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"0\" index=\"1\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"1\" index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection arm=\"1\" index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"2\" index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection arm=\"2\" index=\"1\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints num0=\"1\" num1=\"1\" num2=\"1\" tShapeIndex=\"0\">0.4475138121546962,-0.49723756906076844 0.49115113547376055,-0.4999216914643654 0.6721422523285341,-0.4694326841659606 0.21157155147691498,0.3497992543733872</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_reactant153 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa76</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product155 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa138</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product154 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa139</celldesigner:alias>
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
    parameter Real elmt_re60_elmt_k60(unit "mol-1.0.s-1.0") = 0.045 "";
    parameter Real elmt_re60_elmt_kr60(unit "s-1.0") = 0.089 "";
    Real elmt_reactant52 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa64</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant53 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa62</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product54 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa2</celldesigner:alias>
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
<celldesigner:modification aliases=\"sa65\" editPoints=\"1.1701225395112274,0.4629197118451893 1.3054538779800096,0.12084257537297383\" modifiers=\"s14\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
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
    parameter Real elmt_re61_elmt_k61(unit "s-1.0") = 20.0 "";
    parameter Real elmt_re61_elmt_Km61(unit "") = 80000.0 "";
    Real elmt_product56 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa1</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant55 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa2</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re131(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa49\" species=\"s51\">
<celldesigner:linkAnchor position=\"NNW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa136\" species=\"s116\">
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
    Real elmt_reactant142 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa49</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product143 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa136</celldesigner:alias>
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
<celldesigner:editPoints num0=\"1\" num1=\"2\" num2=\"1\" tShapeIndex=\"0\">0.9880818752063387,0.10851766259491624 0.12198038746711326,0.19732121502033007 0.8454915092083244,-0.24994020569241737 0.8816918276655428,-0.32297267484005165 1.4753499471081701,0.2728234396910132</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re107_elmt_k_108(unit "mol-1.0.s-1.0") = 15700.0 "";
    parameter Real elmt_re107_elmt_k108(unit "s-1.0") = 2040.0 "";
    Real elmt_reactant94 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa12</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product96 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa110</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product95 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa13</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re41(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa50\" species=\"s52\">
<celldesigner:linkAnchor position=\"SSW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa46\" species=\"s48\">
<celldesigner:linkAnchor position=\"NNE\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\" rectangleIndex=\"2\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints>0.31731374606505547,0.2526757607555048 0.7053515215110178,-0.2346274921301177</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa53\" editPoints=\"0.10070703764728339,0.30094040974185043\" modifiers=\"s3\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa53\" species=\"s3\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_product27 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa46</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant26 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa50</celldesigner:alias>
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
    parameter Real elmt_re108_elmt_V10(unit ".s-1.0") = 154.0 "";
    parameter Real elmt_re108_elmt_K10(unit "") = 340.0 "";
    Real elmt_reactant97 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa116</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product98 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa107</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re42(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa46\" species=\"s48\">
<celldesigner:linkAnchor position=\"SSW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa45\" species=\"s47\">
<celldesigner:linkAnchor position=\"NNE\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\" rectangleIndex=\"2\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints>0.3249999999999922,0.2249999999999952 0.6489999999999903,-0.24300000000000566</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa53\" editPoints=\"0.5141287842118762,0.4998003375916171\" modifiers=\"s3\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa53\" species=\"s3\">
<celldesigner:linkAnchor position=\"SSW\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_reactant28 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa46</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product29 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa45</celldesigner:alias>
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
<celldesigner:editPoints num0=\"2\" num1=\"2\" num2=\"3\" tShapeIndex=\"0\">0.22218312552589392,0.5047655473112513 1.0598791402126517,0.13603610494913054 0.4999999999999982,0.0 0.4999999999999982,8.881784197001252E-16 -0.09741676599990393,0.2247609397364556 0.8359416402339238,0.6293007924383449 1.0915057261013559,0.03966076987273448 0.6148895606652705,-0.22305901684239304</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re109_elmt_k9(unit "s-1.0") = 40.8 "";
    Real elmt_product101 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa10</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product100 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa116</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant99 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa13</celldesigner:alias>
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
<celldesigner:modification aliases=\"sa111,sa142\" editPoints=\"0.12161558098232317,-0.21451676147446364 0.8783844190176773,0.21451676147446896 853.7595969770848,1154.0488796346376\" modificationType=\"CATALYSIS\" modifiers=\"s39,s119\" targetLineIndex=\"-1,3\" type=\"BOOLEAN_LOGIC_GATE_AND\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa111\" editPoints=\"-0.08858723950035241,-0.22650793237633948 0.8173533073787933,-0.5808212288578094 1.0386071409610498,-0.015099250639302397\" modifiers=\"s39\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
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
<celldesigner:modification aliases=\"sa142\" editPoints=\"0.1482659447695187,0.3474412855540109 0.9942150553085163,-0.013556239253675773\" modifiers=\"s119\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
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
    Real elmt_product85 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa109</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant84 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa112</celldesigner:alias>
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
<celldesigner:editPoints num0=\"2\" num1=\"2\" num2=\"2\" tShapeIndex=\"0\">0.3888888888888897,4.440892098500626E-16 0.3888888888888893,4.440892098500626E-16 0.470588235294116,8.881784197001252E-16 0.47058823529411953,8.881784197001252E-16 0.51039205285239,-0.003544389255920599 0.5104402758354638,0.0033997203066991055 0.6192468619246871,0.0</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:extension>
                        </annotation>"));
    parameter Real elmt_re104_elmt_k_105(unit "s-1.0") = 1.0 "";
    parameter Real elmt_re104_elmt_k105(unit "mol-1.0.s-1.0") = 0.1 "";
    Real elmt_reactant86 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa107</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product88 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa9</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant87 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa110</celldesigner:alias>
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
<celldesigner:modification aliases=\"sa109\" editPoints=\"0.46792072254721795,-0.4989698587671487\" modifiers=\"s92\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
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
    parameter Real elmt_re105_elmt_k_6(unit "s-1.0") = 5.0 "";
    parameter Real elmt_re105_elmt_kcat_src(unit "mol-1.0.s-1.0") = 8.33 "";
    Real elmt_reactant89 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa9</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product90 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa11</celldesigner:alias>
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
    parameter Real elmt_re106_elmt_k_107(unit "s-1.0") = 546.0 "";
    parameter Real elmt_re106_elmt_k107(unit "mol-1.0.s-1.0") = 60.0 "";
    Real elmt_product93 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa12</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant91 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa11</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant92 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>csa10</celldesigner:alias>
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
<celldesigner:modification aliases=\"sa111,sa142\" editPoints=\"0.8573417553268641,0.3497239910270906 847.259596977085,1070.0488796346372\" modificationType=\"CATALYSIS\" modifiers=\"s39,s119\" targetLineIndex=\"-1,3\" type=\"BOOLEAN_LOGIC_GATE_AND\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"1\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa111\" editPoints=\"-0.14839694242474377,-0.10671027622396778 0.10481405350283413,-0.4588388519678084 0.9123695107124596,0.12186358365488914\" modifiers=\"s39\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
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
<celldesigner:modification aliases=\"sa142\" editPoints=\"0.04558044320855875,0.14460708871215489 0.9552069575904516,-0.1421090055611538\" modifiers=\"s119\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
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
    parameter Real elmt_re102_elmt_normal(unit ".s-1.0") = 4.0 "";
    parameter Real elmt_re102_elmt_unimol(unit "") = 1.0 "";
    parameter Real elmt_re102_elmt_tf(unit "") = 60.0 "";
    parameter Real elmt_re102_elmt_unity(unit "") = 1.0 "";
    parameter Real elmt_re102_elmt_tiny_num(unit "") = 1.0E-6 "";
    Real elmt_product83 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa110</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant82 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa113</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_re50(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa43\" species=\"s45\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa48\" species=\"s50\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\" rectangleIndex=\"2\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints>-0.05082399068798449,0.04624149972431457 0.4020706977883969,0.5440176438154749</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa53\" editPoints=\"0.061849690420585635,0.24088234932319885\" modifiers=\"s3\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa53\" species=\"s3\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
                        </annotation>"));
    Real elmt_reactant30 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa43</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product31 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa48</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));


    initial equation
        elmt_product73 = 1.0;
        elmt_reactant40 = 1.0;
        elmt_product71 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product78 = 1.0;
        elmt_product77 = 1.0;
        elmt_reactant108 = 1.0;
        elmt_product75 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_reactant110 = 1.0;
        elmt_reactant118 = 1.0;
        elmt_reactant116 = 1.0;
        elmt_product69 = 1.0;
        elmt_reactant114 = 1.0;
        elmt_reactant112 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product85 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_product83 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_product88 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_product81 = 1.0;
        elmt_product80 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_reactant120 = 1.0;
        elmt_product101 = 1.0;
        elmt_product103 = 1.0;
        elmt_product100 = 1.0;
        elmt_product109 = 1.0;
        elmt_reactant128 = 1.0;
        elmt_reactant126 = 1.0;
        elmt_product105 = 1.0;
        elmt_reactant124 = 1.0;
        elmt_product107 = 1.0;
        elmt_reactant122 = 1.0;
        elmt_product96 = 1.0;
        elmt_product95 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product93 = 1.0;
        elmt_product11 = 1.0;
        elmt_product98 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_product151 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_product90 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_product157 = 1.0;
        elmt_product158 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product152 = 1.0;
        elmt_product155 = 1.0;
        elmt_product154 = 1.0;
        elmt_product9 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_product22 = 1.0;
        elmt_product1 = 1.0;
        elmt_product160 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_product161 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_product167 = 1.0;
        elmt_product164 = 1.0;
        elmt_product163 = 1.0;
        elmt_product166 = 1.0;
        elmt_reactant106 = 1.0;
        elmt_product15 = 1.0;
        elmt_reactant104 = 1.0;
        elmt_product13 = 1.0;
        elmt_reactant102 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;
        elmt_reactant84 = 1.0;
        elmt_reactant86 = 1.0;
        elmt_product34 = 1.0;
        elmt_reactant82 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant87 = 1.0;
        elmt_reactant89 = 1.0;
        elmt_product135 = 1.0;
        elmt_reactant153 = 1.0;
        elmt_product137 = 1.0;
        elmt_product131 = 1.0;
        elmt_reactant150 = 1.0;
        elmt_product133 = 1.0;
        elmt_product27 = 1.0;
        elmt_product25 = 1.0;
        elmt_reactant159 = 1.0;
        elmt_product139 = 1.0;
        elmt_reactant156 = 1.0;
        elmt_product29 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant94 = 1.0;
        elmt_reactant97 = 1.0;
        elmt_product45 = 1.0;
        elmt_reactant91 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant92 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant99 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant165 = 1.0;
        elmt_product146 = 1.0;
        elmt_product145 = 1.0;
        elmt_product148 = 1.0;
        elmt_reactant162 = 1.0;
        elmt_product141 = 1.0;
        elmt_product143 = 1.0;
        elmt_product38 = 1.0;
        elmt_product36 = 1.0;
        elmt_product149 = 1.0;
        elmt_product39 = 1.0;
        elmt_reactant61 = 1.0;
        elmt_product51 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_product56 = 1.0;
        elmt_product54 = 1.0;
        elmt_reactant66 = 1.0;
        elmt_reactant68 = 1.0;
        elmt_product113 = 1.0;
        elmt_reactant132 = 1.0;
        elmt_product115 = 1.0;
        elmt_reactant130 = 1.0;
        elmt_product111 = 1.0;
        elmt_product49 = 1.0;
        elmt_reactant138 = 1.0;
        elmt_product47 = 1.0;
        elmt_product117 = 1.0;
        elmt_reactant136 = 1.0;
        elmt_product119 = 1.0;
        elmt_reactant134 = 1.0;
        elmt_reactant72 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product62 = 1.0;
        elmt_reactant74 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product60 = 1.0;
        elmt_product67 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product65 = 1.0;
        elmt_reactant70 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product64 = 1.0;
        elmt_reactant76 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant79 = 1.0;
        elmt_product123 = 1.0;
        elmt_reactant142 = 1.0;
        elmt_reactant140 = 1.0;
        elmt_product125 = 1.0;
        elmt_product121 = 1.0;
        elmt_product58 = 1.0;
        elmt_reactant147 = 1.0;
        elmt_product127 = 1.0;
        elmt_product129 = 1.0;
        elmt_reactant144 = 1.0;


    equation
        elmt_re37 = (elmt_k15 * elmt_s47 * elmt_s51);
        elmt_re38 = ((elmt_k17 * elmt_s51 * elmt_s48) - (elmt_k18 * elmt_s50));
        elmt_re118 = ((elmt_re118_elmt_k21 * elmt_s99 * elmt_s43) / (elmt_s99 + elmt_re118_elmt_K21));
        elmt_re119 = ((elmt_re119_elmt_V22 * elmt_s104) / (elmt_s104 + elmt_re119_elmt_K22));
        elmt_re114 = ((elmt_re114_elmt_k113 * elmt_s102 * elmt_s97) / (elmt_re114_elmt_K113 + elmt_s97));
        elmt_re115 = ((elmt_re115_elmt_V18 * elmt_s101) / (elmt_re115_elmt_K18 + elmt_s101));
        elmt_re116 = ((elmt_re116_elmt_k19 * elmt_s101 * elmt_s96) / (elmt_re116_elmt_K19 + elmt_s96));
        elmt_re117 = ((elmt_re117_elmt_V20 * elmt_s100) / (elmt_s100 + elmt_re117_elmt_K20));
        elmt_re110 = (elmt_s115 * elmt_re110_elmt_kT);
        elmt_re111 = ((elmt_re111_elmt_ktr1 * elmt_s107) + (elmt_re111_elmt_ktr1k2 * elmt_s49));
        elmt_re112 = ((elmt_re112_elmt_k111 * elmt_s114 * elmt_s103) / (elmt_s103 + elmt_re112_elmt_K111));
        elmt_re113 = ((elmt_re113_elmt_V12 * elmt_s102) / (elmt_re113_elmt_K12 + elmt_s102));
        elmt_re3 = (((- elmt_k6) * elmt_s3 * (elmt_B_T - elmt_s4)) + (elmt_k7 * elmt_s4));
        elmt_re62 = ((elmt_re62_elmt_k62 * elmt_s26 * elmt_s24) / (elmt_re62_elmt_Km62 + elmt_s26));
        elmt_re129 = (((exp((elmt_re129_elmt_tau * (elmt_re129_elmt_delay - (elmt_s39 / elmt_re129_elmt_tc)))) / (1.0 + (2.0 * exp((elmt_re129_elmt_tau * (elmt_re129_elmt_delay - (elmt_s39 / elmt_re129_elmt_tc))))) + exp((2.0 * elmt_re129_elmt_tau * (elmt_re129_elmt_delay - (elmt_s39 / elmt_re129_elmt_tc)))))) / elmt_re129_elmt_uc) * 29.256);
        elmt_re63 = ((elmt_re63_elmt_k63 * elmt_s26 * elmt_s15) / (elmt_re63_elmt_Km63 + elmt_s26));
        elmt_re64 = ((elmt_re64_elmt_k64 * elmt_s27 * elmt_s15) / (elmt_re64_elmt_Km64 + elmt_s27));
        elmt_re65 = ((elmt_re65_elmt_k65 * elmt_s27 * elmt_s15) / (elmt_re65_elmt_Km65 + elmt_s27));
        elmt_re66 = (elmt_re66_elmt_k66 * elmt_s17 * elmt_s25);
        elmt_re125 = ((elmt_re125_elmt_V39 * elmt_s44) / (elmt_re125_elmt_K39 + elmt_s44));
        elmt_re67 = (elmt_s14 * elmt_re67_elmt_k67);
        elmt_re126 = ((elmt_re126_elmt_k40 * elmt_s104 * elmt_s43) / (elmt_re126_elmt_K40 + elmt_s104));
        elmt_re68 = elmt_re68_elmt_unitime;
        elmt_re127 = ((elmt_s44 * elmt_s42 * elmt_re127_elmt_k43) / (elmt_re127_elmt_K43 + elmt_s42));
        elmt_re69 = ((elmt_re69_elmt_K_cam_no * (elmt_s45 + elmt_s58)) + (elmt_re69_elmt_K_p_no * (elmt_s62 + elmt_s65)) + (elmt_re69_elmt_K_pcam_no * elmt_s60));
        elmt_re128 = ((elmt_re128_elmt_V44 * elmt_s107) / (elmt_s107 + elmt_re128_elmt_K44));
        elmt_re121 = ((elmt_re121_elmt_kP * elmt_s106) / (elmt_s106 + elmt_re121_elmt_K30));
        elmt_re122 = elmt_re122_elmt_unitime;
        elmt_re9 = ((0.5 * elmt_dot_Vex * elmt_s3) / (elmt_K5 + elmt_s3));
        elmt_re123 = ((elmt_re123_elmt_V37 * elmt_s43) / (elmt_s43 + elmt_re123_elmt_K37));
        elmt_re8 = ((0.5 * elmt_dot_Vhi * Functions.pow(elmt_s3, 4.0)) / (Functions.pow(elmt_K_hi, 4.0) + Functions.pow(elmt_s3, 4.0)));
        elmt_re124 = ((elmt_re124_elmt_k38 * elmt_s100 * elmt_s101) / (elmt_re124_elmt_K38 + elmt_s100));
        elmt_re7 = (((0.5 * elmt_k3 * ((elmt_k_CICR * elmt_s3) / (elmt_K_CICR + elmt_s3)) * Functions.pow((elmt_s6 / (elmt_K2 + elmt_s6)), 3.0) * elmt_s2) - (0.5 * elmt_k4 * Functions.pow((elmt_s3 / (elmt_K3 + elmt_s3)), 2.0))) + (0.5 * elmt_k5 * elmt_s2 * elmt_s2));
        elmt_re6 = (0.5 * elmt_k2 * elmt_s6);
        elmt_re70 = ((elmt_Vdp * elmt_s65) / (elmt_s65 + elmt_Kmdp));
        elmt_re5 = ((0.5 * elmt_k1 * (elmt_R_T - (elmt_half * elmt_R_T * (exp(((- elmt_s12) / elmt_tau_I)) + exp(((- elmt_s12) / elmt_tau_II)) + (((exp(((- elmt_s12) / elmt_tau_I)) - exp(((- elmt_s12) / elmt_tau_II))) * (elmt_tau_I + elmt_tau_II)) / (elmt_tau_I - elmt_tau_II))))) * elmt_s3) / (elmt_K1 + elmt_s3));
        elmt_re71 = (elmt_kr90 * elmt_s66);
        elmt_re4 = (elmt_k_CCE * (((elmt_fracK * elmt_Cao) / (elmt_K3 + elmt_Cao)) - elmt_s2) * (elmt_s1 - elmt_s2));
        elmt_re72 = ((elmt_k18 * elmt_s62) - (elmt_k17 * elmt_s65 * elmt_s48));
        elmt_re120 = (elmt_re120_elmt_kD * elmt_s106);
        elmt_re59 = ((elmt_re59_elmt_k59 * elmt_s17 * elmt_s18) / (elmt_re59_elmt_Km59 + elmt_s17));
        elmt_re51 = (elmt_k90 * elmt_s45 * elmt_s57);
        elmt_re52 = ((elmt_gam * elmt_k14 * elmt_s58) - (elmt_k13 * elmt_s3 * elmt_s61));
        elmt_re53 = (elmt_kr90 * elmt_s61);
        elmt_re10 = (0.5 * elmt_dot_q_inpass);
        elmt_re54 = ((elmt_gam * elmt_k14 * elmt_s60) - (elmt_k13 * elmt_s3 * elmt_s62));
        elmt_re11 = (elmt_re11_elmt_unisec * 0.5);
        elmt_re55 = (((elmt_kp * elmt_s58 * elmt_s27) / (elmt_s58 + elmt_Kmp)) - ((elmt_Vdp * elmt_s60) / (elmt_s60 + elmt_Kmdp)));
        elmt_re136 = (elmt_kDD * elmt_s61);
        elmt_re12 = ((0.5 * elmt_dot_Vp * Functions.pow(elmt_s3, 2.0)) / (Functions.pow(elmt_K4, 2.0) + Functions.pow(elmt_s3, 2.0)));
        elmt_re56 = (((elmt_kp * elmt_s61 * elmt_s27) / (elmt_s61 + elmt_Kmp)) - ((elmt_Vdp * elmt_s62) / (elmt_s62 + elmt_Kmdp)));
        elmt_re137 = (elmt_kDD * elmt_s62);
        elmt_re57 = (exp((elmt_re57_elmt_unity - Functions.pow((elmt_s23 / elmt_re57_elmt_tf), 1.8))) * elmt_re57_elmt_normal * Functions.pow((elmt_s23 / elmt_re57_elmt_unimol), 0.8) * (elmt_re57_elmt_unity - Functions.pow((elmt_s23 / elmt_re57_elmt_tf), 1.8)));
        elmt_re138 = (elmt_kDD * elmt_s58);
        elmt_re58 = ((elmt_re58_elmt_k58 * elmt_s19 * elmt_s20) / (elmt_re58_elmt_Km58 + elmt_s19));
        elmt_re139 = (elmt_kDD * elmt_s60);
        elmt_re132 = (elmt_kDD * elmt_s45);
        elmt_re133 = (elmt_kDD * elmt_s50);
        elmt_re134 = (elmt_kDD * elmt_s66);
        elmt_re135 = (elmt_kDD * elmt_s65);
        elmt_re60 = ((elmt_re60_elmt_k60 * elmt_s17 * elmt_s16) - (elmt_re60_elmt_kr60 * elmt_s28));
        elmt_re61 = ((elmt_re61_elmt_k61 * elmt_s28 * elmt_s14) / (elmt_re61_elmt_Km61 + elmt_s28));
        elmt_re131 = (elmt_kDD * elmt_s51);
        elmt_re107 = ((elmt_re107_elmt_k108 * elmt_s113) - (elmt_re107_elmt_k_108 * elmt_s93 * elmt_s114));
        elmt_re41 = ((elmt_k11 * elmt_s3 * elmt_s52) - (elmt_k12 * elmt_s48));
        elmt_re108 = ((elmt_re108_elmt_V10 * elmt_s98) / (elmt_re108_elmt_K10 + elmt_s98));
        elmt_re42 = ((elmt_k13 * elmt_s3 * elmt_s48) - (elmt_k14 * elmt_s47));
        elmt_re109 = (elmt_re109_elmt_k9 * elmt_s114);
        elmt_re103 = (exp((elmt_re103_elmt_unity - Functions.pow((elmt_s39 / elmt_re103_elmt_tf), 1.3))) * elmt_re103_elmt_normal * Functions.pow((elmt_s39 / elmt_re103_elmt_unimol), 0.3) * (elmt_re103_elmt_unity - Functions.pow((elmt_s39 / elmt_re103_elmt_tf), 1.3)));
        elmt_re104 = ((elmt_re104_elmt_k105 * elmt_s91 * elmt_s93) - (elmt_re104_elmt_k_105 * elmt_s110));
        elmt_re105 = ((elmt_re105_elmt_kcat_src * elmt_s110 * elmt_s92) - (elmt_re105_elmt_k_6 * elmt_s112));
        elmt_re106 = ((elmt_re106_elmt_k107 * elmt_s111 * elmt_s112) - (elmt_re106_elmt_k_107 * elmt_s113));
        elmt_re102 = (exp((elmt_re102_elmt_unity - Functions.pow((elmt_s39 / elmt_re102_elmt_tf), 0.35))) * elmt_re102_elmt_normal * Functions.pow(((elmt_s39 + elmt_re102_elmt_tiny_num) / elmt_re102_elmt_unimol), (-0.65)) * (elmt_re102_elmt_unity - Functions.pow((elmt_s39 / elmt_re102_elmt_tf), 0.35)));
        elmt_re50 = ((elmt_gam * elmt_k14 * elmt_s45) - (elmt_k13 * elmt_s3 * elmt_s50));
        der(elmt_product73) = 0;
        der(elmt_reactant40) = 0;
        der(elmt_product71) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product78) = 0;
        der(elmt_product77) = 0;
        der(elmt_reactant108) = 0;
        der(elmt_product75) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_reactant110) = 0;
        der(elmt_reactant118) = 0;
        der(elmt_reactant116) = 0;
        der(elmt_product69) = 0;
        der(elmt_reactant114) = 0;
        der(elmt_reactant112) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product85) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_product83) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_product88) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_product81) = 0;
        der(elmt_product80) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_reactant120) = 0;
        der(elmt_product101) = 0;
        der(elmt_product103) = 0;
        der(elmt_product100) = 0;
        der(elmt_product109) = 0;
        der(elmt_reactant128) = 0;
        der(elmt_reactant126) = 0;
        der(elmt_product105) = 0;
        der(elmt_reactant124) = 0;
        der(elmt_product107) = 0;
        der(elmt_reactant122) = 0;
        der(elmt_product96) = 0;
        der(elmt_product95) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product93) = 0;
        der(elmt_product11) = 0;
        der(elmt_product98) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_product151) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_product90) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_product157) = 0;
        der(elmt_product158) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product152) = 0;
        der(elmt_product155) = 0;
        der(elmt_product154) = 0;
        der(elmt_product9) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_product22) = 0;
        der(elmt_product1) = 0;
        der(elmt_product160) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_product161) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_product167) = 0;
        der(elmt_product164) = 0;
        der(elmt_product163) = 0;
        der(elmt_product166) = 0;
        der(elmt_reactant106) = 0;
        der(elmt_product15) = 0;
        der(elmt_reactant104) = 0;
        der(elmt_product13) = 0;
        der(elmt_reactant102) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;
        der(elmt_reactant84) = 0;
        der(elmt_reactant86) = 0;
        der(elmt_product34) = 0;
        der(elmt_reactant82) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant87) = 0;
        der(elmt_reactant89) = 0;
        der(elmt_product135) = 0;
        der(elmt_reactant153) = 0;
        der(elmt_product137) = 0;
        der(elmt_product131) = 0;
        der(elmt_reactant150) = 0;
        der(elmt_product133) = 0;
        der(elmt_product27) = 0;
        der(elmt_product25) = 0;
        der(elmt_reactant159) = 0;
        der(elmt_product139) = 0;
        der(elmt_reactant156) = 0;
        der(elmt_product29) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant94) = 0;
        der(elmt_reactant97) = 0;
        der(elmt_product45) = 0;
        der(elmt_reactant91) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant92) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant99) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant165) = 0;
        der(elmt_product146) = 0;
        der(elmt_product145) = 0;
        der(elmt_product148) = 0;
        der(elmt_reactant162) = 0;
        der(elmt_product141) = 0;
        der(elmt_product143) = 0;
        der(elmt_product38) = 0;
        der(elmt_product36) = 0;
        der(elmt_product149) = 0;
        der(elmt_product39) = 0;
        der(elmt_reactant61) = 0;
        der(elmt_product51) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_product56) = 0;
        der(elmt_product54) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_reactant68) = 0;
        der(elmt_product113) = 0;
        der(elmt_reactant132) = 0;
        der(elmt_product115) = 0;
        der(elmt_reactant130) = 0;
        der(elmt_product111) = 0;
        der(elmt_product49) = 0;
        der(elmt_reactant138) = 0;
        der(elmt_product47) = 0;
        der(elmt_product117) = 0;
        der(elmt_reactant136) = 0;
        der(elmt_product119) = 0;
        der(elmt_reactant134) = 0;
        der(elmt_reactant72) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product62) = 0;
        der(elmt_reactant74) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product60) = 0;
        der(elmt_product67) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product65) = 0;
        der(elmt_reactant70) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product64) = 0;
        der(elmt_reactant76) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant79) = 0;
        der(elmt_product123) = 0;
        der(elmt_reactant142) = 0;
        der(elmt_reactant140) = 0;
        der(elmt_product125) = 0;
        der(elmt_product121) = 0;
        der(elmt_product58) = 0;
        der(elmt_reactant147) = 0;
        der(elmt_product127) = 0;
        der(elmt_product129) = 0;
        der(elmt_reactant144) = 0;

end Reactions;
