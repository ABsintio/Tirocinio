within BIOMD546;
class Reactions

    input Real elmt_delta_Es;
    input Real elmt_rho_E;
    input Real elmt_beta_a;
    input Real elmt_s2;
    input Real elmt_s3;
    input Real elmt_s1;
    input Real elmt_pi_a;
    input Real elmt_c_V;

    Real elmt_re7(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa7\" species=\"s7\">
<celldesigner:linkAnchor position=\"WSW\"/>
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
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa2\" modifiers=\"s2\" targetLineIndex=\"-1,6\" type=\"TRIGGER\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa2\" species=\"s2\">
<celldesigner:linkAnchor position=\"S\"/>
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
<celldesigner:alias>sa7</celldesigner:alias>
</celldesigner:extension>
            </annotation>"));
    Real elmt_re6(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa3\" species=\"s3\">
<celldesigner:linkAnchor position=\"SSW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa6\" species=\"s6\">
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
    Real elmt_product7 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa6</celldesigner:alias>
</celldesigner:extension>
            </annotation>"));
    Real elmt_reactant6 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa3</celldesigner:alias>
</celldesigner:extension>
            </annotation>"));
    Real elmt_re5(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa2\" species=\"s2\">
<celldesigner:linkAnchor position=\"NNE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa5\" species=\"s5\">
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
    Real elmt_reactant4 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa2</celldesigner:alias>
</celldesigner:extension>
            </annotation>"));
    Real elmt_product5 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa5</celldesigner:alias>
</celldesigner:extension>
            </annotation>"));
    Real elmt_re3(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa4\" species=\"s4\">
<celldesigner:linkAnchor position=\"SSE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct alias=\"sa1\" species=\"s1\">
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
    Real elmt_reactant2 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa4</celldesigner:alias>
</celldesigner:extension>
            </annotation>"));
    Real elmt_product3 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa1</celldesigner:alias>
</celldesigner:extension>
            </annotation>"));
    Real elmt_re1(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant alias=\"sa1\" species=\"s1\">
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
<celldesigner:modification aliases=\"sa3\" modifiers=\"s3\" targetLineIndex=\"-1,3\" type=\"TRIGGER\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget alias=\"sa3\" species=\"s3\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
        </annotation>"));
    Real elmt_product1 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa2</celldesigner:alias>
</celldesigner:extension>
            </annotation>"));
    Real elmt_reactant0 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa1</celldesigner:alias>
</celldesigner:extension>
            </annotation>"));


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_re7 = (elmt_pi_a * elmt_s2);
        elmt_re6 = (elmt_c_V * elmt_s3);
        elmt_re5 = (elmt_delta_Es * elmt_s2);
        elmt_re3 = (elmt_rho_E * elmt_s1);
        elmt_re1 = (elmt_beta_a * elmt_s1 * elmt_s3);
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
