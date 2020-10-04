within BIOMD236;
model S2MModel "Westermark2003_Pancreatic_GlycOsc_extended" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Params.elmt_F6P = elmt_cell.elmt_F6P;
        Reacs.elmt_Sgk = Params.elmt_Sgk;
        Reacs.elmt_FBP = elmt_cell.elmt_FBP;
        Reacs.elmt_F6P = elmt_cell.elmt_F6P;
        Reacs.elmt_Spfk = Params.elmt_Spfk;
        Reacs.elmt_Vpfk = Params.elmt_Vpfk;
        Reacs.elmt_GLC = elmt_cell.elmt_GLC;
        Reacs.elmt_Vgk = Params.elmt_Vgk;
        Reacs.elmt_KeqFBA = Params.elmt_KeqFBA;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_Xpfk = Params.elmt_Xpfk;
        Reacs.elmt_G3P = elmt_cell.elmt_G3P;
        Reacs.elmt_Sgapdh = Params.elmt_Sgapdh;
        Reacs.elmt_DHAP = elmt_cell.elmt_DHAP;
        Reacs.elmt_hx = Params.elmt_hx;
        Reacs.elmt_hact = Params.elmt_hact;
        Reacs.elmt_Sfba = Params.elmt_Sfba;
        Reacs.elmt_Vfba = Params.elmt_Vfba;
        Reacs.elmt_alpha = Params.elmt_alpha;
        Reacs.elmt_Qfba = Params.elmt_Qfba;
        Reacs.elmt_hGK = Params.elmt_hGK;
        Reacs.elmt_hpfk = Params.elmt_hpfk;
        Reacs.elmt_Vgapdh = Params.elmt_Vgapdh;
        Reacs.elmt_Pfba = Params.elmt_Pfba;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_vgapdh = Reacs.elmt_vgapdh;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_KeqTPI = Params.elmt_KeqTPI;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_vfba = Reacs.elmt_vfba;
        elmt_cell.elmt_vpfk = Reacs.elmt_vpfk;
        elmt_cell.elmt_KeqGPI = Params.elmt_KeqGPI;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_vgk = Reacs.elmt_vgk;

end S2MModel;
