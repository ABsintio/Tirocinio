within BIOMD547;
model MODEL1403280000 "Talemi2014 - Arsenic toxicity and detoxification mechanisms in yeast" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-01-18T10:30:51Z</dcterms:W3CDTF>
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
    Class_elmt_compartment_4 elmt_compartment_4;
    Class_elmt_compartment_3 elmt_compartment_3;
    Class_elmt_compartment_2 elmt_compartment_2;

    equation
        Params.elmt_species_6 = elmt_compartment_2.elmt_species_6;
        Params.elmt_species_4 = elmt_compartment_1.elmt_species_4;
        Params.elmt_species_9 = elmt_compartment_3.elmt_species_9;
        Params.elmt_species_15 = elmt_compartment_3.elmt_species_15;
        Params.elmt_species_2 = elmt_compartment_4.elmt_species_2;
        Params.elmt_species_3 = elmt_compartment_4.elmt_species_3;
        Params.elmt_species_1 = elmt_compartment_4.elmt_species_1;
        Params.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Params.elmt_species_10 = elmt_compartment_3.elmt_species_10;
        Params.elmt_species_11 = elmt_compartment_3.elmt_species_11;
        Params.elmt_compartment_4 = elmt_compartment_4.elmt_compartment_4;
        Params.elmt_compartment_3 = elmt_compartment_3.elmt_compartment_3;
        Params.elmt_species_14 = elmt_compartment_3.elmt_species_14;
        Params.elmt_compartment_2 = elmt_compartment_2.elmt_compartment_2;
        Reacs.elmt_parameter_33 = Params.elmt_parameter_33;
        Reacs.elmt_parameter_32 = Params.elmt_parameter_32;
        Reacs.elmt_parameter_31 = Params.elmt_parameter_31;
        Reacs.elmt_parameter_30 = Params.elmt_parameter_30;
        Reacs.elmt_species_6 = elmt_compartment_2.elmt_species_6;
        Reacs.elmt_species_7 = elmt_compartment_4.elmt_species_7;
        Reacs.elmt_parameter_39 = Params.elmt_parameter_39;
        Reacs.elmt_species_4 = elmt_compartment_1.elmt_species_4;
        Reacs.elmt_parameter_38 = Params.elmt_parameter_38;
        Reacs.elmt_species_5 = elmt_compartment_3.elmt_species_5;
        Reacs.elmt_parameter_37 = Params.elmt_parameter_37;
        Reacs.elmt_parameter_36 = Params.elmt_parameter_36;
        Reacs.elmt_parameter_35 = Params.elmt_parameter_35;
        Reacs.elmt_species_9 = elmt_compartment_3.elmt_species_9;
        Reacs.elmt_parameter_34 = Params.elmt_parameter_34;
        Reacs.elmt_species_15 = elmt_compartment_3.elmt_species_15;
        Reacs.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Reacs.elmt_species_10 = elmt_compartment_3.elmt_species_10;
        Reacs.elmt_species_11 = elmt_compartment_3.elmt_species_11;
        Reacs.elmt_parameter_2 = Params.elmt_parameter_2;
        Reacs.elmt_compartment_4 = elmt_compartment_4.elmt_compartment_4;
        Reacs.elmt_compartment_3 = elmt_compartment_3.elmt_compartment_3;
        Reacs.elmt_compartment_2 = elmt_compartment_2.elmt_compartment_2;
        Reacs.elmt_species_14 = elmt_compartment_3.elmt_species_14;
        Reacs.elmt_parameter_22 = Params.elmt_parameter_22;
        Reacs.elmt_parameter_43 = Params.elmt_parameter_43;
        Reacs.elmt_parameter_42 = Params.elmt_parameter_42;
        Reacs.elmt_parameter_41 = Params.elmt_parameter_41;
        Reacs.elmt_parameter_40 = Params.elmt_parameter_40;
        Reacs.elmt_parameter_29 = Params.elmt_parameter_29;
        Reacs.elmt_parameter_28 = Params.elmt_parameter_28;
        Reacs.elmt_parameter_27 = Params.elmt_parameter_27;
        Reacs.elmt_parameter_26 = Params.elmt_parameter_26;
        Reacs.elmt_parameter_25 = Params.elmt_parameter_25;
        Reacs.elmt_species_2 = elmt_compartment_4.elmt_species_2;
        Reacs.elmt_species_3 = elmt_compartment_4.elmt_species_3;
        Reacs.elmt_species_1 = elmt_compartment_4.elmt_species_1;
        elmt_compartment_3.elmt_parameter_33 = Params.elmt_parameter_33;
        elmt_compartment_3.elmt_parameter_32 = Params.elmt_parameter_32;
        elmt_compartment_3.elmt_parameter_31 = Params.elmt_parameter_31;
        elmt_compartment_3.elmt_parameter_30 = Params.elmt_parameter_30;
        elmt_compartment_3.elmt_species_6 = elmt_compartment_2.elmt_species_6;
        elmt_compartment_3.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_compartment_3.elmt_parameter_35 = Params.elmt_parameter_35;
        elmt_compartment_3.elmt_parameter_34 = Params.elmt_parameter_34;
        elmt_compartment_3.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_compartment_3.elmt_compartment_4 = elmt_compartment_4.elmt_compartment_4;
        elmt_compartment_3.elmt_compartment_2 = elmt_compartment_2.elmt_compartment_2;
        elmt_compartment_3.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment_3.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment_3.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment_3.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment_3.elmt_product22 = Reacs.elmt_product22;
        elmt_compartment_3.elmt_parameter_29 = Params.elmt_parameter_29;
        elmt_compartment_3.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment_3.elmt_parameter_28 = Params.elmt_parameter_28;
        elmt_compartment_3.elmt_parameter_27 = Params.elmt_parameter_27;
        elmt_compartment_3.elmt_parameter_26 = Params.elmt_parameter_26;
        elmt_compartment_3.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment_3.elmt_parameter_25 = Params.elmt_parameter_25;
        elmt_compartment_3.elmt_parameter_24 = Params.elmt_parameter_24;
        elmt_compartment_3.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment_3.elmt_reaction_16 = Reacs.elmt_reaction_16;
        elmt_compartment_3.elmt_reaction_14 = Reacs.elmt_reaction_14;
        elmt_compartment_3.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment_3.elmt_species_1 = elmt_compartment_4.elmt_species_1;
        elmt_compartment_3.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_compartment_3.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_compartment_3.elmt_product17 = Reacs.elmt_product17;
        elmt_compartment_1.elmt_species_3 = elmt_compartment_4.elmt_species_3;
        elmt_compartment_1.elmt_reaction_18 = Reacs.elmt_reaction_18;
        elmt_compartment_1.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment_1.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_compartment_1.elmt_species_5 = elmt_compartment_3.elmt_species_5;
        elmt_compartment_1.elmt_parameter_38 = Params.elmt_parameter_38;
        elmt_compartment_1.elmt_parameter_37 = Params.elmt_parameter_37;
        elmt_compartment_1.elmt_parameter_36 = Params.elmt_parameter_36;
        elmt_compartment_1.elmt_compartment_4 = elmt_compartment_4.elmt_compartment_4;
        elmt_compartment_1.elmt_compartment_3 = elmt_compartment_3.elmt_compartment_3;
        elmt_compartment_1.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_compartment_2.elmt_parameter_9 = Params.elmt_parameter_9;
        elmt_compartment_2.elmt_parameter_8 = Params.elmt_parameter_8;
        elmt_compartment_2.elmt_parameter_7 = Params.elmt_parameter_7;
        elmt_compartment_2.elmt_parameter_6 = Params.elmt_parameter_6;
        elmt_compartment_2.elmt_parameter_5 = Params.elmt_parameter_5;
        elmt_compartment_4.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment_4.elmt_parameter_19 = Params.elmt_parameter_19;
        elmt_compartment_4.elmt_parameter_39 = Params.elmt_parameter_39;
        elmt_compartment_4.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_compartment_4.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment_4.elmt_product27 = Reacs.elmt_product27;
        elmt_compartment_4.elmt_parameter_4 = Params.elmt_parameter_4;
        elmt_compartment_4.elmt_product25 = Reacs.elmt_product25;
        elmt_compartment_4.elmt_product24 = Reacs.elmt_product24;
        elmt_compartment_4.elmt_compartment_3 = elmt_compartment_3.elmt_compartment_3;
        elmt_compartment_4.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment_4.elmt_parameter_22 = Params.elmt_parameter_22;
        elmt_compartment_4.elmt_parameter_21 = Params.elmt_parameter_21;
        elmt_compartment_4.elmt_parameter_42 = Params.elmt_parameter_42;
        elmt_compartment_4.elmt_parameter_20 = Params.elmt_parameter_20;
        elmt_compartment_4.elmt_parameter_41 = Params.elmt_parameter_41;
        elmt_compartment_4.elmt_parameter_40 = Params.elmt_parameter_40;
        elmt_compartment_4.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment_4.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment_4.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment_4.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment_4.elmt_parameter_28 = Params.elmt_parameter_28;
        elmt_compartment_4.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment_4.elmt_parameter_25 = Params.elmt_parameter_25;
        elmt_compartment_4.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment_4.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment_4.elmt_reaction_17 = Reacs.elmt_reaction_17;
        elmt_compartment_4.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_compartment_4.elmt_reaction_15 = Reacs.elmt_reaction_15;
        elmt_compartment_4.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_compartment_4.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment_4.elmt_reaction_18 = Reacs.elmt_reaction_18;
        elmt_compartment_4.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment_4.elmt_reaction_10 = Reacs.elmt_reaction_10;

end MODEL1403280000;
