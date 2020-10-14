within BIOMD623;
model MODEL1611280000 "Orton2009 - Modelling cancerous mutations in the EGFR/ERK pathway - EGF Model" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2016-11-28T09:09:16Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>tvarusai@ebi.ac.uk</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Varusai</vCard:Family>
                    <vCard:Given>Thawfeek</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>EMBL-EBI</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:go:GO:0007173\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_0 elmt_compartment_0;

    equation
        Reacs.elmt_species_6 = elmt_compartment_0.elmt_species_6;
        Reacs.elmt_species_7 = elmt_compartment_0.elmt_species_7;
        Reacs.elmt_species_4 = elmt_compartment_0.elmt_species_4;
        Reacs.elmt_species_5 = elmt_compartment_0.elmt_species_5;
        Reacs.elmt_species_8 = elmt_compartment_0.elmt_species_8;
        Reacs.elmt_species_9 = elmt_compartment_0.elmt_species_9;
        Reacs.elmt_species_15 = elmt_compartment_0.elmt_species_15;
        Reacs.elmt_species_16 = elmt_compartment_0.elmt_species_16;
        Reacs.elmt_species_17 = elmt_compartment_0.elmt_species_17;
        Reacs.elmt_species_19 = elmt_compartment_0.elmt_species_19;
        Reacs.elmt_compartment_0 = elmt_compartment_0.elmt_compartment_0;
        Reacs.elmt_species_10 = elmt_compartment_0.elmt_species_10;
        Reacs.elmt_species_11 = elmt_compartment_0.elmt_species_11;
        Reacs.elmt_species_12 = elmt_compartment_0.elmt_species_12;
        Reacs.elmt_species_13 = elmt_compartment_0.elmt_species_13;
        Reacs.elmt_species_14 = elmt_compartment_0.elmt_species_14;
        Reacs.elmt_species_26 = elmt_compartment_0.elmt_species_26;
        Reacs.elmt_species_27 = elmt_compartment_0.elmt_species_27;
        Reacs.elmt_species_28 = elmt_compartment_0.elmt_species_28;
        Reacs.elmt_species_29 = elmt_compartment_0.elmt_species_29;
        Reacs.elmt_species_2 = elmt_compartment_0.elmt_species_2;
        Reacs.elmt_species_3 = elmt_compartment_0.elmt_species_3;
        Reacs.elmt_species_0 = elmt_compartment_0.elmt_species_0;
        Reacs.elmt_species_1 = elmt_compartment_0.elmt_species_1;
        Reacs.elmt_species_20 = elmt_compartment_0.elmt_species_20;
        Reacs.elmt_species_21 = elmt_compartment_0.elmt_species_21;
        Reacs.elmt_species_22 = elmt_compartment_0.elmt_species_22;
        Reacs.elmt_species_23 = elmt_compartment_0.elmt_species_23;
        Reacs.elmt_species_24 = elmt_compartment_0.elmt_species_24;
        Reacs.elmt_species_25 = elmt_compartment_0.elmt_species_25;
        elmt_compartment_0.elmt_product30 = Reacs.elmt_product30;
        elmt_compartment_0.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt_compartment_0.elmt_product34 = Reacs.elmt_product34;
        elmt_compartment_0.elmt_product32 = Reacs.elmt_product32;
        elmt_compartment_0.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt_compartment_0.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt_compartment_0.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt_compartment_0.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_compartment_0.elmt_reaction_27 = Reacs.elmt_reaction_27;
        elmt_compartment_0.elmt_reaction_28 = Reacs.elmt_reaction_28;
        elmt_compartment_0.elmt_reaction_25 = Reacs.elmt_reaction_25;
        elmt_compartment_0.elmt_reaction_26 = Reacs.elmt_reaction_26;
        elmt_compartment_0.elmt_reaction_29 = Reacs.elmt_reaction_29;
        elmt_compartment_0.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment_0.elmt_reaction_20 = Reacs.elmt_reaction_20;
        elmt_compartment_0.elmt_product26 = Reacs.elmt_product26;
        elmt_compartment_0.elmt_product24 = Reacs.elmt_product24;
        elmt_compartment_0.elmt_reaction_23 = Reacs.elmt_reaction_23;
        elmt_compartment_0.elmt_reaction_24 = Reacs.elmt_reaction_24;
        elmt_compartment_0.elmt_reaction_21 = Reacs.elmt_reaction_21;
        elmt_compartment_0.elmt_reaction_22 = Reacs.elmt_reaction_22;
        elmt_compartment_0.elmt_product28 = Reacs.elmt_product28;
        elmt_compartment_0.elmt_product40 = Reacs.elmt_product40;
        elmt_compartment_0.elmt_reactant51 = Reacs.elmt_reactant51;
        elmt_compartment_0.elmt_reactant53 = Reacs.elmt_reactant53;
        elmt_compartment_0.elmt_product44 = Reacs.elmt_product44;
        elmt_compartment_0.elmt_product42 = Reacs.elmt_product42;
        elmt_compartment_0.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment_0.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment_0.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment_0.elmt_reactant59 = Reacs.elmt_reactant59;
        elmt_compartment_0.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment_0.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_compartment_0.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment_0.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_compartment_0.elmt_reactant55 = Reacs.elmt_reactant55;
        elmt_compartment_0.elmt_reaction_0 = Reacs.elmt_reaction_0;
        elmt_compartment_0.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment_0.elmt_reaction_16 = Reacs.elmt_reaction_16;
        elmt_compartment_0.elmt_reaction_17 = Reacs.elmt_reaction_17;
        elmt_compartment_0.elmt_reaction_14 = Reacs.elmt_reaction_14;
        elmt_compartment_0.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_compartment_0.elmt_reaction_15 = Reacs.elmt_reaction_15;
        elmt_compartment_0.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_compartment_0.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment_0.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment_0.elmt_reaction_18 = Reacs.elmt_reaction_18;
        elmt_compartment_0.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_compartment_0.elmt_reaction_19 = Reacs.elmt_reaction_19;
        elmt_compartment_0.elmt_product38 = Reacs.elmt_product38;
        elmt_compartment_0.elmt_product36 = Reacs.elmt_product36;
        elmt_compartment_0.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt_compartment_0.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_compartment_0.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_compartment_0.elmt_reaction_11 = Reacs.elmt_reaction_11;
        elmt_compartment_0.elmt_product52 = Reacs.elmt_product52;
        elmt_compartment_0.elmt_reactant61 = Reacs.elmt_reactant61;
        elmt_compartment_0.elmt_product50 = Reacs.elmt_product50;
        elmt_compartment_0.elmt_product12 = Reacs.elmt_product12;
        elmt_compartment_0.elmt_product56 = Reacs.elmt_product56;
        elmt_compartment_0.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment_0.elmt_product54 = Reacs.elmt_product54;
        elmt_compartment_0.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_compartment_0.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_compartment_0.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_compartment_0.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_compartment_0.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment_0.elmt_product48 = Reacs.elmt_product48;
        elmt_compartment_0.elmt_product46 = Reacs.elmt_product46;
        elmt_compartment_0.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment_0.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment_0.elmt_product62 = Reacs.elmt_product62;
        elmt_compartment_0.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_compartment_0.elmt_product60 = Reacs.elmt_product60;
        elmt_compartment_0.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment_0.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment_0.elmt_product22 = Reacs.elmt_product22;
        elmt_compartment_0.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment_0.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment_0.elmt_product20 = Reacs.elmt_product20;
        elmt_compartment_0.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt_compartment_0.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_compartment_0.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_compartment_0.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment_0.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_compartment_0.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment_0.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_compartment_0.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment_0.elmt_reaction_30 = Reacs.elmt_reaction_30;
        elmt_compartment_0.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment_0.elmt_product58 = Reacs.elmt_product58;
        elmt_compartment_0.elmt_product18 = Reacs.elmt_product18;

end MODEL1611280000;
