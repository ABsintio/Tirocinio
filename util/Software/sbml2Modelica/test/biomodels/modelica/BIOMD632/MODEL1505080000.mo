within BIOMD632;
model MODEL1505080000 "Kollarovic2016 - Cell fate decision at G1-S transition" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
  </rdf:RDF>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
      <rdf:Description rdf:about=\"#COPASI0\">
        <bqbiol:hasTaxon>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/taxonomy/9606\"/>
          </rdf:Bag>
        </bqbiol:hasTaxon>
        <dcterms:bibliographicCitation>
          <rdf:Bag>
            <rdf:li>
              <rdf:Description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/26830321\"/>
              </rdf:Description>
            </rdf:li>
          </rdf:Bag>
        </dcterms:bibliographicCitation>
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2017-03-30T15:27:28Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
        <dcterms:creator>
          <rdf:Bag>
            <rdf:li>
              <rdf:Description>
                <vCard:EMAIL>codystep09@email.arizona.edu</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Stepanski</vCard:Family>
                    <vCard:Given>Cody</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>University of Arizona</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </rdf:li>
            <rdf:li>
              <rdf:Description>
                <vCard:EMAIL>ljhkamp@email.arizona.edu</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Haferkamp</vCard:Family>
                    <vCard:Given>Laura</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>University of Arizona</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </rdf:li>
            <rdf:li>
              <rdf:Description>
                <vCard:EMAIL>jknappw@gmail.com</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Knapp-Wilson</vCard:Family>
                    <vCard:Given>Jordan</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>University of Arizona</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </rdf:li>
            <rdf:li>
              <rdf:Description>
                <vCard:EMAIL>alyssalynfortier@email.arizona.edu</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Fortier</vCard:Family>
                    <vCard:Given>Alyssa</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>University of Arizona</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </rdf:li>
            <rdf:li>
              <rdf:Description>
                <vCard:EMAIL>rgutenk@email.arizona.edu</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Gutenkunst</vCard:Family>
                    <vCard:Given>Ryan</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>University of Arizona</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </rdf:li>
            <rdf:li>
              <rdf:Description>
                <vCard:EMAIL>dbhaskar92@math.ubc.ca</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Dhananjay</vCard:Family>
                    <vCard:Given>Bhaskar</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>University of British Columbia</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </rdf:li>
            <rdf:li>
              <rdf:Description>
                <vCard:EMAIL>william.gray@yale.edu</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>William</vCard:Family>
                    <vCard:Given>Gray</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>Yale University</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </rdf:li>
            <rdf:li>
              <rdf:Description>
                <vCard:EMAIL>kslav@sas.upenn.edu</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Kalina</vCard:Family>
                    <vCard:Given>Slavkova</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>University of Pennsylvania</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </rdf:li>
            <rdf:li>
              <rdf:Description>
                <vCard:EMAIL>leshriver@email.wm.edu</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Lauren </vCard:Family>
                    <vCard:Given>Shriver</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>College of William and Mary</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </rdf:li>
            <rdf:li>
              <rdf:Description>
                <vCard:EMAIL>amybethx@rocketmail.com</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Amy Beth</vCard:Family>
                    <vCard:Given>Prager</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>Fundacion Ceibal</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </rdf:li>
            <rdf:li>
              <rdf:Description>
                <vCard:EMAIL>j.schaber@web.de</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Schaber</vCard:Family>
                    <vCard:Given>Joerg</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname/>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </rdf:li>
          </rdf:Bag>
        </dcterms:creator>
        <dcterms:modified>
          <rdf:Description>
            <dcterms:W3CDTF>2017-03-30T15:40:17Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:modified>
        <CopasiMT:hasPart>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/go/GO:0006281\"/>
            <rdf:li rdf:resource=\"http://identifiers.org/go/GO:0007050\"/>
          </rdf:Bag>
        </CopasiMT:hasPart>
        <CopasiMT:is>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/biomodels.db/MODEL1505080000\"/>
          </rdf:Bag>
        </CopasiMT:is>
        <CopasiMT:is>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/biomodels.db/BIOMD0000000632\"/>
          </rdf:Bag>
        </CopasiMT:is>
        <CopasiMT:isPartOf>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/go/GO:2000772\"/>
          </rdf:Bag>
        </CopasiMT:isPartOf>
        <CopasiMT:occursIn>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/bto/BTO:0000452\"/>
          </rdf:Bag>
        </CopasiMT:occursIn>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;
    Class_elmt_DNADamage elmt_DNADamage;

    equation
        Params.elmt_DDR = elmt_compartment.elmt_DDR;
        Params.elmt_p21 = elmt_compartment.elmt_p21;
        Params.elmt_p53 = elmt_compartment.elmt_p53;
        Params.elmt_CycECdk2a = elmt_compartment.elmt_CycECdk2a;
        Params.elmt_CycE = elmt_compartment.elmt_CycE;
        Params.elmt_Cdk2 = elmt_compartment.elmt_Cdk2;
        Params.elmt_CycECdk2 = elmt_compartment.elmt_CycECdk2;
        Params.elmt_DNADamage = elmt_DNADamage.execution;
        Reacs.elmt_vb3_v_0 = Params.elmt_vb3_v_0;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_vb1_k1_0 = Params.elmt_vb1_k1_0;
        Reacs.elmt_vb1_k0_0 = Params.elmt_vb1_k0_0;
        Reacs.elmt_vb1_h_0 = Params.elmt_vb1_h_0;
        Reacs.elmt_p53 = elmt_compartment.elmt_p53;
        Reacs.elmt_vb5_v_0 = Params.elmt_vb5_v_0;
        Reacs.elmt_va3_k_0 = Params.elmt_va3_k_0;
        Reacs.elmt_CycECdk2 = elmt_compartment.elmt_CycECdk2;
        Reacs.elmt_k4a = Params.elmt_k4a;
        Reacs.elmt_k6b = Params.elmt_k6b;
        Reacs.elmt_DNADamageC = elmt_compartment.elmt_DNADamageC;
        Reacs.elmt_k6a = Params.elmt_k6a;
        Reacs.elmt_vb1_Ki_0 = Params.elmt_vb1_Ki_0;
        Reacs.elmt_k8b = Params.elmt_k8b;
        Reacs.elmt_DDR = elmt_compartment.elmt_DDR;
        Reacs.elmt_vb1_Kma_0 = Params.elmt_vb1_Kma_0;
        Reacs.elmt_vb1_Kmb_0 = Params.elmt_vb1_Kmb_0;
        Reacs.elmt_Cdk2 = elmt_compartment.elmt_Cdk2;
        Reacs.elmt_k2b = Params.elmt_k2b;
        Reacs.elmt_k4b = Params.elmt_k4b;
        Reacs.elmt_DNADamageS = elmt_compartment.elmt_DNADamageS;
        Reacs.elmt_va5_k_0 = Params.elmt_va5_k_0;
        Reacs.elmt_vb1_kb_0 = Params.elmt_vb1_kb_0;
        Reacs.elmt_vb1_ka_0 = Params.elmt_vb1_ka_0;
        Reacs.elmt_p21 = elmt_compartment.elmt_p21;
        Reacs.elmt_CycECdk2a = elmt_compartment.elmt_CycECdk2a;
        Reacs.elmt_CycE = elmt_compartment.elmt_CycE;
        Reacs.elmt_vb7_k1_0 = Params.elmt_vb7_k1_0;
        elmt_compartment.elmt_CycECdk2_0 = Params.elmt_CycECdk2_0;
        elmt_compartment.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment.elmt_TAF = Params.elmt_TAF;
        elmt_compartment.elmt_vb4 = Reacs.elmt_vb4;
        elmt_compartment.elmt_vb3 = Reacs.elmt_vb3;
        elmt_compartment.elmt_vb2 = Reacs.elmt_vb2;
        elmt_compartment.elmt_CycECdk2a_0 = Params.elmt_CycECdk2a_0;
        elmt_compartment.elmt_vb1 = Reacs.elmt_vb1;
        elmt_compartment.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_compartment.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment.elmt_vb8 = Reacs.elmt_vb8;
        elmt_compartment.elmt_vb7 = Reacs.elmt_vb7;
        elmt_compartment.elmt_vb6 = Reacs.elmt_vb6;
        elmt_compartment.elmt_vb5 = Reacs.elmt_vb5;
        elmt_compartment.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_BaseDNAdamage = Params.elmt_BaseDNAdamage;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment.elmt_CycE_0 = Params.elmt_CycE_0;
        elmt_compartment.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_compartment.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_va3 = Reacs.elmt_va3;
        elmt_compartment.elmt_va2 = Reacs.elmt_va2;
        elmt_compartment.elmt_va1 = Reacs.elmt_va1;
        elmt_compartment.elmt_Cdk2_0 = Params.elmt_Cdk2_0;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment.elmt_va6 = Reacs.elmt_va6;
        elmt_compartment.elmt_va5 = Reacs.elmt_va5;
        elmt_compartment.elmt_product17 = Reacs.elmt_product17;
        elmt_compartment.elmt_va4 = Reacs.elmt_va4;
        elmt_compartment.elmt_DNADamage = elmt_DNADamage.execution;
        elmt_DNADamage.elmt_prop_C = Params.elmt_prop_C;
        elmt_DNADamage.elmt_Gy = Params.elmt_Gy;
        elmt_DNADamage.elmt_ModelValue_9_0 = Params.elmt_ModelValue_9_0;
        elmt_DNADamage.elmt_DNAdamagefoci_0 = Params.elmt_DNAdamagefoci_0;
        elmt_DNADamage.elmt_k_TAF = Params.elmt_k_TAF;

        elmt_compartment.assign_elmt_DNADamageS = elmt_DNADamage.value_elmt_DNADamageS;
        elmt_compartment.assign_elmt_DNADamageC = elmt_DNADamage.value_elmt_DNADamageC;
        Params.assign_elmt_TAF = elmt_DNADamage.value_elmt_TAF;
end MODEL1505080000;
