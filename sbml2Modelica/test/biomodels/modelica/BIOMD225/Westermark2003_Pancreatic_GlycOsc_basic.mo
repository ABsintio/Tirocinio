within BIOMD225;
model Westermark2003_Pancreatic_GlycOsc_basic "Westermark2003_Pancreatic_GlycOsc_basic" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_comp elmt_comp;

    equation
        Reacs.elmt_comp = elmt_comp.elmt_comp;
        Reacs.elmt_Sgk = Params.elmt_Sgk;
        Reacs.elmt_FBP = elmt_comp.elmt_FBP;
        Reacs.elmt_F6P = elmt_comp.elmt_F6P;
        Reacs.elmt_Spfk = Params.elmt_Spfk;
        Reacs.elmt_Vpfk = Params.elmt_Vpfk;
        Reacs.elmt_GLC = elmt_comp.elmt_GLC;
        Reacs.elmt_Vgk = Params.elmt_Vgk;
        Reacs.elmt_Xpfk = Params.elmt_Xpfk;
        Reacs.elmt_hx = Params.elmt_hx;
        Reacs.elmt_hact = Params.elmt_hact;
        Reacs.elmt_Sfba = Params.elmt_Sfba;
        Reacs.elmt_Vfba = Params.elmt_Vfba;
        Reacs.elmt_alpha = Params.elmt_alpha;
        Reacs.elmt_hGK = Params.elmt_hGK;
        Reacs.elmt_hpfk = Params.elmt_hpfk;
        elmt_comp.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_comp.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_comp.elmt_product1 = Reacs.elmt_product1;
        elmt_comp.elmt_vpfk = Reacs.elmt_vpfk;
        elmt_comp.elmt_vfba = Reacs.elmt_vfba;
        elmt_comp.elmt_KeqGPI = Params.elmt_KeqGPI;
        elmt_comp.elmt_product3 = Reacs.elmt_product3;
        elmt_comp.elmt_vgk = Reacs.elmt_vgk;

end Westermark2003_Pancreatic_GlycOsc_basic;
