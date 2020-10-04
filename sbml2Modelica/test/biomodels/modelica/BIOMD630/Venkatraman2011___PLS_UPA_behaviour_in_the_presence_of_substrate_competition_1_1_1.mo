within BIOMD630;
model Venkatraman2011___PLS_UPA_behaviour_in_the_presence_of_substrate_competition_1_1_1 "Venkatraman2011 - PLS-UPA behaviour in the presence of substrate competition_1_1_1_1" annotation(Documentation(info="<annotation>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
      <rdf:Description rdf:about=\"#COPASI0\">
        <bqbiol:hasProperty>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/mamo/MAMO_0000046\"/>
          </rdf:Bag>
        </bqbiol:hasProperty>
        <dcterms:bibliographicCitation>
          <rdf:Bag>
            <rdf:li>
              <rdf:Description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/22004735\"/>
              </rdf:Description>
            </rdf:li>
          </rdf:Bag>
        </dcterms:bibliographicCitation>
        <dcterms:bibliographicCitation>
          <rdf:Bag>
            <rdf:li>
              <rdf:Description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/22004735\"/>
              </rdf:Description>
            </rdf:li>
          </rdf:Bag>
        </dcterms:bibliographicCitation>
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2017-02-02T14:43:21Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
        <dcterms:creator>
          <rdf:Bag>
            <rdf:li>
              <rdf:Description>
                <vCard:EMAIL>fkurtoglu@gtu.edu.tr</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Kurtoglu</vCard:Family>
                    <vCard:Given>Furkan</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>Gebze Technical University</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </rdf:li>
            <rdf:li>
              <rdf:Description>
                <vCard:EMAIL>LisaTK@nus.edu.sg</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Tucker-Kellogg</vCard:Family>
                    <vCard:Given>Lisa</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>Institute of Bioengineering and
Nanotechnology</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </rdf:li>
          </rdf:Bag>
        </dcterms:creator>
        <dcterms:modified>
          <rdf:Description>
            <dcterms:W3CDTF>2017-03-21T14:20:42Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:modified>
        <CopasiMT:is>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/biomodels.db/MODEL1303130001\"/>
          </rdf:Bag>
        </CopasiMT:is>
        <CopasiMT:is>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/biomodels.db/BIOMD0000000630\"/>
          </rdf:Bag>
        </CopasiMT:is>
        <CopasiMT:isVersionOf>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/go/GO:0031639\"/>
          </rdf:Bag>
        </CopasiMT:isVersionOf>
        <CopasiMT:occursIn>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/go/GO:0007596\"/>
          </rdf:Bag>
        </CopasiMT:occursIn>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	
	
	
	
	
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_1 elmt_compartment_1;

    equation
        Reacs.elmt_species_2 = elmt_compartment_1.elmt_species_2;
        Reacs.elmt_species_3 = elmt_compartment_1.elmt_species_3;
        Reacs.elmt_species_1 = elmt_compartment_1.elmt_species_1;
        Reacs.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Reacs.elmt_species_6 = elmt_compartment_1.elmt_species_6;
        Reacs.elmt_species_4 = elmt_compartment_1.elmt_species_4;
        Reacs.elmt_species_5 = elmt_compartment_1.elmt_species_5;
        Reacs.elmt_parameter_2 = Params.elmt_parameter_2;
        Reacs.elmt_parameter_1 = Params.elmt_parameter_1;
        Reacs.elmt_parameter_13 = Params.elmt_parameter_13;
        elmt_compartment_1.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment_1.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment_1.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment_1.elmt_product24 = Reacs.elmt_product24;
        elmt_compartment_1.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment_1.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment_1.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment_1.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment_1.elmt_product23 = Reacs.elmt_product23;
        elmt_compartment_1.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment_1.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment_1.elmt_product20 = Reacs.elmt_product20;
        elmt_compartment_1.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment_1.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_compartment_1.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment_1.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment_1.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment_1.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_compartment_1.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment_1.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment_1.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment_1.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment_1.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment_1.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment_1.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_compartment_1.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_compartment_1.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment_1.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment_1.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_compartment_1.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt_compartment_1.elmt_reaction_13 = Reacs.elmt_reaction_13;

end Venkatraman2011___PLS_UPA_behaviour_in_the_presence_of_substrate_competition_1_1_1;
