within BIOMD292;
class Reactions

    input Real elmt_k1;
    input Real elmt_NADP;
    input Real elmt_X;
    input Real elmt_ADP;
    input Real elmt_ATP;
    input Real elmt_c;
    input Real elmt_k4;
    input Real elmt_k2;
    input Real elmt_k3;

    Real elmt_v3(unit = "") "v3";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
          <celldesigner:name>v3</celldesigner:name>
          <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
          <celldesigner:baseReactants>
            <celldesigner:baseReactant alias=\"sa5\" species=\"ADP\">
              <celldesigner:linkAnchor position=\"N\"/>
            </celldesigner:baseReactant>
          </celldesigner:baseReactants>
          <celldesigner:baseProducts>
            <celldesigner:baseProduct alias=\"sa6\" species=\"ATP\">
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
            <celldesigner:modification aliases=\"sa4\" modifiers=\"NADP\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
              <celldesigner:connectScheme connectPolicy=\"direct\">
                <celldesigner:listOfLineDirection>
                  <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                </celldesigner:listOfLineDirection>
              </celldesigner:connectScheme>
              <celldesigner:linkTarget alias=\"sa4\" species=\"NADP\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:linkTarget>
              <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            </celldesigner:modification>
          </celldesigner:listOfModification>
        </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
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
              <celldesigner:alias>sa6</celldesigner:alias>
            </celldesigner:extension>
                      </annotation>"));
    Real elmt_v4(unit = "") "v4";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
          <celldesigner:name>v4</celldesigner:name>
          <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
          <celldesigner:baseReactants>
            <celldesigner:baseReactant alias=\"sa4\" species=\"NADP\">
              <celldesigner:linkAnchor position=\"N\"/>
            </celldesigner:baseReactant>
          </celldesigner:baseReactants>
          <celldesigner:baseProducts>
            <celldesigner:baseProduct alias=\"sa2\" species=\"NADPH\">
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
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
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
              <celldesigner:alias>sa4</celldesigner:alias>
            </celldesigner:extension>
                      </annotation>"));
    Real elmt_v1(unit = "") "v1";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
          <celldesigner:name>v1</celldesigner:name>
          <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
          <celldesigner:baseReactants>
            <celldesigner:baseReactant alias=\"csa1\" species=\"X\">
              <celldesigner:linkAnchor position=\"W\"/>
            </celldesigner:baseReactant>
          </celldesigner:baseReactants>
          <celldesigner:baseProducts>
            <celldesigner:baseProduct alias=\"csa2\" species=\"Y\">
              <celldesigner:linkAnchor position=\"W\"/>
            </celldesigner:baseProduct>
          </celldesigner:baseProducts>
          <celldesigner:listOfReactantLinks>
            <celldesigner:reactantLink alias=\"sa6\" reactant=\"ATP\" targetLineIndex=\"-1,0\">
              <celldesigner:linkAnchor position=\"W\"/>
              <celldesigner:line color=\"ff000000\" type=\"Curve\" width=\"1.0\"/>
            </celldesigner:reactantLink>
          </celldesigner:listOfReactantLinks>
          <celldesigner:listOfProductLinks>
            <celldesigner:productLink alias=\"sa5\" product=\"ADP\" targetLineIndex=\"-1,1\">
              <celldesigner:linkAnchor position=\"WSW\"/>
              <celldesigner:line color=\"ff000000\" type=\"Curve\" width=\"1.0\"/>
            </celldesigner:productLink>
          </celldesigner:listOfProductLinks>
          <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
            <celldesigner:listOfLineDirection>
              <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
              <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
            </celldesigner:listOfLineDirection>
          </celldesigner:connectScheme>
          <celldesigner:editPoints>0.0,-0.453125 1.0,-0.453125</celldesigner:editPoints>
          <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
        </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product12 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
              <celldesigner:alias>csa2</celldesigner:alias>
            </celldesigner:extension>
                      </annotation>"));
    Real elmt_product13 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
              <celldesigner:alias>sa5</celldesigner:alias>
            </celldesigner:extension>
                      </annotation>"));
    Real elmt_reactant10 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
              <celldesigner:alias>csa1</celldesigner:alias>
            </celldesigner:extension>
                      </annotation>"));
    Real elmt_reactant11 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
              <celldesigner:alias>sa6</celldesigner:alias>
            </celldesigner:extension>
                      </annotation>"));
    Real elmt_v2(unit = "") "v2";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
          <celldesigner:name>v2</celldesigner:name>
          <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
          <celldesigner:baseReactants>
            <celldesigner:baseReactant alias=\"csa2\" species=\"Y\">
              <celldesigner:linkAnchor position=\"E\"/>
            </celldesigner:baseReactant>
          </celldesigner:baseReactants>
          <celldesigner:baseProducts>
            <celldesigner:baseProduct alias=\"csa1\" species=\"X\">
              <celldesigner:linkAnchor position=\"E\"/>
            </celldesigner:baseProduct>
          </celldesigner:baseProducts>
          <celldesigner:listOfReactantLinks>
            <celldesigner:reactantLink alias=\"sa2\" reactant=\"NADPH\" targetLineIndex=\"-1,0\">
              <celldesigner:linkAnchor position=\"E\"/>
              <celldesigner:line color=\"ff000000\" type=\"Curve\" width=\"1.0\"/>
            </celldesigner:reactantLink>
            <celldesigner:reactantLink alias=\"sa6\" reactant=\"ATP\" targetLineIndex=\"-1,0\">
              <celldesigner:linkAnchor position=\"E\"/>
              <celldesigner:line color=\"ff000000\" type=\"Curve\" width=\"1.0\"/>
            </celldesigner:reactantLink>
          </celldesigner:listOfReactantLinks>
          <celldesigner:listOfProductLinks>
            <celldesigner:productLink alias=\"sa5\" product=\"ADP\" targetLineIndex=\"-1,1\">
              <celldesigner:linkAnchor position=\"E\"/>
              <celldesigner:line color=\"ff000000\" type=\"Curve\" width=\"1.0\"/>
            </celldesigner:productLink>
            <celldesigner:productLink alias=\"sa4\" product=\"NADP\" targetLineIndex=\"-1,1\">
              <celldesigner:linkAnchor position=\"E\"/>
              <celldesigner:line color=\"ff000000\" type=\"Curve\" width=\"1.0\"/>
            </celldesigner:productLink>
          </celldesigner:listOfProductLinks>
          <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
            <celldesigner:listOfLineDirection>
              <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
              <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
            </celldesigner:listOfLineDirection>
          </celldesigner:connectScheme>
          <celldesigner:editPoints>0.0,-0.453125 1.0,-0.453125</celldesigner:editPoints>
          <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
        </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product9 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
              <celldesigner:alias>sa4</celldesigner:alias>
            </celldesigner:extension>
                      </annotation>"));
    Real elmt_product8 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
              <celldesigner:alias>sa5</celldesigner:alias>
            </celldesigner:extension>
                      </annotation>"));
    Real elmt_reactant4 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
              <celldesigner:alias>csa2</celldesigner:alias>
            </celldesigner:extension>
                      </annotation>"));
    Real elmt_product7 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
              <celldesigner:alias>csa1</celldesigner:alias>
            </celldesigner:extension>
                      </annotation>"));
    Real elmt_reactant6 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
              <celldesigner:alias>sa6</celldesigner:alias>
            </celldesigner:extension>
                      </annotation>"));
    Real elmt_reactant5 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
              <celldesigner:alias>sa2</celldesigner:alias>
            </celldesigner:extension>
                      </annotation>"));


    initial equation
        elmt_reactant2 = 2.0;
        elmt_product9 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_product12 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_product3 = 2.0;
        elmt_reactant0 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_v3 = (elmt_c * elmt_k3 * elmt_ADP * elmt_NADP);
        elmt_v4 = (elmt_c * elmt_k4 * elmt_NADP);
        elmt_v1 = (elmt_c * elmt_k1 * elmt_X);
        elmt_v2 = (elmt_c * elmt_k2 * elmt_ATP);
        der(elmt_reactant2) = 0;
        der(elmt_product9) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_product12) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product13) = 0;

end Reactions;
