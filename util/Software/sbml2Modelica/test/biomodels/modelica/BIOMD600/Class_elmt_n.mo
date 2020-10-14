within BIOMD600;
class Class_elmt_n

    input Real elmt_r8;
    input Real elmt_product51;
    input Real elmt_r26;
    input Real elmt_r25;
    input Real elmt_r24;
    input Real elmt_r23;
    input Real elmt_product55;
    input Real elmt_r22;
    input Real elmt_product54;
    input Real elmt_product32;
    input Real elmt_product53;
    input Real elmt_r21;
    input Real elmt_reactant47;
    input Real elmt_reactant49;
    input Real elmt_reactant43;
    input Real elmt_reactant45;
    input Real elmt_r9;
    input Real elmt_reactant19;
    input Real elmt_product48;
    input Real elmt_product46;
    input Real elmt_r17;
    input Real elmt_reactant50;
    input Real elmt_r16;
    input Real elmt_r15;
    input Real elmt_reactant52;
    input Real elmt_r14;
    input Real elmt_product44;
    input Real elmt_product42;
    input Real elmt_reactant39;
    input Real elmt_reactant33;
    input Real elmt_reactant56;
    input Real elmt_r19;
    input Real elmt_r18;
    input Real elmt_product38;
    input Real elmt_r20;
    input Real elmt_product36;
    input Real elmt_product18;

    Real elmt_n(unit = "") "nucleus";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:name>nucleus</celldesigner:name>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI2\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T11:44:12Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"http://identifiers.org/go/GO:0005634\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Smad_P_N_conc(unit = "");
    Real elmt_Smad_P_N_amount(unit = "");
    Real elmt_Smad_P_N(unit = "") "Smad_P_N";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr12</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI17\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T19:12:20Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/uniprot.isoform/Q13485\"/>
            <CopasiMT:isPartOf rdf:resource=\"http://identifiers.org/go/GO:0010862\"/>
            <CopasiMT:isPartOf rdf:resource=\"http://identifiers.org/go/GO:0070412\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_I_Smad_mRNA1_conc(unit = "");
    Real elmt_I_Smad_mRNA1_amount(unit = "");
    Real elmt_I_Smad_mRNA1(unit = "") "I_Smad_mRNA1";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr15</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI20\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-01T17:07:35Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CoSmad_N_conc(unit = "");
    Real elmt_CoSmad_N_amount(unit = "");
    Real elmt_CoSmad_N(unit = "") "CoSmad_N";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr14</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI19\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-06T11:54:26Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:hasVersion rdf:resource=\"http://identifiers.org/interpro/IPR008984\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Smad_N_conc(unit = "");
    Real elmt_Smad_N_amount(unit = "");
    Real elmt_Smad_N(unit = "") "Smad_N";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr10</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI15\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-06T11:48:38Z</dcterms:W3CDTF>
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
    Real elmt_Smad_P_Smad_P_N_conc(unit = "");
    Real elmt_Smad_P_Smad_P_N_amount(unit = "");
    Real elmt_Smad_P_Smad_P_N(unit = "") "Smad_P_Smad_P_N";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr11</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI16\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-03T09:07:02Z</dcterms:W3CDTF>
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
    Real elmt_Smad_P_CoSmad_N_conc(unit = "");
    Real elmt_Smad_P_CoSmad_N_amount(unit = "");
    Real elmt_Smad_P_CoSmad_N(unit = "") "Smad_P_CoSmad_N";
 annotation(Documentation(info="<annotation>
      <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
        <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr13</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
        <celldesigner:listOfCatalyzedReactions>
          <celldesigner:catalyzed reaction=\"r25\"/>
        </celldesigner:listOfCatalyzedReactions>
      </celldesigner:extension>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI18\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-12-06T12:01:49Z</dcterms:W3CDTF>
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

    initial equation
        elmt_n = 1.0;
        elmt_Smad_P_N_conc = 0.0;
        elmt_I_Smad_mRNA1_conc = 0.0;
        elmt_CoSmad_N_conc = 135000.0;
        elmt_Smad_N_conc = 82000.0;
        elmt_Smad_P_Smad_P_N_conc = 0.0;
        elmt_Smad_P_CoSmad_N_conc = 0.0;


    equation
        assert(elmt_n >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_n) = 0;
        elmt_Smad_P_N = elmt_Smad_P_N_conc;
        elmt_I_Smad_mRNA1 = elmt_I_Smad_mRNA1_conc;
        elmt_CoSmad_N = elmt_CoSmad_N_conc;
        elmt_Smad_N = elmt_Smad_N_conc;
        elmt_Smad_P_Smad_P_N = elmt_Smad_P_Smad_P_N_conc;
        elmt_Smad_P_CoSmad_N = elmt_Smad_P_CoSmad_N_conc;
        der(elmt_Smad_P_N_amount) = ((elmt_r24 * elmt_product53) + (- (elmt_r23 * elmt_reactant49)) + (elmt_r22 * elmt_product48) + (- (elmt_r21 * elmt_reactant45)) + (elmt_r17 * elmt_product38) + (- (elmt_r18 * elmt_reactant39)) + (- (elmt_r20 * elmt_reactant43)));
        der(elmt_I_Smad_mRNA1_amount) = ((- (elmt_r26 * elmt_reactant56)) + (elmt_r25 * elmt_product55));
        der(elmt_CoSmad_N_amount) = ((elmt_r24 * elmt_product54) + (- (elmt_r23 * elmt_reactant50)) + (- (elmt_r15 * elmt_reactant33)) + (elmt_r14 * elmt_product32));
        der(elmt_Smad_N_amount) = ((elmt_r8 * elmt_product18) + (- (elmt_r9 * elmt_reactant19)) + (elmt_r20 * elmt_product44));
        der(elmt_Smad_P_Smad_P_N_amount) = ((- (elmt_r22 * elmt_reactant47)) + (elmt_r21 * elmt_product46) + (elmt_r16 * elmt_product36));
        der(elmt_Smad_P_CoSmad_N_amount) = ((- (elmt_r24 * elmt_reactant52)) + (elmt_r23 * elmt_product51) + (elmt_r19 * elmt_product42));

    algorithm
        elmt_Smad_P_N_conc := elmt_Smad_P_N_amount / elmt_n;
        elmt_I_Smad_mRNA1_conc := elmt_I_Smad_mRNA1_amount / elmt_n;
        elmt_CoSmad_N_conc := elmt_CoSmad_N_amount / elmt_n;
        elmt_Smad_N_conc := elmt_Smad_N_amount / elmt_n;
        elmt_Smad_P_Smad_P_N_conc := elmt_Smad_P_Smad_P_N_amount / elmt_n;
        elmt_Smad_P_CoSmad_N_conc := elmt_Smad_P_CoSmad_N_amount / elmt_n;
end Class_elmt_n;
