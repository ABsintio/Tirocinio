within BIOMD113;
model Dupont1992_Ca_dpt_protein_phospho "Dupont1992_Ca_dpt_protein_phospho" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_store elmt_store;
    Class_elmt_cytosol elmt_cytosol;

    equation
        Params.elmt_Z = elmt_cytosol.elmt_Z;
        Reacs.elmt_Kp = Params.elmt_Kp;
        Reacs.elmt_p = Params.elmt_p;
        Reacs.elmt_K1 = Params.elmt_K1;
        Reacs.elmt_store = elmt_store.elmt_store;
        Reacs.elmt_m = Params.elmt_m;
        Reacs.elmt_n = Params.elmt_n;
        Reacs.elmt_k = Params.elmt_k;
        Reacs.elmt_Vm3 = Params.elmt_Vm3;
        Reacs.elmt_cytosol = elmt_cytosol.elmt_cytosol;
        Reacs.elmt_v1_beta = Params.elmt_v1_beta;
        Reacs.elmt_Vm2 = Params.elmt_Vm2;
        Reacs.elmt_Kr = Params.elmt_Kr;
        Reacs.elmt_K2 = Params.elmt_K2;
        Reacs.elmt_vk = Params.elmt_vk;
        Reacs.elmt_W_star = elmt_cytosol.elmt_W_star;
        Reacs.elmt_Y = elmt_store.elmt_Y;
        Reacs.elmt_Z = elmt_cytosol.elmt_Z;
        Reacs.elmt_Wt = elmt_cytosol.elmt_Wt;
        Reacs.elmt_kf = Params.elmt_kf;
        Reacs.elmt_K_A = Params.elmt_K_A;
        Reacs.elmt_v0 = Params.elmt_v0;
        Reacs.elmt_vp = Params.elmt_vp;
        elmt_store.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_store.elmt_Rf = Reacs.elmt_Rf;
        elmt_store.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_store.elmt_R3 = Reacs.elmt_R3;
        elmt_store.elmt_R2 = Reacs.elmt_R2;
        elmt_store.elmt_product3 = Reacs.elmt_product3;
        elmt_cytosol.elmt_product9 = Reacs.elmt_product9;
        elmt_cytosol.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cytosol.elmt_product7 = Reacs.elmt_product7;
        elmt_cytosol.elmt_R3 = Reacs.elmt_R3;
        elmt_cytosol.elmt_R1 = Reacs.elmt_R1;
        elmt_cytosol.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cytosol.elmt_R2 = Reacs.elmt_R2;
        elmt_cytosol.elmt_product1 = Reacs.elmt_product1;
        elmt_cytosol.elmt_product0 = Reacs.elmt_product0;
        elmt_cytosol.elmt_Protein_Phosphorylation = Reacs.elmt_Protein_Phosphorylation;
        elmt_cytosol.elmt_product5 = Reacs.elmt_product5;
        elmt_cytosol.elmt_Rf = Reacs.elmt_Rf;
        elmt_cytosol.elmt_R0 = Reacs.elmt_R0;
        elmt_cytosol.elmt_R_eff = Reacs.elmt_R_eff;

end Dupont1992_Ca_dpt_protein_phospho;
