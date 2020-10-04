within BIOMD373;
model Bertram2004_PancreaticBetaCell_modelB "Bertram2004_PancreaticBetaCell_modelB" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_COMpartment elmt_COMpartment;

    equation
        Params.elmt_n = elmt_COMpartment.elmt_n;
        Params.elmt_fbp = elmt_COMpartment.elmt_fbp;
        Params.elmt_g6p = elmt_COMpartment.elmt_g6p;
        Params.elmt_cer = elmt_COMpartment.elmt_cer;
        Params.elmt_V = elmt_COMpartment.elmt_V;
        Params.elmt_adp = elmt_COMpartment.elmt_adp;
        Params.elmt_c = elmt_COMpartment.elmt_c;
        elmt_COMpartment.elmt_Jer = Params.elmt_Jer;
        elmt_COMpartment.elmt_ninf = Params.elmt_ninf;
        elmt_COMpartment.elmt_Rgk = Params.elmt_Rgk;
        elmt_COMpartment.elmt_pfk = Params.elmt_pfk;
        elmt_COMpartment.elmt_taua = Params.elmt_taua;
        elmt_COMpartment.elmt_IKCa = Params.elmt_IKCa;
        elmt_COMpartment.elmt_fer = Params.elmt_fer;
        elmt_COMpartment.elmt_sigmaV = Params.elmt_sigmaV;
        elmt_COMpartment.elmt_IK = Params.elmt_IK;
        elmt_COMpartment.elmt_IKATP = Params.elmt_IKATP;
        elmt_COMpartment.elmt_r1 = Params.elmt_r1;
        elmt_COMpartment.elmt_Jmem = Params.elmt_Jmem;
        elmt_COMpartment.elmt_atp = Params.elmt_atp;
        elmt_COMpartment.elmt_fcyt = Params.elmt_fcyt;
        elmt_COMpartment.elmt_Cm = Params.elmt_Cm;
        elmt_COMpartment.elmt_fback = Params.elmt_fback;
        elmt_COMpartment.elmt_rgpdh = Params.elmt_rgpdh;
        elmt_COMpartment.elmt_ICa = Params.elmt_ICa;
        elmt_COMpartment.elmt_taun = Params.elmt_taun;
        elmt_COMpartment.elmt_lambda = Params.elmt_lambda;

end Bertram2004_PancreaticBetaCell_modelB;
