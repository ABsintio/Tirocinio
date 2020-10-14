within BIOMD600;
class Class_elmt_c

    input Real elmt_product30;
    input Real elmt_r28;
    input Real elmt_r7;
    input Real elmt_r8;
    input Real elmt_r27;
    input Real elmt_r5;
    input Real elmt_reactant41;
    input Real elmt_r26;
    input Real elmt_r6;
    input Real elmt_product34;
    input Real elmt_r3;
    input Real elmt_r4;
    input Real elmt_r1;
    input Real elmt_r2;
    input Real elmt_r9;
    input Real elmt_r29;
    input Real elmt_product27;
    input Real elmt_reactant9;
    input Real elmt_product24;
    input Real elmt_product29;
    input Real elmt_product40;
    input Real elmt_reactant58;
    input Real elmt_reactant15;
    input Real elmt_reactant17;
    input Real elmt_reactant10;
    input Real elmt_reactant12;
    input Real elmt_product11;
    input Real elmt_reactant60;
    input Real elmt_reactant25;
    input Real elmt_reactant26;
    input Real elmt_reactant28;
    input Real elmt_reactant21;
    input Real elmt_reactant23;
    input Real elmt_reactant2;
    input Real elmt_r17;
    input Real elmt_r16;
    input Real elmt_product8;
    input Real elmt_r15;
    input Real elmt_r14;
    input Real elmt_reactant31;
    input Real elmt_product6;
    input Real elmt_r13;
    input Real elmt_r12;
    input Real elmt_product22;
    input Real elmt_reactant5;
    input Real elmt_r11;
    input Real elmt_product20;
    input Real elmt_reactant7;
    input Real elmt_r10;
    input Real elmt_product1;
    input Real elmt_reactant37;
    input Real elmt_product4;
    input Real elmt_r19;
    input Real elmt_reactant0;
    input Real elmt_reactant35;
    input Real elmt_r18;
    input Real elmt_product16;
    input Real elmt_product59;
    input Real elmt_product14;
    input Real elmt_product57;
    input Real elmt_product13;

    Real elmt_c(unit = "") "cytoplasm";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>cytoplasm</celldesigner:name>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T11:44:09Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0005737\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_I_Smad_TGFb_TGFbR_P_conc(unit = "");
    Real elmt_I_Smad_TGFb_TGFbR_P_amount(unit = "");
    Real elmt_I_Smad_TGFb_TGFbR_P(unit = "") "I_Smad_TGFb_TGFbR_P";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr4</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI7\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>The regulation of inhibitory Smads promotes bone morphometric protein signaling.</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/11483516\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T11:53:33Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR000333\"/>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR016319\"/>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR017855\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CoSmad_conc(unit = "");
    Real elmt_CoSmad_amount(unit = "");
    Real elmt_CoSmad(unit = "") "CoSmad";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr7</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI10\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T11:44:40Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_I_Smad_conc(unit = "");
    Real elmt_I_Smad_amount(unit = "");
    Real elmt_I_Smad(unit = "") "I_Smad";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr17</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI14\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T19:11:55Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Smad_conc(unit = "");
    Real elmt_Smad_amount(unit = "");
    Real elmt_Smad(unit = "") "Smad";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr5</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI8\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T11:58:55Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:isPartOf rdf:resource=\"http://identifiers.org/go/GO:0010862\"/>
            <CopasiMT:isPartOf rdf:resource=\"http://identifiers.org/go/GO:0070412\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_TGFb_TGFbR_P_conc(unit = "");
    Real elmt_TGFb_TGFbR_P_amount(unit = "");
    Real elmt_TGFb_TGFbR_P(unit = "") "TGFb_TGFbR_P";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr3</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
        <celldesigner:listOfCatalyzedReactions>
          <celldesigner:catalyzed reaction=\"r7\"/>
        </celldesigner:listOfCatalyzedReactions>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI6\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-06T12:10:05Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR000333\"/>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR016319\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Smad_P_CoSmad_conc(unit = "");
    Real elmt_Smad_P_CoSmad_amount(unit = "");
    Real elmt_Smad_P_CoSmad(unit = "") "Smad_P_CoSmad";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr9</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI12\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-06T11:55:51Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/uniprot.isoform/Q13485\"/>
            <CopasiMT:isPartOf rdf:resource=\"http://identifiers.org/go/GO:0010862\"/>
            <CopasiMT:isPartOf rdf:resource=\"http://identifiers.org/go/GO:0070410\"/>
            <CopasiMT:isPartOf rdf:resource=\"http://identifiers.org/go/GO:0070412\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Smad_P_Smad_P_conc(unit = "");
    Real elmt_Smad_P_Smad_P_amount(unit = "");
    Real elmt_Smad_P_Smad_P(unit = "") "Smad_P_Smad_P";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr8</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI11\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-06T12:09:59Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasPart rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/go/GO:0071141\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_I_Smad_mRNA2_conc(unit = "");
    Real elmt_I_Smad_mRNA2_amount(unit = "");
    Real elmt_I_Smad_mRNA2(unit = "") "I_Smad_mRNA2";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr16</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
        <celldesigner:listOfCatalyzedReactions>
          <celldesigner:catalyzed reaction=\"r28\"/>
        </celldesigner:listOfCatalyzedReactions>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI13\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T17:07:48Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_TGFbR_conc(unit = "");
    Real elmt_TGFbR_amount(unit = "");
    Real elmt_TGFbR(unit = "") "TGFbR";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr1</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI4\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T11:53:47Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/interpro/IPR000333\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_TGFb_TGFbR_conc(unit = "");
    Real elmt_TGFb_TGFbR_amount(unit = "");
    Real elmt_TGFb_TGFbR(unit = "") "TGFb_TGFbR";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr2</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI5\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-03T09:07:27Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR000333\"/>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR016319\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Smad_P_conc(unit = "");
    Real elmt_Smad_P_amount(unit = "");
    Real elmt_Smad_P(unit = "") "Smad_P";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr6</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI9\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-06T11:54:06Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:isPartOf rdf:resource=\"http://identifiers.org/go/GO:0010862\"/>
            <CopasiMT:isPartOf rdf:resource=\"http://identifiers.org/go/GO:0070412\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_c = 2.3;
        elmt_I_Smad_TGFb_TGFbR_P_conc = 0.0;
        elmt_CoSmad_conc = 12000.0;
        elmt_I_Smad_conc = 0.0;
        elmt_Smad_conc = 7000.0;
        elmt_TGFb_TGFbR_P_conc = 0.0;
        elmt_Smad_P_CoSmad_conc = 0.0;
        elmt_Smad_P_Smad_P_conc = 0.0;
        elmt_I_Smad_mRNA2_conc = 0.0;
        elmt_TGFbR_conc = 1010.0;
        elmt_TGFb_TGFbR_conc = 0.0;
        elmt_Smad_P_conc = 0.0;


    equation
        assert(elmt_c >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_c) = 0;
        elmt_I_Smad_TGFb_TGFbR_P = elmt_I_Smad_TGFb_TGFbR_P_conc;
        elmt_CoSmad = elmt_CoSmad_conc;
        elmt_I_Smad = elmt_I_Smad_conc;
        elmt_Smad = elmt_Smad_conc;
        elmt_TGFb_TGFbR_P = elmt_TGFb_TGFbR_P_conc;
        elmt_Smad_P_CoSmad = elmt_Smad_P_CoSmad_conc;
        elmt_Smad_P_Smad_P = elmt_Smad_P_Smad_P_conc;
        elmt_I_Smad_mRNA2 = elmt_I_Smad_mRNA2_conc;
        elmt_TGFbR = elmt_TGFbR_conc;
        elmt_TGFb_TGFbR = elmt_TGFb_TGFbR_conc;
        elmt_Smad_P = elmt_Smad_P_conc;
        der(elmt_I_Smad_TGFb_TGFbR_P_amount) = ((elmt_r5 * elmt_product11) + (- (elmt_r6 * elmt_reactant12)));
        der(elmt_CoSmad_amount) = ((elmt_r15 * elmt_product34) + (- (elmt_r14 * elmt_reactant31)) + (elmt_r13 * elmt_product30) + (- (elmt_r12 * elmt_reactant26)));
        der(elmt_I_Smad_amount) = ((elmt_r28 * elmt_product59) + (- (elmt_r5 * elmt_reactant10)) + (elmt_r6 * elmt_product14) + (- (elmt_r29 * elmt_reactant60)));
        der(elmt_Smad_amount) = ((- (elmt_r7 * elmt_reactant15)) + (- (elmt_r8 * elmt_reactant17)) + (elmt_r9 * elmt_product20));
        der(elmt_TGFb_TGFbR_P_amount) = ((- (elmt_r5 * elmt_reactant9)) + (elmt_r3 * elmt_product6) + (- (elmt_r4 * elmt_reactant7)));
        der(elmt_Smad_P_CoSmad_amount) = ((- (elmt_r13 * elmt_reactant28)) + (elmt_r12 * elmt_product27) + (- (elmt_r19 * elmt_reactant41)));
        der(elmt_Smad_P_Smad_P_amount) = ((- (elmt_r16 * elmt_reactant35)) + (- (elmt_r11 * elmt_reactant23)) + (elmt_r10 * elmt_product22));
        der(elmt_I_Smad_mRNA2_amount) = ((- (elmt_r27 * elmt_reactant58)) + (elmt_r26 * elmt_product57));
        der(elmt_TGFbR_amount) = ((elmt_r1 * elmt_product1) + (- (elmt_r2 * elmt_reactant2)));
        der(elmt_TGFb_TGFbR_amount) = ((elmt_r6 * elmt_product13) + (- (elmt_r3 * elmt_reactant5)) + (elmt_r4 * elmt_product8) + (- (elmt_r1 * elmt_reactant0)) + (elmt_r2 * elmt_product4));
        der(elmt_Smad_P_amount) = ((elmt_r7 * elmt_product16) + (- (elmt_r17 * elmt_reactant37)) + (elmt_r13 * elmt_product29) + (- (elmt_r12 * elmt_reactant25)) + (elmt_r11 * elmt_product24) + (- (elmt_r10 * elmt_reactant21)) + (elmt_r18 * elmt_product40));

    algorithm
        elmt_I_Smad_TGFb_TGFbR_P_conc := elmt_I_Smad_TGFb_TGFbR_P_amount / elmt_c;
        elmt_CoSmad_conc := elmt_CoSmad_amount / elmt_c;
        elmt_I_Smad_conc := elmt_I_Smad_amount / elmt_c;
        elmt_Smad_conc := elmt_Smad_amount / elmt_c;
        elmt_TGFb_TGFbR_P_conc := elmt_TGFb_TGFbR_P_amount / elmt_c;
        elmt_Smad_P_CoSmad_conc := elmt_Smad_P_CoSmad_amount / elmt_c;
        elmt_Smad_P_Smad_P_conc := elmt_Smad_P_Smad_P_amount / elmt_c;
        elmt_I_Smad_mRNA2_conc := elmt_I_Smad_mRNA2_amount / elmt_c;
        elmt_TGFbR_conc := elmt_TGFbR_amount / elmt_c;
        elmt_TGFb_TGFbR_conc := elmt_TGFb_TGFbR_amount / elmt_c;
        elmt_Smad_P_conc := elmt_Smad_P_amount / elmt_c;
end Class_elmt_c;
