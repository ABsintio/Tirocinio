within BIOMD464;
class Reactions

    input Real elmt_K1;
    input Real elmt_Cao;
    input Real elmt_K4;
    input Real elmt_K5;
    input Real elmt_K2;
    input Real elmt_K3;
    input Real elmt_K_hi;
    input Real elmt_fracK;
    input Real elmt_k_CCE;
    input Real elmt_dot_q_inpass;
    input Real elmt_dot_Vhi;
    input Real elmt_B_T;
    input Real elmt_k1;
    input Real elmt_s6;
    input Real elmt_s12;
    input Real elmt_s4;
    input Real elmt_s2;
    input Real elmt_s3;
    input Real elmt_half;
    input Real elmt_dot_Vp;
    input Real elmt_k6;
    input Real elmt_k7;
    input Real elmt_k4;
    input Real elmt_k5;
    input Real elmt_k2;
    input Real elmt_k3;
    input Real elmt_R_T;
    input Real elmt_dot_Vex;
    input Real elmt_k_CICR;
    input Real elmt_tau_I;
    input Real elmt_tau_II;
    input Real elmt_s1;
    input Real elmt_K_CICR;

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
<celldesigner:editPoints>0.2216501735784404,-0.16496430061432266</celldesigner:editPoints>
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
<celldesigner:modification aliases=\"sa6\" editPoints=\"0.7435166180443031,0.439044042213224\" modifiers=\"s6\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
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
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"square\" rectangleIndex=\"1\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:editPoints>0.07279336983099993,0.25979702681063777</celldesigner:editPoints>
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
<celldesigner:modification aliases=\"sa3\" editPoints=\"0.09455609199832549,-0.19791502379998382 0.9087188554217476,0.1910602428663677\" modifiers=\"s3\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa3\" species=\"s3\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa12,sa142\" editPoints=\"0.5152337982177477,0.002375582158027356 0.515255056207296,-0.002235007570641656 817.0003759511713,255.0964991735758\" modificationType=\"CATALYSIS\" modifiers=\"s12,s119\" targetLineIndex=\"-1,3\" type=\"BOOLEAN_LOGIC_GATE_AND\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa12\" editPoints=\"0.08901021680309107,-0.1951956099257881 0.9168653844621302,0.18231066689522546\" modifiers=\"s12\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
<celldesigner:connectScheme connectPolicy=\"square\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"vertical\"/>
<celldesigner:lineDirection index=\"1\" value=\"horizontal\"/>
<celldesigner:lineDirection index=\"2\" value=\"vertical\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa12\" species=\"s12\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa142\" editPoints=\"0.5046041999801849,1.7468936990283623E-6 0.5046041999921698,-1.7150150570799383E-6\" modifiers=\"s119\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
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
<celldesigner:modification aliases=\"sa1\" editPoints=\"0.5870844032352518,-0.24174976941010495 0.7301324392157973,0.1057165344283808\" modifiers=\"s1\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
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
<celldesigner:editPoints>0.7667134752900209,0.1295424925726123</celldesigner:editPoints>
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
    Real elmt_re11(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa13\" species=\"s13\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa12\" species=\"s12\">
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


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_re9 = ((elmt_dot_Vex * elmt_s3) / (elmt_K5 + elmt_s3));
        elmt_re8 = ((elmt_dot_Vhi * Functions.pow(elmt_s3, 4.0)) / (Functions.pow(elmt_K_hi, 4.0) + Functions.pow(elmt_s3, 4.0)));
        elmt_re7 = (((elmt_k3 * ((elmt_k_CICR * elmt_s3) / (elmt_K_CICR + elmt_s3)) * Functions.pow((elmt_s6 / (elmt_K2 + elmt_s6)), 3.0) * elmt_s2) - (elmt_k4 * Functions.pow((elmt_s3 / (elmt_K3 + elmt_s3)), 2.0))) + (elmt_k5 * elmt_s2 * elmt_s2));
        elmt_re6 = (elmt_k2 * elmt_s6);
        elmt_re5 = ((elmt_k1 * (elmt_R_T - (elmt_half * elmt_R_T * (exp(((- elmt_s12) / elmt_tau_I)) + exp(((- elmt_s12) / elmt_tau_II)) + (((exp(((- elmt_s12) / elmt_tau_I)) - exp(((- elmt_s12) / elmt_tau_II))) * (elmt_tau_I + elmt_tau_II)) / (elmt_tau_I - elmt_tau_II))))) * elmt_s3) / (elmt_K1 + elmt_s3));
        elmt_re4 = (elmt_k_CCE * (((elmt_fracK * elmt_Cao) / (elmt_K3 + elmt_Cao)) - elmt_s2) * (elmt_s1 - elmt_s2));
        elmt_re3 = (((- elmt_k6) * elmt_s3 * (elmt_B_T - elmt_s4)) + (elmt_k7 * elmt_s4));
        elmt_re10 = elmt_dot_q_inpass;
        elmt_re11 = elmt_re11_elmt_unisec;
        elmt_re12 = ((elmt_dot_Vp * Functions.pow(elmt_s3, 2.0)) / (Functions.pow(elmt_K4, 2.0) + Functions.pow(elmt_s3, 2.0)));
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
