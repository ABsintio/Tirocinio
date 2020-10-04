within BIOMD412;
class Reactions

    input Real elmt_p29;
    input Real elmt_p28;
    input Real elmt_p27;
    input Real elmt_p26;
    input Real elmt_p25;
    input Real elmt_lightAmplitude;
    input Real elmt_p24;
    input Real elmt_p23;
    input Real elmt_phase;
    input Real elmt_cE3n;
    input Real elmt_g12;
    input Real elmt_g11;
    input Real elmt_g10;
    input Real elmt_cE4_m;
    input Real elmt_cZG;
    input Real elmt_p31;
    input Real elmt_g16;
    input Real elmt_g15;
    input Real elmt_g14;
    input Real elmt_g13;
    input Real elmt_cG_m;
    input Real elmt_p5;
    input Real elmt_cZTL;
    input Real elmt_p6;
    input Real elmt_p3;
    input Real elmt_p4;
    input Real elmt_p1;
    input Real elmt_p2;
    input Real elmt_cP9_m;
    input Real elmt_p9;
    input Real elmt_p7;
    input Real elmt_p8;
    input Real elmt_def;
    input Real elmt_g8;
    input Real elmt_cE3_m;
    input Real elmt_g9;
    input Real elmt_g6;
    input Real elmt_g7;
    input Real elmt_n13;
    input Real elmt_n12;
    input Real elmt_n11;
    input Real elmt_twilightPeriod;
    input Real elmt_n10;
    input Real elmt_cNI_m;
    input Real elmt_q2;
    input Real elmt_q3;
    input Real elmt_q1;
    input Real elmt_n14;
    input Real elmt_cL_m;
    input Real elmt_cT_m;
    input Real elmt_cLUX_m;
    input Real elmt_lightOffset;
    input Real elmt_n3;
    input Real elmt_n4;
    input Real elmt_n1;
    input Real elmt_n2;
    input Real elmt_cyclePeriod;
    input Real elmt_cE4;
    input Real elmt_cE3;
    input Real elmt_e;
    input Real elmt_n9;
    input Real elmt_f;
    input Real elmt_c;
    input Real elmt_n7;
    input Real elmt_n8;
    input Real elmt_d;
    input Real elmt_a;
    input Real elmt_n5;
    input Real elmt_n6;
    input Real elmt_b;
    input Real elmt_cCOP1c;
    input Real elmt_cCOP1d;
    input Real elmt_cEG;
    input Real elmt_cLm;
    input Real elmt_cEC;
    input Real elmt_m14;
    input Real elmt_cCOP1n;
    input Real elmt_m13;
    input Real elmt_m12;
    input Real elmt_m11;
    input Real elmt_m10;
    input Real elmt_m19;
    input Real elmt_m18;
    input Real elmt_m17;
    input Real elmt_m16;
    input Real elmt_m15;
    input Real elmt_g4;
    input Real elmt_g5;
    input Real elmt_g2;
    input Real elmt_cNI;
    input Real elmt_g3;
    input Real elmt_g1;
    input Real elmt_m24;
    input Real elmt_m23;
    input Real elmt_m22;
    input Real elmt_m21;
    input Real elmt_m20;
    input Real elmt_cG;
    input Real elmt_m29;
    input Real elmt_m27;
    input Real elmt_m26;
    input Real elmt_cP7_m;
    input Real elmt_cP;
    input Real elmt_cL;
    input Real elmt_m36;
    input Real elmt_p11;
    input Real elmt_p10;
    input Real elmt_m35;
    input Real elmt_m34;
    input Real elmt_m33;
    input Real elmt_cP9;
    input Real elmt_m32;
    input Real elmt_cLUX;
    input Real elmt_m31;
    input Real elmt_cP7;
    input Real elmt_m30;
    input Real elmt_p19;
    input Real elmt_m2;
    input Real elmt_p18;
    input Real elmt_m3;
    input Real elmt_p17;
    input Real elmt_m1;
    input Real elmt_p16;
    input Real elmt_p15;
    input Real elmt_p14;
    input Real elmt_m39;
    input Real elmt_p13;
    input Real elmt_m37;
    input Real elmt_p12;
    input Real elmt_m8;
    input Real elmt_m9;
    input Real elmt_m6;
    input Real elmt_m7;
    input Real elmt_photoPeriod;
    input Real elmt_m4;
    input Real elmt_m5;
    input Real elmt_cT;
    input Real elmt_p21;
    input Real elmt_p20;

    Real elmt_cEC_form(unit = "") "cEC_form";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cEC_form</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa77\" species=\"s50\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa8\" species=\"cEC\">
                <celldesigner:linkAnchor position=\"SSE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"2\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"4\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"5\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.03162881395331407,-0.09084651200580529 -0.6535884281964561,-0.6122276714882444 -0.6519363451499425,-0.6472283598561752 -0.43198811944651094,-0.7714866716168882 0.850863393947324,0.07214547358586243</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa1\" editPoints=\"-0.1362308612295306,0.1596944150725168 0.2294703129688918,0.6076319490967013\" modifiers=\"cCOP1d\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa1\" species=\"cCOP1d\">
                  <celldesigner:linkAnchor position=\"N\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa2\" editPoints=\"-0.0012743192461139863,-0.030836589836085837 0.9996367066887053,-0.06249417825949921\" modifiers=\"cCOP1n\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa2\" species=\"cCOP1n\">
                  <celldesigner:linkAnchor position=\"SSW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa5\" editPoints=\"0.31709379536265125,0.5049436665061751\" modifiers=\"cE3n\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa5\" species=\"cE3n\">
                  <celldesigner:linkAnchor position=\"WSW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa6\" editPoints=\"0.0159108530164751,-0.12408725058305858\" modifiers=\"cE4\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa6\" species=\"cE4\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa13\" editPoints=\"0.6641929692217197,0.43925753471006734\" modifiers=\"cLUX\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa13\" species=\"cLUX\">
                  <celldesigner:linkAnchor position=\"W\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant110 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa77</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product111 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa8</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cE4_m_degr(unit = "") "cE4_m_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cE4_m_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa7\" species=\"cE4_m\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa53\" species=\"s26\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.6638020447473068,-0.40776411320197425 0.7642613720550955,-0.38376055711958124</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant50 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa7</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product51 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa53</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cNI_m_degr(unit = "") "cNI_m_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cNI_m_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa18\" species=\"cNI_m\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa45\" species=\"s18\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.4112914223373796,-0.4467475794354039 0.5102959225419288,-0.45083867448515935</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product35 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa45</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant34 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa18</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cE3_m_degr(unit = "") "cE3_m_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cE3_m_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa4\" species=\"cE3_m\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa57\" species=\"s30\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.6638020447473778,-0.4077641132019618 0.7642613720551523,-0.38376055711958124</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant58 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa4</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product59 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa57</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cZG_degr(unit = "") "cZG_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cZG_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa26\" species=\"cZG\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa75\" species=\"s48\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.41129142233737426,-0.44674757943539944 0.5102959225419319,-0.4508386744851798</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product104 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa75</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant103 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa26</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cZTL_trsl(unit = "") "cZTL_trsl";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cZTL_trsl</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa73\" species=\"s46\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa27\" species=\"cZTL\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.044195291250784585,0.19502049155108026 0.06937589996676952,0.21089682842479718</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product100 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa27</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant99 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa73</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cLUX_m_degr(unit = "") "cLUX_m_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cLUX_m_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa14\" species=\"cLUX_m\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa62\" species=\"s35\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"2\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.04830571234002412,0.17979256162430657 0.9742374047052037,-0.06898185692681968 0.982791089978866,-0.06405110007865922</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product71 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa62</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant70 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa14</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cE4_m_trscr(unit = "") "cE4_m_trscr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cE4_m_trscr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa52\" species=\"s25\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa7\" species=\"cE4_m\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.22970639032815043,-0.39378238341967986 0.29533678756476434,-0.4110535405872149</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa8\" editPoints=\"0.050503903994329025,-0.1300535333724735 1.0068798220378323,-0.025056458649045932\" modifiers=\"cEC\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa8\" species=\"cEC\">
                  <celldesigner:linkAnchor position=\"NNW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa12\" editPoints=\"0.9592135277649076,-0.15643589879047504\" modifiers=\"cL\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa12\" species=\"cL\">
                  <celldesigner:linkAnchor position=\"SE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product49 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa7</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant48 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa52</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cEG_degr(unit = "") "cEG_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cEG_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa9\" species=\"cEG\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa76\" species=\"s49\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.9810017271157152,-0.5722510074841729 1.0051813471502529,-0.5308002302821002 0.7702936096718433,-0.3937823834197012</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa0\" editPoints=\"0.014057227922125604,-0.012297250227992773 0.2056311774915931,-0.39095481724272263\" modifiers=\"cCOP1c\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa0\" species=\"cCOP1c\">
                  <celldesigner:linkAnchor position=\"W\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa1\" editPoints=\"0.026610290961991856,0.06302297804875989 0.9649953421400184,-0.13398689190875235\" modifiers=\"cCOP1d\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa1\" species=\"cCOP1d\">
                  <celldesigner:linkAnchor position=\"WSW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa2\" editPoints=\"0.21983257861599093,-0.41723310135365477\" modifiers=\"cCOP1n\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa2\" species=\"cCOP1n\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa5\" editPoints=\"-0.006446483431913702,-0.0176847534028588 -0.039260598404841,-0.03110653646065442 -0.22745560451158156,-0.45897453261778987 0.6565125353039915,-0.8374968837088943\" modifiers=\"cE3n\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"4\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa5\" species=\"cE3n\">
                  <celldesigner:linkAnchor position=\"NE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa10\" editPoints=\"-0.0045930312595188205,0.02381122456863083 0.9071900784140988,0.31429809813191506\" modifiers=\"cG\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa10\" species=\"cG\">
                  <celldesigner:linkAnchor position=\"W\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant108 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa9</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product109 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa76</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cG_degr(unit = "") "cG_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cG_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa10\" species=\"cG\">
                <celldesigner:linkAnchor position=\"NNW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa72\" species=\"s45\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.9808446070019502,-0.09074488899579736 0.9905737167991446,-0.0830002598724735</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa5\" editPoints=\"0.122944900659546,0.08843530961452462 -0.41253495572197596,0.832872322782439 0.14579280415396023,1.234482215068582 1.0220325691419079,0.016312557157449836\" modifiers=\"cE3n\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"4\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa5\" species=\"cE3n\">
                  <celldesigner:linkAnchor position=\"N\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant94 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa10</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product95 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa72</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cP7_m_trscr(unit = "") "cP7_m_trscr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cP7_m_trscr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa40\" species=\"s13\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa21\" species=\"cP7_m\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.4178982893052474,-0.4510648202024905 0.5093680903060616,-0.45455603398114697</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa12\" editPoints=\"0.9877104769673983,0.012290806043020741\" modifiers=\"cL\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa12\" species=\"cL\">
                  <celldesigner:linkAnchor position=\"WNW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa16\" modifiers=\"cLm\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa16\" species=\"cLm\">
                  <celldesigner:linkAnchor position=\"E\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa22\" modifiers=\"cP9\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa22\" species=\"cP9\">
                  <celldesigner:linkAnchor position=\"N\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product25 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa21</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant24 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa40</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cT_m_trscr(unit = "") "cT_m_trscr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cT_m_trscr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa48\" species=\"s21\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa25\" species=\"cT_m\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"4\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.018019277027226055,-0.0017714450444890062 0.01972957513067297,-0.0038546789467747145 0.01742980437116315,-0.027248126315450705 0.9879417425041774,-0.1226575348519896</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa8\" editPoints=\"0.28806783898669774,0.45261044025110797\" modifiers=\"cEC\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa8\" species=\"cEC\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa12\" editPoints=\"0.012372597765305332,-0.04061824946053805\" modifiers=\"cL\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa12\" species=\"cL\">
                  <celldesigner:linkAnchor position=\"ESE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product41 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa25</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant40 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa48</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cNI_degr(unit = "") "cNI_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cNI_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa17\" species=\"cNI\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa47\" species=\"s20\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.9144792548687484,-0.21845893310753173 0.9535460889368972,-0.19445823235714244</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant38 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa17</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product39 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa47</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cT_degr(unit = "") "cT_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cT_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa24\" species=\"cT\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa51\" species=\"s24\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.962133355113377,-0.13345720732217892 0.9837568530561827,-0.11710175703682157</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa26\" modifiers=\"cZG\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa26\" species=\"cZG\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa27\" modifiers=\"cZTL\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa27\" species=\"cZTL\">
                  <celldesigner:linkAnchor position=\"W\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product47 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa51</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant46 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa24</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cG_m_trscr(unit = "") "cG_m_trscr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cG_m_trscr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa69\" species=\"s42\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa11\" species=\"cG_m\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"2\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"4\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>-0.5829459423562611,0.3028290609642603 -0.7635808208261778,-0.044893080090329995 -0.8249435516004979,-0.01301633683092529 -0.43179705140126856,0.7437906760525914</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa8\" modifiers=\"cEC\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa8\" species=\"cEC\">
                  <celldesigner:linkAnchor position=\"N\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa12\" editPoints=\"0.026363586002951855,-0.16183249790058163\" modifiers=\"cL\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa12\" species=\"cL\">
                  <celldesigner:linkAnchor position=\"W\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa19\" modifiers=\"cP\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa19\" species=\"cP\">
                  <celldesigner:linkAnchor position=\"E\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product89 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa11</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant88 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa69</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cL_m_trscr(unit = "") "cL_m_trscr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cL_m_trscr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa28\" species=\"s1\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa15\" species=\"cL_m\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.06507344337220133,-0.38245618865379044 0.07116027926589563,-0.38142053703513495 0.034222038200509175,-0.16432339016003875</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa17\" editPoints=\"0.10123145839689829,0.11489089045880263\" modifiers=\"cNI\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa17\" species=\"cNI\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa19\" editPoints=\"-0.039729142851873095,0.007560696346053275 0.3279390730318965,0.4321398412905215\" modifiers=\"cP\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa19\" species=\"cP\">
                  <celldesigner:linkAnchor position=\"NW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa20\" modifiers=\"cP7\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa20\" species=\"cP7\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa22\" modifiers=\"cP9\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa22\" species=\"cP9\">
                  <celldesigner:linkAnchor position=\"W\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa24\" modifiers=\"cT\" targetLineIndex=\"-1,5\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa24\" species=\"cT\">
                  <celldesigner:linkAnchor position=\"N\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa15</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant0 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa28</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cP7_m_degr(unit = "") "cP7_m_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cP7_m_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa21\" species=\"cP7_m\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa41\" species=\"s14\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.7046632124352343,-0.4110535405872202 0.7702936096718505,-0.3937823834196905</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product27 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa41</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant26 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa21</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cP7_degr(unit = "") "cP7_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cP7_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa20\" species=\"cP7\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa43\" species=\"s16\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.6638020447473725,-0.4077641132019536 0.7642613720551186,-0.38376055711957213</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant30 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa20</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product31 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa43</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cE4_trsl(unit = "") "cE4_trsl";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cE4_trsl</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa54\" species=\"s27\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa6\" species=\"cE4\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"4\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"5\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.03844776233265357,0.01965219830895859 0.05091730687287477,0.026025884246949627 0.6265946131462181,0.3202777183840435 0.8231165962341813,-0.0641999049392783 0.978985902986877,0.015471169285559805</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa7\" editPoints=\"0.8434702751035796,-0.3633568082756864\" modifiers=\"cE4_m\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa7\" species=\"cE4_m\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant52 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa54</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product53 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa6</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cE3n_degr(unit = "") "cE3n_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cE3n_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa5\" species=\"cE3n\">
                <celldesigner:linkAnchor position=\"SSE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa60\" species=\"s33\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"3\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"4\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"5\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>-0.003850378934984633,0.07680784722761436 0.7485935575504064,0.05255156955647999 0.7503023712564199,0.09915557972059696 0.7902486656828005,0.09769088225829448 1.0032955692901675,0.08987916245936</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa1\" editPoints=\"0.03854197408582749,0.025018245209913026 0.2323004839982996,-0.3621640279134688\" modifiers=\"cCOP1d\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa1\" species=\"cCOP1d\">
                  <celldesigner:linkAnchor position=\"ENE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa2\" editPoints=\"0.5678514835084538,0.41996039044790745\" modifiers=\"cCOP1n\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa2\" species=\"cCOP1n\">
                  <celldesigner:linkAnchor position=\"ENE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa6\" modifiers=\"cE4\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa6\" species=\"cE4\">
                  <celldesigner:linkAnchor position=\"N\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa10\" editPoints=\"0.7784551837146851,-0.4137415642778523\" modifiers=\"cG\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa10\" species=\"cG\">
                  <celldesigner:linkAnchor position=\"ENE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa13\" editPoints=\"0.1336420722351761,-0.239808896602554\" modifiers=\"cLUX\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa13\" species=\"cLUX\">
                  <celldesigner:linkAnchor position=\"N\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product67 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa60</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant66 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa5</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cP9_m_degr(unit = "") "cP9_m_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cP9_m_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa23\" species=\"cP9_m\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa37\" species=\"s10\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.10088774578942772,-0.27345888990292266 0.1710777399817447,-0.30581597942420125</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant18 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa23</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product19 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa37</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cLUX_trsl(unit = "") "cLUX_trsl";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cLUX_trsl</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa63\" species=\"s36\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa13\" species=\"cLUX\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.16742081447963475,-0.15220074043603304 0.2192513368983775,-0.14973262032084378 0.6059234882764244,0.2756067461949918</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa14\" modifiers=\"cLUX_m\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa14\" species=\"cLUX_m\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant72 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa63</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product73 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa13</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cG_m_degr(unit = "") "cG_m_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cG_m_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa11\" species=\"cG_m\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa70\" species=\"s43\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.9592461475733436,-0.15575388478639418 0.9767592370868471,-0.14313358746513227</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant90 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa11</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product91 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa70</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cL_degr(unit = "") "cL_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cL_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa12\" species=\"cL\">
                <celldesigner:linkAnchor position=\"NE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa31\" species=\"s4\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.9506800678065819,-0.11536459376126373 0.9911103992311752,-0.07753707337257854</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product7 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa31</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant6 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa12</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cCOP1d_degr(unit = "") "cCOP1d_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cCOP1d_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa1\" species=\"cCOP1d\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa68\" species=\"s41\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.8699138699138942,-0.6700326700326729 0.9821799821800141,-0.4205524205524247</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant86 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa1</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product87 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa68</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cCOP1n_import(unit = "") "cCOP1n_import";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cCOP1n_import</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa0\" species=\"cCOP1c\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa2\" species=\"cCOP1n\">
                <celldesigner:linkAnchor position=\"ESE\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.42496264976707465,-0.003984024841525269 0.5749494673318978,-0.005390151256243314</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant80 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa0</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product81 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa2</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cP_trsl(unit = "") "cP_trsl";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cP_trsl</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa34\" species=\"s7\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa19\" species=\"cP\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.29714285714287403,-0.19428571428567842 0.40571428571432744,-0.29714285714282873</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product13 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa19</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant12 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa34</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cNI_trsl(unit = "") "cNI_trsl";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cNI_trsl</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa46\" species=\"s19\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa17\" species=\"cNI\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.23573862794486544,0.383760557119583 0.3361979552526222,0.4077641132019565</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa18\" modifiers=\"cNI_m\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa18\" species=\"cNI_m\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant36 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa46</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product37 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa17</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cE3_degr(unit = "") "cE3_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cE3_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa3\" species=\"cE3\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa59\" species=\"s32\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"2\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.03571062550531234,0.18556771467938982 0.9237846886138219,0.014666864046824157 0.9370395253766355,0.01211610508215899</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa0\" modifiers=\"cCOP1c\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa0\" species=\"cCOP1c\">
                  <celldesigner:linkAnchor position=\"N\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product63 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa59</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant62 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa3</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cG_trsl(unit = "") "cG_trsl";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cG_trsl</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa71\" species=\"s44\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa10\" species=\"cG\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.28087161074648304,0.039519623622605415 0.3400024761668359,0.04783954438526017 0.9417853163302548,0.09231150179519165</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa11\" modifiers=\"cG_m\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa11\" species=\"cG_m\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product93 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa10</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant92 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa71</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cLUX_degr(unit = "") "cLUX_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cLUX_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa13\" species=\"cLUX\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa64\" species=\"s37\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"2\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.30126734642255926,-0.5756700887055253 1.070571919510856,-0.17306736212264973 1.0780556306640268,-0.14915088661915732</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa1\" editPoints=\"0.02484254673560171,0.23415559882352266 1.0005615237815841,0.06348709251625806\" modifiers=\"cCOP1d\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa1\" species=\"cCOP1d\">
                  <celldesigner:linkAnchor position=\"SSE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa2\" editPoints=\"0.8008129246945721,-0.40604832631413057\" modifiers=\"cCOP1n\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa2\" species=\"cCOP1n\">
                  <celldesigner:linkAnchor position=\"WNW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa5\" editPoints=\"0.4989450269074984,-0.5388697690365112 1.0231313165714155,-0.02494799099575995\" modifiers=\"cE3n\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa5\" species=\"cE3n\">
                  <celldesigner:linkAnchor position=\"E\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa6\" editPoints=\"0.891855533664863,-0.24018547175617755\" modifiers=\"cE4\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa6\" species=\"cE4\">
                  <celldesigner:linkAnchor position=\"E\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant74 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa13</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product75 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa64</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cL_trsl(unit = "") "cL_trsl";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cL_trsl</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa30\" species=\"s3\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa12\" species=\"cL\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"4\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"5\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>-0.012017489914970647,-0.00863937234693124 -0.014191896468853105,-0.008283781023979198 -0.019345206289827943,-0.0011154537062786352 0.7017041886082265,0.5172468871094636 1.0487947618444977,0.034438958946732434</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa15\" modifiers=\"cL_m\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa15\" species=\"cL_m\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa30</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product5 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa12</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cE3_m_trscr(unit = "") "cE3_m_trscr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cE3_m_trscr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa56\" species=\"s29\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa4\" species=\"cE3_m\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.034399900762818625,-0.05783632276057826 0.04164198513394002,-0.07001239071017418 0.2613185443912256,-0.4393531185145658</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa12\" modifiers=\"cL\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa12\" species=\"cL\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product57 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa4</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant56 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa56</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cL_modif(unit = "") "cL_modif";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cL_modif</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa32\" species=\"s5\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa16\" species=\"cLm\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"4\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"5\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"6\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>-0.011861193859585839,0.008139821436544646 -0.013966563890757788,0.00774809802359263 -0.018821895975714042,6.729999319101329E-4 0.801057118178113,-0.5619743063836329 1.1380742864280318,-0.07087926237271128 1.0111387030184291,0.016231107386801072</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa12\" editPoints=\"0.026729391840983552,-0.15438179901686921\" modifiers=\"cL\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa12\" species=\"cL\">
                  <celldesigner:linkAnchor position=\"ENE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product9 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa16</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant8 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa32</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cP9_trsl(unit = "") "cP9_trsl";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cP9_trsl</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa38\" species=\"s11\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa22\" species=\"cP9\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.2357386279448841,-0.38376055711956525 0.33619795525263196,-0.4077641132019423</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa23\" modifiers=\"cP9_m\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa23\" species=\"cP9_m\">
                  <celldesigner:linkAnchor position=\"W\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant20 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa38</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product21 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa22</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cCOP1d_activ(unit = "") "cCOP1d_activ";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cCOP1d_activ</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa2\" species=\"cCOP1n\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa1\" species=\"cCOP1d\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.94283671954472,-0.22449619223049622 0.9521301726343987,-0.21854249453842112</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa19\" editPoints=\"0.023583685215774808,0.030344385892184078 -0.12298786309084009,0.23004847349172913 0.4766914615146334,0.7086265608817339 1.0260158748666384,0.02029898829110205\" modifiers=\"cP\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"4\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa19\" species=\"cP\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product85 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa1</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant84 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa2</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cE4_degr(unit = "") "cE4_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cE4_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa6\" species=\"cE4\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa55\" species=\"s28\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"2\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"4\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>1.3300874660691981,-0.3619285621956969 1.4576241975095883,0.10676892584773157 1.4196216984790446,0.11710974191046475 1.3610237407902162,-0.09823775259597589</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa1\" modifiers=\"cCOP1d\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa1\" species=\"cCOP1d\">
                  <celldesigner:linkAnchor position=\"ESE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa2\" editPoints=\"0.05725241390239688,0.26111896717049077\" modifiers=\"cCOP1n\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa2\" species=\"cCOP1n\">
                  <celldesigner:linkAnchor position=\"NW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa5\" modifiers=\"cE3n\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa5\" species=\"cE3n\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa13\" editPoints=\"0.4571368354781997,-0.4788047806358282\" modifiers=\"cLUX\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa13\" species=\"cLUX\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product55 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa55</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant54 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa6</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cCOP1c_trsl(unit = "") "cCOP1c_trsl";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cCOP1c_trsl</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa65\" species=\"s38\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa0\" species=\"cCOP1c\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.01138796129805364,-0.10086480006849907 0.023204041441901246,-0.11028341467591662</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product77 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa0</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant76 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa65</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cE3n_import(unit = "") "cE3n_import";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cE3n_import</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa3\" species=\"cE3\">
                <celldesigner:linkAnchor position=\"WNW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa5\" species=\"cE3n\">
                <celldesigner:linkAnchor position=\"WNW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>5.614823133042179E-4,0.09769792251543308 0.01796743402582912,0.12633352049410096 0.8390417368519492,0.326595545573654</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant64 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa3</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product65 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa5</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cLm_degr(unit = "") "cLm_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cLm_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa16\" species=\"cLm\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa33\" species=\"s6\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.9812597108597465,-0.08273366189601716 0.9939262986306494,-0.07203692321787736</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product11 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa33</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant10 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa16</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cP9_m_trscr(unit = "") "cP9_m_trscr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cP9_m_trscr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa36\" species=\"s9\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa23\" species=\"cP9_m\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.03394422012510612,-0.11978496535396799 0.03142706086565883,-0.13323164883288907</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa8\" editPoints=\"0.5950046194119261,-0.27056747545061566\" modifiers=\"cEC\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa8\" species=\"cEC\">
                  <celldesigner:linkAnchor position=\"W\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa12\" editPoints=\"0.024259263921480922,-0.1680877131153471\" modifiers=\"cL\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa12\" species=\"cL\">
                  <celldesigner:linkAnchor position=\"WSW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa19\" modifiers=\"cP\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa19\" species=\"cP\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant16 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa36</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product17 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa23</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cEC_degr(unit = "") "cEC_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cEC_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa8\" species=\"cEC\">
                <celldesigner:linkAnchor position=\"ESE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa78\" species=\"s51\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"3\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"4\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>1.1889798145117192,-0.1902891434806242 1.2256410256409858,0.1030005455537486 1.0370976541188544,0.12656846699401392 1.0161483906164586,0.1291871249318124</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa1\" modifiers=\"cCOP1d\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa1\" species=\"cCOP1d\">
                  <celldesigner:linkAnchor position=\"NNW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa2\" editPoints=\"0.3175433887450314,0.4219984123374839\" modifiers=\"cCOP1n\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa2\" species=\"cCOP1n\">
                  <celldesigner:linkAnchor position=\"E\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa5\" editPoints=\"0.6518763914515269,-0.12149510462010715 0.704716331922226,0.010164483602432828\" modifiers=\"cE3n\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa5\" species=\"cE3n\">
                  <celldesigner:linkAnchor position=\"W\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa9\" editPoints=\"0.9389596766981894,-0.19935888230355037\" modifiers=\"cEG\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa9\" species=\"cEG\">
                  <celldesigner:linkAnchor position=\"N\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa10\" editPoints=\"0.017918983775816466,0.05714746109452119 0.24376804909136163,0.4955782789322464\" modifiers=\"cG\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa10\" species=\"cG\">
                  <celldesigner:linkAnchor position=\"SSW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product113 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa78</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant112 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa8</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cT_trsl(unit = "") "cT_trsl";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cT_trsl</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa50\" species=\"s23\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa24\" species=\"cT\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.8289222600182526,0.3058159794242101 0.8991122542105723,0.27345888990294753</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa25\" modifiers=\"cT_m\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa25\" species=\"cT_m\">
                  <celldesigner:linkAnchor position=\"N\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product45 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa24</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant44 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa50</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cCOP1c_degr(unit = "") "cCOP1c_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cCOP1c_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa0\" species=\"cCOP1c\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa66\" species=\"s39\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"2\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.02963358845564601,-0.17839978622303754 0.9948191074825341,-0.1262797681958947 1.0061381012965733,-0.11366854252992642</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product79 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa66</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant78 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa0</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cCOP1n_degr(unit = "") "cCOP1n_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cCOP1n_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa2\" species=\"cCOP1n\">
                <celldesigner:linkAnchor position=\"NNW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa67\" species=\"s40\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"2\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.7573057517007538,0.17609003223748587 0.8034692387702638,-0.01856979501123668 0.8363087816317858,-0.03881929594477995</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product83 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa67</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant82 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa2</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cP_degr(unit = "") "cP_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cP_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa19\" species=\"cP\">
                <celldesigner:linkAnchor position=\"NE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa35\" species=\"s8\">
                <celldesigner:linkAnchor position=\"SW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.273460047533602,-0.004607360270922456 0.7656149178001543,-0.0066521852520491365</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant14 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa19</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product15 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa35</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cP9_degr(unit = "") "cP9_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cP9_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa22\" species=\"cP9\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa39\" species=\"s12\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.10088774578942994,-0.2734588899029191 0.17107773998174647,-0.3058159794242048</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product23 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa39</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant22 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa22</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cG_cE3_assoc(unit = "") "cG_cE3_assoc";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cG_cE3_assoc</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa3\" species=\"cE3\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa9\" species=\"cEG\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:listOfReactantLinks>
              <celldesigner:reactantLink alias=\"sa10\" reactant=\"cG\" targetLineIndex=\"-1,0\">
                <celldesigner:linkAnchor position=\"SE\"/>
                <celldesigner:line color=\"ff000000\" type=\"Straight\" width=\"1.0\"/>
              </celldesigner:reactantLink>
            </celldesigner:listOfReactantLinks>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"2\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"4\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>-0.15112366956491838,0.04983579121124748 0.054051343187771134,0.6720151542072414 0.06046494299977642,0.6752477460695925 1.1086844382798484,0.32957821554051336</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant106 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa10</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant105 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa3</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product107 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa9</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cL_m_degr(unit = "") "cL_m_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cL_m_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa15\" species=\"cL_m\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa29\" species=\"s2\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.9582426787978906,-0.1420842592700362 0.9814890225598889,-0.12484147575888294</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa15</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product3 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa29</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cLUX_m_trscr(unit = "") "cLUX_m_trscr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cLUX_m_trscr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa61\" species=\"s34\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa14\" species=\"cLUX_m\">
                <celldesigner:linkAnchor position=\"N\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.11178247734138891,0.0 0.1480362537764348,0.0</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa8\" modifiers=\"cEC\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa8\" species=\"cEC\">
                  <celldesigner:linkAnchor position=\"ENE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa12\" editPoints=\"0.29691450481482407,-0.4515979010329332\" modifiers=\"cL\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa12\" species=\"cL\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product69 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa14</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant68 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa61</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cNI_m_trscr(unit = "") "cNI_m_trscr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cNI_m_trscr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa44\" species=\"s17\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa18\" species=\"cNI_m\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.23456790123456672,-2.220446049250313E-15 0.2839506172839501,-2.220446049250313E-15</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa16\" modifiers=\"cLm\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa16\" species=\"cLm\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa20\" modifiers=\"cP7\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa20\" species=\"cP7\">
                  <celldesigner:linkAnchor position=\"N\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product33 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa18</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant32 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa44</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cG_cZTL_assoc(unit = "") "cG_cZTL_assoc";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cG_cZTL_assoc</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa10\" species=\"cG\">
                <celldesigner:linkAnchor position=\"SW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa26\" species=\"cZG\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:listOfReactantLinks>
              <celldesigner:reactantLink alias=\"sa27\" reactant=\"cZTL\" targetLineIndex=\"-1,0\">
                <celldesigner:linkAnchor position=\"N\"/>
                <celldesigner:line color=\"ff000000\" type=\"Straight\" width=\"1.0\"/>
              </celldesigner:reactantLink>
            </celldesigner:listOfReactantLinks>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"2\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.0753214418292461,0.04224696181694498 0.9754635549272741,-0.07415828924327617 0.9817945247085544,-0.07042810164649005</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant96 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa10</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant97 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa27</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product98 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa26</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cZTL_degr(unit = "") "cZTL_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cZTL_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa27\" species=\"cZTL\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa74\" species=\"s47\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"2\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.04329054979005509,-0.3393043091647221 1.0069147878178102,-0.21635914776117815 1.0246756133802952,-0.19340345622389554</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product102 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa74</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant101 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa27</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cT_m_degr(unit = "") "cT_m_degr";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cT_m_degr</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa25\" species=\"cT_m\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa49\" species=\"s22\">
                <celldesigner:linkAnchor position=\"S\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.6638020447473956,-0.4077641132019245 0.7642613720551772,-0.3837605571195155</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant42 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa25</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product43 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa49</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cE3_trsl(unit = "") "cE3_trsl";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cE3_trsl</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa58\" species=\"s31\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa3\" species=\"cE3\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"4\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"5\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>0.023122398022171975,-0.024666565106046034 0.022959854118605794,-0.02969698227743711 0.008246464406228338,-0.04348928986960943 -0.04448882932854925,0.012767788442424433 0.5050995511044021,0.52795104262063</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa4\" editPoints=\"0.0015576116533666529,-0.03998277557532681\" modifiers=\"cE3_m\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa4\" species=\"cE3_m\">
                  <celldesigner:linkAnchor position=\"E\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product61 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa3</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_reactant60 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa58</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_cP7_trsl(unit = "") "cP7_trsl";
 annotation(Documentation(info="<annotation>
          <celldesigner:extension>
            <celldesigner:name>cP7_trsl</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa42\" species=\"s15\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa20\" species=\"cP7\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:editPoints>-0.019449253750205286,-0.20169596481694452 -2.6538942739062765E-4,-0.22497440887664455 0.9692906519733598,-0.31846731286885976</celldesigner:editPoints>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa21\" modifiers=\"cP7_m\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa21\" species=\"cP7_m\">
                  <celldesigner:linkAnchor position=\"W\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant28 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa42</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));
    Real elmt_product29 "";
 annotation(Documentation(info="<annotation>
              <celldesigner:extension>
                <celldesigner:alias>sa20</celldesigner:alias>
              </celldesigner:extension>
            </annotation>"));


    initial equation
        elmt_reactant40 = 1.0;
        elmt_product73 = 1.0;
        elmt_product71 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product77 = 1.0;
        elmt_reactant108 = 1.0;
        elmt_product75 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_reactant110 = 1.0;
        elmt_product69 = 1.0;
        elmt_reactant112 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product85 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_product83 = 1.0;
        elmt_product89 = 1.0;
        elmt_product87 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_product81 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_product102 = 1.0;
        elmt_product104 = 1.0;
        elmt_product100 = 1.0;
        elmt_product109 = 1.0;
        elmt_product79 = 1.0;
        elmt_product107 = 1.0;
        elmt_product95 = 1.0;
        elmt_product93 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product11 = 1.0;
        elmt_product98 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_product91 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_product7 = 1.0;
        elmt_product23 = 1.0;
        elmt_product21 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_product3 = 1.0;
        elmt_product15 = 1.0;
        elmt_reactant106 = 1.0;
        elmt_reactant105 = 1.0;
        elmt_product13 = 1.0;
        elmt_reactant103 = 1.0;
        elmt_product19 = 1.0;
        elmt_reactant101 = 1.0;
        elmt_product17 = 1.0;
        elmt_reactant84 = 1.0;
        elmt_reactant86 = 1.0;
        elmt_reactant80 = 1.0;
        elmt_product33 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant82 = 1.0;
        elmt_reactant88 = 1.0;
        elmt_product27 = 1.0;
        elmt_product25 = 1.0;
        elmt_product29 = 1.0;
        elmt_reactant94 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant96 = 1.0;
        elmt_reactant97 = 1.0;
        elmt_reactant90 = 1.0;
        elmt_product45 = 1.0;
        elmt_reactant92 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant99 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product37 = 1.0;
        elmt_product35 = 1.0;
        elmt_product39 = 1.0;
        elmt_product51 = 1.0;
        elmt_reactant62 = 1.0;
        elmt_reactant64 = 1.0;
        elmt_product55 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant60 = 1.0;
        elmt_reactant66 = 1.0;
        elmt_reactant68 = 1.0;
        elmt_product113 = 1.0;
        elmt_product111 = 1.0;
        elmt_product49 = 1.0;
        elmt_product47 = 1.0;
        elmt_reactant72 = 1.0;
        elmt_product63 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant74 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product61 = 1.0;
        elmt_product67 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant70 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product65 = 1.0;
        elmt_reactant76 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant78 = 1.0;
        elmt_product59 = 1.0;
        elmt_product57 = 1.0;


    equation
        elmt_cEC_form = (elmt_def * ((((elmt_p26 * elmt_cLUX * elmt_p25 * elmt_cE4 * elmt_cE3n) / ((elmt_p26 * elmt_cLUX) + elmt_p21 + (elmt_m37 * elmt_cCOP1d) + (elmt_m36 * elmt_cCOP1n))) / elmt_def)));
        elmt_cE4_m_degr = (elmt_def * (((elmt_m34 * elmt_cE4_m) / elmt_def)));
        elmt_cNI_m_degr = (elmt_def * (((elmt_m16 * elmt_cNI_m) / elmt_def)));
        elmt_cE3_m_degr = (elmt_def * (((elmt_m26 * elmt_cE3_m) / elmt_def)));
        elmt_cZG_degr = (elmt_def * (((elmt_m21 * elmt_cZG) / elmt_def)));
        elmt_cZTL_trsl = (elmt_def * ((elmt_p14 / elmt_def)));
        elmt_cLUX_m_degr = (elmt_def * (((elmt_m34 * elmt_cLUX_m) / elmt_def)));
        elmt_cE4_m_trscr = (elmt_def * ((((((elmt_n13 * elmt_g2) / (elmt_cEC + elmt_g2)) * Functions.pow(elmt_g6, elmt_e)) / (Functions.pow(elmt_cL, elmt_e) + Functions.pow(elmt_g6, elmt_e))) / elmt_def)));
        elmt_cEG_degr = (elmt_def * (((((elmt_m9 * elmt_cEG * elmt_cCOP1c) + (elmt_p18 * elmt_cEG)) - ((elmt_p31 * ((elmt_p18 * elmt_cEG) + ((elmt_p17 * elmt_cE3n * elmt_p28 * elmt_cG) / (elmt_p29 + elmt_m19 + (elmt_p17 * elmt_cE3n))))) / ((elmt_m9 * elmt_cCOP1n) + (elmt_m10 * elmt_cCOP1d) + elmt_p31))) / elmt_def)));
        elmt_cG_degr = (elmt_def * (((((elmt_m19 * elmt_cG) + (elmt_p28 * elmt_cG)) - ((elmt_p29 * elmt_p28 * elmt_cG) / (elmt_p29 + elmt_m19 + (elmt_p17 * elmt_cE3n)))) / elmt_def)));
        elmt_cP7_m_trscr = (elmt_def * (((((elmt_n8 * Functions.pow((elmt_cLm + elmt_cL), elmt_e)) / (Functions.pow((elmt_cLm + elmt_cL), elmt_e) + Functions.pow(elmt_g10, elmt_e))) + ((elmt_n9 * Functions.pow(elmt_cP9, elmt_f)) / (Functions.pow(elmt_cP9, elmt_f) + Functions.pow(elmt_g11, elmt_f)))) / elmt_def)));
        elmt_cT_m_trscr = (elmt_def * ((((((elmt_n2 * elmt_g4) / (elmt_cEC + elmt_g4)) * Functions.pow(elmt_g5, elmt_e)) / (Functions.pow(elmt_cL, elmt_e) + Functions.pow(elmt_g5, elmt_e))) / elmt_def)));
        elmt_cNI_degr = (elmt_def * (elmt_m17 + (elmt_m24 * (1.0 - ((((elmt_lightOffset + (0.5 * elmt_lightAmplitude * (1.0 + tanh(((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) / elmt_twilightPeriod))))) - (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_photoPeriod) / elmt_twilightPeriod))))) + (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_cyclePeriod) / elmt_twilightPeriod))))))))) * elmt_cNI);
        elmt_cT_degr = (elmt_def * (((elmt_m6 + (elmt_m7 * (1.0 - ((((elmt_lightOffset + (0.5 * elmt_lightAmplitude * (1.0 + tanh(((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) / elmt_twilightPeriod))))) - (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_photoPeriod) / elmt_twilightPeriod))))) + (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_cyclePeriod) / elmt_twilightPeriod))))))))) * elmt_cT * ((elmt_p5 * elmt_cZTL) + elmt_cZG)) + (elmt_m8 * elmt_cT)));
        elmt_cG_m_trscr = (elmt_def * ((((((elmt_lightOffset + (0.5 * elmt_lightAmplitude * (1.0 + tanh(((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) / elmt_twilightPeriod))))) - (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_photoPeriod) / elmt_twilightPeriod))))) + (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_cyclePeriod) / elmt_twilightPeriod)))))) * elmt_q2 * elmt_cP) + ((((elmt_n12 * elmt_g14) / (elmt_cEC + elmt_g14)) * Functions.pow(elmt_g15, elmt_e)) / (Functions.pow(elmt_cL, elmt_e) + Functions.pow(elmt_g15, elmt_e)))));
        elmt_cL_m_trscr = (elmt_def * ((((((elmt_lightOffset + (0.5 * elmt_lightAmplitude * (1.0 + tanh(((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) / elmt_twilightPeriod))))) - (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_photoPeriod) / elmt_twilightPeriod))))) + (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_cyclePeriod) / elmt_twilightPeriod)))))) * elmt_q1 * elmt_cP) + ((elmt_n1 * Functions.pow(elmt_g1, elmt_a)) / (Functions.pow((elmt_cP9 + elmt_cP7 + elmt_cNI + elmt_cT), elmt_a) + Functions.pow(elmt_g1, elmt_a)))));
        elmt_cP7_m_degr = (elmt_def * (((elmt_m14 * elmt_cP7_m) / elmt_def)));
        elmt_cP7_degr = (elmt_def * (elmt_m15 + (elmt_m23 * (1.0 - ((((elmt_lightOffset + (0.5 * elmt_lightAmplitude * (1.0 + tanh(((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) / elmt_twilightPeriod))))) - (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_photoPeriod) / elmt_twilightPeriod))))) + (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_cyclePeriod) / elmt_twilightPeriod))))))))) * elmt_cP7);
        elmt_cE4_trsl = (elmt_def * (((elmt_p23 * elmt_cE4_m) / elmt_def)));
        elmt_cE3n_degr = (elmt_def * ((((((elmt_m29 * elmt_cE3n * elmt_cCOP1n) + (elmt_m30 * elmt_cE3n * elmt_cCOP1d) + (elmt_p25 * elmt_cE4 * elmt_cE3n)) - ((elmt_p21 * elmt_p25 * elmt_cE4 * elmt_cE3n) / ((elmt_p26 * elmt_cLUX) + elmt_p21 + (elmt_m37 * elmt_cCOP1d) + (elmt_m36 * elmt_cCOP1n)))) + ((elmt_p17 * elmt_cE3n * elmt_p28 * elmt_cG) / (elmt_p29 + elmt_m19 + (elmt_p17 * elmt_cE3n)))) / elmt_def)));
        elmt_cP9_m_degr = (elmt_def * (((elmt_m12 * elmt_cP9_m) / elmt_def)));
        elmt_cLUX_trsl = (elmt_def * (((elmt_p27 * elmt_cLUX_m) / elmt_def)));
        elmt_cG_m_degr = (elmt_def * (((elmt_m18 * elmt_cG_m) / elmt_def)));
        elmt_cL_degr = (elmt_def * ((((elmt_m3 * elmt_cL) + ((elmt_p3 * Functions.pow(elmt_cL, elmt_c)) / (Functions.pow(elmt_cL, elmt_c) + Functions.pow(elmt_g3, elmt_c)))) / elmt_def)));
        elmt_cCOP1d_degr = (elmt_def * elmt_m31 * (1.0 + (elmt_m33 * (1.0 - ((((elmt_lightOffset + (0.5 * elmt_lightAmplitude * (1.0 + tanh(((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) / elmt_twilightPeriod))))) - (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_photoPeriod) / elmt_twilightPeriod))))) + (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_cyclePeriod) / elmt_twilightPeriod))))))))) * elmt_cCOP1d);
        elmt_cCOP1n_import = (elmt_def * (((elmt_p6 * elmt_cCOP1c) / elmt_def)));
        elmt_cP_trsl = (elmt_def * elmt_p7 * (1.0 - ((((elmt_lightOffset + (0.5 * elmt_lightAmplitude * (1.0 + tanh(((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) / elmt_twilightPeriod))))) - (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_photoPeriod) / elmt_twilightPeriod))))) + (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_cyclePeriod) / elmt_twilightPeriod))))))) * (1.0 - elmt_cP));
        elmt_cNI_trsl = (elmt_def * (((elmt_p10 * elmt_cNI_m) / elmt_def)));
        elmt_cE3_degr = (elmt_def * (((elmt_m9 * elmt_cE3 * elmt_cCOP1c) / elmt_def)));
        elmt_cG_trsl = (elmt_def * (((elmt_p11 * elmt_cG_m) / elmt_def)));
        elmt_cLUX_degr = (elmt_def * ((((elmt_m39 * elmt_cLUX) + ((elmt_p26 * elmt_cLUX * elmt_p25 * elmt_cE4 * elmt_cE3n) / ((elmt_p26 * elmt_cLUX) + elmt_p21 + (elmt_m37 * elmt_cCOP1d) + (elmt_m36 * elmt_cCOP1n)))) / elmt_def)));
        elmt_cL_trsl = (elmt_def * elmt_cL_m * ((elmt_p1 * ((((elmt_lightOffset + (0.5 * elmt_lightAmplitude * (1.0 + tanh(((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) / elmt_twilightPeriod))))) - (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_photoPeriod) / elmt_twilightPeriod))))) + (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_cyclePeriod) / elmt_twilightPeriod))))))) + elmt_p2));
        elmt_cE3_m_trscr = (elmt_def * ((((elmt_n3 * Functions.pow(elmt_g16, elmt_e)) / (Functions.pow(elmt_cL, elmt_e) + Functions.pow(elmt_g16, elmt_e))) / elmt_def)));
        elmt_cL_modif = (elmt_def * ((((elmt_p3 * Functions.pow(elmt_cL, elmt_c)) / (Functions.pow(elmt_cL, elmt_c) + Functions.pow(elmt_g3, elmt_c))) / elmt_def)));
        elmt_cP9_trsl = (elmt_def * (((elmt_p8 * elmt_cP9_m) / elmt_def)));
        elmt_cCOP1d_activ = (elmt_def * ((elmt_n6 * ((((elmt_lightOffset + (0.5 * elmt_lightAmplitude * (1.0 + tanh(((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) / elmt_twilightPeriod))))) - (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_photoPeriod) / elmt_twilightPeriod))))) + (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_cyclePeriod) / elmt_twilightPeriod)))))) * elmt_cP * elmt_cCOP1n) + (elmt_n14 * elmt_cCOP1n)));
        elmt_cE4_degr = (elmt_def * (((((elmt_m35 * elmt_cE4) + (elmt_p25 * elmt_cE4 * elmt_cE3n)) - ((elmt_p21 * elmt_p25 * elmt_cE4 * elmt_cE3n) / ((elmt_p26 * elmt_cLUX) + elmt_p21 + (elmt_m37 * elmt_cCOP1d) + (elmt_m36 * elmt_cCOP1n)))) / elmt_def)));
        elmt_cCOP1c_trsl = (elmt_def * ((elmt_n5 / elmt_def)));
        elmt_cE3n_import = (elmt_def * ((((elmt_p19 * elmt_cE3) - (elmt_p20 * elmt_cE3n)) / elmt_def)));
        elmt_cLm_degr = (elmt_def * (((elmt_m4 * elmt_cLm) / elmt_def)));
        elmt_cP9_m_trscr = (elmt_def * ((((((elmt_lightOffset + (0.5 * elmt_lightAmplitude * (1.0 + tanh(((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) / elmt_twilightPeriod))))) - (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_photoPeriod) / elmt_twilightPeriod))))) + (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_cyclePeriod) / elmt_twilightPeriod)))))) * elmt_q3 * elmt_cP) + (((elmt_n4 + ((elmt_n7 * Functions.pow(elmt_cL, elmt_e)) / (Functions.pow(elmt_cL, elmt_e) + Functions.pow(elmt_g9, elmt_e)))) * elmt_g8) / (elmt_cEC + elmt_g8))));
        elmt_cEC_degr = (elmt_def * ((elmt_m36 * elmt_cCOP1n * elmt_cEC) + (elmt_m37 * elmt_cCOP1d * elmt_cEC) + (elmt_m32 * elmt_cEC * (1.0 + ((elmt_p24 * ((((elmt_lightOffset + (0.5 * elmt_lightAmplitude * (1.0 + tanh(((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) / elmt_twilightPeriod))))) - (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_photoPeriod) / elmt_twilightPeriod))))) + (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_cyclePeriod) / elmt_twilightPeriod)))))) * Functions.pow((((elmt_p28 * elmt_cG) / (elmt_p29 + elmt_m19 + (elmt_p17 * elmt_cE3n))) + (((elmt_p18 * elmt_cEG) + ((elmt_p17 * elmt_cE3n * elmt_p28 * elmt_cG) / (elmt_p29 + elmt_m19 + (elmt_p17 * elmt_cE3n)))) / ((elmt_m9 * elmt_cCOP1n) + (elmt_m10 * elmt_cCOP1d) + elmt_p31))), elmt_d)) / (Functions.pow((((elmt_p28 * elmt_cG) / (elmt_p29 + elmt_m19 + (elmt_p17 * elmt_cE3n))) + (((elmt_p18 * elmt_cEG) + ((elmt_p17 * elmt_cE3n * elmt_p28 * elmt_cG) / (elmt_p29 + elmt_m19 + (elmt_p17 * elmt_cE3n)))) / ((elmt_m9 * elmt_cCOP1n) + (elmt_m10 * elmt_cCOP1d) + elmt_p31))), elmt_d) + Functions.pow(elmt_g7, elmt_d)))))));
        elmt_cT_trsl = (elmt_def * (((elmt_p4 * elmt_cT_m) / elmt_def)));
        elmt_cCOP1c_degr = (elmt_def * elmt_m27 * elmt_cCOP1c * (1.0 + (elmt_p15 * (1.0 - ((((elmt_lightOffset + (0.5 * elmt_lightAmplitude * (1.0 + tanh(((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) / elmt_twilightPeriod))))) - (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_photoPeriod) / elmt_twilightPeriod))))) + (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_cyclePeriod) / elmt_twilightPeriod))))))))));
        elmt_cCOP1n_degr = (elmt_def * elmt_m27 * elmt_cCOP1n * (1.0 + (elmt_p15 * ((((elmt_lightOffset + (0.5 * elmt_lightAmplitude * (1.0 + tanh(((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) / elmt_twilightPeriod))))) - (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_photoPeriod) / elmt_twilightPeriod))))) + (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_cyclePeriod) / elmt_twilightPeriod)))))))));
        elmt_cP_degr = (elmt_def * elmt_m11 * elmt_cP * ((((elmt_lightOffset + (0.5 * elmt_lightAmplitude * (1.0 + tanh(((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) / elmt_twilightPeriod))))) - (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_photoPeriod) / elmt_twilightPeriod))))) + (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_cyclePeriod) / elmt_twilightPeriod)))))));
        elmt_cP9_degr = (elmt_def * (elmt_m13 + (elmt_m22 * (1.0 - ((((elmt_lightOffset + (0.5 * elmt_lightAmplitude * (1.0 + tanh(((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) / elmt_twilightPeriod))))) - (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_photoPeriod) / elmt_twilightPeriod))))) + (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_cyclePeriod) / elmt_twilightPeriod))))))))) * elmt_cP9);
        elmt_cG_cE3_assoc = (elmt_def * (((elmt_p17 * elmt_cE3 * elmt_cG) / elmt_def)));
        elmt_cL_m_degr = (elmt_def * (elmt_m2 + ((elmt_m1 - elmt_m2) * ((((elmt_lightOffset + (0.5 * elmt_lightAmplitude * (1.0 + tanh(((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) / elmt_twilightPeriod))))) - (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_photoPeriod) / elmt_twilightPeriod))))) + (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_cyclePeriod) / elmt_twilightPeriod)))))))) * elmt_cL_m);
        elmt_cLUX_m_trscr = (elmt_def * ((((((elmt_n13 * elmt_g2) / (elmt_cEC + elmt_g2)) * Functions.pow(elmt_g6, elmt_e)) / (Functions.pow(elmt_cL, elmt_e) + Functions.pow(elmt_g6, elmt_e))) / elmt_def)));
        elmt_cNI_m_trscr = (elmt_def * (((((elmt_n10 * Functions.pow(elmt_cLm, elmt_e)) / (Functions.pow(elmt_cLm, elmt_e) + Functions.pow(elmt_g12, elmt_e))) + ((elmt_n11 * Functions.pow(elmt_cP7, elmt_b)) / (Functions.pow(elmt_cP7, elmt_b) + Functions.pow(elmt_g13, elmt_b)))) / elmt_def)));
        elmt_cG_cZTL_assoc = (elmt_def * ((elmt_p12 * ((((elmt_lightOffset + (0.5 * elmt_lightAmplitude * (1.0 + tanh(((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) / elmt_twilightPeriod))))) - (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_photoPeriod) / elmt_twilightPeriod))))) + (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_cyclePeriod) / elmt_twilightPeriod)))))) * elmt_cZTL * elmt_cG) - (elmt_p13 * (1.0 - ((((elmt_lightOffset + (0.5 * elmt_lightAmplitude * (1.0 + tanh(((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) / elmt_twilightPeriod))))) - (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_photoPeriod) / elmt_twilightPeriod))))) + (0.5 * elmt_lightAmplitude * (1.0 + tanh((((elmt_cyclePeriod * (((time + elmt_phase) / elmt_cyclePeriod) - floor((floor((time + elmt_phase)) / elmt_cyclePeriod)))) - elmt_cyclePeriod) / elmt_twilightPeriod))))))) * elmt_cZG)));
        elmt_cZTL_degr = (elmt_def * (((elmt_m20 * elmt_cZTL) / elmt_def)));
        elmt_cT_m_degr = (elmt_def * (((elmt_m5 * elmt_cT_m) / elmt_def)));
        elmt_cE3_trsl = (elmt_def * (((elmt_p16 * elmt_cE3_m) / elmt_def)));
        elmt_cP7_trsl = (elmt_def * (((elmt_p9 * elmt_cP7_m) / elmt_def)));
        der(elmt_reactant40) = 0;
        der(elmt_product73) = 0;
        der(elmt_product71) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product77) = 0;
        der(elmt_reactant108) = 0;
        der(elmt_product75) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_reactant110) = 0;
        der(elmt_product69) = 0;
        der(elmt_reactant112) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product85) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_product83) = 0;
        der(elmt_product89) = 0;
        der(elmt_product87) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_product81) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_product102) = 0;
        der(elmt_product104) = 0;
        der(elmt_product100) = 0;
        der(elmt_product109) = 0;
        der(elmt_product79) = 0;
        der(elmt_product107) = 0;
        der(elmt_product95) = 0;
        der(elmt_product93) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product11) = 0;
        der(elmt_product98) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_product91) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_product7) = 0;
        der(elmt_product23) = 0;
        der(elmt_product21) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_product3) = 0;
        der(elmt_product15) = 0;
        der(elmt_reactant106) = 0;
        der(elmt_reactant105) = 0;
        der(elmt_product13) = 0;
        der(elmt_reactant103) = 0;
        der(elmt_product19) = 0;
        der(elmt_reactant101) = 0;
        der(elmt_product17) = 0;
        der(elmt_reactant84) = 0;
        der(elmt_reactant86) = 0;
        der(elmt_reactant80) = 0;
        der(elmt_product33) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant82) = 0;
        der(elmt_reactant88) = 0;
        der(elmt_product27) = 0;
        der(elmt_product25) = 0;
        der(elmt_product29) = 0;
        der(elmt_reactant94) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant96) = 0;
        der(elmt_reactant97) = 0;
        der(elmt_reactant90) = 0;
        der(elmt_product45) = 0;
        der(elmt_reactant92) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant99) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product37) = 0;
        der(elmt_product35) = 0;
        der(elmt_product39) = 0;
        der(elmt_product51) = 0;
        der(elmt_reactant62) = 0;
        der(elmt_reactant64) = 0;
        der(elmt_product55) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant60) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_reactant68) = 0;
        der(elmt_product113) = 0;
        der(elmt_product111) = 0;
        der(elmt_product49) = 0;
        der(elmt_product47) = 0;
        der(elmt_reactant72) = 0;
        der(elmt_product63) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant74) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product61) = 0;
        der(elmt_product67) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant70) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product65) = 0;
        der(elmt_reactant76) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant78) = 0;
        der(elmt_product59) = 0;
        der(elmt_product57) = 0;

end Reactions;
