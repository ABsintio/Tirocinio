within BIOMD195;
model S2MModel "Tyson2001_Cell_Cycle_Regulation" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_event0 elmt_event0;

    equation
        Params.elmt_m = elmt_cell.elmt_m;
        Params.elmt_CycB = elmt_cell.elmt_CycB;
        Params.elmt_SK = elmt_cell.elmt_SK;
        Reacs.elmt_m = elmt_cell.elmt_m;
        Reacs.elmt_n = Params.elmt_n;
        Reacs.elmt_IEP = elmt_cell.elmt_IEP;
        Reacs.elmt_k12ppp = Params.elmt_k12ppp;
        Reacs.elmt_Cdh1 = elmt_cell.elmt_Cdh1;
        Reacs.elmt_mmax = Params.elmt_mmax;
        Reacs.elmt_Cdc20t = elmt_cell.elmt_Cdc20t;
        Reacs.elmt_k3p = Params.elmt_k3p;
        Reacs.elmt_k12p = Params.elmt_k12p;
        Reacs.elmt_k5p = Params.elmt_k5p;
        Reacs.elmt_TF = Params.elmt_TF;
        Reacs.elmt_CKIt = elmt_cell.elmt_CKIt;
        Reacs.elmt_k14 = Params.elmt_k14;
        Reacs.elmt_k13 = Params.elmt_k13;
        Reacs.elmt_k2ppp = Params.elmt_k2ppp;
        Reacs.elmt_k2pp = Params.elmt_k2pp;
        Reacs.elmt_k11 = Params.elmt_k11;
        Reacs.elmt_k3pp = Params.elmt_k3pp;
        Reacs.elmt_CycBt = elmt_cell.elmt_CycBt;
        Reacs.elmt_k10 = Params.elmt_k10;
        Reacs.elmt_k5pp = Params.elmt_k5pp;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_Cdc20a = elmt_cell.elmt_Cdc20a;
        Reacs.elmt_J7 = Params.elmt_J7;
        Reacs.elmt_k8 = Params.elmt_k8;
        Reacs.elmt_k9 = Params.elmt_k9;
        Reacs.elmt_J8 = Params.elmt_J8;
        Reacs.elmt_k6 = Params.elmt_k6;
        Reacs.elmt_J5 = Params.elmt_J5;
        Reacs.elmt_k7 = Params.elmt_k7;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_J3 = Params.elmt_J3;
        Reacs.elmt_J4 = Params.elmt_J4;
        Reacs.elmt_mu = Params.elmt_mu;
        Reacs.elmt_k4p = Params.elmt_k4p;
        Reacs.elmt_CycB = elmt_cell.elmt_CycB;
        Reacs.elmt_k12pp = Params.elmt_k12pp;
        Reacs.elmt_Mad = elmt_cell.elmt_Mad;
        Reacs.elmt_SK = elmt_cell.elmt_SK;
        Reacs.elmt_k2p = Params.elmt_k2p;
        elmt_cell.elmt_Keq = Params.elmt_Keq;
        elmt_cell.elmt_Cdh1degradation = Reacs.elmt_Cdh1degradation;
        elmt_cell.elmt_CycBtdegradationviaCdc20a = Reacs.elmt_CycBtdegradationviaCdc20a;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_CKItsynthesis = Reacs.elmt_CKItsynthesis;
        elmt_cell.elmt_Cdc20adegradation = Reacs.elmt_Cdc20adegradation;
        elmt_cell.elmt_Cdc20t_deg = Reacs.elmt_Cdc20t_deg;
        elmt_cell.elmt_Cdc20activation = Reacs.elmt_Cdc20activation;
        elmt_cell.elmt_Cdc20tsynthesis = Reacs.elmt_Cdc20tsynthesis;
        elmt_cell.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_cell.elmt_growth = Reacs.elmt_growth;
        elmt_cell.elmt_eq_7 = Reacs.elmt_eq_7;
        elmt_cell.elmt_CycBdegradation = Reacs.elmt_CycBdegradation;
        elmt_cell.elmt_IEPdegradation = Reacs.elmt_IEPdegradation;
        elmt_cell.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cell.elmt_SKdegradation = Reacs.elmt_SKdegradation;
        elmt_cell.elmt_Cdc20ainhibition = Reacs.elmt_Cdc20ainhibition;
        elmt_cell.elmt_CKItphosphorilationviaSK = Reacs.elmt_CKItphosphorilationviaSK;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_product8 = Reacs.elmt_product8;
        elmt_cell.elmt_CycBt_synthesis = Reacs.elmt_CycBt_synthesis;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_product6 = Reacs.elmt_product6;
        elmt_cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cell.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cell.elmt_CKIdegradation = Reacs.elmt_CKIdegradation;
        elmt_cell.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_cell.elmt_product0 = Reacs.elmt_product0;
        elmt_cell.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cell.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_product4 = Reacs.elmt_product4;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cell.elmt_Cdh1synthesis = Reacs.elmt_Cdh1synthesis;
        elmt_cell.elmt_product14 = Reacs.elmt_product14;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;
        elmt_cell.elmt_IEPsynthesis = Reacs.elmt_IEPsynthesis;
        elmt_cell.elmt_SKsynthesis = Reacs.elmt_SKsynthesis;
        elmt_cell.elmt_CycBdegradationviaCdh1 = Reacs.elmt_CycBdegradationviaCdh1;
        elmt_cell.elmt_product18 = Reacs.elmt_product18;
        elmt_cell.elmt_event0 = elmt_event0.execution;
        elmt_event0.elmt_m = elmt_cell.elmt_m;
        elmt_event0.elmt_CycB = elmt_cell.elmt_CycB;

        elmt_cell.assign_elmt_m = elmt_event0.value_elmt_m;
end S2MModel;
