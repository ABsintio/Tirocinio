within BIOMD117;
model model_0000001 "Dupont1991_CaOscillation" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Cytosol elmt_Cytosol;
    Class_elmt_extracellular elmt_extracellular;
    Class_elmt_intracellular_Ca_storepool elmt_intracellular_Ca_storepool;
    Class_elmt_event_0000001 elmt_event_0000001;

    equation
        Params.elmt_event_0000001 = elmt_event_0000001.trigger;
        Reacs.elmt_p = Params.elmt_p;
        Reacs.elmt_beta = Params.elmt_beta;
        Reacs.elmt_m = Params.elmt_m;
        Reacs.elmt_n = Params.elmt_n;
        Reacs.elmt_k = Params.elmt_k;
        Reacs.elmt_extracellular = elmt_extracellular.elmt_extracellular;
        Reacs.elmt_VM3 = Params.elmt_VM3;
        Reacs.elmt_intracellular_Ca_storepool = elmt_intracellular_Ca_storepool.elmt_intracellular_Ca_storepool;
        Reacs.elmt_VM2 = Params.elmt_VM2;
        Reacs.elmt_KR = Params.elmt_KR;
        Reacs.elmt_K2 = Params.elmt_K2;
        Reacs.elmt_KA = Params.elmt_KA;
        Reacs.elmt_Cytosol = elmt_Cytosol.elmt_Cytosol;
        Reacs.elmt_y = elmt_intracellular_Ca_storepool.elmt_y;
        Reacs.elmt_z = elmt_Cytosol.elmt_z;
        Reacs.elmt_kf = Params.elmt_kf;
        Reacs.elmt_v1 = Params.elmt_v1;
        Reacs.elmt_v0 = Params.elmt_v0;
        elmt_Cytosol.elmt_reaction_0000006 = Reacs.elmt_reaction_0000006;
        elmt_Cytosol.elmt_product7 = Reacs.elmt_product7;
        elmt_Cytosol.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_Cytosol.elmt_reaction_0000005 = Reacs.elmt_reaction_0000005;
        elmt_Cytosol.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_Cytosol.elmt_product1 = Reacs.elmt_product1;
        elmt_Cytosol.elmt_product0 = Reacs.elmt_product0;
        elmt_Cytosol.elmt_reaction_0000004 = Reacs.elmt_reaction_0000004;
        elmt_Cytosol.elmt_reaction_0000003 = Reacs.elmt_reaction_0000003;
        elmt_Cytosol.elmt_product3 = Reacs.elmt_product3;
        elmt_Cytosol.elmt_reaction_0000002 = Reacs.elmt_reaction_0000002;
        elmt_Cytosol.elmt_reaction_0000001 = Reacs.elmt_reaction_0000001;
        elmt_intracellular_Ca_storepool.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_intracellular_Ca_storepool.elmt_reaction_0000005 = Reacs.elmt_reaction_0000005;
        elmt_intracellular_Ca_storepool.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_intracellular_Ca_storepool.elmt_reaction_0000004 = Reacs.elmt_reaction_0000004;
        elmt_intracellular_Ca_storepool.elmt_product5 = Reacs.elmt_product5;
        elmt_intracellular_Ca_storepool.elmt_reaction_0000003 = Reacs.elmt_reaction_0000003;
        elmt_event_0000001.elmt_tstim = Params.elmt_tstim;

        Params.assign_elmt_flag = elmt_event_0000001.value_elmt_flag;
end model_0000001;
