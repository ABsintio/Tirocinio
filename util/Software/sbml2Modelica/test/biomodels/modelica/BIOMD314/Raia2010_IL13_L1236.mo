within BIOMD314;
model Raia2010_IL13_L1236 "Raia2011 - IL13 L1236" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_pRec_intern = Params.elmt_pRec_intern;
        Reacs.elmt_p_IL13_Rec = elmt_cell.elmt_p_IL13_Rec;
        Reacs.elmt_IL13 = elmt_cell.elmt_IL13;
        Reacs.elmt_pJAK2_dephosphorylation = Params.elmt_pJAK2_dephosphorylation;
        Reacs.elmt_JAK2_phosphorylation = Params.elmt_JAK2_phosphorylation;
        Reacs.elmt_CD274mRNA_production = Params.elmt_CD274mRNA_production;
        Reacs.elmt_Rec_phosphorylation = Params.elmt_Rec_phosphorylation;
        Reacs.elmt_pJAK2 = elmt_cell.elmt_pJAK2;
        Reacs.elmt_pSTAT5 = elmt_cell.elmt_pSTAT5;
        Reacs.elmt_STAT5_phosphorylation = Params.elmt_STAT5_phosphorylation;
        Reacs.elmt_Kon_IL13Rec = Params.elmt_Kon_IL13Rec;
        Reacs.elmt_IL13_Rec = elmt_cell.elmt_IL13_Rec;
        Reacs.elmt_STAT5 = elmt_cell.elmt_STAT5;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_Rec_i = elmt_cell.elmt_Rec_i;
        Reacs.elmt_pRec_degradation = Params.elmt_pRec_degradation;
        Reacs.elmt_Rec_intern = Params.elmt_Rec_intern;
        Reacs.elmt_Rec_recycle = Params.elmt_Rec_recycle;
        Reacs.elmt_pSTAT5_dephosphorylation = Params.elmt_pSTAT5_dephosphorylation;
        Reacs.elmt_Rec = elmt_cell.elmt_Rec;
        Reacs.elmt_p_IL13_Rec_i = elmt_cell.elmt_p_IL13_Rec_i;
        Reacs.elmt_JAK2 = elmt_cell.elmt_JAK2;
        Reacs.elmt_SHP1 = elmt_cell.elmt_SHP1;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_cell.elmt_IL13stimulation = Params.elmt_IL13stimulation;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_product21 = Reacs.elmt_product21;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_product20 = Reacs.elmt_product20;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_cell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cell.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_cell.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_cell.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_cell.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_cell.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_cell.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_cell.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_cell.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_cell.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_cell.elmt_product16 = Reacs.elmt_product16;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;
        elmt_cell.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt_cell.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_cell.elmt_product18 = Reacs.elmt_product18;
        elmt_cell.elmt_reaction_11 = Reacs.elmt_reaction_11;

end Raia2010_IL13_L1236;
