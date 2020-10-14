within BIOMD530;
model Model_1 "Schmitz2014 - RNA triplex formation" annotation(Documentation(info="<annotation>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
        <rdf:Description rdf:about=\"#COPASI1\">
          <dcterms:bibliographicCitation>
            <rdf:Bag>
              <rdf:li>
                <rdf:Description>
                  <CopasiMT:isDescribedBy rdf:resource=\"urn:miriam:doi:10.1093/nar/gku465\"/>
                </rdf:Description>
              </rdf:li>
            </rdf:Bag>
          </dcterms:bibliographicCitation>
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2013-10-23T20:46:54Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <dcterms:creator>
            <rdf:Bag>
              <rdf:li>
                <rdf:Description>
                  <vCard:EMAIL>winter@kapora.de</vCard:EMAIL>
                  <vCard:N>
                    <rdf:Description>
                      <vCard:Family>Winter</vCard:Family>
                      <vCard:Given>Felix</vCard:Given>
                    </rdf:Description>
                  </vCard:N>
                  <vCard:ORG>
                    <rdf:Description>
                      <vCard:Orgname>Universität Rostock</vCard:Orgname>
                    </rdf:Description>
                  </vCard:ORG>
                </rdf:Description>
              </rdf:li>
            </rdf:Bag>
          </dcterms:creator>
          <dcterms:modified>
            <rdf:Description>
              <dcterms:W3CDTF>2014-02-20T22:10:00Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:modified>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
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
        Reacs.elmt_species_7 = elmt_compartment_1.elmt_species_7;
        Reacs.elmt_species_4 = elmt_compartment_1.elmt_species_4;
        Reacs.elmt_species_10 = elmt_compartment_1.elmt_species_10;
        Reacs.elmt_species_5 = elmt_compartment_1.elmt_species_5;
        Reacs.elmt_species_8 = elmt_compartment_1.elmt_species_8;
        Reacs.elmt_species_9 = elmt_compartment_1.elmt_species_9;
        elmt_compartment_1.elmt_product12 = Reacs.elmt_product12;
        elmt_compartment_1.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment_1.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment_1.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_compartment_1.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_compartment_1.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_compartment_1.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_compartment_1.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment_1.elmt_product25 = Reacs.elmt_product25;
        elmt_compartment_1.elmt_product24 = Reacs.elmt_product24;
        elmt_compartment_1.elmt_product29 = Reacs.elmt_product29;
        elmt_compartment_1.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment_1.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment_1.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment_1.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_compartment_1.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment_1.elmt_product23 = Reacs.elmt_product23;
        elmt_compartment_1.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment_1.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment_1.elmt_product21 = Reacs.elmt_product21;
        elmt_compartment_1.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment_1.elmt_product20 = Reacs.elmt_product20;
        elmt_compartment_1.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment_1.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_compartment_1.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment_1.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment_1.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment_1.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_compartment_1.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment_1.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment_1.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment_1.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment_1.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment_1.elmt_reaction_16 = Reacs.elmt_reaction_16;
        elmt_compartment_1.elmt_reaction_17 = Reacs.elmt_reaction_17;
        elmt_compartment_1.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_compartment_1.elmt_reaction_14 = Reacs.elmt_reaction_14;
        elmt_compartment_1.elmt_reaction_15 = Reacs.elmt_reaction_15;
        elmt_compartment_1.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_compartment_1.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment_1.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment_1.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_compartment_1.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt_compartment_1.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_compartment_1.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_compartment_1.elmt_product18 = Reacs.elmt_product18;
        elmt_compartment_1.elmt_product17 = Reacs.elmt_product17;
        elmt_compartment_1.elmt_reaction_11 = Reacs.elmt_reaction_11;

end Model_1;
