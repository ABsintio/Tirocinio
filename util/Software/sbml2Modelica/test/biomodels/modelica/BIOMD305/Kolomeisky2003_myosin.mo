within BIOMD305;
model Kolomeisky2003_myosin "Kolomeisky2003_MyosinV_Processivity" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_ elmt_compartment_;

    equation
        Params.elmt_Fw_1st_step = Reacs.elmt_Fw_1st_step;
        Params.elmt_back_step1 = elmt_compartment_.elmt_back_step1;
        Params.elmt_back_step2 = elmt_compartment_.elmt_back_step2;
        Params.elmt_Fw_2nd_step = Reacs.elmt_Fw_2nd_step;
        Params.elmt_S0 = elmt_compartment_.elmt_S0;
        Params.elmt_S1 = elmt_compartment_.elmt_S1;
        Params.elmt_ATP = elmt_compartment_.elmt_ATP;
        Params.elmt_fwd_step2 = elmt_compartment_.elmt_fwd_step2;
        Params.elmt_fwd_step1 = elmt_compartment_.elmt_fwd_step1;
        Params.elmt_Bw_1st_step = Reacs.elmt_Bw_1st_step;
        Params.elmt_Bw_2nd_step = Reacs.elmt_Bw_2nd_step;
        Reacs.elmt_k_4 = Params.elmt_k_4;
        Reacs.elmt_k_3 = Params.elmt_k_3;
        Reacs.elmt_ATP = elmt_compartment_.elmt_ATP;
        Reacs.elmt_k_2 = Params.elmt_k_2;
        Reacs.elmt_k_1 = Params.elmt_k_1;
        Reacs.elmt_Force = Params.elmt_Force;
        Reacs.elmt_kT = Params.elmt_kT;
        Reacs.elmt_d = Params.elmt_d;
        Reacs.elmt_th_3 = Params.elmt_th_3;
        Reacs.elmt_th_2 = Params.elmt_th_2;
        Reacs.elmt_th_4 = Params.elmt_th_4;
        Reacs.elmt_S0 = elmt_compartment_.elmt_S0;
        Reacs.elmt_S1 = elmt_compartment_.elmt_S1;
        Reacs.elmt_th_1 = Params.elmt_th_1;
        elmt_compartment_.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment_.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment_.elmt_Fw_1st_step = Reacs.elmt_Fw_1st_step;
        elmt_compartment_.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment_.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment_.elmt_Fw_2nd_step = Reacs.elmt_Fw_2nd_step;
        elmt_compartment_.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_compartment_.elmt_Bw_1st_step = Reacs.elmt_Bw_1st_step;
        elmt_compartment_.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment_.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment_.elmt_Bw_2nd_step = Reacs.elmt_Bw_2nd_step;
        elmt_compartment_.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment_.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment_.elmt_product15 = Reacs.elmt_product15;
        elmt_compartment_.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment_.elmt_product17 = Reacs.elmt_product17;

end Kolomeisky2003_myosin;
