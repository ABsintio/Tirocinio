within BIOMD224;
model Meyer1991_CalciumSpike_ICC "Meyer1991_CalciumSpike_ICC" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_ER_store elmt_ER_store;
    Class_elmt_cytosol elmt_cytosol;

    equation
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_CaS = elmt_ER_store.elmt_CaS;
        Reacs.elmt_L = Params.elmt_L;
        Reacs.elmt_g = elmt_cytosol.elmt_g;
        Reacs.elmt_E = Params.elmt_E;
        Reacs.elmt_F = Params.elmt_F;
        Reacs.elmt_C = Params.elmt_C;
        Reacs.elmt_D = Params.elmt_D;
        Reacs.elmt_A = Params.elmt_A;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_B = Params.elmt_B;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_CaI = elmt_cytosol.elmt_CaI;
        Reacs.elmt_IP3 = elmt_cytosol.elmt_IP3;
        Reacs.elmt_R = Params.elmt_R;
        elmt_ER_store.elmt_JChannel = Reacs.elmt_JChannel;
        elmt_ER_store.elmt_JPump = Reacs.elmt_JPump;
        elmt_ER_store.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_ER_store.elmt_product3 = Reacs.elmt_product3;
        elmt_cytosol.elmt_JChannel = Reacs.elmt_JChannel;
        elmt_cytosol.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cytosol.elmt_JPump = Reacs.elmt_JPump;
        elmt_cytosol.elmt_product6 = Reacs.elmt_product6;
        elmt_cytosol.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cytosol.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cytosol.elmt_product1 = Reacs.elmt_product1;
        elmt_cytosol.elmt_inhibition_parameter2 = Reacs.elmt_inhibition_parameter2;
        elmt_cytosol.elmt_kPLC = Reacs.elmt_kPLC;
        elmt_cytosol.elmt_inhibition_parameter1 = Reacs.elmt_inhibition_parameter1;
        elmt_cytosol.elmt_kPhosphatase = Reacs.elmt_kPhosphatase;
        elmt_cytosol.elmt_product4 = Reacs.elmt_product4;

end Meyer1991_CalciumSpike_ICC;
