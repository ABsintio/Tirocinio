within BIOMD541;
class Reactions

    input Real elmt_k_akg;
    input Real elmt_s27;
    input Real elmt_K_PFKL_akg;
    input Real elmt_s26;
    input Real elmt_s25;
    input Real elmt_s24;
    input Real elmt_s23;
    input Real elmt_s22;
    input Real elmt_k_f26bp;
    input Real elmt_s29;
    input Real elmt_s28;
    input Real elmt_K_PFKL_PHOS_S775;
    input Real elmt_K_FBPase_f16bp;
    input Real elmt_Vf_FBPase;
    input Real elmt_K_PFKL_icit;
    input Real elmt_s30;
    input Real elmt_K_PFKL_f26bp;
    input Real elmt_Vf_PFKL;
    input Real elmt_k_ALDO;
    input Real elmt_s8;
    input Real elmt_s9;
    input Real elmt_s6;
    input Real elmt_s13;
    input Real elmt_k_f6p;
    input Real elmt_s7;
    input Real elmt_K_PFKL_pep;
    input Real elmt_K_FBPase_cit;
    input Real elmt_s35;
    input Real elmt_s4;
    input Real elmt_s34;
    input Real elmt_s5;
    input Real elmt_s33;
    input Real elmt_s10;
    input Real elmt_K_PFKL_f6p;
    input Real elmt_s32;
    input Real elmt_s31;
    input Real elmt_k_mal;
    input Real elmt_K_PFKL_mal;
    input Real elmt_k_pep;
    input Real elmt_insulin;
    input Real elmt_K_PFKL_cit;
    input Real elmt_k_cit;
    input Real elmt_K_FBPase_f26bp;
    input Real elmt_s1;
    input Real elmt_k_icit;

    Real elmt_re37(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s9\" alias=\"sa46\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s18\" alias=\"sa55\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant14 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa46</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_product15 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa55</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re59(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s13\" alias=\"sa50\">
<celldesigner:linkAnchor position=\"WSW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s1\" alias=\"sa38\">
<celldesigner:linkAnchor position=\"ESE\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re59_elmt_k1(unit "") = 0.0166525139097609 "";
    Real elmt_reactant58 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa50</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_product59 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa38</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re38(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s10\" alias=\"sa47\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s19\" alias=\"sa57\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant16 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa47</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_product17 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa57</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re39(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s3\" alias=\"sa40\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s21\" alias=\"sa56\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant18 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa40</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_product19 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa56</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re51(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s25\" alias=\"sa60\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s38\" alias=\"sa73\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re51_elmt_k1(unit "") = 0.00792717614041237 "";
    Real elmt_reactant42 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa60</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_product43 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa73</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re30(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s22\" alias=\"sa74\">
<celldesigner:linkAnchor position=\"NE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s4\" alias=\"sa41\">
<celldesigner:linkAnchor position=\"NW\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
<celldesigner:listOfModification>
<celldesigner:modification type=\"CATALYSIS\" modifiers=\"s1\" aliases=\"sa38\" targetLineIndex=\"-1,2\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s1\" alias=\"sa38\">
<celldesigner:linkAnchor position=\"SSE\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
<celldesigner:modification type=\"INHIBITION\" modifiers=\"s5\" aliases=\"sa42\" targetLineIndex=\"-1,2\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s5\" alias=\"sa42\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
<celldesigner:modification type=\"INHIBITION\" modifiers=\"s6\" aliases=\"sa43\" targetLineIndex=\"-1,2\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s6\" alias=\"sa43\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
<celldesigner:modification type=\"INHIBITION\" modifiers=\"s7\" aliases=\"sa44\" targetLineIndex=\"-1,5\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s7\" alias=\"sa44\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
<celldesigner:modification type=\"INHIBITION\" modifiers=\"s8\" aliases=\"sa45\" targetLineIndex=\"-1,2\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s8\" alias=\"sa45\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
<celldesigner:modification type=\"PHYSICAL_STIMULATION\" modifiers=\"s9\" aliases=\"sa46\" targetLineIndex=\"-1,2\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s9\" alias=\"sa46\">
<celldesigner:linkAnchor position=\"SW\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
<celldesigner:modification type=\"INHIBITION\" modifiers=\"s10\" aliases=\"sa47\" targetLineIndex=\"-1,7\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s10\" alias=\"sa47\">
<celldesigner:linkAnchor position=\"NNE\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
<celldesigner:modification type=\"CATALYSIS\" modifiers=\"s13\" aliases=\"sa50\" targetLineIndex=\"-1,2\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s13\" alias=\"sa50\">
<celldesigner:linkAnchor position=\"SSW\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
</annotation>"));
    Real elmt_product1 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa41</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant0 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa74</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re52(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s30\" alias=\"sa65\">
<celldesigner:linkAnchor position=\"ENE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s31\" alias=\"sa66\">
<celldesigner:linkAnchor position=\"WNW\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
<celldesigner:listOfModification>
<celldesigner:modification type=\"CATALYSIS\" modifiers=\"s29\" aliases=\"sa64\" targetLineIndex=\"-1,2\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s29\" alias=\"sa64\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re52_elmt_k1(unit "") = 0.419682384304397 "";
    Real elmt_product45 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa66</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant44 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa65</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re31(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s4\" alias=\"sa41\">
<celldesigner:linkAnchor position=\"SW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s22\" alias=\"sa74\">
<celldesigner:linkAnchor position=\"SE\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
<celldesigner:listOfModification>
<celldesigner:modification type=\"CATALYSIS\" modifiers=\"s2\" aliases=\"sa39\" targetLineIndex=\"-1,2\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s2\" alias=\"sa39\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
<celldesigner:modification type=\"INHIBITION\" modifiers=\"s9\" aliases=\"sa46\" targetLineIndex=\"-1,3\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s9\" alias=\"sa46\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
<celldesigner:modification type=\"PHYSICAL_STIMULATION\" modifiers=\"s10\" aliases=\"sa47\" targetLineIndex=\"-1,4\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s10\" alias=\"sa47\">
<celldesigner:linkAnchor position=\"NNW\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant2 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa41</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_product3 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa74</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re53(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s31\" alias=\"sa66\">
<celldesigner:linkAnchor position=\"WSW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s30\" alias=\"sa65\">
<celldesigner:linkAnchor position=\"ESE\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re53_elmt_k1(unit "") = 0.124330492920416 "";
    Real elmt_product47 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa65</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant46 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa66</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re32(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s4\" alias=\"sa41\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s11\" alias=\"sa48\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
<celldesigner:listOfModification>
<celldesigner:modification type=\"CATALYSIS\" modifiers=\"s12\" aliases=\"sa49\" targetLineIndex=\"-1,2\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s12\" alias=\"sa49\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant4 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa41</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_product5 "";
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
<celldesigner:baseReactant species=\"s32\" alias=\"sa67\">
<celldesigner:linkAnchor position=\"ENE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s33\" alias=\"sa68\">
<celldesigner:linkAnchor position=\"WNW\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
<celldesigner:listOfModification>
<celldesigner:modification type=\"CATALYSIS\" modifiers=\"s31\" aliases=\"sa66\" targetLineIndex=\"-1,2\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s31\" alias=\"sa66\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re54_elmt_k1(unit "") = 0.00752464611370891 "";
    Real elmt_product49 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa68</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant48 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa67</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re33(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s8\" alias=\"sa45\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s14\" alias=\"sa51\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    Real elmt_product7 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa51</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant6 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa45</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re55(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s33\" alias=\"sa68\">
<celldesigner:linkAnchor position=\"WSW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s32\" alias=\"sa67\">
<celldesigner:linkAnchor position=\"ESE\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
<celldesigner:listOfModification>
<celldesigner:modification type=\"CATALYSIS\" modifiers=\"s35\" aliases=\"sa70\" targetLineIndex=\"-1,2\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s35\" alias=\"sa70\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re55_elmt_k1(unit "") = 1.95497593092361 "";
    Real elmt_reactant50 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa68</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_product51 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa67</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re34(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s7\" alias=\"sa44\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s15\" alias=\"sa52\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    Real elmt_product9 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa52</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant8 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa44</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re56(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s34\" alias=\"sa69\">
<celldesigner:linkAnchor position=\"ENE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s35\" alias=\"sa70\">
<celldesigner:linkAnchor position=\"WNW\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
<celldesigner:listOfModification>
<celldesigner:modification type=\"CATALYSIS\" modifiers=\"s31\" aliases=\"sa66\" targetLineIndex=\"-1,4\" editPoints=\"0.550322778265806,0.7508270693246644 0.840872817055546,0.6650825591604121\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
<celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
<celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s31\" alias=\"sa66\">
<celldesigner:linkAnchor position=\"SW\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re56_elmt_k1(unit "") = 0.00105342379833469 "";
    Real elmt_reactant52 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa69</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_product53 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa70</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re35(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s5\" alias=\"sa42\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s16\" alias=\"sa53\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    Real elmt_product11 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa53</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant10 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa42</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re57(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s35\" alias=\"sa70\">
<celldesigner:linkAnchor position=\"WSW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s34\" alias=\"sa69\">
<celldesigner:linkAnchor position=\"ESE\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re57_elmt_k1(unit "") = 0.00145811601430322 "";
    Real elmt_product55 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa69</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant54 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa70</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re36(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s6\" alias=\"sa43\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s17\" alias=\"sa54\">
<celldesigner:linkAnchor position=\"ESE\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    Real elmt_product13 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa54</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant12 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa43</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re58(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s1\" alias=\"sa38\">
<celldesigner:linkAnchor position=\"ENE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s13\" alias=\"sa50\">
<celldesigner:linkAnchor position=\"WNW\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
<celldesigner:listOfModification>
<celldesigner:modification type=\"CATALYSIS\" modifiers=\"s33\" aliases=\"sa68\" targetLineIndex=\"-1,2\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s33\" alias=\"sa68\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re58_elmt_k1(unit "") = 26.8316707654711 "";
    Real elmt_product57 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa50</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant56 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa38</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re48(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s28\" alias=\"sa63\">
<celldesigner:linkAnchor position=\"ENE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s29\" alias=\"sa64\">
<celldesigner:linkAnchor position=\"WNW\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
<celldesigner:listOfModification>
<celldesigner:modification type=\"CATALYSIS\" modifiers=\"s25\" aliases=\"sa60\" targetLineIndex=\"-1,2\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s25\" alias=\"sa60\">
<celldesigner:linkAnchor position=\"S\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re48_elmt_k1(unit "") = 0.00919578911309774 "";
    Real elmt_reactant36 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa63</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_product37 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa64</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re49(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s29\" alias=\"sa64\">
<celldesigner:linkAnchor position=\"WSW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s28\" alias=\"sa63\">
<celldesigner:linkAnchor position=\"ESE\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re49_elmt_k1(unit "") = 7.70618517548016 "";
    Real elmt_reactant38 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa64</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_product39 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa63</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re40(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s24\" alias=\"sa59\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s23\" alias=\"sa58\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re40_elmt_k1(unit "") = 0.0477985900779305 "";
    Real elmt_reactant20 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa59</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_product21 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa58</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re41(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s23\" alias=\"sa58\">
<celldesigner:linkAnchor position=\"SSE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s25\" alias=\"sa60\">
<celldesigner:linkAnchor position=\"NW\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re41_elmt_k1(unit "") = 7.78160761103111 "";
    parameter Real elmt_re41_elmt_k2(unit "") = 1.61147523779118 "";
    Real elmt_product23 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa60</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant22 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa58</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re42(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s23\" alias=\"sa58\">
<celldesigner:linkAnchor position=\"NNE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s26\" alias=\"sa61\">
<celldesigner:linkAnchor position=\"SW\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
<celldesigner:listOfModification>
<celldesigner:modification type=\"CATALYSIS\" modifiers=\"s31\" aliases=\"sa66\" targetLineIndex=\"-1,2\" editPoints=\"0.013588078835078399,0.2520212651301243 0.565662027442313,0.787201318551576 1.1693639213262115,0.1605298650203894\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
<celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
<celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
<celldesigner:lineDirection index=\"3\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s31\" alias=\"sa66\">
<celldesigner:linkAnchor position=\"NE\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re42_elmt_k1(unit "") = 9.93311225447353 "";
    Real elmt_product25 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa61</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant24 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa58</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re43(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s26\" alias=\"sa61\">
<celldesigner:linkAnchor position=\"SE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s27\" alias=\"sa62\">
<celldesigner:linkAnchor position=\"NNW\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re43_elmt_k1(unit "") = 0.363030286526969 "";
    parameter Real elmt_re43_elmt_k2(unit "") = 0.408127912886804 "";
    Real elmt_product27 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa62</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant26 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa61</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re44(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s25\" alias=\"sa60\">
<celldesigner:linkAnchor position=\"NE\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s27\" alias=\"sa62\">
<celldesigner:linkAnchor position=\"SSW\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
<celldesigner:listOfModification>
<celldesigner:modification type=\"CATALYSIS\" modifiers=\"s31\" aliases=\"sa66\" targetLineIndex=\"-1,3\" editPoints=\"0.7896442128400354,0.4089954409522414\">
<celldesigner:connectScheme connectPolicy=\"direct\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
<celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:linkTarget species=\"s31\" alias=\"sa66\">
<celldesigner:linkAnchor position=\"N\"/>
</celldesigner:linkTarget>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:modification>
</celldesigner:listOfModification>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re44_elmt_k1(unit "") = 3.88248960751442E-5 "";
    Real elmt_reactant28 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa60</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_product29 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa62</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re45(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s27\" alias=\"sa62\">
<celldesigner:linkAnchor position=\"SW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s25\" alias=\"sa60\">
<celldesigner:linkAnchor position=\"NNE\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re45_elmt_k1(unit "") = 0.28442597446931 "";
    Real elmt_reactant30 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa62</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_product31 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa60</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re46(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s26\" alias=\"sa61\">
<celldesigner:linkAnchor position=\"SSW\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s23\" alias=\"sa58\">
<celldesigner:linkAnchor position=\"NE\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re46_elmt_k1(unit "") = 1.00000000282413E-5 "";
    Real elmt_product33 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa58</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant32 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa61</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re47(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s27\" alias=\"sa62\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s36\" alias=\"sa71\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re47_elmt_k1(unit "") = 0.0948960328385619 "";
    Real elmt_product35 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa71</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant34 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa62</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_re50(unit = "") "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
<celldesigner:baseReactants>
<celldesigner:baseReactant species=\"s26\" alias=\"sa61\">
<celldesigner:linkAnchor position=\"E\"/>
</celldesigner:baseReactant>
</celldesigner:baseReactants>
<celldesigner:baseProducts>
<celldesigner:baseProduct species=\"s37\" alias=\"sa72\">
<celldesigner:linkAnchor position=\"W\"/>
</celldesigner:baseProduct>
</celldesigner:baseProducts>
<celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
<celldesigner:listOfLineDirection>
<celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
</celldesigner:listOfLineDirection>
</celldesigner:connectScheme>
<celldesigner:line width=\"1.0\" color=\"ff000000\"/>
</celldesigner:extension>
</annotation>"));
    parameter Real elmt_re50_elmt_k1(unit "") = 1.00277786609339E-5 "";
    Real elmt_product41 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa72</celldesigner:alias>
</celldesigner:extension>
</annotation>"));
    Real elmt_reactant40 "";
 annotation(Documentation(info="<annotation>
<celldesigner:extension>
<celldesigner:alias>sa61</celldesigner:alias>
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
        elmt_product25 = 1.0;
        elmt_product29 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_product45 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_product37 = 1.0;
        elmt_product35 = 1.0;
        elmt_product39 = 1.0;
        elmt_product51 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product11 = 1.0;
        elmt_product55 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product49 = 1.0;
        elmt_product47 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product21 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_product15 = 1.0;
        elmt_product59 = 1.0;
        elmt_product13 = 1.0;
        elmt_product57 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_re37 = (- elmt_k_f26bp);
        elmt_re59 = (elmt_re59_elmt_k1 * elmt_s13);
        elmt_re38 = (- elmt_k_cit);
        elmt_re39 = (- elmt_k_f6p);
        elmt_re51 = (elmt_re51_elmt_k1 * elmt_s25);
        elmt_re30 = ((elmt_s9 / (elmt_K_PFKL_f26bp + elmt_s9)) * (elmt_K_PFKL_akg / (elmt_K_PFKL_akg + elmt_s7)) * (elmt_K_PFKL_pep / (elmt_K_PFKL_pep + elmt_s5)) * (elmt_K_PFKL_cit / (elmt_K_PFKL_cit + elmt_s10)) * (elmt_K_PFKL_icit / (elmt_K_PFKL_icit + elmt_s6)) * (elmt_K_PFKL_mal / (elmt_K_PFKL_mal + elmt_s8)) * (elmt_s13 / (elmt_K_PFKL_PHOS_S775 + elmt_s13)) * ((elmt_Vf_PFKL * elmt_s22) / (elmt_K_PFKL_f6p + elmt_s22)));
        elmt_re52 = (elmt_re52_elmt_k1 * (elmt_s30 - elmt_s31) * elmt_s29);
        elmt_re31 = ((elmt_K_FBPase_f26bp / (elmt_K_FBPase_f26bp + elmt_s9)) * (elmt_s10 / (elmt_K_FBPase_cit + elmt_s10)) * ((elmt_Vf_FBPase * elmt_s4) / (elmt_K_FBPase_f16bp + elmt_s4)));
        elmt_re53 = (elmt_re53_elmt_k1 * elmt_s31);
        elmt_re32 = (elmt_k_ALDO * elmt_s4);
        elmt_re54 = (elmt_re54_elmt_k1 * (elmt_s32 - elmt_s33) * elmt_s31);
        elmt_re33 = (- elmt_k_mal);
        elmt_re55 = (elmt_re55_elmt_k1 * elmt_s33 * elmt_s35);
        elmt_re34 = (- elmt_k_akg);
        elmt_re56 = (elmt_re56_elmt_k1 * (elmt_s34 - elmt_s35) * elmt_s31);
        elmt_re35 = (- elmt_k_pep);
        elmt_re57 = (elmt_re57_elmt_k1 * elmt_s35);
        elmt_re36 = (- elmt_k_icit);
        elmt_re58 = (elmt_re58_elmt_k1 * (elmt_s1 - elmt_s13) * elmt_s33);
        elmt_re48 = (elmt_re48_elmt_k1 * (elmt_s28 - elmt_s29) * elmt_s25);
        elmt_re49 = (elmt_re49_elmt_k1 * elmt_s29);
        elmt_re40 = (elmt_re40_elmt_k1 * (elmt_s24 - elmt_s23));
        elmt_re41 = ((elmt_re41_elmt_k1 * elmt_insulin * elmt_s23) - (elmt_re41_elmt_k2 * elmt_s25));
        elmt_re42 = (elmt_re42_elmt_k1 * elmt_s23 * elmt_s31);
        elmt_re43 = ((elmt_re43_elmt_k1 * elmt_insulin * elmt_s26) - (elmt_re43_elmt_k2 * elmt_s27));
        elmt_re44 = (elmt_re44_elmt_k1 * elmt_s25 * elmt_s31);
        elmt_re45 = (elmt_re45_elmt_k1 * elmt_s27);
        elmt_re46 = (elmt_re46_elmt_k1 * elmt_s26);
        elmt_re47 = (elmt_re47_elmt_k1 * elmt_s27);
        elmt_re50 = (elmt_re50_elmt_k1 * elmt_s26);
        der(elmt_reactant40) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product33) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_product27) = 0;
        der(elmt_product25) = 0;
        der(elmt_product29) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_product45) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_product37) = 0;
        der(elmt_product35) = 0;
        der(elmt_product39) = 0;
        der(elmt_product51) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product11) = 0;
        der(elmt_product55) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product49) = 0;
        der(elmt_product47) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product21) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_product15) = 0;
        der(elmt_product59) = 0;
        der(elmt_product13) = 0;
        der(elmt_product57) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
