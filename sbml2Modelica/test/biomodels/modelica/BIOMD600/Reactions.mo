within BIOMD600;
class Reactions

    input Real elmt_n;
    input Real elmt_I_Smad_mRNA1;
    input Real elmt_I_Smad_mRNA2;
    input Real elmt_h;
    input Real elmt_CoSmad_N;
    input Real elmt_c;
    input Real elmt_I_Smad_TGFb_TGFbR_P;
    input Real elmt_CoSmad;
    input Real elmt_k16;
    input Real elmt_k15;
    input Real elmt_k14;
    input Real elmt_TGFbR;
    input Real elmt_k13;
    input Real elmt_Smad_N;
    input Real elmt_k12;
    input Real elmt_k11;
    input Real elmt_k10;
    input Real elmt_Smad_P;
    input Real elmt_I_Smad;
    input Real elmt_k1;
    input Real elmt_Smad_P_N;
    input Real elmt_k19;
    input Real elmt_k18;
    input Real elmt_Smad_P_CoSmad;
    input Real elmt_k17;
    input Real elmt_k8;
    input Real elmt_Smad_P_Smad_P;
    input Real elmt_k9;
    input Real elmt_k6;
    input Real elmt_k7;
    input Real elmt_TGFb_TGFbR;
    input Real elmt_k4;
    input Real elmt_k5;
    input Real elmt_k2;
    input Real elmt_Smad_P_CoSmad_N;
    input Real elmt_k3;
    input Real elmt_Smad;
    input Real elmt_TGFb_TGFbR_P;
    input Real elmt_TGFb;
    input Real elmt_Smad_P_Smad_P_N;

    Real elmt_r7(unit = "") "r7";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r7</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa4\" species=\"Smad\">
            <celldesigner:linkAnchor position=\"E\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa5\" species=\"Smad_P\">
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
          <celldesigner:modification aliases=\"sa2\" modifiers=\"TGFb_TGFbR_P\" targetLineIndex=\"-1,2\" type=\"CATALYSIS\">
            <celldesigner:connectScheme connectPolicy=\"direct\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:linkTarget alias=\"sa2\" species=\"TGFb_TGFbR_P\">
              <celldesigner:linkAnchor position=\"S\"/>
            </celldesigner:linkTarget>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:modification>
        </celldesigner:listOfModification>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI48\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T14:24:01Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR000333\"/>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR016319\"/>
            <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/go/GO:0060389\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_r28(unit = "") "r28";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r28</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa19\" species=\"s3\">
            <celldesigner:linkAnchor position=\"W\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa16\" species=\"I_Smad\">
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
          <celldesigner:modification aliases=\"sa15\" modifiers=\"I_Smad_mRNA2\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
            <celldesigner:connectScheme connectPolicy=\"direct\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:linkTarget alias=\"sa15\" species=\"I_Smad_mRNA2\">
              <celldesigner:linkAnchor position=\"N\"/>
            </celldesigner:linkTarget>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:modification>
        </celldesigner:listOfModification>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI69\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T15:49:37Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product59 "";
    Real elmt_r8(unit = "") "r8";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r8</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa4\" species=\"Smad\">
            <celldesigner:linkAnchor position=\"S\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa9\" species=\"Smad_N\">
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
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI49\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T14:25:30Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/go/GO:0007184\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant17 "";
    Real elmt_product18 "";
    Real elmt_r27(unit = "") "r27";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r27</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa15\" species=\"I_Smad_mRNA2\">
            <celldesigner:linkAnchor position=\"W\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa18\" species=\"s2\">
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
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI68\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T15:48:21Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:encodes rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0006401\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant58 "";
    Real elmt_r5(unit = "") "r5";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r5</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa2\" species=\"TGFb_TGFbR_P\">
            <celldesigner:linkAnchor position=\"WNW\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa3\" species=\"I_Smad_TGFb_TGFbR_P\">
            <celldesigner:linkAnchor position=\"ENE\"/>
          </celldesigner:baseProduct>
        </celldesigner:baseProducts>
        <celldesigner:listOfReactantLinks>
          <celldesigner:reactantLink alias=\"sa16\" reactant=\"I_Smad\" targetLineIndex=\"-1,0\">
            <celldesigner:linkAnchor position=\"N\"/>
            <celldesigner:connectScheme connectPolicy=\"direct\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" type=\"Straight\" width=\"1.0\"/>
          </celldesigner:reactantLink>
        </celldesigner:listOfReactantLinks>
        <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
          <celldesigner:listOfLineDirection>
            <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
          </celldesigner:listOfLineDirection>
        </celldesigner:connectScheme>
        <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI46\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T14:23:22Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR000333\"/>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR016319\"/>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/go/GO:0016311\"/>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/go/GO:0030617\"/>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/go/GO:0070411\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product11 "";
    Real elmt_reactant9 "";
    Real elmt_reactant10 "";
    Real elmt_r26(unit = "") "r26";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r26</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa14\" species=\"I_Smad_mRNA1\">
            <celldesigner:linkAnchor position=\"N\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa15\" species=\"I_Smad_mRNA2\">
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
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI67\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T15:48:04Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:encodes rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0051168\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product57 "";
    Real elmt_reactant56 "";
    Real elmt_r6(unit = "") "r6";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r6</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa3\" species=\"I_Smad_TGFb_TGFbR_P\">
            <celldesigner:linkAnchor position=\"S\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa1\" species=\"TGFb_TGFbR\">
            <celldesigner:linkAnchor position=\"S\"/>
          </celldesigner:baseProduct>
        </celldesigner:baseProducts>
        <celldesigner:listOfProductLinks>
          <celldesigner:productLink alias=\"sa16\" product=\"I_Smad\" targetLineIndex=\"-1,1\">
            <celldesigner:linkAnchor position=\"NNE\"/>
            <celldesigner:connectScheme connectPolicy=\"direct\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" type=\"Straight\" width=\"1.0\"/>
          </celldesigner:productLink>
        </celldesigner:listOfProductLinks>
        <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
          <celldesigner:listOfLineDirection>
            <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
            <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
            <celldesigner:lineDirection index=\"2\" value=\"unknown\"/>
          </celldesigner:listOfLineDirection>
        </celldesigner:connectScheme>
        <celldesigner:editPoints>1.795935659479886E-4,0.0818716412549444 1.0003934235041092,0.07978107149501928</celldesigner:editPoints>
        <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI47\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T14:23:42Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR000333\"/>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR016319\"/>
            <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/go/GO:0043241\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product14 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_r25(unit = "") "r25";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r25</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa17\" species=\"s1\">
            <celldesigner:linkAnchor position=\"N\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa14\" species=\"I_Smad_mRNA1\">
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
          <celldesigner:modification aliases=\"sa12\" editPoints=\"0.028463212746678623,-0.16580417839101202\" modifiers=\"Smad_P_CoSmad_N\" targetLineIndex=\"-1,3\" type=\"CATALYSIS\">
            <celldesigner:connectScheme connectPolicy=\"direct\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
                <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:linkTarget alias=\"sa12\" species=\"Smad_P_CoSmad_N\">
              <celldesigner:linkAnchor position=\"SSE\"/>
            </celldesigner:linkTarget>
            <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
          </celldesigner:modification>
        </celldesigner:listOfModification>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI66\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T14:19:52Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:encodes rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product55 "";
    Real elmt_r3(unit = "") "r3";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r3</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa1\" species=\"TGFb_TGFbR\">
            <celldesigner:linkAnchor position=\"WNW\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa2\" species=\"TGFb_TGFbR_P\">
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
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI44\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T14:22:30Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR000333\"/>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR016319\"/>
            <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/go/GO:0004674\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_r24(unit = "") "r24";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r24</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa12\" species=\"Smad_P_CoSmad_N\">
            <celldesigner:linkAnchor position=\"SSW\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa11\" species=\"Smad_P_N\">
            <celldesigner:linkAnchor position=\"E\"/>
          </celldesigner:baseProduct>
        </celldesigner:baseProducts>
        <celldesigner:listOfProductLinks>
          <celldesigner:productLink alias=\"sa13\" product=\"CoSmad_N\" targetLineIndex=\"-1,1\">
            <celldesigner:linkAnchor position=\"WNW\"/>
            <celldesigner:connectScheme connectPolicy=\"direct\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" type=\"Straight\" width=\"1.0\"/>
          </celldesigner:productLink>
        </celldesigner:listOfProductLinks>
        <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
          <celldesigner:listOfLineDirection>
            <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
            <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
          </celldesigner:listOfLineDirection>
        </celldesigner:connectScheme>
        <celldesigner:editPoints>0.06925690596867362,-0.23403782810143703</celldesigner:editPoints>
        <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI65\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T14:19:51Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/uniprot.isoform/Q13485\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0010862\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0043241\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0070410\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant52 "";
    Real elmt_product54 "";
    Real elmt_product53 "";
    Real elmt_r4(unit = "") "r4";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r4</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa2\" species=\"TGFb_TGFbR_P\">
            <celldesigner:linkAnchor position=\"E\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa1\" species=\"TGFb_TGFbR\">
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
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI45\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T14:22:54Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR000333\"/>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR016319\"/>
            <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/go/GO:0016311\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product8 "";
    Real elmt_reactant7 "";
    Real elmt_r23(unit = "") "r23";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r23</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa11\" species=\"Smad_P_N\">
            <celldesigner:linkAnchor position=\"ESE\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa12\" species=\"Smad_P_CoSmad_N\">
            <celldesigner:linkAnchor position=\"S\"/>
          </celldesigner:baseProduct>
        </celldesigner:baseProducts>
        <celldesigner:listOfReactantLinks>
          <celldesigner:reactantLink alias=\"sa13\" reactant=\"CoSmad_N\" targetLineIndex=\"-1,0\">
            <celldesigner:linkAnchor position=\"W\"/>
            <celldesigner:connectScheme connectPolicy=\"direct\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" type=\"Straight\" width=\"1.0\"/>
          </celldesigner:reactantLink>
        </celldesigner:listOfReactantLinks>
        <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
          <celldesigner:listOfLineDirection>
            <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
            <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
          </celldesigner:listOfLineDirection>
        </celldesigner:connectScheme>
        <celldesigner:editPoints>0.9190684664964126,0.2577526450200649</celldesigner:editPoints>
        <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI64\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T14:19:46Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/uniprot.isoform/Q13485\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0010862\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0070410\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0070412\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant50 "";
    Real elmt_product51 "";
    Real elmt_reactant49 "";
    Real elmt_r1(unit = "") "r1";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r1</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa1\" species=\"TGFb_TGFbR\">
            <celldesigner:linkAnchor position=\"ENE\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa0\" species=\"TGFbR\">
            <celldesigner:linkAnchor position=\"WNW\"/>
          </celldesigner:baseProduct>
        </celldesigner:baseProducts>
        <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
          <celldesigner:listOfLineDirection>
            <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
          </celldesigner:listOfLineDirection>
        </celldesigner:connectScheme>
        <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI42\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T11:49:05Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR000333\"/>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR016319\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0043241\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_r22(unit = "") "r22";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r22</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa10\" species=\"Smad_P_Smad_P_N\">
            <celldesigner:linkAnchor position=\"SSE\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa11\" species=\"Smad_P_N\">
            <celldesigner:linkAnchor position=\"ENE\"/>
          </celldesigner:baseProduct>
        </celldesigner:baseProducts>
        <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
          <celldesigner:listOfLineDirection>
            <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
            <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
          </celldesigner:listOfLineDirection>
        </celldesigner:connectScheme>
        <celldesigner:editPoints>0.5161712047441155,-0.49275743901746427</celldesigner:editPoints>
        <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI63\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T14:19:45Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/go/GO:0010862\"/>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:isPartOf rdf:resource=\"http://identifiers.org/go/GO:0043241\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant47 "";
    Real elmt_product48 "";
    Real elmt_r2(unit = "") "r2";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r2</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa0\" species=\"TGFbR\">
            <celldesigner:linkAnchor position=\"W\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa1\" species=\"TGFb_TGFbR\">
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
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI43\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>The high-affinity binding of TGF-beta to the type II TGF-beta receptor.</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/PMID:12729750\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T14:20:59Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR000333\"/>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR016319\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0005160\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_r21(unit = "") "r21";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r21</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa11\" species=\"Smad_P_N\">
            <celldesigner:linkAnchor position=\"NE\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa10\" species=\"Smad_P_Smad_P_N\">
            <celldesigner:linkAnchor position=\"S\"/>
          </celldesigner:baseProduct>
        </celldesigner:baseProducts>
        <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
          <celldesigner:listOfLineDirection>
            <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
            <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
          </celldesigner:listOfLineDirection>
        </celldesigner:connectScheme>
        <celldesigner:editPoints>0.43590557203228064,0.4783149342737669</celldesigner:editPoints>
        <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI62\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>The formation of Smad transcriptional complexes is affected by mono-ubiquitinated Smad4.</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1016/j.bbrc.2008.08.143\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T14:19:44Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/go/GO:0007183\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product46 "";
    Real elmt_reactant45 "";
    Real elmt_r9(unit = "") "r9";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r9</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa9\" species=\"Smad_N\">
            <celldesigner:linkAnchor position=\"NNW\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa4\" species=\"Smad\">
            <celldesigner:linkAnchor position=\"SSW\"/>
          </celldesigner:baseProduct>
        </celldesigner:baseProducts>
        <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
          <celldesigner:listOfLineDirection>
            <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
          </celldesigner:listOfLineDirection>
        </celldesigner:connectScheme>
        <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI50\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T14:25:52Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/go/GO:0051168\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant19 "";
    Real elmt_product20 "";
    Real elmt_r29(unit = "") "r29";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r29</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa16\" species=\"I_Smad\">
            <celldesigner:linkAnchor position=\"W\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa20\" species=\"s4\">
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
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI70\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T15:52:19Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/go/GO:0030163\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant60 "";
    Real elmt_r17(unit = "") "r17";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r17</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa5\" species=\"Smad_P\">
            <celldesigner:linkAnchor position=\"SSW\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa11\" species=\"Smad_P_N\">
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
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI58\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Smad protein shuttling between the nucleus and the cytoplasm.</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/ 10.1038/cr.2008.325\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T11:46:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/go/GO:0007184\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_r16(unit = "") "r16";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r16</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa7\" species=\"Smad_P_Smad_P\">
            <celldesigner:linkAnchor position=\"S\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa10\" species=\"Smad_P_Smad_P_N\">
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
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI57\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>TGF-beta signaling mechanisms.</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/12809600\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Smad protein shuttling between the nucleus and the cytoplasm.</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1038/cr.2008.325\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T11:46:19Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/go/GO:0007184\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product36 "";
    Real elmt_reactant35 "";
    Real elmt_r15(unit = "") "r15";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r15</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa13\" species=\"CoSmad_N\">
            <celldesigner:linkAnchor position=\"NNE\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa6\" species=\"CoSmad\">
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
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI56\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T11:49:00Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0051168\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product34 "";
    Real elmt_reactant33 "";
    Real elmt_r14(unit = "") "r14";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r14</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa6\" species=\"CoSmad\">
            <celldesigner:linkAnchor position=\"S\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa13\" species=\"CoSmad_N\">
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
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI55\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T11:49:02Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0007184\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant31 "";
    Real elmt_product32 "";
    Real elmt_r13(unit = "") "r13";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r13</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa8\" species=\"Smad_P_CoSmad\">
            <celldesigner:linkAnchor position=\"NNW\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa5\" species=\"Smad_P\">
            <celldesigner:linkAnchor position=\"E\"/>
          </celldesigner:baseProduct>
        </celldesigner:baseProducts>
        <celldesigner:listOfProductLinks>
          <celldesigner:productLink alias=\"sa6\" product=\"CoSmad\" targetLineIndex=\"-1,1\">
            <celldesigner:linkAnchor position=\"W\"/>
            <celldesigner:connectScheme connectPolicy=\"direct\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" type=\"Straight\" width=\"1.0\"/>
          </celldesigner:productLink>
        </celldesigner:listOfProductLinks>
        <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
          <celldesigner:listOfLineDirection>
            <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
            <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
          </celldesigner:listOfLineDirection>
        </celldesigner:connectScheme>
        <celldesigner:editPoints>0.11134133191623885,0.3066908700065112</celldesigner:editPoints>
        <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI54\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T11:47:01Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0043241\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product30 "";
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_r12(unit = "") "r12";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r12</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa5\" species=\"Smad_P\">
            <celldesigner:linkAnchor position=\"ENE\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa8\" species=\"Smad_P_CoSmad\">
            <celldesigner:linkAnchor position=\"N\"/>
          </celldesigner:baseProduct>
        </celldesigner:baseProducts>
        <celldesigner:listOfReactantLinks>
          <celldesigner:reactantLink alias=\"sa6\" reactant=\"CoSmad\" targetLineIndex=\"-1,0\">
            <celldesigner:linkAnchor position=\"WNW\"/>
            <celldesigner:connectScheme connectPolicy=\"direct\">
              <celldesigner:listOfLineDirection>
                <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
              </celldesigner:listOfLineDirection>
            </celldesigner:connectScheme>
            <celldesigner:line color=\"ff000000\" type=\"Straight\" width=\"1.0\"/>
          </celldesigner:reactantLink>
        </celldesigner:listOfReactantLinks>
        <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
          <celldesigner:listOfLineDirection>
            <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
            <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
          </celldesigner:listOfLineDirection>
        </celldesigner:connectScheme>
        <celldesigner:editPoints>0.8805364705741345,-0.3171374141710883</celldesigner:editPoints>
        <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI53\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T11:49:03Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0042803\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0070410\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0070412\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant25 "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_r11(unit = "") "r11";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r11</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa7\" species=\"Smad_P_Smad_P\">
            <celldesigner:linkAnchor position=\"NNE\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa5\" species=\"Smad_P\">
            <celldesigner:linkAnchor position=\"ESE\"/>
          </celldesigner:baseProduct>
        </celldesigner:baseProducts>
        <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
          <celldesigner:listOfLineDirection>
            <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
            <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
          </celldesigner:listOfLineDirection>
        </celldesigner:connectScheme>
        <celldesigner:editPoints>0.2739970545263599,0.43689022918826637</celldesigner:editPoints>
        <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI52\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T11:49:04Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:isPartOf rdf:resource=\"http://identifiers.org/go/GO:0043241\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product24 "";
    Real elmt_reactant23 "";
    Real elmt_r10(unit = "") "r10";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r10</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa5\" species=\"Smad_P\">
            <celldesigner:linkAnchor position=\"SE\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa7\" species=\"Smad_P_Smad_P\">
            <celldesigner:linkAnchor position=\"N\"/>
          </celldesigner:baseProduct>
        </celldesigner:baseProducts>
        <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"0\">
          <celldesigner:listOfLineDirection>
            <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
            <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
          </celldesigner:listOfLineDirection>
        </celldesigner:connectScheme>
        <celldesigner:editPoints>0.7111663883396115,-0.44518540774331594</celldesigner:editPoints>
        <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI51\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T11:47:03Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0042803\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_r19(unit = "") "r19";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r19</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa8\" species=\"Smad_P_CoSmad\">
            <celldesigner:linkAnchor position=\"S\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa12\" species=\"Smad_P_CoSmad_N\">
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
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI60\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Smad protein shuttling between the nucleus and the cytoplasm.</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1038/cr.2008.325\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T11:48:54Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/go/GO:0007184\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant41 "";
    Real elmt_product42 "";
    Real elmt_r18(unit = "") "r18";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r18</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa11\" species=\"Smad_P_N\">
            <celldesigner:linkAnchor position=\"N\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa5\" species=\"Smad_P\">
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
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI59\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Smad protein shuttling between the nucleus and the cytoplasm.</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/ 10.1038/cr.2008.325\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T11:48:55Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/go/GO:0051168\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product40 "";
    Real elmt_reactant39 "";
    Real elmt_r20(unit = "") "r20";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>r20</celldesigner:name>
        <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
        <celldesigner:baseReactants>
          <celldesigner:baseReactant alias=\"sa11\" species=\"Smad_P_N\">
            <celldesigner:linkAnchor position=\"W\"/>
          </celldesigner:baseReactant>
        </celldesigner:baseReactants>
        <celldesigner:baseProducts>
          <celldesigner:baseProduct alias=\"sa9\" species=\"Smad_N\">
            <celldesigner:linkAnchor position=\"S\"/>
          </celldesigner:baseProduct>
        </celldesigner:baseProducts>
        <celldesigner:connectScheme connectPolicy=\"direct\" rectangleIndex=\"1\">
          <celldesigner:listOfLineDirection>
            <celldesigner:lineDirection index=\"0\" value=\"unknown\"/>
            <celldesigner:lineDirection index=\"1\" value=\"unknown\"/>
          </celldesigner:listOfLineDirection>
        </celldesigner:connectScheme>
        <celldesigner:editPoints>0.8680694509782816,-0.3464028304982998</celldesigner:editPoints>
        <celldesigner:line color=\"ff000000\" width=\"1.0\"/>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI61\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>Smad dephosphorylation and nuclear export are coupled during TGF-beta signaling.</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1007/978-1-60761-738-9_7\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T11:46:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/go/GO:0006470\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product44 "";
    Real elmt_reactant43 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_reactant41 = 1.0;
        elmt_product34 = 1.0;
        elmt_product32 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_reactant43 = 1.0;
        elmt_reactant45 = 2.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product24 = 2.0;
        elmt_product29 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product40 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_product44 = 1.0;
        elmt_product42 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product38 = 1.0;
        elmt_product36 = 1.0;
        elmt_product51 = 1.0;
        elmt_product11 = 1.0;
        elmt_product55 = 1.0;
        elmt_product54 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant60 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant21 = 2.0;
        elmt_reactant23 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product48 = 2.0;
        elmt_product46 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product8 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product22 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product20 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_product16 = 1.0;
        elmt_product59 = 1.0;
        elmt_product14 = 1.0;
        elmt_product57 = 1.0;
        elmt_product13 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_r7 = (elmt_c * ((elmt_k7 * elmt_Smad * elmt_TGFb_TGFbR_P)));
        elmt_r28 = (elmt_c * ((elmt_k18 * elmt_I_Smad_mRNA2)));
        elmt_r8 = (elmt_k8 * elmt_Smad);
        elmt_r27 = (elmt_c * elmt_k17 * elmt_I_Smad_mRNA2);
        elmt_r5 = (elmt_c * elmt_k5 * elmt_TGFb_TGFbR_P * elmt_I_Smad);
        elmt_r26 = (elmt_k16 * elmt_I_Smad_mRNA1);
        elmt_r6 = (elmt_c * elmt_k6 * elmt_I_Smad_TGFb_TGFbR_P);
        elmt_r25 = (elmt_n * (((elmt_k14 * Functions.pow(elmt_Smad_P_CoSmad_N, elmt_h)) / (Functions.pow(elmt_Smad_P_CoSmad_N, elmt_h) + Functions.pow(elmt_k15, elmt_h)))));
        elmt_r3 = (elmt_c * elmt_k3 * elmt_TGFb_TGFbR);
        elmt_r24 = (elmt_n * elmt_k11 * elmt_Smad_P_CoSmad_N);
        elmt_r4 = (elmt_c * elmt_k4 * elmt_TGFb_TGFbR_P);
        elmt_r23 = (elmt_n * elmt_k10 * elmt_Smad_P_N * elmt_CoSmad_N);
        elmt_r1 = (elmt_c * elmt_k1 * elmt_TGFb_TGFbR);
        elmt_r22 = (elmt_n * elmt_k11 * elmt_Smad_P_Smad_P_N);
        elmt_r2 = (elmt_k2 * elmt_TGFbR * elmt_TGFb);
        elmt_r21 = (elmt_n * elmt_k10 * Functions.pow(elmt_Smad_P_N, 2.0));
        elmt_r9 = (elmt_k9 * elmt_Smad_N);
        elmt_r29 = (elmt_c * elmt_k19 * elmt_I_Smad);
        elmt_r17 = (elmt_k8 * elmt_Smad_P);
        elmt_r16 = ((elmt_k12 * elmt_k8 * elmt_Smad_P_Smad_P));
        elmt_r15 = (elmt_k9 * elmt_CoSmad_N);
        elmt_r14 = (elmt_k8 * elmt_CoSmad);
        elmt_r13 = (elmt_c * elmt_k11 * elmt_Smad_P_CoSmad);
        elmt_r12 = (elmt_c * elmt_k10 * elmt_Smad_P * elmt_CoSmad);
        elmt_r11 = (elmt_c * elmt_k11 * elmt_Smad_P_Smad_P);
        elmt_r10 = (elmt_c * elmt_k10 * Functions.pow(elmt_Smad_P, 2.0));
        elmt_r19 = ((elmt_k12 * elmt_k8 * elmt_Smad_P_CoSmad));
        elmt_r18 = (elmt_k9 * elmt_Smad_P_N);
        elmt_r20 = (elmt_n * elmt_k13 * elmt_Smad_P_N);
        der(elmt_product30) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_product34) = 0;
        der(elmt_product32) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_reactant43) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product24) = 0;
        der(elmt_product29) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product40) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_product44) = 0;
        der(elmt_product42) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product38) = 0;
        der(elmt_product36) = 0;
        der(elmt_product51) = 0;
        der(elmt_product11) = 0;
        der(elmt_product55) = 0;
        der(elmt_product54) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant60) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product48) = 0;
        der(elmt_product46) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product8) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product22) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product20) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_product16) = 0;
        der(elmt_product59) = 0;
        der(elmt_product14) = 0;
        der(elmt_product57) = 0;
        der(elmt_product13) = 0;
        der(elmt_product18) = 0;

end Reactions;
