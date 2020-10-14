within BIOMD431;
model MODEL1204280024 "Sarma2012 - Interaction topologies of MAPK cascade (M4_K2_PSEQ)" annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI1\">
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2011-12-13T09:37:45Z</dcterms:W3CDTF>
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
        Reacs.elmt_species_6 = elmt_compartment_1.elmt_species_6;
        Reacs.elmt_species_7 = elmt_compartment_1.elmt_species_7;
        Reacs.elmt_species_4 = elmt_compartment_1.elmt_species_4;
        Reacs.elmt_species_5 = elmt_compartment_1.elmt_species_5;
        Reacs.elmt_species_8 = elmt_compartment_1.elmt_species_8;
        Reacs.elmt_species_9 = elmt_compartment_1.elmt_species_9;
        Reacs.elmt_species_15 = elmt_compartment_1.elmt_species_15;
        Reacs.elmt_species_16 = elmt_compartment_1.elmt_species_16;
        Reacs.elmt_species_17 = elmt_compartment_1.elmt_species_17;
        Reacs.elmt_species_18 = elmt_compartment_1.elmt_species_18;
        Reacs.elmt_species_19 = elmt_compartment_1.elmt_species_19;
        Reacs.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Reacs.elmt_species_10 = elmt_compartment_1.elmt_species_10;
        Reacs.elmt_species_11 = elmt_compartment_1.elmt_species_11;
        Reacs.elmt_species_12 = elmt_compartment_1.elmt_species_12;
        Reacs.elmt_species_13 = elmt_compartment_1.elmt_species_13;
        Reacs.elmt_species_14 = elmt_compartment_1.elmt_species_14;
        Reacs.elmt_species_26 = elmt_compartment_1.elmt_species_26;
        Reacs.elmt_species_27 = elmt_compartment_1.elmt_species_27;
        Reacs.elmt_species_2 = elmt_compartment_1.elmt_species_2;
        Reacs.elmt_species_3 = elmt_compartment_1.elmt_species_3;
        Reacs.elmt_species_1 = elmt_compartment_1.elmt_species_1;
        Reacs.elmt_species_20 = elmt_compartment_1.elmt_species_20;
        Reacs.elmt_species_21 = elmt_compartment_1.elmt_species_21;
        Reacs.elmt_species_22 = elmt_compartment_1.elmt_species_22;
        Reacs.elmt_species_23 = elmt_compartment_1.elmt_species_23;
        Reacs.elmt_species_24 = elmt_compartment_1.elmt_species_24;
        Reacs.elmt_species_25 = elmt_compartment_1.elmt_species_25;
        elmt_compartment_1.elmt_product73 = Reacs.elmt_product73;
        elmt_compartment_1.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt_compartment_1.elmt_product71 = Reacs.elmt_product71;
        elmt_compartment_1.elmt_product78 = Reacs.elmt_product78;
        elmt_compartment_1.elmt_product76 = Reacs.elmt_product76;
        elmt_compartment_1.elmt_product75 = Reacs.elmt_product75;
        elmt_compartment_1.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt_compartment_1.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt_compartment_1.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_compartment_1.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_compartment_1.elmt_product68 = Reacs.elmt_product68;
        elmt_compartment_1.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_compartment_1.elmt_reactant53 = Reacs.elmt_reactant53;
        elmt_compartment_1.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_compartment_1.elmt_reactant59 = Reacs.elmt_reactant59;
        elmt_compartment_1.elmt_reactant55 = Reacs.elmt_reactant55;
        elmt_compartment_1.elmt_product79 = Reacs.elmt_product79;
        elmt_compartment_1.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment_1.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment_1.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_compartment_1.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_compartment_1.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_compartment_1.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_compartment_1.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_compartment_1.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment_1.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment_1.elmt_product22 = Reacs.elmt_product22;
        elmt_compartment_1.elmt_product20 = Reacs.elmt_product20;
        elmt_compartment_1.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_compartment_1.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_compartment_1.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_compartment_1.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment_1.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment_1.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_compartment_1.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_compartment_1.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment_1.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_compartment_1.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment_1.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment_1.elmt_product17 = Reacs.elmt_product17;
        elmt_compartment_1.elmt_product30 = Reacs.elmt_product30;
        elmt_compartment_1.elmt_product34 = Reacs.elmt_product34;
        elmt_compartment_1.elmt_product31 = Reacs.elmt_product31;
        elmt_compartment_1.elmt_reaction_27 = Reacs.elmt_reaction_27;
        elmt_compartment_1.elmt_reaction_28 = Reacs.elmt_reaction_28;
        elmt_compartment_1.elmt_reaction_25 = Reacs.elmt_reaction_25;
        elmt_compartment_1.elmt_reaction_26 = Reacs.elmt_reaction_26;
        elmt_compartment_1.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment_1.elmt_reaction_20 = Reacs.elmt_reaction_20;
        elmt_compartment_1.elmt_product25 = Reacs.elmt_product25;
        elmt_compartment_1.elmt_product24 = Reacs.elmt_product24;
        elmt_compartment_1.elmt_reaction_23 = Reacs.elmt_reaction_23;
        elmt_compartment_1.elmt_reaction_24 = Reacs.elmt_reaction_24;
        elmt_compartment_1.elmt_reaction_21 = Reacs.elmt_reaction_21;
        elmt_compartment_1.elmt_product28 = Reacs.elmt_product28;
        elmt_compartment_1.elmt_reaction_22 = Reacs.elmt_reaction_22;
        elmt_compartment_1.elmt_product40 = Reacs.elmt_product40;
        elmt_compartment_1.elmt_product43 = Reacs.elmt_product43;
        elmt_compartment_1.elmt_product42 = Reacs.elmt_product42;
        elmt_compartment_1.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment_1.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment_1.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment_1.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment_1.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment_1.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment_1.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment_1.elmt_reaction_16 = Reacs.elmt_reaction_16;
        elmt_compartment_1.elmt_reaction_17 = Reacs.elmt_reaction_17;
        elmt_compartment_1.elmt_reaction_14 = Reacs.elmt_reaction_14;
        elmt_compartment_1.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_compartment_1.elmt_reaction_15 = Reacs.elmt_reaction_15;
        elmt_compartment_1.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_compartment_1.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment_1.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment_1.elmt_reaction_18 = Reacs.elmt_reaction_18;
        elmt_compartment_1.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_compartment_1.elmt_reaction_19 = Reacs.elmt_reaction_19;
        elmt_compartment_1.elmt_product37 = Reacs.elmt_product37;
        elmt_compartment_1.elmt_product36 = Reacs.elmt_product36;
        elmt_compartment_1.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt_compartment_1.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_compartment_1.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_compartment_1.elmt_reaction_11 = Reacs.elmt_reaction_11;
        elmt_compartment_1.elmt_reactant61 = Reacs.elmt_reactant61;
        elmt_compartment_1.elmt_product51 = Reacs.elmt_product51;
        elmt_compartment_1.elmt_product50 = Reacs.elmt_product50;
        elmt_compartment_1.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt_compartment_1.elmt_reactant64 = Reacs.elmt_reactant64;
        elmt_compartment_1.elmt_product56 = Reacs.elmt_product56;
        elmt_compartment_1.elmt_product54 = Reacs.elmt_product54;
        elmt_compartment_1.elmt_reactant69 = Reacs.elmt_reactant69;
        elmt_compartment_1.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_compartment_1.elmt_product48 = Reacs.elmt_product48;
        elmt_compartment_1.elmt_product46 = Reacs.elmt_product46;
        elmt_compartment_1.elmt_reactant72 = Reacs.elmt_reactant72;
        elmt_compartment_1.elmt_product62 = Reacs.elmt_product62;
        elmt_compartment_1.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment_1.elmt_reactant74 = Reacs.elmt_reactant74;
        elmt_compartment_1.elmt_product60 = Reacs.elmt_product60;
        elmt_compartment_1.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment_1.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment_1.elmt_product67 = Reacs.elmt_product67;
        elmt_compartment_1.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt_compartment_1.elmt_product65 = Reacs.elmt_product65;
        elmt_compartment_1.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment_1.elmt_reactant77 = Reacs.elmt_reactant77;
        elmt_compartment_1.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment_1.elmt_product57 = Reacs.elmt_product57;

end MODEL1204280024;
