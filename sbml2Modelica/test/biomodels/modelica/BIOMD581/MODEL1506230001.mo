within BIOMD581;
model MODEL1506230001 "DallePezze2012 - TSC-independent mTORC2 regulation" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2010-03-29T18:31:00Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>piero.dalle-pezze@ncl.ac.uk</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Dalle Pezze</vCard:Family>
                    <vCard:Given>Piero</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>Newcastle University</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
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
        Reacs.elmt_species_6 = elmt_compartment_2.elmt_species_6;
        Reacs.elmt_species_7 = elmt_compartment_2.elmt_species_7;
        Reacs.elmt_species_4 = elmt_compartment_2.elmt_species_4;
        Reacs.elmt_species_5 = elmt_compartment_2.elmt_species_5;
        Reacs.elmt_species_8 = elmt_compartment_2.elmt_species_8;
        Reacs.elmt_species_9 = elmt_compartment_2.elmt_species_9;
        Reacs.elmt_species_15 = elmt_compartment_1.elmt_species_15;
        Reacs.elmt_species_16 = elmt_compartment_2.elmt_species_16;
        Reacs.elmt_species_17 = elmt_compartment_2.elmt_species_17;
        Reacs.elmt_species_18 = elmt_compartment_2.elmt_species_18;
        Reacs.elmt_species_19 = elmt_compartment_2.elmt_species_19;
        Reacs.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Reacs.elmt_species_10 = elmt_compartment_2.elmt_species_10;
        Reacs.elmt_species_11 = elmt_compartment_2.elmt_species_11;
        Reacs.elmt_species_12 = elmt_compartment_2.elmt_species_12;
        Reacs.elmt_species_13 = elmt_compartment_2.elmt_species_13;
        Reacs.elmt_compartment_2 = elmt_compartment_2.elmt_compartment_2;
        Reacs.elmt_species_14 = elmt_compartment_2.elmt_species_14;
        Reacs.elmt_species_27 = elmt_compartment_2.elmt_species_27;
        Reacs.elmt_species_28 = elmt_compartment_2.elmt_species_28;
        Reacs.elmt_species_2 = elmt_compartment_2.elmt_species_2;
        Reacs.elmt_species_3 = elmt_compartment_2.elmt_species_3;
        Reacs.elmt_species_1 = elmt_compartment_2.elmt_species_1;
        Reacs.elmt_species_41 = elmt_compartment_1.elmt_species_41;
        Reacs.elmt_species_20 = elmt_compartment_1.elmt_species_20;
        Reacs.elmt_species_42 = elmt_compartment_2.elmt_species_42;
        Reacs.elmt_species_21 = elmt_compartment_1.elmt_species_21;
        Reacs.elmt_species_22 = elmt_compartment_2.elmt_species_22;
        Reacs.elmt_species_47 = elmt_compartment_2.elmt_species_47;
        elmt_compartment_1.elmt_product95 = Reacs.elmt_product95;
        elmt_compartment_1.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_compartment_1.elmt_product33 = Reacs.elmt_product33;
        elmt_compartment_1.elmt_reactant93 = Reacs.elmt_reactant93;
        elmt_compartment_1.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_compartment_1.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment_1.elmt_product91 = Reacs.elmt_product91;
        elmt_compartment_1.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_compartment_1.elmt_reactant89 = Reacs.elmt_reactant89;
        elmt_compartment_1.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment_1.elmt_reaction_15 = Reacs.elmt_reaction_15;
        elmt_compartment_1.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment_1.elmt_reaction_19 = Reacs.elmt_reaction_19;
        elmt_compartment_1.elmt_product49 = Reacs.elmt_product49;
        elmt_compartment_1.elmt_reaction_41 = Reacs.elmt_reaction_41;
        elmt_compartment_1.elmt_product15 = Reacs.elmt_product15;
        elmt_compartment_1.elmt_product57 = Reacs.elmt_product57;
        elmt_compartment_1.elmt_reaction_23 = Reacs.elmt_reaction_23;
        elmt_compartment_2.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_compartment_2.elmt_product73 = Reacs.elmt_product73;
        elmt_compartment_2.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_compartment_2.elmt_product71 = Reacs.elmt_product71;
        elmt_compartment_2.elmt_product77 = Reacs.elmt_product77;
        elmt_compartment_2.elmt_product76 = Reacs.elmt_product76;
        elmt_compartment_2.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_compartment_2.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_compartment_2.elmt_reaction_61 = Reacs.elmt_reaction_61;
        elmt_compartment_2.elmt_product69 = Reacs.elmt_product69;
        elmt_compartment_2.elmt_product68 = Reacs.elmt_product68;
        elmt_compartment_2.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_compartment_2.elmt_product85 = Reacs.elmt_product85;
        elmt_compartment_2.elmt_reactant51 = Reacs.elmt_reactant51;
        elmt_compartment_2.elmt_product84 = Reacs.elmt_product84;
        elmt_compartment_2.elmt_product87 = Reacs.elmt_product87;
        elmt_compartment_2.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_compartment_2.elmt_reactant59 = Reacs.elmt_reactant59;
        elmt_compartment_2.elmt_product81 = Reacs.elmt_product81;
        elmt_compartment_2.elmt_reactant54 = Reacs.elmt_reactant54;
        elmt_compartment_2.elmt_product80 = Reacs.elmt_product80;
        elmt_compartment_2.elmt_reaction_53 = Reacs.elmt_reaction_53;
        elmt_compartment_2.elmt_reaction_55 = Reacs.elmt_reaction_55;
        elmt_compartment_2.elmt_product94 = Reacs.elmt_product94;
        elmt_compartment_2.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_compartment_2.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment_2.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment_2.elmt_product97 = Reacs.elmt_product97;
        elmt_compartment_2.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_compartment_2.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_compartment_2.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_compartment_2.elmt_product90 = Reacs.elmt_product90;
        elmt_compartment_2.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_compartment_2.elmt_reaction_40 = Reacs.elmt_reaction_40;
        elmt_compartment_2.elmt_reaction_46 = Reacs.elmt_reaction_46;
        elmt_compartment_2.elmt_reaction_44 = Reacs.elmt_reaction_44;
        elmt_compartment_2.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment_2.elmt_product23 = Reacs.elmt_product23;
        elmt_compartment_2.elmt_product22 = Reacs.elmt_product22;
        elmt_compartment_2.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment_2.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_compartment_2.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment_2.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment_2.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_compartment_2.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_compartment_2.elmt_reaction_31 = Reacs.elmt_reaction_31;
        elmt_compartment_2.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment_2.elmt_product19 = Reacs.elmt_product19;
        elmt_compartment_2.elmt_reaction_32 = Reacs.elmt_reaction_32;
        elmt_compartment_2.elmt_product18 = Reacs.elmt_product18;
        elmt_compartment_2.elmt_reaction_33 = Reacs.elmt_reaction_33;
        elmt_compartment_2.elmt_product30 = Reacs.elmt_product30;
        elmt_compartment_2.elmt_reactant83 = Reacs.elmt_reactant83;
        elmt_compartment_2.elmt_reactant86 = Reacs.elmt_reactant86;
        elmt_compartment_2.elmt_reactant82 = Reacs.elmt_reactant82;
        elmt_compartment_2.elmt_reactant88 = Reacs.elmt_reactant88;
        elmt_compartment_2.elmt_product27 = Reacs.elmt_product27;
        elmt_compartment_2.elmt_product26 = Reacs.elmt_product26;
        elmt_compartment_2.elmt_reaction_20 = Reacs.elmt_reaction_20;
        elmt_compartment_2.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment_2.elmt_reaction_23 = Reacs.elmt_reaction_23;
        elmt_compartment_2.elmt_reaction_22 = Reacs.elmt_reaction_22;
        elmt_compartment_2.elmt_product41 = Reacs.elmt_product41;
        elmt_compartment_2.elmt_reactant96 = Reacs.elmt_reactant96;
        elmt_compartment_2.elmt_product45 = Reacs.elmt_product45;
        elmt_compartment_2.elmt_reactant92 = Reacs.elmt_reactant92;
        elmt_compartment_2.elmt_product43 = Reacs.elmt_product43;
        elmt_compartment_2.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment_2.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment_2.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment_2.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_compartment_2.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_compartment_2.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment_2.elmt_reaction_16 = Reacs.elmt_reaction_16;
        elmt_compartment_2.elmt_reaction_17 = Reacs.elmt_reaction_17;
        elmt_compartment_2.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_compartment_2.elmt_reaction_14 = Reacs.elmt_reaction_14;
        elmt_compartment_2.elmt_reaction_15 = Reacs.elmt_reaction_15;
        elmt_compartment_2.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_compartment_2.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment_2.elmt_reaction_18 = Reacs.elmt_reaction_18;
        elmt_compartment_2.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_compartment_2.elmt_reaction_19 = Reacs.elmt_reaction_19;
        elmt_compartment_2.elmt_product37 = Reacs.elmt_product37;
        elmt_compartment_2.elmt_product36 = Reacs.elmt_product36;
        elmt_compartment_2.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt_compartment_2.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_compartment_2.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_compartment_2.elmt_reaction_11 = Reacs.elmt_reaction_11;
        elmt_compartment_2.elmt_product39 = Reacs.elmt_product39;
        elmt_compartment_2.elmt_product52 = Reacs.elmt_product52;
        elmt_compartment_2.elmt_reactant62 = Reacs.elmt_reactant62;
        elmt_compartment_2.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt_compartment_2.elmt_product55 = Reacs.elmt_product55;
        elmt_compartment_2.elmt_product53 = Reacs.elmt_product53;
        elmt_compartment_2.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_compartment_2.elmt_reactant67 = Reacs.elmt_reactant67;
        elmt_compartment_2.elmt_product47 = Reacs.elmt_product47;
        elmt_compartment_2.elmt_reactant72 = Reacs.elmt_reactant72;
        elmt_compartment_2.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment_2.elmt_product61 = Reacs.elmt_product61;
        elmt_compartment_2.elmt_reactant74 = Reacs.elmt_reactant74;
        elmt_compartment_2.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment_2.elmt_reactant75 = Reacs.elmt_reactant75;
        elmt_compartment_2.elmt_product60 = Reacs.elmt_product60;
        elmt_compartment_2.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment_2.elmt_product65 = Reacs.elmt_product65;
        elmt_compartment_2.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment_2.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt_compartment_2.elmt_product64 = Reacs.elmt_product64;
        elmt_compartment_2.elmt_reactant78 = Reacs.elmt_reactant78;
        elmt_compartment_2.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment_2.elmt_reactant79 = Reacs.elmt_reactant79;

end MODEL1506230001;
