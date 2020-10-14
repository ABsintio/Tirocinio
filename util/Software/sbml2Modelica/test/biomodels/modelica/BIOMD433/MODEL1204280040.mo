within BIOMD433;
model MODEL1204280040 "Sarma2012 - Interaction topologies of MAPK cascade (M4_K2_QSS_PSEQ)" annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI1\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2011-07-20T15:39:03Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_1 elmt_compartment_1;
    Class_elmt_compartment_2 elmt_compartment_2;

    equation
        Reacs.elmt_parameter_11 = Params.elmt_parameter_11;
        Reacs.elmt_parameter_10 = Params.elmt_parameter_10;
        Reacs.elmt_parameter_9 = Params.elmt_parameter_9;
        Reacs.elmt_parameter_8 = Params.elmt_parameter_8;
        Reacs.elmt_parameter_7 = Params.elmt_parameter_7;
        Reacs.elmt_species_6 = elmt_compartment_1.elmt_species_6;
        Reacs.elmt_species_7 = elmt_compartment_1.elmt_species_7;
        Reacs.elmt_species_4 = elmt_compartment_1.elmt_species_4;
        Reacs.elmt_species_5 = elmt_compartment_1.elmt_species_5;
        Reacs.elmt_parameter_14 = Params.elmt_parameter_14;
        Reacs.elmt_species_8 = elmt_compartment_1.elmt_species_8;
        Reacs.elmt_parameter_13 = Params.elmt_parameter_13;
        Reacs.elmt_species_9 = elmt_compartment_1.elmt_species_9;
        Reacs.elmt_parameter_12 = Params.elmt_parameter_12;
        Reacs.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Reacs.elmt_parameter_6 = Params.elmt_parameter_6;
        Reacs.elmt_parameter_5 = Params.elmt_parameter_5;
        Reacs.elmt_parameter_4 = Params.elmt_parameter_4;
        Reacs.elmt_species_10 = elmt_compartment_1.elmt_species_10;
        Reacs.elmt_parameter_3 = Params.elmt_parameter_3;
        Reacs.elmt_parameter_2 = Params.elmt_parameter_2;
        Reacs.elmt_species_11 = elmt_compartment_1.elmt_species_11;
        Reacs.elmt_parameter_1 = Params.elmt_parameter_1;
        Reacs.elmt_species_2 = elmt_compartment_1.elmt_species_2;
        Reacs.elmt_species_3 = elmt_compartment_1.elmt_species_3;
        Reacs.elmt_species_1 = elmt_compartment_1.elmt_species_1;
        elmt_compartment_1.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment_1.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_compartment_1.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment_1.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment_1.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment_1.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment_1.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment_1.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment_1.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment_1.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment_1.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_compartment_1.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment_1.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment_1.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_compartment_1.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment_1.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment_1.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment_1.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment_1.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment_1.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment_1.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_compartment_1.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_compartment_1.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment_1.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment_1.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_compartment_1.elmt_product15 = Reacs.elmt_product15;
        elmt_compartment_1.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment_1.elmt_product19 = Reacs.elmt_product19;
        elmt_compartment_1.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_compartment_1.elmt_product17 = Reacs.elmt_product17;

end MODEL1204280040;
