within BIOMD323;
model Kim2011_Oscillator_SimpleIII "Kim2011_Oscillator_SimpleIII" annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
      <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
        <rdf:Description rdf:about=\"#COPASI1\">
          <dcterms:created>
            <rdf:Description>
              <dcterms:W3CDTF>2010-12-08T16:54:04Z</dcterms:W3CDTF>
            </rdf:Description>
          </dcterms:created>
        </rdf:Description>
      </rdf:RDF>
    </COPASI>
                                <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
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
        Reacs.elmt_parameter_3 = Params.elmt_parameter_3;
        Reacs.elmt_parameter_2 = Params.elmt_parameter_2;
        Reacs.elmt_parameter_1 = Params.elmt_parameter_1;
        elmt_compartment_1.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment_1.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment_1.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment_1.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment_1.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment_1.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment_1.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment_1.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment_1.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment_1.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment_1.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment_1.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment_1.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_compartment_1.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment_1.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment_1.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment_1.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_compartment_1.elmt_reactant9 = Reacs.elmt_reactant9;

end Kim2011_Oscillator_SimpleIII;
