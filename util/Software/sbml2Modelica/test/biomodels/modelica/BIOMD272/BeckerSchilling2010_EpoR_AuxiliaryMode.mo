within BIOMD272;
model BeckerSchilling2010_EpoR_AuxiliaryMode "Becker2010_EpoR_AuxiliaryModel" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_cellsurface elmt_cellsurface;
    Class_elmt_medium elmt_medium;

    equation
        Params.elmt_SAv = elmt_medium.elmt_SAv;
        Params.elmt_SAv_EpoRi = elmt_cell.elmt_SAv_EpoRi;
        Params.elmt_dSAvi = elmt_cell.elmt_dSAvi;
        Params.elmt_dSAve = elmt_medium.elmt_dSAve;
        Reacs.elmt_SAv = elmt_medium.elmt_SAv;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_kex_SAv = Params.elmt_kex_SAv;
        Reacs.elmt_kon_SAv = Params.elmt_kon_SAv;
        Reacs.elmt_SAv_EpoRi = elmt_cell.elmt_SAv_EpoRi;
        Reacs.elmt_koff_SAv = Params.elmt_koff_SAv;
        Reacs.elmt_kdi = Params.elmt_kdi;
        Reacs.elmt_SAv_EpoR = elmt_cellsurface.elmt_SAv_EpoR;
        Reacs.elmt_kde = Params.elmt_kde;
        Reacs.elmt_kt = Params.elmt_kt;
        Reacs.elmt_EpoR = elmt_cellsurface.elmt_EpoR;
        Reacs.elmt_Bmax_SAv = Params.elmt_Bmax_SAv;
        elmt_cellsurface.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cellsurface.elmt_product7 = Reacs.elmt_product7;
        elmt_cellsurface.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cellsurface.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cellsurface.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_cellsurface.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cellsurface.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_cellsurface.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_cellsurface.elmt_product0 = Reacs.elmt_product0;
        elmt_cellsurface.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_cellsurface.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_cellsurface.elmt_product4 = Reacs.elmt_product4;
        elmt_medium.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_medium.elmt_product6 = Reacs.elmt_product6;
        elmt_medium.elmt_product11 = Reacs.elmt_product11;
        elmt_medium.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_medium.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_medium.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_medium.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_medium.elmt_product15 = Reacs.elmt_product15;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_cell.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_cell.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_cell.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_cell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;

end BeckerSchilling2010_EpoR_AuxiliaryMode;
