within BIOMD467;
class Reactions

    input Real elmt_s27;
    input Real elmt_s48;
    input Real elmt_s47;
    input Real elmt_s45;
    input Real elmt_s66;
    input Real elmt_s65;
    input Real elmt_s52;
    input Real elmt_s51;
    input Real elmt_s50;
    input Real elmt_kD;
    input Real elmt_k1r;
    input Real elmt_k3r;
    input Real elmt_k10;
    input Real elmt_k1;
    input Real elmt_s58;
    input Real elmt_s57;
    input Real elmt_Km10;
    input Real elmt_s3;
    input Real elmt_k6;
    input Real elmt_k7;
    input Real elmt_k4;
    input Real elmt_k5;
    input Real elmt_k2;
    input Real elmt_k3;
    input Real elmt_V10r;
    input Real elmt_s62;
    input Real elmt_s61;
    input Real elmt_Km10r;
    input Real elmt_s60;
    input Real elmt_k2r;

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
    Real elmt_reactant1 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa45</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant0 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa49</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product2 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa43</celldesigner:alias>
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
    Real elmt_reactant4 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa49</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant3 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa46</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product5 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa48</celldesigner:alias>
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
    Real elmt_product14 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa57</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant12 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa43</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant13 "";
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
<celldesigner:editPoints>0.27511615900874853,-0.24873515745996322 0.7248838409912186,0.2487351574599952</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa53\" editPoints=\"0.033478914030261764,-0.0016696254934468469 0.03595985603484192,0.04807760489529023\" modifiers=\"s3\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
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
    Real elmt_product16 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa60</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant15 "";
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
    Real elmt_reactant17 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa60</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product19 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa56</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product18 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa48</celldesigner:alias>
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
<celldesigner:editPoints>0.42505225440382177,-0.21543744401289544 0.629441624364927,0.1878172588835305</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa53\" editPoints=\"-0.0011986944586070969,-0.021296291675674595 0.5050642675940198,-0.04979207941432817 0.5094211304049715,0.027612984525608453\" modifiers=\"s3\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
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
    Real elmt_reactant20 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa59</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product21 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa61</celldesigner:alias>
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
<celldesigner:modification aliases=\"csa3\" editPoints=\"0.2043599911589784,0.3852154952360499 0.9847326914228478,-0.028778645962526134\" modifiers=\"s27\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
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
    Real elmt_product23 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa59</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant22 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa57</celldesigner:alias>
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
    Real elmt_reactant50 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa60</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product52 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa140</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product51 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa138</celldesigner:alias>
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
<celldesigner:modification aliases=\"csa3\" editPoints=\"0.07969945861237249,0.29521671977767894 1.011767161363087,0.04358703106881323\" modifiers=\"s27\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
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
    Real elmt_product25 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa61</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant24 "";
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
    Real elmt_reactant53 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa61</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product55 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa140</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product54 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa138</celldesigner:alias>
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
    Real elmt_product58 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa141</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product57 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa138</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant56 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa57</celldesigner:alias>
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
    Real elmt_product61 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa141</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product60 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa138</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant59 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa59</celldesigner:alias>
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
    Real elmt_product40 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa45</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant38 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa43</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product39 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa137</celldesigner:alias>
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
    Real elmt_reactant41 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa48</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product43 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa46</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product42 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa137</celldesigner:alias>
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
    Real elmt_product45 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa138</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product46 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa139</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant44 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa77</celldesigner:alias>
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
    Real elmt_reactant47 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa76</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product49 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa138</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product48 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa139</celldesigner:alias>
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
    Real elmt_reactant36 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa49</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product37 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa136</celldesigner:alias>
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
<celldesigner:editPoints>0.31731374606505813,0.25267576075550857 0.7053515215110222,-0.23462749213011258</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa53\" editPoints=\"0.10070703764728473,0.3009404097418511\" modifiers=\"s3\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
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
    Real elmt_product7 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa46</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant6 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa50</celldesigner:alias>
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
<celldesigner:editPoints>0.32499999999999396,0.2249999999999966 0.648999999999992,-0.24300000000000516</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa53\" editPoints=\"0.5141287842118762,0.499800337591617\" modifiers=\"s3\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
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
    Real elmt_product9 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa45</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant8 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa46</celldesigner:alias>
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
<celldesigner:modification aliases=\"sa43,sa76\" editPoints=\"951.0,587.4351382360627\" modificationType=\"CATALYSIS\" modifiers=\"s45,s65\" targetLineIndex=\"-1,3\" type=\"BOOLEAN_LOGIC_GATE_AND\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
</celldesigner:modification>
<celldesigner:modification aliases=\"sa48\" editPoints=\"0.23246732641423318,0.28539588148476 0.8336163913780723,-0.204266110767999\" modifiers=\"s50\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
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
<celldesigner:modification aliases=\"sa60\" editPoints=\"0.0314211105911002,-0.17445292889579767\" modifiers=\"s61\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
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
<celldesigner:modification aliases=\"sa61\" editPoints=\"0.6880390016005247,-0.16598160045628774 0.7430345618589411,0.06198999560400953\" modifiers=\"s62\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
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
<celldesigner:modification aliases=\"sa57\" editPoints=\"0.06834266243603881,0.10744608765052154 0.7803001283825228,-0.34540491723910505\" modifiers=\"s58\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
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
<celldesigner:modification aliases=\"sa59\" editPoints=\"0.3770680148828639,-0.19174574873270522 0.5825282331874281,0.2122917705632208\" modifiers=\"s60\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
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
<celldesigner:modification aliases=\"sa43\" editPoints=\"0.004135501478698789,0.0485905796860413 0.9954711322264258,-0.05321248500886577\" modifiers=\"s45\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
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
<celldesigner:modification aliases=\"sa76\" editPoints=\"-0.021484016776920578,-0.05513198757020987 0.7458970384229006,-0.3541675963120281 0.8992147945127504,0.039274314984490744\" modifiers=\"s65\" targetLineIndex=\"-1,0\" type=\"CATALYSIS\">
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
    parameter Real elmt_re69_elmt_kp(unit "s-1.0") = 5.0 "";
    parameter Real elmt_re69_elmt_kCaM(unit "s-1.0") = 17.0 "";
    parameter Real elmt_re69_elmt_kpCaM(unit "s-1.0") = 17.0 "";
    Real elmt_product27 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa75</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant26 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa74</celldesigner:alias>
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
    Real elmt_reactant28 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa76</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product29 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa77</celldesigner:alias>
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
    Real elmt_reactant30 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa77</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product32 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa56</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product31 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa49</celldesigner:alias>
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
<celldesigner:editPoints>-0.0508239906879841,0.046241499724313684 0.4020706977883964,0.5440176438154758</celldesigner:editPoints>
<celldesigner:line color=\"ff000000\" width=\"1.0\"/>
<celldesigner:listOfModification>
<celldesigner:modification aliases=\"sa53\" editPoints=\"0.0618496904205863,0.2408823493231993\" modifiers=\"s3\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
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
    Real elmt_product11 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa48</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant10 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa43</celldesigner:alias>
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
    Real elmt_product34 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa76</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_product35 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa46</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));
    Real elmt_reactant33 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa61</celldesigner:alias>
</celldesigner:extension>
                                    </annotation>"));


    initial equation
        elmt_reactant41 = 1.0;
        elmt_product34 = 1.0;
        elmt_product32 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_product27 = 1.0;
        elmt_product25 = 1.0;
        elmt_product29 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product40 = 1.0;
        elmt_reactant53 = 1.0;
        elmt_product45 = 1.0;
        elmt_product43 = 1.0;
        elmt_product42 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product37 = 1.0;
        elmt_product35 = 1.0;
        elmt_product39 = 1.0;
        elmt_product52 = 1.0;
        elmt_product51 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product55 = 1.0;
        elmt_product11 = 1.0;
        elmt_product54 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_product49 = 1.0;
        elmt_product48 = 1.0;
        elmt_product46 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product61 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product60 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_product16 = 1.0;
        elmt_product14 = 1.0;
        elmt_product58 = 1.0;
        elmt_product57 = 1.0;
        elmt_product19 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_re37 = (elmt_k4 * elmt_s47 * elmt_s51);
        elmt_re38 = ((elmt_k3 * elmt_s51 * elmt_s48) - (elmt_k3r * elmt_s50));
        elmt_re51 = (elmt_k6 * elmt_s45 * elmt_s57);
        elmt_re52 = ((elmt_k5 * elmt_s58) - (elmt_k2 * elmt_s3 * elmt_s61));
        elmt_re53 = (elmt_k7 * elmt_s61);
        elmt_re54 = ((elmt_k5 * elmt_s60) - (elmt_k2 * elmt_s3 * elmt_s62));
        elmt_re55 = (((elmt_k10 * elmt_s58 * elmt_s27) / (elmt_s58 + elmt_Km10)) - ((elmt_V10r * elmt_s60) / (elmt_s60 + elmt_Km10r)));
        elmt_re136 = (elmt_kD * elmt_s61);
        elmt_re56 = (((elmt_k10 * elmt_s61 * elmt_s27) / (elmt_s61 + elmt_Km10)) - ((elmt_V10r * elmt_s62) / (elmt_s62 + elmt_Km10r)));
        elmt_re137 = (elmt_kD * elmt_s62);
        elmt_re138 = (elmt_kD * elmt_s58);
        elmt_re139 = (elmt_kD * elmt_s60);
        elmt_re132 = (elmt_kD * elmt_s45);
        elmt_re133 = (elmt_kD * elmt_s50);
        elmt_re134 = (elmt_kD * elmt_s66);
        elmt_re135 = (elmt_kD * elmt_s65);
        elmt_re131 = (elmt_kD * elmt_s51);
        elmt_re41 = ((elmt_k1 * elmt_s3 * elmt_s52) - (elmt_k1r * elmt_s48));
        elmt_re42 = ((elmt_k2 * elmt_s3 * elmt_s48) - (elmt_k2r * elmt_s47));
        elmt_re69 = ((elmt_re69_elmt_kCaM * (elmt_s45 + elmt_s58)) + (elmt_re69_elmt_kp * (elmt_s62 + elmt_s65)) + (elmt_re69_elmt_kpCaM * elmt_s60));
        elmt_re70 = ((elmt_V10r * elmt_s65) / (elmt_s65 + elmt_Km10r));
        elmt_re71 = (elmt_k7 * elmt_s66);
        elmt_re50 = ((elmt_k5 * elmt_s45) - (elmt_k2 * elmt_s3 * elmt_s50));
        elmt_re72 = ((elmt_k3r * elmt_s62) - (elmt_k3 * elmt_s65 * elmt_s48));
        der(elmt_reactant41) = 0;
        der(elmt_product34) = 0;
        der(elmt_product32) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_product27) = 0;
        der(elmt_product25) = 0;
        der(elmt_product29) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product40) = 0;
        der(elmt_reactant53) = 0;
        der(elmt_product45) = 0;
        der(elmt_product43) = 0;
        der(elmt_product42) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product37) = 0;
        der(elmt_product35) = 0;
        der(elmt_product39) = 0;
        der(elmt_product52) = 0;
        der(elmt_product51) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product55) = 0;
        der(elmt_product11) = 0;
        der(elmt_product54) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_product49) = 0;
        der(elmt_product48) = 0;
        der(elmt_product46) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product61) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product60) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_product16) = 0;
        der(elmt_product14) = 0;
        der(elmt_product58) = 0;
        der(elmt_product57) = 0;
        der(elmt_product19) = 0;
        der(elmt_product18) = 0;

end Reactions;
