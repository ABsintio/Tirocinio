within BIOMD429;
model MODEL1209110001 "Schaber2012 - Hog pathway in yeast" annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2010-07-22T09:44:09Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Schaber</vCard:Family>
                    <vCard:Given>Joerg</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>OvGU</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
                                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_1 elmt_compartment_1;
    Class_elmt_compartment_4 elmt_compartment_4;
    Class_elmt_compartment_3 elmt_compartment_3;
    Class_elmt_compartment_2 elmt_compartment_2;

    equation
        Params.elmt_species_6 = elmt_compartment_1.elmt_species_6;
        Params.elmt_species_7 = elmt_compartment_1.elmt_species_7;
        Params.elmt_species_4 = elmt_compartment_1.elmt_species_4;
        Params.elmt_species_5 = elmt_compartment_1.elmt_species_5;
        Params.elmt_species_8 = elmt_compartment_1.elmt_species_8;
        Params.elmt_species_15 = elmt_compartment_4.elmt_species_15;
        Params.elmt_species_3 = elmt_compartment_1.elmt_species_3;
        Params.elmt_species_1 = elmt_compartment_1.elmt_species_1;
        Params.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Params.elmt_species_10 = elmt_compartment_1.elmt_species_10;
        Params.elmt_species_11 = elmt_compartment_1.elmt_species_11;
        Params.elmt_compartment_4 = elmt_compartment_4.elmt_compartment_4;
        Params.elmt_compartment_3 = elmt_compartment_3.elmt_compartment_3;
        Params.elmt_species_13 = elmt_compartment_2.elmt_species_13;
        Params.elmt_compartment_2 = elmt_compartment_2.elmt_compartment_2;
        Params.elmt_species_14 = elmt_compartment_4.elmt_species_14;
        Reacs.elmt_parameter_16 = Params.elmt_parameter_16;
        Reacs.elmt_parameter_58 = Params.elmt_parameter_58;
        Reacs.elmt_parameter_57 = Params.elmt_parameter_57;
        Reacs.elmt_parameter_56 = Params.elmt_parameter_56;
        Reacs.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Reacs.elmt_compartment_4 = elmt_compartment_4.elmt_compartment_4;
        Reacs.elmt_compartment_2 = elmt_compartment_2.elmt_compartment_2;
        Reacs.elmt_parameter_22 = Params.elmt_parameter_22;
        Reacs.elmt_parameter_65 = Params.elmt_parameter_65;
        Reacs.elmt_parameter_63 = Params.elmt_parameter_63;
        Reacs.elmt_parameter_28 = Params.elmt_parameter_28;
        Reacs.elmt_parameter_27 = Params.elmt_parameter_27;
        Reacs.elmt_parameter_26 = Params.elmt_parameter_26;
        Reacs.elmt_parameter_25 = Params.elmt_parameter_25;
        Reacs.elmt_species_2 = elmt_compartment_1.elmt_species_2;
        Reacs.elmt_species_3 = elmt_compartment_1.elmt_species_3;
        Reacs.elmt_species_1 = elmt_compartment_1.elmt_species_1;
        Reacs.elmt_parameter_77 = Params.elmt_parameter_77;
        Reacs.elmt_parameter_76 = Params.elmt_parameter_76;
        Reacs.elmt_parameter_75 = Params.elmt_parameter_75;
        Reacs.elmt_parameter_74 = Params.elmt_parameter_74;
        Reacs.elmt_parameter_73 = Params.elmt_parameter_73;
        Reacs.elmt_parameter_72 = Params.elmt_parameter_72;
        Reacs.elmt_parameter_71 = Params.elmt_parameter_71;
        Reacs.elmt_species_6 = elmt_compartment_1.elmt_species_6;
        Reacs.elmt_species_7 = elmt_compartment_1.elmt_species_7;
        Reacs.elmt_species_4 = elmt_compartment_1.elmt_species_4;
        Reacs.elmt_parameter_39 = Params.elmt_parameter_39;
        Reacs.elmt_species_5 = elmt_compartment_1.elmt_species_5;
        Reacs.elmt_species_8 = elmt_compartment_1.elmt_species_8;
        Reacs.elmt_parameter_35 = Params.elmt_parameter_35;
        Reacs.elmt_parameter_79 = Params.elmt_parameter_79;
        Reacs.elmt_species_9 = elmt_compartment_1.elmt_species_9;
        Reacs.elmt_parameter_78 = Params.elmt_parameter_78;
        Reacs.elmt_species_15 = elmt_compartment_4.elmt_species_15;
        Reacs.elmt_parameter_80 = Params.elmt_parameter_80;
        Reacs.elmt_species_10 = elmt_compartment_1.elmt_species_10;
        Reacs.elmt_species_11 = elmt_compartment_1.elmt_species_11;
        Reacs.elmt_species_12 = elmt_compartment_1.elmt_species_12;
        Reacs.elmt_species_13 = elmt_compartment_2.elmt_species_13;
        Reacs.elmt_species_14 = elmt_compartment_4.elmt_species_14;
        Reacs.elmt_parameter_88 = Params.elmt_parameter_88;
        Reacs.elmt_parameter_87 = Params.elmt_parameter_87;
        Reacs.elmt_parameter_86 = Params.elmt_parameter_86;
        Reacs.elmt_parameter_41 = Params.elmt_parameter_41;
        Reacs.elmt_parameter_85 = Params.elmt_parameter_85;
        Reacs.elmt_parameter_84 = Params.elmt_parameter_84;
        Reacs.elmt_parameter_83 = Params.elmt_parameter_83;
        Reacs.elmt_parameter_82 = Params.elmt_parameter_82;
        Reacs.elmt_parameter_81 = Params.elmt_parameter_81;
        elmt_compartment_1.elmt_parameter_54 = Params.elmt_parameter_54;
        elmt_compartment_1.elmt_parameter_53 = Params.elmt_parameter_53;
        elmt_compartment_1.elmt_parameter_52 = Params.elmt_parameter_52;
        elmt_compartment_1.elmt_parameter_51 = Params.elmt_parameter_51;
        elmt_compartment_1.elmt_parameter_7 = Params.elmt_parameter_7;
        elmt_compartment_1.elmt_parameter_18 = Params.elmt_parameter_18;
        elmt_compartment_1.elmt_parameter_16 = Params.elmt_parameter_16;
        elmt_compartment_1.elmt_parameter_58 = Params.elmt_parameter_58;
        elmt_compartment_1.elmt_parameter_57 = Params.elmt_parameter_57;
        elmt_compartment_1.elmt_parameter_5 = Params.elmt_parameter_5;
        elmt_compartment_1.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment_1.elmt_product24 = Reacs.elmt_product24;
        elmt_compartment_1.elmt_parameter_2 = Params.elmt_parameter_2;
        elmt_compartment_1.elmt_parameter_1 = Params.elmt_parameter_1;
        elmt_compartment_1.elmt_parameter_21 = Params.elmt_parameter_21;
        elmt_compartment_1.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment_1.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_compartment_1.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment_1.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment_1.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment_1.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_compartment_1.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment_1.elmt_parameter_26 = Params.elmt_parameter_26;
        elmt_compartment_1.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_compartment_1.elmt_parameter_25 = Params.elmt_parameter_25;
        elmt_compartment_1.elmt_parameter_69 = Params.elmt_parameter_69;
        elmt_compartment_1.elmt_reaction_14 = Reacs.elmt_reaction_14;
        elmt_compartment_1.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_compartment_1.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_compartment_1.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment_1.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment_1.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_compartment_1.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt_compartment_1.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_compartment_1.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_compartment_1.elmt_reaction_11 = Reacs.elmt_reaction_11;
        elmt_compartment_1.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment_1.elmt_parameter_38 = Params.elmt_parameter_38;
        elmt_compartment_1.elmt_parameter_37 = Params.elmt_parameter_37;
        elmt_compartment_1.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_compartment_1.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_compartment_1.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment_1.elmt_parameter_44 = Params.elmt_parameter_44;
        elmt_compartment_1.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment_1.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment_1.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment_1.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment_1.elmt_parameter_41 = Params.elmt_parameter_41;
        elmt_compartment_1.elmt_parameter_40 = Params.elmt_parameter_40;
        elmt_compartment_1.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment_1.elmt_product21 = Reacs.elmt_product21;
        elmt_compartment_1.elmt_product20 = Reacs.elmt_product20;
        elmt_compartment_1.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment_1.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment_1.elmt_parameter_46 = Params.elmt_parameter_46;
        elmt_compartment_1.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment_1.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment_1.elmt_parameter_45 = Params.elmt_parameter_45;
        elmt_compartment_1.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment_1.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment_1.elmt_product18 = Reacs.elmt_product18;
        elmt_compartment_3.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        elmt_compartment_3.elmt_parameter_13 = Params.elmt_parameter_13;
        elmt_compartment_4.elmt_reaction_16 = Reacs.elmt_reaction_16;
        elmt_compartment_4.elmt_reaction_15 = Reacs.elmt_reaction_15;
        elmt_compartment_4.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_compartment_4.elmt_product26 = Reacs.elmt_product26;
        elmt_compartment_4.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_compartment_4.elmt_parameter_59 = Params.elmt_parameter_59;
        elmt_compartment_4.elmt_product28 = Reacs.elmt_product28;
        elmt_compartment_2.elmt_product12 = Reacs.elmt_product12;
        elmt_compartment_2.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment_2.elmt_species_1 = elmt_compartment_1.elmt_species_1;
        elmt_compartment_2.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        elmt_compartment_2.elmt_compartment_3 = elmt_compartment_3.elmt_compartment_3;

end MODEL1209110001;
