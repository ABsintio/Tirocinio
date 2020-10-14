within BIOMD632;
class Class_elmt_compartment

    input Real elmt_CycECdk2_0;
    input Real elmt_product11;
    input Real elmt_TAF;
    input Real elmt_vb4;
    input Real elmt_vb3;
    input Real elmt_vb2;
    input Real elmt_CycECdk2a_0;
    input Real elmt_vb1;
    input Real elmt_reactant18;
    input Real elmt_reactant19;
    input Real elmt_vb8;
    input Real elmt_vb7;
    input Real elmt_vb6;
    input Real elmt_vb5;
    input Real elmt_product9;
    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_reactant4;
    input Real elmt_BaseDNAdamage;
    input Real elmt_reactant3;
    input Real elmt_product6;
    input Real elmt_reactant5;
    input Real elmt_CycE_0;
    input Real elmt_reactant7;
    input Real elmt_reactant15;
    input Real elmt_product0;
    input Real elmt_reactant16;
    input Real elmt_reactant10;
    input Real elmt_reactant12;
    input Real elmt_product2;
    input Real elmt_va3;
    input Real elmt_va2;
    input Real elmt_va1;
    input Real elmt_Cdk2_0;
    input Real elmt_product14;
    input Real elmt_product13;
    input Real elmt_va6;
    input Real elmt_va5;
    input Real elmt_product17;
    input Real elmt_va4;

    input Boolean elmt_DNADamage;

    input Real assign_elmt_DNADamageC;
    input Real assign_elmt_DNADamageS;

    Real elmt_compartment(unit = "") "MRC-5 cell";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:layout=\"http://projects.eml.org/bcb/sbml/level2\" xmlns:render=\"http://projects.eml.org/bcb/sbml/render/level2\">
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#_92cfddc4-2e02-414f-9348-e494dc18895a\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-03-30T15:43:38Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"urn:miriam:bto:BTO:0001590\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_DNADamageC_conc(unit = "");
    Real elmt_DNADamageC_amount(unit = "");
    Real elmt_DNADamageC(unit = "") "DNADamageC";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI6\">
            <bqbiol:hasProperty>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/go/GO:0000077\"/>
              </rdf:Bag>
            </bqbiol:hasProperty>
            <bqbiol:isPropertyOf>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/go/GO:0035861\"/>
              </rdf:Bag>
            </bqbiol:isPropertyOf>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_DNADamageS_conc(unit = "");
    Real elmt_DNADamageS_amount(unit = "");
    Real elmt_DNADamageS(unit = "") "DNADamageS";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI7\">
            <bqbiol:hasProperty>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/go/GO:0006302\"/>
              </rdf:Bag>
            </bqbiol:hasProperty>
            <bqbiol:isPropertyOf>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/go/GO:0035861\"/>
              </rdf:Bag>
            </bqbiol:isPropertyOf>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_DDR_conc(unit = "");
    Real elmt_DDR_amount(unit = "");
    Real elmt_DDR(unit = "") "DDR";
 annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI8\">
            <bqbiol:hasProperty>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/go/GO:0042769\"/>
              </rdf:Bag>
            </bqbiol:hasProperty>
            <bqbiol:isPropertyOf>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/go/GO:0035861\"/>
              </rdf:Bag>
            </bqbiol:isPropertyOf>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_p21_conc(unit = "");
    Real elmt_p21_amount(unit = "");
    Real elmt_p21(unit = "") "p21";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI5\">
            <CopasiMT:is>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/uniprot/P38936\"/>
              </rdf:Bag>
            </CopasiMT:is>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_CycE_conc(unit = "");
    Real elmt_CycE_amount(unit = "");
    Real elmt_CycE(unit = "") "CycE";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <CopasiMT:is>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/uniprot/P24864\"/>
              </rdf:Bag>
            </CopasiMT:is>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_CycECdk2a_conc(unit = "");
    Real elmt_CycECdk2a_amount(unit = "");
    Real elmt_CycECdk2a(unit = "") "CycECdk2a";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI4\">
            <CopasiMT:hasPart>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/uniprot/P24864\"/>
                <rdf:li rdf:resource=\"http://identifiers.org/uniprot/P24941\"/>
              </rdf:Bag>
            </CopasiMT:hasPart>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_p53_conc(unit = "");
    Real elmt_p53_amount(unit = "");
    Real elmt_p53(unit = "") "p53";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI9\">
            <CopasiMT:is>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/uniprot/P04637\"/>
              </rdf:Bag>
            </CopasiMT:is>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_Cdk2_conc(unit = "");
    Real elmt_Cdk2_amount(unit = "");
    Real elmt_Cdk2(unit = "") "Cdk2";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI2\">
            <CopasiMT:is>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/uniprot/P24941\"/>
              </rdf:Bag>
            </CopasiMT:is>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    Real elmt_CycECdk2_conc(unit = "");
    Real elmt_CycECdk2_amount(unit = "");
    Real elmt_CycECdk2(unit = "") "CycECdk2";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI3\">
            <CopasiMT:hasPart>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/uniprot/P24864\"/>
                <rdf:li rdf:resource=\"http://identifiers.org/uniprot/P24941\"/>
              </rdf:Bag>
            </CopasiMT:hasPart>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_DNADamageC_conc = 0.0;
        elmt_DNADamageS_conc = 0.0;
        elmt_p21_conc = 1.0;
        elmt_CycE_conc = elmt_CycE_0;
        elmt_CycECdk2a_conc = elmt_CycECdk2a_0;
        elmt_p53_conc = 1.0;
        elmt_Cdk2_conc = elmt_Cdk2_0;
        elmt_CycECdk2_conc = elmt_CycECdk2_0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_DNADamageC = elmt_DNADamageC_conc;
        elmt_DNADamageS = elmt_DNADamageS_conc;
        elmt_DDR = elmt_DDR_conc;
        elmt_p21 = elmt_p21_conc;
        elmt_CycE = elmt_CycE_conc;
        elmt_CycECdk2a = elmt_CycECdk2a_conc;
        elmt_p53 = elmt_p53_conc;
        elmt_Cdk2 = elmt_Cdk2_conc;
        elmt_CycECdk2 = elmt_CycECdk2_conc;
        elmt_DDR_amount = (elmt_BaseDNAdamage + elmt_DNADamageC + elmt_DNADamageS + elmt_TAF) * elmt_compartment;
        der(elmt_DNADamageC_amount) = (- (elmt_va2 * elmt_reactant15));
        der(elmt_DNADamageS_amount) = (- (elmt_va1 * elmt_reactant16));
        der(elmt_p21_amount) = ((- (elmt_va6 * elmt_reactant18)) + (elmt_va5 * elmt_product17));
        der(elmt_CycE_amount) = ((elmt_vb8 * elmt_product8) + (- (elmt_vb7 * elmt_reactant4)) + (- (elmt_vb6 * elmt_reactant1)) + (elmt_vb5 * elmt_product0));
        der(elmt_CycECdk2a_amount) = ((- (elmt_vb2 * elmt_reactant12)) + (elmt_vb1 * elmt_product11));
        der(elmt_p53_amount) = ((elmt_va3 * elmt_product14) + (- (elmt_va4 * elmt_reactant19)));
        der(elmt_Cdk2_amount) = ((- (elmt_vb4 * elmt_reactant3)) + (elmt_vb3 * elmt_product2) + (elmt_vb8 * elmt_product9) + (- (elmt_vb7 * elmt_reactant5)));
        der(elmt_CycECdk2_amount) = ((elmt_vb2 * elmt_product13) + (- (elmt_vb1 * elmt_reactant10)) + (- (elmt_vb8 * elmt_reactant7)) + (elmt_vb7 * elmt_product6));

        when elmt_DNADamage then
            reinit(elmt_DNADamageC_amount, assign_elmt_DNADamageC * pre(elmt_compartment));
            reinit(elmt_DNADamageS_amount, assign_elmt_DNADamageS * pre(elmt_compartment));
        end when;
    algorithm
        elmt_DNADamageC_conc := elmt_DNADamageC_amount / elmt_compartment;
        elmt_DNADamageS_conc := elmt_DNADamageS_amount / elmt_compartment;
        elmt_DDR_conc := elmt_DDR_amount / elmt_compartment;
        elmt_p21_conc := elmt_p21_amount / elmt_compartment;
        elmt_CycE_conc := elmt_CycE_amount / elmt_compartment;
        elmt_CycECdk2a_conc := elmt_CycECdk2a_amount / elmt_compartment;
        elmt_p53_conc := elmt_p53_amount / elmt_compartment;
        elmt_Cdk2_conc := elmt_Cdk2_amount / elmt_compartment;
        elmt_CycECdk2_conc := elmt_CycECdk2_amount / elmt_compartment;
end Class_elmt_compartment;
