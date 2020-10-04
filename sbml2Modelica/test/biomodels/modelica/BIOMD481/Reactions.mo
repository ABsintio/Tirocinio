within BIOMD481;
class Reactions

    input Real elmt_FSH_Pit;
    input Real elmt_E2;
    input Real elmt_par48;
    input Real elmt_par47;
    input Real elmt_par46;
    input Real elmt_par89;
    input Real elmt_par45;
    input Real elmt_GnRH_Hyp;
    input Real elmt_par87;
    input Real elmt_par43;
    input Real elmt_par86;
    input Real elmt_par42;
    input Real elmt_par41;
    input Real elmt_Inh;
    input Real elmt_par82;
    input Real elmt_par81;
    input Real elmt_par7;
    input Real elmt_par6;
    input Real elmt_par5;
    input Real elmt_par4;
    input Real elmt_par3;
    input Real elmt_par2;
    input Real elmt_Enz;
    input Real elmt_par1;
    input Real elmt_IOF;
    input Real elmt_par38;
    input Real elmt_par37;
    input Real elmt_LH_Pit;
    input Real elmt_par36;
    input Real elmt_par35;
    input Real elmt_par9;
    input Real elmt_par34;
    input Real elmt_par77;
    input Real elmt_par8;
    input Real elmt_par33;
    input Real elmt_par32;
    input Real elmt_par76;
    input Real elmt_par31;
    input Real elmt_par30;
    input Real elmt_par72;
    input Real elmt_par71;
    input Real elmt_FSH_Bld;
    input Real elmt_par29;
    input Real elmt_par28;
    input Real elmt_par27;
    input Real elmt_par26;
    input Real elmt_par25;
    input Real elmt_par24;
    input Real elmt_par23;
    input Real elmt_par66;
    input Real elmt_par22;
    input Real elmt_par65;
    input Real elmt_par21;
    input Real elmt_par64;
    input Real elmt_par63;
    input Real elmt_par62;
    input Real elmt_OT;
    input Real elmt_P4;
    input Real elmt_GnRH_Pit;
    input Real elmt_par59;
    input Real elmt_default;
    input Real elmt_par58;
    input Real elmt_LH_Bld;
    input Real elmt_CL;
    input Real elmt_par57;
    input Real elmt_par56;
    input Real elmt_Foll;
    input Real elmt_par10;
    input Real elmt_par98;
    input Real elmt_par97;
    input Real elmt_par96;
    input Real elmt_par95;
    input Real elmt_par94;
    input Real elmt_par92;
    input Real elmt_par91;
    input Real elmt_PGF;

    Real elmt_re15(unit = "") "re15";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa11\" species=\"P4\">
                <celldesigner:linkAnchor position=\"WNW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa27\" species=\"snk_P4\">
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
    Real elmt_SpeciesReference_46 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa11</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_47 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa27</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re16(unit = "") "re16";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa10\" species=\"E2\">
                <celldesigner:linkAnchor position=\"NW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa28\" species=\"snk_E2\">
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
    Real elmt_SpeciesReference_48 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa10</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_49 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa28</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re17(unit = "") "re17";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa12\" species=\"Inh\">
                <celldesigner:linkAnchor position=\"W\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa29\" species=\"snk_Inh\">
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
    Real elmt_SpeciesReference_50 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa12</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_51 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa29</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re18(unit = "") "re18";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa13\" species=\"OT\">
                <celldesigner:linkAnchor position=\"SW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa30\" species=\"snk_OT\">
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
    Real elmt_SpeciesReference_52 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa13</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_53 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa30</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re19(unit = "") "re19";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa14\" species=\"Enz\">
                <celldesigner:linkAnchor position=\"SE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa31\" species=\"snk_Enz\">
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
    Real elmt_SpeciesReference_54 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa14</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_55 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa31</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re10(unit = "") "re10";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa22\" species=\"src_Enz\">
                <celldesigner:linkAnchor position=\"WSW\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa14\" species=\"Enz\">
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
              <celldesigner:modification aliases=\"sa11\" editPoints=\"0.6474222586858159,-0.3148952311889629\" modifiers=\"P4\" targetLineIndex=\"-1,3\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
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
    Real elmt_SpeciesReference_33 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa22</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_34 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa14</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re11(unit = "") "re11";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa23\" species=\"src_PGF\">
                <celldesigner:linkAnchor position=\"ESE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa15\" species=\"PGF\">
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
              <celldesigner:modification aliases=\"sa13\" modifiers=\"OT\" targetLineIndex=\"-1,4\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa13\" species=\"OT\">
                  <celldesigner:linkAnchor position=\"SE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa14\" modifiers=\"Enz\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa14\" species=\"Enz\">
                  <celldesigner:linkAnchor position=\"SSW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_SpeciesReference_36 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa23</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_37 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa15</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re12(unit = "") "re12";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa2\" species=\"GnRH_Pit\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa24\" species=\"snk_GnRH_Pit\">
                <celldesigner:linkAnchor position=\"WSW\"/>
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
    Real elmt_SpeciesReference_40 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa2</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_41 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa24</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re13(unit = "") "re13";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa4\" species=\"LH_Bld\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa25\" species=\"snk_LH\">
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
    Real elmt_SpeciesReference_42 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa4</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_43 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa25</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re14(unit = "") "re14";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa7\" species=\"FSH_Bld\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa26\" species=\"snk_FSH\">
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
    Real elmt_SpeciesReference_44 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa7</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_45 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa26</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re26(unit = "") "re26";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa39\" species=\"src_GnRH_Pit\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa2\" species=\"GnRH_Pit\">
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
              <celldesigner:modification aliases=\"sa5\" editPoints=\"0.4760220305407761,-0.11242204650429417\" modifiers=\"GnRH_Hyp\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa5\" species=\"GnRH_Hyp\">
                  <celldesigner:linkAnchor position=\"NE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa10\" editPoints=\"0.37282037161515513,-0.09758797016269882\" modifiers=\"E2\" targetLineIndex=\"-1,6\" type=\"INHIBITION\">
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
              <celldesigner:modification aliases=\"sa11\" editPoints=\"0.5728219386734692,-0.0680127404713976\" modifiers=\"P4\" targetLineIndex=\"-1,7\" type=\"INHIBITION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
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
    Real elmt_SpeciesReference_74 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa39</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_75 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa2</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re27(unit = "") "re27";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa40\" species=\"src_Foll\">
                <celldesigner:linkAnchor position=\"SE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa8\" species=\"Foll\">
                <celldesigner:linkAnchor position=\"NNW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa7\" modifiers=\"FSH_Bld\" targetLineIndex=\"-1,4\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa7\" species=\"FSH_Bld\">
                  <celldesigner:linkAnchor position=\"SSW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa8\" editPoints=\"0.3151949870948929,0.43535928950981817\" modifiers=\"Foll\" targetLineIndex=\"-1,5\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa8\" species=\"Foll\">
                  <celldesigner:linkAnchor position=\"NNE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_SpeciesReference_79 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa40</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_80 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa8</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re28(unit = "") "re28";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa41\" species=\"src_IOF\">
                <celldesigner:linkAnchor position=\"SE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa16\" species=\"IOF\">
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
              <celldesigner:modification aliases=\"sa9\" modifiers=\"CL\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa9\" species=\"CL\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa15\" modifiers=\"PGF\" targetLineIndex=\"-1,6\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa15\" species=\"PGF\">
                  <celldesigner:linkAnchor position=\"ENE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_SpeciesReference_83 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa41</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_84 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa16</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re3(unit = "") "re3";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa5\" species=\"GnRH_Hyp\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa38\" species=\"snk_GnRH_Hyp\">
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
              <celldesigner:modification aliases=\"sa10\" editPoints=\"0.6487602634290686,0.07847779718381842\" modifiers=\"E2\" targetLineIndex=\"-1,3\" type=\"INHIBITION\">
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
              <celldesigner:modification aliases=\"sa11\" editPoints=\"0.7912666178605576,0.21397200889135082\" modifiers=\"P4\" targetLineIndex=\"-1,7\" type=\"INHIBITION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
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
    Real elmt_SpeciesReference_8 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa5</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_9 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa38</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re2(unit = "") "re2";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa6\" species=\"FSH_Pit\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa7\" species=\"FSH_Bld\">
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
              <celldesigner:modification aliases=\"sa10\" editPoints=\"0.9187830342228825,-0.04978261967518782\" modifiers=\"E2\" targetLineIndex=\"-1,4\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa10\" species=\"E2\">
                  <celldesigner:linkAnchor position=\"ESE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa11\" editPoints=\"0.8722782134527848,0.09308978791095335\" modifiers=\"P4\" targetLineIndex=\"-1,3\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa11\" species=\"P4\">
                  <celldesigner:linkAnchor position=\"E\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa2\" modifiers=\"GnRH_Pit\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa2\" species=\"GnRH_Pit\">
                  <celldesigner:linkAnchor position=\"SSE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_SpeciesReference_4 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa7</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_3 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa6</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re1(unit = "") "re1";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa3\" species=\"LH_Pit\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa4\" species=\"LH_Bld\">
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
              <celldesigner:modification aliases=\"sa2\" modifiers=\"GnRH_Pit\" targetLineIndex=\"-1,4\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa2\" species=\"GnRH_Pit\">
                  <celldesigner:linkAnchor position=\"SE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_SpeciesReference "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa3</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_1 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa4</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re20(unit = "") "re20";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa15\" species=\"PGF\">
                <celldesigner:linkAnchor position=\"ESE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa32\" species=\"snk_PGF\">
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
    Real elmt_SpeciesReference_56 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa15</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_57 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa32</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re21(unit = "") "re21";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa16\" species=\"IOF\">
                <celldesigner:linkAnchor position=\"ESE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa33\" species=\"snk_IOF\">
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
    Real elmt_SpeciesReference_58 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa16</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_59 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa33</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re22(unit = "") "l";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:name>l</celldesigner:name>
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa8\" species=\"Foll\">
                <celldesigner:linkAnchor position=\"ESE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa34\" species=\"snk_Foll\">
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
              <celldesigner:modification aliases=\"sa11\" editPoints=\"0.9396775225410048,-0.1337852940023666\" modifiers=\"P4\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa11\" species=\"P4\">
                  <celldesigner:linkAnchor position=\"ESE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa4\" editPoints=\"0.2630170118136128,-0.20766521949922145\" modifiers=\"LH_Bld\" targetLineIndex=\"-1,5\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa4\" species=\"LH_Bld\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_SpeciesReference_60 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa8</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_61 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa34</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re23(unit = "") "re23";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa9\" species=\"CL\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa35\" species=\"snk_CL\">
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
              <celldesigner:modification aliases=\"sa16\" modifiers=\"IOF\" targetLineIndex=\"-1,3\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa16\" species=\"IOF\">
                  <celldesigner:linkAnchor position=\"N\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_SpeciesReference_64 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa9</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_65 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa35</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re24(unit = "") "re24";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa36\" species=\"src_LH\">
                <celldesigner:linkAnchor position=\"E\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa3\" species=\"LH_Pit\">
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
              <celldesigner:modification aliases=\"sa10\" editPoints=\"0.8836856453235304,-0.13236880236073212\" modifiers=\"E2\" targetLineIndex=\"-1,4\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa10\" species=\"E2\">
                  <celldesigner:linkAnchor position=\"NE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa11\" editPoints=\"0.9211317445684918,0.09169935790169603\" modifiers=\"P4\" targetLineIndex=\"-1,6\" type=\"INHIBITION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa11\" species=\"P4\">
                  <celldesigner:linkAnchor position=\"NE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_SpeciesReference_67 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa36</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_68 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa3</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re25(unit = "") "re25";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa37\" species=\"src_FSH\"/>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa6\" species=\"FSH_Pit\">
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
              <celldesigner:modification aliases=\"sa12\" editPoints=\"0.7085858846546763,0.2572650638275964\" modifiers=\"Inh\" targetLineIndex=\"-1,3\" type=\"INHIBITION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa12\" species=\"Inh\">
                  <celldesigner:linkAnchor position=\"ENE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_SpeciesReference_71 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa37</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_72 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa6</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re9(unit = "") "re9";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa21\" species=\"src_OT\">
                <celldesigner:linkAnchor position=\"ESE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa13\" species=\"OT\">
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
              <celldesigner:modification aliases=\"sa10\" editPoints=\"0.29666762030985805,-0.2551631617974036\" modifiers=\"E2\" targetLineIndex=\"-1,2\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa10\" species=\"E2\">
                  <celldesigner:linkAnchor position=\"SSE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa9\" editPoints=\"0.8895712341158861,0.11645001754296058\" modifiers=\"CL\" targetLineIndex=\"-1,5\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa9\" species=\"CL\">
                  <celldesigner:linkAnchor position=\"W\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_SpeciesReference_30 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa13</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_29 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa21</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re8(unit = "") "re8";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa20\" species=\"src_Inh\">
                <celldesigner:linkAnchor position=\"NE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa12\" species=\"Inh\">
                <celldesigner:linkAnchor position=\"SSW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa8\" editPoints=\"0.9201775888827481,-0.06677849582619777\" modifiers=\"Foll\" targetLineIndex=\"-1,3\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa8\" species=\"Foll\">
                  <celldesigner:linkAnchor position=\"W\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_SpeciesReference_26 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa20</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_27 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa12</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re7(unit = "") "re7";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa19\" species=\"src_P4\"/>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa11\" species=\"P4\">
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
              <celldesigner:modification aliases=\"sa9\" editPoints=\"1.0182760009969096,-0.22597651401645552 1.047777139191849,-0.06813703791973763\" modifiers=\"CL\" targetLineIndex=\"-1,3\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa9\" species=\"CL\">
                  <celldesigner:linkAnchor position=\"WNW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_SpeciesReference_23 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa19</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_24 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa11</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re6(unit = "") "re6";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa18\" species=\"src_E2\">
                <celldesigner:linkAnchor position=\"SE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa10\" species=\"E2\">
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
              <celldesigner:modification aliases=\"sa8\" editPoints=\"0.9790566128044319,-0.4463112033491148 1.1020984671562157,-0.10214426400788415\" modifiers=\"Foll\" targetLineIndex=\"-1,3\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa8\" species=\"Foll\">
                  <celldesigner:linkAnchor position=\"WSW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_SpeciesReference_20 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa18</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_21 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa10</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re5(unit = "") "re5";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa17\" species=\"src_GnRH\">
                <celldesigner:linkAnchor position=\"SE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa5\" species=\"GnRH_Hyp\">
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
              <celldesigner:modification aliases=\"sa5\" editPoints=\"0.4347218791928098,0.2815394638309483\" modifiers=\"GnRH_Hyp\" targetLineIndex=\"-1,5\" type=\"INHIBITION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa5\" species=\"GnRH_Hyp\">
                  <celldesigner:linkAnchor position=\"NNW\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_SpeciesReference_17 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa17</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_18 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa5</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_re4(unit = "") "re4";
 annotation(Documentation(info="<annotation>
<celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
            <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
            <celldesigner:baseReactants>
              <celldesigner:baseReactant alias=\"sa43\" species=\"src_CL\">
                <celldesigner:linkAnchor position=\"ESE\"/>
              </celldesigner:baseReactant>
            </celldesigner:baseReactants>
            <celldesigner:baseProducts>
              <celldesigner:baseProduct alias=\"sa9\" species=\"CL\">
                <celldesigner:linkAnchor position=\"NNW\"/>
              </celldesigner:baseProduct>
            </celldesigner:baseProducts>
            <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
            <celldesigner:listOfModification>
              <celldesigner:modification aliases=\"sa8\" editPoints=\"0.41244309161842363,0.19023981470476015\" modifiers=\"Foll\" targetLineIndex=\"-1,6\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa8\" species=\"Foll\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa9\" editPoints=\"0.5133594582048531,0.4093558630126308\" modifiers=\"CL\" targetLineIndex=\"-1,5\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa9\" species=\"CL\">
                  <celldesigner:linkAnchor position=\"NNE\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
              <celldesigner:modification aliases=\"sa4\" editPoints=\"0.31910017887974684,-0.11171583179235167\" modifiers=\"LH_Bld\" targetLineIndex=\"-1,4\" type=\"PHYSICAL_STIMULATION\">
                <celldesigner:connectScheme connectPolicy=\"direct\">
                  <celldesigner:listOfLineDirection>
                    <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                    <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
                  </celldesigner:listOfLineDirection>
                </celldesigner:connectScheme>
                <celldesigner:linkTarget alias=\"sa4\" species=\"LH_Bld\">
                  <celldesigner:linkAnchor position=\"S\"/>
                </celldesigner:linkTarget>
                <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
              </celldesigner:modification>
            </celldesigner:listOfModification>
          </celldesigner:extension>
                        </annotation>"));
    Real elmt_SpeciesReference_12 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa43</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));
    Real elmt_SpeciesReference_13 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
                <celldesigner:alias>sa9</celldesigner:alias>
              </celldesigner:extension>
                                    </annotation>"));


    initial equation
        elmt_SpeciesReference = 1.0;
        elmt_SpeciesReference_45 = 1.0;
        elmt_SpeciesReference_46 = 1.0;
        elmt_SpeciesReference_47 = 1.0;
        elmt_SpeciesReference_48 = 1.0;
        elmt_SpeciesReference_49 = 1.0;
        elmt_SpeciesReference_50 = 1.0;
        elmt_SpeciesReference_51 = 1.0;
        elmt_SpeciesReference_52 = 1.0;
        elmt_SpeciesReference_53 = 1.0;
        elmt_SpeciesReference_54 = 1.0;
        elmt_SpeciesReference_55 = 1.0;
        elmt_SpeciesReference_56 = 1.0;
        elmt_SpeciesReference_12 = 1.0;
        elmt_SpeciesReference_57 = 1.0;
        elmt_SpeciesReference_13 = 1.0;
        elmt_SpeciesReference_58 = 1.0;
        elmt_SpeciesReference_59 = 1.0;
        elmt_SpeciesReference_17 = 1.0;
        elmt_SpeciesReference_18 = 1.0;
        elmt_SpeciesReference_60 = 1.0;
        elmt_SpeciesReference_61 = 1.0;
        elmt_SpeciesReference_64 = 1.0;
        elmt_SpeciesReference_20 = 1.0;
        elmt_SpeciesReference_65 = 1.0;
        elmt_SpeciesReference_21 = 1.0;
        elmt_SpeciesReference_8 = 1.0;
        elmt_SpeciesReference_9 = 1.0;
        elmt_SpeciesReference_67 = 1.0;
        elmt_SpeciesReference_23 = 1.0;
        elmt_SpeciesReference_68 = 1.0;
        elmt_SpeciesReference_24 = 1.0;
        elmt_SpeciesReference_1 = 1.0;
        elmt_SpeciesReference_26 = 1.0;
        elmt_SpeciesReference_4 = 1.0;
        elmt_SpeciesReference_27 = 1.0;
        elmt_SpeciesReference_3 = 1.0;
        elmt_SpeciesReference_29 = 1.0;
        elmt_SpeciesReference_71 = 1.0;
        elmt_SpeciesReference_72 = 1.0;
        elmt_SpeciesReference_74 = 1.0;
        elmt_SpeciesReference_30 = 1.0;
        elmt_SpeciesReference_75 = 1.0;
        elmt_SpeciesReference_33 = 1.0;
        elmt_SpeciesReference_34 = 1.0;
        elmt_SpeciesReference_79 = 1.0;
        elmt_SpeciesReference_36 = 1.0;
        elmt_SpeciesReference_37 = 1.0;
        elmt_SpeciesReference_83 = 1.0;
        elmt_SpeciesReference_40 = 1.0;
        elmt_SpeciesReference_84 = 1.0;
        elmt_SpeciesReference_41 = 1.0;
        elmt_SpeciesReference_42 = 1.0;
        elmt_SpeciesReference_43 = 1.0;
        elmt_SpeciesReference_44 = 1.0;
        elmt_SpeciesReference_80 = 1.0;


    equation
        elmt_re15 = (elmt_default * (((elmt_par72 * elmt_P4 * elmt_default) / elmt_default)));
        elmt_re16 = (elmt_default * (((elmt_par77 * elmt_E2 * elmt_default) / elmt_default)));
        elmt_re17 = (elmt_default * (((elmt_par82 * elmt_Inh * elmt_default) / elmt_default)));
        elmt_re18 = (elmt_default * (((elmt_par94 * elmt_OT * elmt_default) / elmt_default)));
        elmt_re19 = (elmt_default * (((elmt_par89 * elmt_Enz) / elmt_default)));
        elmt_re10 = (elmt_default * ((((elmt_par86 * Functions.pow((elmt_P4 * elmt_default), 5.0)) / (Functions.pow((elmt_P4 * elmt_default), 5.0) + Functions.pow(elmt_par87, 5.0))) / elmt_default)));
        elmt_re11 = (elmt_default * ((((((elmt_par56 * Functions.pow(elmt_Enz, 5.0)) / (Functions.pow(elmt_Enz, 5.0) + Functions.pow(elmt_par57, 5.0))) * Functions.pow((elmt_OT * elmt_default), 2.0)) / (Functions.pow((elmt_OT * elmt_default), 2.0) + Functions.pow(elmt_par58, 2.0))) / elmt_default)));
        elmt_re12 = (elmt_default * (((elmt_par10 * elmt_GnRH_Pit * elmt_default) / elmt_default)));
        elmt_re13 = (elmt_default * (((elmt_par38 * elmt_LH_Bld * elmt_default) / elmt_default)));
        elmt_re14 = (elmt_default * (((elmt_par29 * elmt_FSH_Bld * elmt_default) / elmt_default)));
        elmt_re26 = (elmt_default * (((((elmt_par8 * Functions.pow((elmt_E2 * elmt_default), 5.0)) / (Functions.pow((elmt_E2 * elmt_default), 5.0) + Functions.pow(elmt_par9, 5.0))) * ((elmt_par3 * (((Functions.pow(elmt_par5, 2.0) / (Functions.pow(elmt_par5, 2.0) + Functions.pow((elmt_P4 * elmt_default), 2.0))) + (Functions.pow(elmt_par4, 2.0) / (Functions.pow(elmt_par4, 2.0) + Functions.pow((elmt_E2 * elmt_default), 2.0)))) - (((Functions.pow(elmt_par5, 2.0) / (Functions.pow(elmt_par5, 2.0) + Functions.pow((elmt_P4 * elmt_default), 2.0))) * Functions.pow(elmt_par4, 2.0)) / (Functions.pow(elmt_par4, 2.0) + Functions.pow((elmt_E2 * elmt_default), 2.0))))) + ((elmt_par6 * Functions.pow(elmt_par7, 2.0)) / (Functions.pow((elmt_P4 * elmt_default), 2.0) + Functions.pow(elmt_par7, 2.0)))) * elmt_GnRH_Hyp * elmt_default) / elmt_default)));
        elmt_re27 = (elmt_default * ((((elmt_par41 * Functions.pow((elmt_FSH_Bld * elmt_default), 2.0)) / (Functions.pow(((elmt_par42 * Functions.pow(elmt_par43, 2.0)) / (Functions.pow(elmt_par43, 2.0) + Functions.pow((elmt_Foll * elmt_default), 2.0))), 2.0) + Functions.pow((elmt_FSH_Bld * elmt_default), 2.0))) / elmt_default)));
        elmt_re28 = (elmt_default * ((((((elmt_par95 * Functions.pow((elmt_PGF * elmt_default), 5.0)) / (Functions.pow((elmt_PGF * elmt_default), 5.0) + Functions.pow(elmt_par96, 5.0))) * Functions.pow((elmt_CL * elmt_default), 10.0)) / (Functions.pow((elmt_CL * elmt_default), 10.0) + Functions.pow(elmt_par97, 10.0))) / elmt_default)));
        elmt_re3 = (elmt_default * (((((elmt_par3 * (((Functions.pow(elmt_par5, 2.0) / (Functions.pow(elmt_par5, 2.0) + Functions.pow((elmt_P4 * elmt_default), 2.0))) + (Functions.pow(elmt_par4, 2.0) / (Functions.pow(elmt_par4, 2.0) + Functions.pow((elmt_E2 * elmt_default), 2.0)))) - (((Functions.pow(elmt_par5, 2.0) / (Functions.pow(elmt_par5, 2.0) + Functions.pow((elmt_P4 * elmt_default), 2.0))) * Functions.pow(elmt_par4, 2.0)) / (Functions.pow(elmt_par4, 2.0) + Functions.pow((elmt_E2 * elmt_default), 2.0))))) + ((elmt_par6 * Functions.pow(elmt_par7, 2.0)) / (Functions.pow((elmt_P4 * elmt_default), 2.0) + Functions.pow(elmt_par7, 2.0)))) * elmt_GnRH_Hyp * elmt_default) / elmt_default)));
        elmt_re2 = (elmt_default * ((((elmt_par30 + ((elmt_par23 * Functions.pow((elmt_P4 * elmt_default), 2.0)) / (Functions.pow((elmt_P4 * elmt_default), 2.0) + Functions.pow(elmt_par24, 2.0))) + ((elmt_par25 * Functions.pow(elmt_par26, 2.0)) / (Functions.pow((elmt_E2 * elmt_default), 2.0) + Functions.pow(elmt_par26, 2.0))) + ((elmt_par27 * elmt_GnRH_Pit * elmt_default) / (elmt_par28 + (elmt_GnRH_Pit * elmt_default)))) * elmt_FSH_Pit * elmt_default) / elmt_default)));
        elmt_re1 = (elmt_default * ((((elmt_par37 + ((elmt_par35 * Functions.pow((elmt_GnRH_Pit * elmt_default), 5.0)) / (Functions.pow((elmt_GnRH_Pit * elmt_default), 5.0) + Functions.pow(elmt_par36, 5.0)))) * elmt_LH_Pit * elmt_default) / elmt_default)));
        elmt_re20 = (elmt_default * (((elmt_par59 * elmt_PGF * elmt_default) / elmt_default)));
        elmt_re21 = (elmt_default * (((elmt_par98 * elmt_IOF * elmt_default) / elmt_default)));
        elmt_re22 = (elmt_default * ((((((elmt_par45 * Functions.pow((elmt_P4 * elmt_default), 5.0)) / (Functions.pow((elmt_P4 * elmt_default), 5.0) + Functions.pow(elmt_par46, 5.0))) + ((elmt_par47 * Functions.pow((elmt_LH_Bld * elmt_default), 2.0)) / (Functions.pow((elmt_LH_Bld * elmt_default), 2.0) + Functions.pow(elmt_par48, 2.0)))) * elmt_Foll * elmt_default) / elmt_default)));
        elmt_re23 = (elmt_default * (((((elmt_par65 * Functions.pow((elmt_IOF * elmt_default), 5.0)) / (Functions.pow((elmt_IOF * elmt_default), 5.0) + Functions.pow(elmt_par66, 5.0))) * elmt_CL * elmt_default) / elmt_default)));
        elmt_re24 = (elmt_default * (((((elmt_par31 * Functions.pow((elmt_E2 * elmt_default), 2.0)) / (Functions.pow((elmt_E2 * elmt_default), 2.0) + Functions.pow(elmt_par32, 2.0))) + ((elmt_par33 * Functions.pow(elmt_par34, 2.0)) / (Functions.pow(elmt_par34, 2.0) + Functions.pow((elmt_P4 * elmt_default), 2.0)))) / elmt_default)));
        elmt_re25 = (elmt_default * ((((elmt_par21 * Functions.pow(elmt_par22, 5.0)) / (Functions.pow(elmt_par22, 5.0) + Functions.pow((elmt_Inh * elmt_default), 5.0))) / elmt_default)));
        elmt_re9 = (elmt_default * (((((elmt_par91 * Functions.pow((elmt_E2 * elmt_default), 2.0)) / (Functions.pow((elmt_E2 * elmt_default), 2.0) + Functions.pow(elmt_par92, 2.0))) * Functions.pow((elmt_CL * elmt_default), 2.0)) / elmt_default)));
        elmt_re8 = (elmt_default * (((elmt_par81 * Functions.pow((elmt_Foll * elmt_default), 2.0)) / elmt_default)));
        elmt_re7 = (elmt_default * (((elmt_par71 * Functions.pow((elmt_CL * elmt_default), 2.0)) / elmt_default)));
        elmt_re6 = (elmt_default * (((elmt_par76 * Functions.pow((elmt_Foll * elmt_default), 2.0)) / elmt_default)));
        elmt_re5 = (elmt_default * (((elmt_par2 * (1.0 - ((elmt_GnRH_Hyp * elmt_default) / elmt_par1))) / elmt_default)));
        elmt_re4 = (elmt_default * ((((((elmt_par62 * elmt_par47 * Functions.pow((elmt_LH_Bld * elmt_default), 2.0)) / (Functions.pow((elmt_LH_Bld * elmt_default), 2.0) + Functions.pow(elmt_par48, 2.0))) * elmt_Foll * elmt_default) + ((elmt_par63 * Functions.pow((elmt_CL * elmt_default), 2.0)) / (Functions.pow((elmt_CL * elmt_default), 2.0) + Functions.pow(elmt_par64, 2.0)))) / elmt_default)));
        der(elmt_SpeciesReference) = 0;
        der(elmt_SpeciesReference_45) = 0;
        der(elmt_SpeciesReference_46) = 0;
        der(elmt_SpeciesReference_47) = 0;
        der(elmt_SpeciesReference_48) = 0;
        der(elmt_SpeciesReference_49) = 0;
        der(elmt_SpeciesReference_50) = 0;
        der(elmt_SpeciesReference_51) = 0;
        der(elmt_SpeciesReference_52) = 0;
        der(elmt_SpeciesReference_53) = 0;
        der(elmt_SpeciesReference_54) = 0;
        der(elmt_SpeciesReference_55) = 0;
        der(elmt_SpeciesReference_56) = 0;
        der(elmt_SpeciesReference_12) = 0;
        der(elmt_SpeciesReference_57) = 0;
        der(elmt_SpeciesReference_13) = 0;
        der(elmt_SpeciesReference_58) = 0;
        der(elmt_SpeciesReference_59) = 0;
        der(elmt_SpeciesReference_17) = 0;
        der(elmt_SpeciesReference_18) = 0;
        der(elmt_SpeciesReference_60) = 0;
        der(elmt_SpeciesReference_61) = 0;
        der(elmt_SpeciesReference_64) = 0;
        der(elmt_SpeciesReference_20) = 0;
        der(elmt_SpeciesReference_65) = 0;
        der(elmt_SpeciesReference_21) = 0;
        der(elmt_SpeciesReference_8) = 0;
        der(elmt_SpeciesReference_9) = 0;
        der(elmt_SpeciesReference_67) = 0;
        der(elmt_SpeciesReference_23) = 0;
        der(elmt_SpeciesReference_68) = 0;
        der(elmt_SpeciesReference_24) = 0;
        der(elmt_SpeciesReference_1) = 0;
        der(elmt_SpeciesReference_26) = 0;
        der(elmt_SpeciesReference_4) = 0;
        der(elmt_SpeciesReference_27) = 0;
        der(elmt_SpeciesReference_3) = 0;
        der(elmt_SpeciesReference_29) = 0;
        der(elmt_SpeciesReference_71) = 0;
        der(elmt_SpeciesReference_72) = 0;
        der(elmt_SpeciesReference_74) = 0;
        der(elmt_SpeciesReference_30) = 0;
        der(elmt_SpeciesReference_75) = 0;
        der(elmt_SpeciesReference_33) = 0;
        der(elmt_SpeciesReference_34) = 0;
        der(elmt_SpeciesReference_79) = 0;
        der(elmt_SpeciesReference_36) = 0;
        der(elmt_SpeciesReference_37) = 0;
        der(elmt_SpeciesReference_83) = 0;
        der(elmt_SpeciesReference_40) = 0;
        der(elmt_SpeciesReference_84) = 0;
        der(elmt_SpeciesReference_41) = 0;
        der(elmt_SpeciesReference_42) = 0;
        der(elmt_SpeciesReference_43) = 0;
        der(elmt_SpeciesReference_44) = 0;
        der(elmt_SpeciesReference_80) = 0;

end Reactions;
