within BIOMD300;
model Schmierer2010_FIH_Ankyrins "Schmierer2010_FIH_Ankyrins" annotation(Documentation(info="<annotation>
    <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
        <rdf:Description rdf:about=\"#COPASI1\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2010-08-17T14:11:32+00:00</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
          <dcterms:creator>
            <rdf:Description>
              <vCard:EMAIL>Bernhard.Schmierer@ymail.com</vCard:EMAIL>
              <vCard:N>
                <rdf:Description>
                  <vCard:Family>Schmierer</vCard:Family>
                  <vCard:Given>Bernhard</vCard:Given>
                </rdf:Description>
              </vCard:N>
              <vCard:ORG>
                <rdf:Description>
                  <vCard:Orgname>Oxford Centre for Integrative Systems Biology (OCISB), University of Oxford, Oxford United Kingdom</vCard:Orgname>
                </rdf:Description>
              </vCard:ORG>
            </rdf:Description>
          </dcterms:creator>
          <dcterms:modified rdf:parseType=\"Resource\">
            <dcterms:W3CDTF>2010-08-17T14:29:50+00:00</dcterms:W3CDTF>
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
        Params.elmt_species_3 = elmt_compartment_1.elmt_species_3;
        Params.elmt_species_5 = elmt_compartment_1.elmt_species_5;
        Params.elmt_species_9 = elmt_compartment_1.elmt_species_9;
        Reacs.elmt_parameter_9 = Params.elmt_parameter_9;
        Reacs.elmt_parameter_8 = Params.elmt_parameter_8;
        Reacs.elmt_parameter_7 = Params.elmt_parameter_7;
        Reacs.elmt_species_7 = elmt_compartment_1.elmt_species_7;
        Reacs.elmt_parameter_18 = Params.elmt_parameter_18;
        Reacs.elmt_parameter_17 = Params.elmt_parameter_17;
        Reacs.elmt_parameter_16 = Params.elmt_parameter_16;
        Reacs.elmt_species_5 = elmt_compartment_1.elmt_species_5;
        Reacs.elmt_parameter_14 = Params.elmt_parameter_14;
        Reacs.elmt_parameter_13 = Params.elmt_parameter_13;
        Reacs.elmt_species_8 = elmt_compartment_1.elmt_species_8;
        Reacs.elmt_species_9 = elmt_compartment_1.elmt_species_9;
        Reacs.elmt_species_2 = elmt_compartment_1.elmt_species_2;
        Reacs.elmt_species_3 = elmt_compartment_1.elmt_species_3;
        Reacs.elmt_species_1 = elmt_compartment_1.elmt_species_1;
        Reacs.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Reacs.elmt_parameter_6 = Params.elmt_parameter_6;
        Reacs.elmt_parameter_4 = Params.elmt_parameter_4;
        Reacs.elmt_species_10 = elmt_compartment_1.elmt_species_10;
        Reacs.elmt_species_11 = elmt_compartment_1.elmt_species_11;
        Reacs.elmt_parameter_1 = Params.elmt_parameter_1;
        elmt_compartment_1.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment_1.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment_1.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment_1.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment_1.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment_1.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment_1.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment_1.elmt_parameter_7 = Params.elmt_parameter_7;
        elmt_compartment_1.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment_1.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment_1.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment_1.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment_1.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment_1.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment_1.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_compartment_1.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_compartment_1.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment_1.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment_1.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_compartment_1.elmt_parameter_5 = Params.elmt_parameter_5;
        elmt_compartment_1.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment_1.elmt_parameter_4 = Params.elmt_parameter_4;
        elmt_compartment_1.elmt_parameter_2 = Params.elmt_parameter_2;
        elmt_compartment_1.elmt_reaction_10 = Reacs.elmt_reaction_10;

end Schmierer2010_FIH_Ankyrins;
