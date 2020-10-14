within BIOMD434;
model MODEL1206010000 "McAuley2012 - Whole-body Cholesterol Metabolism" annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2012-08-21T15:11:21Z</dcterms:W3CDTF>
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
    Class_elmt_Intestine elmt_Intestine;
    Class_elmt_PeripheralTissue elmt_PeripheralTissue;
    Class_elmt_Excreted elmt_Excreted;
    Class_elmt_Plasma elmt_Plasma;
    Class_elmt_Intake elmt_Intake;
    Class_elmt_HepaticTissue elmt_HepaticTissue;

    equation
        Reacs.elmt_species_7 = elmt_HepaticTissue.elmt_species_7;
        Reacs.elmt_species_4 = elmt_HepaticTissue.elmt_species_4;
        Reacs.elmt_species_5 = elmt_Intestine.elmt_species_5;
        Reacs.elmt_species_26 = elmt_PeripheralTissue.elmt_species_26;
        Reacs.elmt_species_15 = elmt_HepaticTissue.elmt_species_15;
        Reacs.elmt_species_28 = elmt_PeripheralTissue.elmt_species_28;
        Reacs.elmt_species_17 = elmt_Plasma.elmt_species_17;
        Reacs.elmt_species_18 = elmt_HepaticTissue.elmt_species_18;
        Reacs.elmt_species_2 = elmt_Intestine.elmt_species_2;
        Reacs.elmt_species_19 = elmt_HepaticTissue.elmt_species_19;
        Reacs.elmt_species_1 = elmt_Intake.elmt_species_1;
        Reacs.elmt_species_30 = elmt_Plasma.elmt_species_30;
        Reacs.elmt_species_31 = elmt_Plasma.elmt_species_31;
        Reacs.elmt_species_21 = elmt_Plasma.elmt_species_21;
        Reacs.elmt_species_10 = elmt_Plasma.elmt_species_10;
        Reacs.elmt_species_11 = elmt_PeripheralTissue.elmt_species_11;
        Reacs.elmt_species_22 = elmt_Plasma.elmt_species_22;
        Reacs.elmt_species_33 = elmt_Plasma.elmt_species_33;
        Reacs.elmt_species_23 = elmt_Plasma.elmt_species_23;
        Reacs.elmt_species_34 = elmt_HepaticTissue.elmt_species_34;
        Reacs.elmt_species_24 = elmt_Plasma.elmt_species_24;
        Reacs.elmt_species_13 = elmt_HepaticTissue.elmt_species_13;
        Reacs.elmt_species_25 = elmt_PeripheralTissue.elmt_species_25;
        Reacs.elmt_species_14 = elmt_HepaticTissue.elmt_species_14;
        elmt_PeripheralTissue.elmt_product51 = Reacs.elmt_product51;
        elmt_PeripheralTissue.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_PeripheralTissue.elmt_product55 = Reacs.elmt_product55;
        elmt_PeripheralTissue.elmt_product53 = Reacs.elmt_product53;
        elmt_PeripheralTissue.elmt_reactant60 = Reacs.elmt_reactant60;
        elmt_PeripheralTissue.elmt_product64 = Reacs.elmt_product64;
        elmt_PeripheralTissue.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_PeripheralTissue.elmt_reactant54 = Reacs.elmt_reactant54;
        elmt_PeripheralTissue.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_PeripheralTissue.elmt_reaction_27 = Reacs.elmt_reaction_27;
        elmt_PeripheralTissue.elmt_reaction_28 = Reacs.elmt_reaction_28;
        elmt_PeripheralTissue.elmt_reaction_25 = Reacs.elmt_reaction_25;
        elmt_PeripheralTissue.elmt_reaction_26 = Reacs.elmt_reaction_26;
        elmt_PeripheralTissue.elmt_reaction_29 = Reacs.elmt_reaction_29;
        elmt_PeripheralTissue.elmt_reaction_30 = Reacs.elmt_reaction_30;
        elmt_PeripheralTissue.elmt_product49 = Reacs.elmt_product49;
        elmt_PeripheralTissue.elmt_product59 = Reacs.elmt_product59;
        elmt_PeripheralTissue.elmt_reaction_31 = Reacs.elmt_reaction_31;
        elmt_PeripheralTissue.elmt_product47 = Reacs.elmt_product47;
        elmt_PeripheralTissue.elmt_product57 = Reacs.elmt_product57;
        elmt_PeripheralTissue.elmt_reaction_24 = Reacs.elmt_reaction_24;
        elmt_PeripheralTissue.elmt_reaction_32 = Reacs.elmt_reaction_32;
        elmt_HepaticTissue.elmt_product11 = Reacs.elmt_product11;
        elmt_HepaticTissue.elmt_product33 = Reacs.elmt_product33;
        elmt_HepaticTissue.elmt_product31 = Reacs.elmt_product31;
        elmt_HepaticTissue.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_HepaticTissue.elmt_product70 = Reacs.elmt_product70;
        elmt_HepaticTissue.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_HepaticTissue.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_HepaticTissue.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_HepaticTissue.elmt_reaction_20 = Reacs.elmt_reaction_20;
        elmt_HepaticTissue.elmt_product25 = Reacs.elmt_product25;
        elmt_HepaticTissue.elmt_reaction_23 = Reacs.elmt_reaction_23;
        elmt_HepaticTissue.elmt_reaction_22 = Reacs.elmt_reaction_22;
        elmt_HepaticTissue.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_HepaticTissue.elmt_product7 = Reacs.elmt_product7;
        elmt_HepaticTissue.elmt_product45 = Reacs.elmt_product45;
        elmt_HepaticTissue.elmt_product23 = Reacs.elmt_product23;
        elmt_HepaticTissue.elmt_product43 = Reacs.elmt_product43;
        elmt_HepaticTissue.elmt_product21 = Reacs.elmt_product21;
        elmt_HepaticTissue.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_HepaticTissue.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_HepaticTissue.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_HepaticTissue.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_HepaticTissue.elmt_reaction_16 = Reacs.elmt_reaction_16;
        elmt_HepaticTissue.elmt_reaction_17 = Reacs.elmt_reaction_17;
        elmt_HepaticTissue.elmt_reaction_15 = Reacs.elmt_reaction_15;
        elmt_HepaticTissue.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_HepaticTissue.elmt_reaction_18 = Reacs.elmt_reaction_18;
        elmt_HepaticTissue.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_HepaticTissue.elmt_product13 = Reacs.elmt_product13;
        elmt_HepaticTissue.elmt_product35 = Reacs.elmt_product35;
        elmt_HepaticTissue.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt_HepaticTissue.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_HepaticTissue.elmt_reaction_35 = Reacs.elmt_reaction_35;
        elmt_HepaticTissue.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_HepaticTissue.elmt_product39 = Reacs.elmt_product39;
        elmt_HepaticTissue.elmt_reaction_11 = Reacs.elmt_reaction_11;
        elmt_Excreted.elmt_product9 = Reacs.elmt_product9;
        elmt_Excreted.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_Excreted.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_Excreted.elmt_product15 = Reacs.elmt_product15;
        elmt_Intestine.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_Intestine.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_Intestine.elmt_product1 = Reacs.elmt_product1;
        elmt_Intestine.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_Intestine.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_Intestine.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_Intestine.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_Intestine.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_Intestine.elmt_product5 = Reacs.elmt_product5;
        elmt_Intestine.elmt_product3 = Reacs.elmt_product3;
        elmt_Intestine.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_Intestine.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_Intestine.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_Intestine.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_Intestine.elmt_product19 = Reacs.elmt_product19;
        elmt_Intestine.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_Plasma.elmt_reactant61 = Reacs.elmt_reactant61;
        elmt_Plasma.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_Plasma.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_Plasma.elmt_reactant69 = Reacs.elmt_reactant69;
        elmt_Plasma.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_Plasma.elmt_reactant65 = Reacs.elmt_reactant65;
        elmt_Plasma.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_Plasma.elmt_reactant67 = Reacs.elmt_reactant67;
        elmt_Plasma.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_Plasma.elmt_reaction_25 = Reacs.elmt_reaction_25;
        elmt_Plasma.elmt_product27 = Reacs.elmt_product27;
        elmt_Plasma.elmt_reaction_20 = Reacs.elmt_reaction_20;
        elmt_Plasma.elmt_product68 = Reacs.elmt_product68;
        elmt_Plasma.elmt_reaction_23 = Reacs.elmt_reaction_23;
        elmt_Plasma.elmt_reaction_24 = Reacs.elmt_reaction_24;
        elmt_Plasma.elmt_product29 = Reacs.elmt_product29;
        elmt_Plasma.elmt_reaction_21 = Reacs.elmt_reaction_21;
        elmt_Plasma.elmt_reaction_22 = Reacs.elmt_reaction_22;
        elmt_Plasma.elmt_product41 = Reacs.elmt_product41;
        elmt_Plasma.elmt_product62 = Reacs.elmt_product62;
        elmt_Plasma.elmt_product66 = Reacs.elmt_product66;
        elmt_Plasma.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_Plasma.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_Plasma.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_Plasma.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_Plasma.elmt_reaction_14 = Reacs.elmt_reaction_14;
        elmt_Plasma.elmt_reaction_15 = Reacs.elmt_reaction_15;
        elmt_Plasma.elmt_reaction_18 = Reacs.elmt_reaction_18;
        elmt_Plasma.elmt_reaction_19 = Reacs.elmt_reaction_19;
        elmt_Plasma.elmt_reaction_31 = Reacs.elmt_reaction_31;
        elmt_Plasma.elmt_product37 = Reacs.elmt_product37;
        elmt_Plasma.elmt_reaction_34 = Reacs.elmt_reaction_34;
        elmt_Plasma.elmt_reaction_35 = Reacs.elmt_reaction_35;
        elmt_Plasma.elmt_reaction_33 = Reacs.elmt_reaction_33;
        elmt_Plasma.elmt_product17 = Reacs.elmt_product17;

end MODEL1206010000;
