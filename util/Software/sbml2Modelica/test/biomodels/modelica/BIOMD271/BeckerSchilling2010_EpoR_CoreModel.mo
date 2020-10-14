within BIOMD271;
model BeckerSchilling2010_EpoR_CoreModel "Becker2010_EpoR_CoreModel" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_cellsurface elmt_cellsurface;
    Class_elmt_medium elmt_medium;

    equation
        Params.elmt_dEpoi = elmt_cell.elmt_dEpoi;
        Params.elmt_Epo = elmt_medium.elmt_Epo;
        Params.elmt_Epo_EpoRi = elmt_cell.elmt_Epo_EpoRi;
        Params.elmt_dEpoe = elmt_medium.elmt_dEpoe;
        Reacs.elmt_Bmax = Params.elmt_Bmax;
        Reacs.elmt_kex = Params.elmt_kex;
        Reacs.elmt_EpoR = elmt_cellsurface.elmt_EpoR;
        Reacs.elmt_kt = Params.elmt_kt;
        Reacs.elmt_koff = Params.elmt_koff;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_Epo = elmt_medium.elmt_Epo;
        Reacs.elmt_kdi = Params.elmt_kdi;
        Reacs.elmt_Epo_EpoR = elmt_cellsurface.elmt_Epo_EpoR;
        Reacs.elmt_Epo_EpoRi = elmt_cell.elmt_Epo_EpoRi;
        Reacs.elmt_kde = Params.elmt_kde;
        Reacs.elmt_ke = Params.elmt_ke;
        Reacs.elmt_kon = Params.elmt_kon;
        elmt_cellsurface.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cellsurface.elmt_product7 = Reacs.elmt_product7;
        elmt_cellsurface.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cellsurface.elmt_product12 = Reacs.elmt_product12;
        elmt_cellsurface.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cellsurface.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cellsurface.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_cellsurface.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_cellsurface.elmt_product0 = Reacs.elmt_product0;
        elmt_cellsurface.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_cellsurface.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_cellsurface.elmt_product4 = Reacs.elmt_product4;
        elmt_cellsurface.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_cellsurface.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_medium.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_medium.elmt_product6 = Reacs.elmt_product6;
        elmt_medium.elmt_product11 = Reacs.elmt_product11;
        elmt_medium.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_medium.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_medium.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_medium.elmt_product16 = Reacs.elmt_product16;
        elmt_medium.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_cell.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_cell.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_cell.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_cell.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_cell.elmt_product14 = Reacs.elmt_product14;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_reactant13 = Reacs.elmt_reactant13;

end BeckerSchilling2010_EpoR_CoreModel;
