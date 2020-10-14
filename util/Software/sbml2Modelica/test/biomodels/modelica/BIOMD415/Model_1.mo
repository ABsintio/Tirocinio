within BIOMD415;
model Model_1 "Mellor2012_LipooxygenasePathway" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2012-03-16T14:18:00Z</dcterms:W3CDTF>
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

    equation
        Reacs.elmt_parameter_9 = Params.elmt_parameter_9;
        Reacs.elmt_parameter_8 = Params.elmt_parameter_8;
        Reacs.elmt_parameter_7 = Params.elmt_parameter_7;
        Reacs.elmt_species_7 = elmt_compartment_1.elmt_species_7;
        Reacs.elmt_species_8 = elmt_compartment_1.elmt_species_8;
        Reacs.elmt_species_1 = elmt_compartment_1.elmt_species_1;
        Reacs.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Reacs.elmt_parameter_6 = Params.elmt_parameter_6;
        Reacs.elmt_parameter_5 = Params.elmt_parameter_5;
        Reacs.elmt_parameter_4 = Params.elmt_parameter_4;
        Reacs.elmt_parameter_3 = Params.elmt_parameter_3;
        Reacs.elmt_parameter_2 = Params.elmt_parameter_2;
        Reacs.elmt_parameter_1 = Params.elmt_parameter_1;
        elmt_compartment_1.elmt_product30 = Reacs.elmt_product30;
        elmt_compartment_1.elmt_product12 = Reacs.elmt_product12;
        elmt_compartment_1.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment_1.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment_1.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_compartment_1.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_compartment_1.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment_1.elmt_product26 = Reacs.elmt_product26;
        elmt_compartment_1.elmt_product25 = Reacs.elmt_product25;
        elmt_compartment_1.elmt_product24 = Reacs.elmt_product24;
        elmt_compartment_1.elmt_product28 = Reacs.elmt_product28;
        elmt_compartment_1.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment_1.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment_1.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment_1.elmt_product23 = Reacs.elmt_product23;
        elmt_compartment_1.elmt_product22 = Reacs.elmt_product22;
        elmt_compartment_1.elmt_product21 = Reacs.elmt_product21;
        elmt_compartment_1.elmt_product20 = Reacs.elmt_product20;
        elmt_compartment_1.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment_1.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment_1.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment_1.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment_1.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment_1.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment_1.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment_1.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment_1.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment_1.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment_1.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_compartment_1.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment_1.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment_1.elmt_product15 = Reacs.elmt_product15;
        elmt_compartment_1.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment_1.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment_1.elmt_product19 = Reacs.elmt_product19;
        elmt_compartment_1.elmt_product17 = Reacs.elmt_product17;

end Model_1;
