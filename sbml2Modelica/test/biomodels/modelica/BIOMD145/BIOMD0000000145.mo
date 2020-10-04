within BIOMD145;
model BIOMD0000000145 "Wang2007 - ATP induced intracellular Calcium Oscillation" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Cytosol elmt_Cytosol;
    Class_elmt_ER elmt_ER;

    equation
        Params.elmt_DG = elmt_Cytosol.elmt_DG;
        Params.elmt_Galpha_GTP = elmt_Cytosol.elmt_Galpha_GTP;
        Params.elmt_APLC = elmt_Cytosol.elmt_APLC;
        Params.elmt_Ca_Cyt = elmt_Cytosol.elmt_Ca_Cyt;
        Params.elmt_Ca_ER = elmt_ER.elmt_Ca_ER;
        Params.elmt_IP3 = elmt_Cytosol.elmt_IP3;
        Reacs.elmt_Galpha_GTP = elmt_Cytosol.elmt_Galpha_GTP;
        Reacs.elmt_Rer = Params.elmt_Rer;
        Reacs.elmt_Rcyt1 = Params.elmt_Rcyt1;
        Reacs.elmt_Rcyt2 = Params.elmt_Rcyt2;
        Reacs.elmt_PLC = elmt_Cytosol.elmt_PLC;
        Reacs.elmt_Cytosol = elmt_Cytosol.elmt_Cytosol;
        Reacs.elmt_Rgalpha_gtp = Params.elmt_Rgalpha_gtp;
        Reacs.elmt_k11 = Params.elmt_k11;
        Reacs.elmt_Raplc = Params.elmt_Raplc;
        Reacs.elmt_Rpkc = Params.elmt_Rpkc;
        Reacs.elmt_k10 = Params.elmt_k10;
        Reacs.elmt_k0 = Params.elmt_k0;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_Rdg = Params.elmt_Rdg;
        Reacs.elmt_APLC = elmt_Cytosol.elmt_APLC;
        Reacs.elmt_ER = elmt_ER.elmt_ER;
        Reacs.elmt_k8 = Params.elmt_k8;
        Reacs.elmt_k9 = Params.elmt_k9;
        Reacs.elmt_k6 = Params.elmt_k6;
        Reacs.elmt_k7 = Params.elmt_k7;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_k5 = Params.elmt_k5;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_Rip3 = Params.elmt_Rip3;
        Reacs.elmt_IP3 = elmt_Cytosol.elmt_IP3;
        elmt_Cytosol.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_Cytosol.elmt_product9 = Reacs.elmt_product9;
        elmt_Cytosol.elmt_R7 = Reacs.elmt_R7;
        elmt_Cytosol.elmt_R8 = Reacs.elmt_R8;
        elmt_Cytosol.elmt_R5 = Reacs.elmt_R5;
        elmt_Cytosol.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_Cytosol.elmt_R6 = Reacs.elmt_R6;
        elmt_Cytosol.elmt_product6 = Reacs.elmt_product6;
        elmt_Cytosol.elmt_R3 = Reacs.elmt_R3;
        elmt_Cytosol.elmt_product11 = Reacs.elmt_product11;
        elmt_Cytosol.elmt_R4 = Reacs.elmt_R4;
        elmt_Cytosol.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_Cytosol.elmt_R10 = Reacs.elmt_R10;
        elmt_Cytosol.elmt_R1 = Reacs.elmt_R1;
        elmt_Cytosol.elmt_R11 = Reacs.elmt_R11;
        elmt_Cytosol.elmt_R2 = Reacs.elmt_R2;
        elmt_Cytosol.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_Cytosol.elmt_product1 = Reacs.elmt_product1;
        elmt_Cytosol.elmt_product0 = Reacs.elmt_product0;
        elmt_Cytosol.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_Cytosol.elmt_product4 = Reacs.elmt_product4;
        elmt_Cytosol.elmt_R9 = Reacs.elmt_R9;
        elmt_Cytosol.elmt_Cplc_total = Params.elmt_Cplc_total;
        elmt_ER.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_ER.elmt_R9 = Reacs.elmt_R9;

end BIOMD0000000145;
