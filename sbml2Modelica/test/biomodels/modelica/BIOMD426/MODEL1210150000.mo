within BIOMD426;
model MODEL1210150000 "Mosca2012 - Central Carbon Metabolism Regulated by AKT" annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2012-09-03T15:27:35Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>ettore.mosca@itb.cnr.it</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Mosca</vCard:Family>
                    <vCard:Given>Ettore</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>ITB-CNR</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>roberta.alfieri@itb.cnr.it</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Alfieri</vCard:Family>
                    <vCard:Given>Roberta</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>ITB-CNR</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:modified>
              <rdf:Description>
                <dcterms:W3CDTF>2012-10-02T16:44:21</dcterms:W3CDTF>
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
        Params.elmt_species_20 = elmt_compartment_1.elmt_species_20;
        Reacs.elmt_parameter_11 = Params.elmt_parameter_11;
        Reacs.elmt_parameter_10 = Params.elmt_parameter_10;
        Reacs.elmt_parameter_17 = Params.elmt_parameter_17;
        Reacs.elmt_parameter_15 = Params.elmt_parameter_15;
        Reacs.elmt_parameter_13 = Params.elmt_parameter_13;
        Reacs.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Reacs.elmt_parameter_22 = Params.elmt_parameter_22;
        Reacs.elmt_parameter_27 = Params.elmt_parameter_27;
        Reacs.elmt_parameter_26 = Params.elmt_parameter_26;
        Reacs.elmt_parameter_24 = Params.elmt_parameter_24;
        Reacs.elmt_species_2 = elmt_compartment_1.elmt_species_2;
        Reacs.elmt_species_3 = elmt_compartment_1.elmt_species_3;
        Reacs.elmt_species_1 = elmt_compartment_1.elmt_species_1;
        Reacs.elmt_parameter_33 = Params.elmt_parameter_33;
        Reacs.elmt_parameter_32 = Params.elmt_parameter_32;
        Reacs.elmt_parameter_31 = Params.elmt_parameter_31;
        Reacs.elmt_parameter_30 = Params.elmt_parameter_30;
        Reacs.elmt_parameter_39 = Params.elmt_parameter_39;
        Reacs.elmt_parameter_38 = Params.elmt_parameter_38;
        Reacs.elmt_parameter_37 = Params.elmt_parameter_37;
        Reacs.elmt_parameter_36 = Params.elmt_parameter_36;
        Reacs.elmt_parameter_35 = Params.elmt_parameter_35;
        Reacs.elmt_parameter_34 = Params.elmt_parameter_34;
        Reacs.elmt_species_15 = elmt_compartment_1.elmt_species_15;
        Reacs.elmt_species_16 = elmt_compartment_1.elmt_species_16;
        Reacs.elmt_species_17 = elmt_compartment_1.elmt_species_17;
        Reacs.elmt_species_18 = elmt_compartment_1.elmt_species_18;
        Reacs.elmt_species_19 = elmt_compartment_1.elmt_species_19;
        Reacs.elmt_species_10 = elmt_compartment_1.elmt_species_10;
        Reacs.elmt_species_11 = elmt_compartment_1.elmt_species_11;
        Reacs.elmt_species_12 = elmt_compartment_1.elmt_species_12;
        Reacs.elmt_species_13 = elmt_compartment_1.elmt_species_13;
        Reacs.elmt_species_14 = elmt_compartment_1.elmt_species_14;
        Reacs.elmt_parameter_44 = Params.elmt_parameter_44;
        Reacs.elmt_parameter_43 = Params.elmt_parameter_43;
        Reacs.elmt_parameter_42 = Params.elmt_parameter_42;
        Reacs.elmt_parameter_41 = Params.elmt_parameter_41;
        Reacs.elmt_parameter_40 = Params.elmt_parameter_40;
        Reacs.elmt_parameter_49 = Params.elmt_parameter_49;
        Reacs.elmt_parameter_48 = Params.elmt_parameter_48;
        Reacs.elmt_parameter_47 = Params.elmt_parameter_47;
        Reacs.elmt_parameter_46 = Params.elmt_parameter_46;
        Reacs.elmt_parameter_45 = Params.elmt_parameter_45;
        Reacs.elmt_species_26 = elmt_compartment_1.elmt_species_26;
        Reacs.elmt_species_27 = elmt_compartment_1.elmt_species_27;
        Reacs.elmt_species_28 = elmt_compartment_1.elmt_species_28;
        Reacs.elmt_species_29 = elmt_compartment_1.elmt_species_29;
        Reacs.elmt_species_20 = elmt_compartment_1.elmt_species_20;
        Reacs.elmt_species_21 = elmt_compartment_1.elmt_species_21;
        Reacs.elmt_species_22 = elmt_compartment_1.elmt_species_22;
        Reacs.elmt_species_23 = elmt_compartment_1.elmt_species_23;
        Reacs.elmt_species_24 = elmt_compartment_1.elmt_species_24;
        Reacs.elmt_species_25 = elmt_compartment_1.elmt_species_25;
        Reacs.elmt_parameter_55 = Params.elmt_parameter_55;
        Reacs.elmt_parameter_54 = Params.elmt_parameter_54;
        Reacs.elmt_parameter_53 = Params.elmt_parameter_53;
        Reacs.elmt_parameter_52 = Params.elmt_parameter_52;
        Reacs.elmt_parameter_51 = Params.elmt_parameter_51;
        Reacs.elmt_parameter_50 = Params.elmt_parameter_50;
        Reacs.elmt_parameter_9 = Params.elmt_parameter_9;
        Reacs.elmt_parameter_8 = Params.elmt_parameter_8;
        Reacs.elmt_parameter_7 = Params.elmt_parameter_7;
        Reacs.elmt_parameter_59 = Params.elmt_parameter_59;
        Reacs.elmt_parameter_58 = Params.elmt_parameter_58;
        Reacs.elmt_parameter_57 = Params.elmt_parameter_57;
        Reacs.elmt_parameter_56 = Params.elmt_parameter_56;
        Reacs.elmt_species_30 = elmt_compartment_1.elmt_species_30;
        Reacs.elmt_species_31 = elmt_compartment_1.elmt_species_31;
        Reacs.elmt_parameter_4 = Params.elmt_parameter_4;
        Reacs.elmt_species_32 = elmt_compartment_1.elmt_species_32;
        Reacs.elmt_species_33 = elmt_compartment_1.elmt_species_33;
        Reacs.elmt_species_34 = elmt_compartment_1.elmt_species_34;
        Reacs.elmt_parameter_66 = Params.elmt_parameter_66;
        Reacs.elmt_parameter_65 = Params.elmt_parameter_65;
        Reacs.elmt_parameter_64 = Params.elmt_parameter_64;
        Reacs.elmt_parameter_63 = Params.elmt_parameter_63;
        Reacs.elmt_parameter_62 = Params.elmt_parameter_62;
        Reacs.elmt_parameter_61 = Params.elmt_parameter_61;
        Reacs.elmt_parameter_60 = Params.elmt_parameter_60;
        Reacs.elmt_parameter_69 = Params.elmt_parameter_69;
        Reacs.elmt_parameter_68 = Params.elmt_parameter_68;
        Reacs.elmt_parameter_67 = Params.elmt_parameter_67;
        Reacs.elmt_parameter_77 = Params.elmt_parameter_77;
        Reacs.elmt_parameter_76 = Params.elmt_parameter_76;
        Reacs.elmt_parameter_75 = Params.elmt_parameter_75;
        Reacs.elmt_parameter_74 = Params.elmt_parameter_74;
        Reacs.elmt_parameter_73 = Params.elmt_parameter_73;
        Reacs.elmt_parameter_72 = Params.elmt_parameter_72;
        Reacs.elmt_parameter_71 = Params.elmt_parameter_71;
        Reacs.elmt_parameter_70 = Params.elmt_parameter_70;
        Reacs.elmt_species_6 = elmt_compartment_1.elmt_species_6;
        Reacs.elmt_species_7 = elmt_compartment_1.elmt_species_7;
        Reacs.elmt_species_4 = elmt_compartment_1.elmt_species_4;
        Reacs.elmt_species_5 = elmt_compartment_1.elmt_species_5;
        Reacs.elmt_parameter_79 = Params.elmt_parameter_79;
        Reacs.elmt_species_8 = elmt_compartment_1.elmt_species_8;
        Reacs.elmt_parameter_78 = Params.elmt_parameter_78;
        Reacs.elmt_species_9 = elmt_compartment_1.elmt_species_9;
        Reacs.elmt_parameter_80 = Params.elmt_parameter_80;
        Reacs.elmt_parameter_86 = Params.elmt_parameter_86;
        Reacs.elmt_parameter_85 = Params.elmt_parameter_85;
        Reacs.elmt_parameter_84 = Params.elmt_parameter_84;
        Reacs.elmt_parameter_83 = Params.elmt_parameter_83;
        Reacs.elmt_parameter_82 = Params.elmt_parameter_82;
        Reacs.elmt_parameter_81 = Params.elmt_parameter_81;
        elmt_compartment_1.elmt_product72 = Reacs.elmt_product72;
        elmt_compartment_1.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_compartment_1.elmt_product76 = Reacs.elmt_product76;
        elmt_compartment_1.elmt_product75 = Reacs.elmt_product75;
        elmt_compartment_1.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt_compartment_1.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_compartment_1.elmt_product70 = Reacs.elmt_product70;
        elmt_compartment_1.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_compartment_1.elmt_product85 = Reacs.elmt_product85;
        elmt_compartment_1.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_compartment_1.elmt_product82 = Reacs.elmt_product82;
        elmt_compartment_1.elmt_product80 = Reacs.elmt_product80;
        elmt_compartment_1.elmt_product93 = Reacs.elmt_product93;
        elmt_compartment_1.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_compartment_1.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment_1.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment_1.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_compartment_1.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_compartment_1.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_compartment_1.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_compartment_1.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_compartment_1.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment_1.elmt_product23 = Reacs.elmt_product23;
        elmt_compartment_1.elmt_product22 = Reacs.elmt_product22;
        elmt_compartment_1.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment_1.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_compartment_1.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_compartment_1.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_compartment_1.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment_1.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_compartment_1.elmt_product15 = Reacs.elmt_product15;
        elmt_compartment_1.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment_1.elmt_product19 = Reacs.elmt_product19;
        elmt_compartment_1.elmt_product17 = Reacs.elmt_product17;
        elmt_compartment_1.elmt_product30 = Reacs.elmt_product30;
        elmt_compartment_1.elmt_reactant86 = Reacs.elmt_reactant86;
        elmt_compartment_1.elmt_product31 = Reacs.elmt_product31;
        elmt_compartment_1.elmt_reactant88 = Reacs.elmt_reactant88;
        elmt_compartment_1.elmt_reaction_27 = Reacs.elmt_reaction_27;
        elmt_compartment_1.elmt_reaction_28 = Reacs.elmt_reaction_28;
        elmt_compartment_1.elmt_reaction_25 = Reacs.elmt_reaction_25;
        elmt_compartment_1.elmt_reaction_26 = Reacs.elmt_reaction_26;
        elmt_compartment_1.elmt_reaction_29 = Reacs.elmt_reaction_29;
        elmt_compartment_1.elmt_product27 = Reacs.elmt_product27;
        elmt_compartment_1.elmt_reaction_20 = Reacs.elmt_reaction_20;
        elmt_compartment_1.elmt_product26 = Reacs.elmt_product26;
        elmt_compartment_1.elmt_parameter_3 = Params.elmt_parameter_3;
        elmt_compartment_1.elmt_reaction_23 = Reacs.elmt_reaction_23;
        elmt_compartment_1.elmt_parameter_2 = Params.elmt_parameter_2;
        elmt_compartment_1.elmt_reaction_24 = Reacs.elmt_reaction_24;
        elmt_compartment_1.elmt_parameter_1 = Params.elmt_parameter_1;
        elmt_compartment_1.elmt_reaction_21 = Reacs.elmt_reaction_21;
        elmt_compartment_1.elmt_reaction_22 = Reacs.elmt_reaction_22;
        elmt_compartment_1.elmt_reactant94 = Reacs.elmt_reactant94;
        elmt_compartment_1.elmt_product41 = Reacs.elmt_product41;
        elmt_compartment_1.elmt_product44 = Reacs.elmt_product44;
        elmt_compartment_1.elmt_product43 = Reacs.elmt_product43;
        elmt_compartment_1.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment_1.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment_1.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_compartment_1.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment_1.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment_1.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment_1.elmt_reaction_16 = Reacs.elmt_reaction_16;
        elmt_compartment_1.elmt_reaction_17 = Reacs.elmt_reaction_17;
        elmt_compartment_1.elmt_reaction_14 = Reacs.elmt_reaction_14;
        elmt_compartment_1.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_compartment_1.elmt_reaction_15 = Reacs.elmt_reaction_15;
        elmt_compartment_1.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_compartment_1.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment_1.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment_1.elmt_reaction_18 = Reacs.elmt_reaction_18;
        elmt_compartment_1.elmt_reaction_19 = Reacs.elmt_reaction_19;
        elmt_compartment_1.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_compartment_1.elmt_product37 = Reacs.elmt_product37;
        elmt_compartment_1.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt_compartment_1.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_compartment_1.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_compartment_1.elmt_reaction_11 = Reacs.elmt_reaction_11;
        elmt_compartment_1.elmt_reactant61 = Reacs.elmt_reactant61;
        elmt_compartment_1.elmt_product50 = Reacs.elmt_product50;
        elmt_compartment_1.elmt_product55 = Reacs.elmt_product55;
        elmt_compartment_1.elmt_product54 = Reacs.elmt_product54;
        elmt_compartment_1.elmt_reactant60 = Reacs.elmt_reactant60;
        elmt_compartment_1.elmt_reactant69 = Reacs.elmt_reactant69;
        elmt_compartment_1.elmt_reactant65 = Reacs.elmt_reactant65;
        elmt_compartment_1.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_compartment_1.elmt_product46 = Reacs.elmt_product46;
        elmt_compartment_1.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment_1.elmt_reactant73 = Reacs.elmt_reactant73;
        elmt_compartment_1.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment_1.elmt_product67 = Reacs.elmt_product67;
        elmt_compartment_1.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment_1.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment_1.elmt_reactant71 = Reacs.elmt_reactant71;
        elmt_compartment_1.elmt_reactant77 = Reacs.elmt_reactant77;
        elmt_compartment_1.elmt_product59 = Reacs.elmt_product59;

end MODEL1210150000;
