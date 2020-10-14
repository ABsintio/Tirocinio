within BIOMD166;
model Zhu2007_TF_syn_modulated_by_Ca "Zhu2007_TF_modulated_by_Calcium" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_store elmt_store;
    Class_elmt_cytoplasm elmt_cytoplasm;

    equation
        Params.elmt_Z = elmt_cytoplasm.elmt_Z;
        Reacs.elmt_Y = elmt_store.elmt_Y;
        Reacs.elmt_Z = elmt_cytoplasm.elmt_Z;
        Reacs.elmt_X = elmt_cytoplasm.elmt_X;
        Reacs.elmt_kf = Params.elmt_kf;
        Reacs.elmt_Kd = Params.elmt_Kd;
        elmt_cytoplasm.elmt_product8 = Reacs.elmt_product8;
        elmt_cytoplasm.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cytoplasm.elmt_Calcium_Influx = Reacs.elmt_Calcium_Influx;
        elmt_cytoplasm.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cytoplasm.elmt_TF_degradation = Reacs.elmt_TF_degradation;
        elmt_cytoplasm.elmt_Calcium_Influx_stimulation = Reacs.elmt_Calcium_Influx_stimulation;
        elmt_cytoplasm.elmt_product10 = Reacs.elmt_product10;
        elmt_cytoplasm.elmt_Calcium_into_store = Reacs.elmt_Calcium_into_store;
        elmt_cytoplasm.elmt_product0 = Reacs.elmt_product0;
        elmt_cytoplasm.elmt_product4 = Reacs.elmt_product4;
        elmt_cytoplasm.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_cytoplasm.elmt_product3 = Reacs.elmt_product3;
        elmt_cytoplasm.elmt_Leakage_from_cytoplasm = Reacs.elmt_Leakage_from_cytoplasm;
        elmt_cytoplasm.elmt_Leakage = Reacs.elmt_Leakage;
        elmt_cytoplasm.elmt_product2 = Reacs.elmt_product2;
        elmt_cytoplasm.elmt_Calcium_into_cytoplasm = Reacs.elmt_Calcium_into_cytoplasm;
        elmt_cytoplasm.elmt_TF_synthesis = Reacs.elmt_TF_synthesis;
        elmt_cytoplasm.elmt_TF_synthesis_basal = Reacs.elmt_TF_synthesis_basal;
        elmt_store.elmt_Calcium_into_cytoplasm = Reacs.elmt_Calcium_into_cytoplasm;
        elmt_store.elmt_product6 = Reacs.elmt_product6;
        elmt_store.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_store.elmt_Calcium_into_store = Reacs.elmt_Calcium_into_store;
        elmt_store.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_store.elmt_Leakage = Reacs.elmt_Leakage;

end Zhu2007_TF_syn_modulated_by_Ca;
