within BIOMD240;
model Veening2008_DegU_Regulation "Veening2008_DegU_Regulation" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_univ elmt_univ;

    equation
        Params.elmt_Dim = elmt_univ.elmt_Dim;
        Params.elmt_DegU = elmt_univ.elmt_DegU;
        Params.elmt_DegUP = elmt_univ.elmt_DegUP;
        Reacs.elmt_Io = Params.elmt_Io;
        Reacs.elmt_AprE = elmt_univ.elmt_AprE;
        Reacs.elmt_ksyn1 = Params.elmt_ksyn1;
        Reacs.elmt_mDegU = elmt_univ.elmt_mDegU;
        Reacs.elmt_K = Params.elmt_K;
        Reacs.elmt_DegUP = elmt_univ.elmt_DegUP;
        Reacs.elmt_kdeg = Params.elmt_kdeg;
        Reacs.elmt_Irmax = Params.elmt_Irmax;
        Reacs.elmt_ksyn = Params.elmt_ksyn;
        Reacs.elmt_Kr = Params.elmt_Kr;
        Reacs.elmt_Dim = elmt_univ.elmt_Dim;
        Reacs.elmt_ka = Params.elmt_ka;
        Reacs.elmt_Iro = Params.elmt_Iro;
        Reacs.elmt_DegU = elmt_univ.elmt_DegU;
        Reacs.elmt_kphos = Params.elmt_kphos;
        Reacs.elmt_Kdim = Params.elmt_Kdim;
        Reacs.elmt_mAprE = elmt_univ.elmt_mAprE;
        Reacs.elmt_Imax = Params.elmt_Imax;
        Reacs.elmt_kdegm = Params.elmt_kdegm;
        Reacs.elmt_kd = Params.elmt_kd;
        Reacs.elmt_kdephos = Params.elmt_kdephos;
        Reacs.elmt_univ = elmt_univ.elmt_univ;
        Reacs.elmt_Kr1 = Params.elmt_Kr1;
        Reacs.elmt_R = Params.elmt_R;
        elmt_univ.elmt_mRNAAprEsyn = Reacs.elmt_mRNAAprEsyn;
        elmt_univ.elmt_mRNAAprEdeg = Reacs.elmt_mRNAAprEdeg;
        elmt_univ.elmt_product11 = Reacs.elmt_product11;
        elmt_univ.elmt_synthesisDegU = Reacs.elmt_synthesisDegU;
        elmt_univ.elmt_DimerAss = Reacs.elmt_DimerAss;
        elmt_univ.elmt_AprEdeg = Reacs.elmt_AprEdeg;
        elmt_univ.elmt_AprEsyn = Reacs.elmt_AprEsyn;
        elmt_univ.elmt_phosphorylation = Reacs.elmt_phosphorylation;
        elmt_univ.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_univ.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_univ.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_univ.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_univ.elmt_degradation2 = Reacs.elmt_degradation2;
        elmt_univ.elmt_degradation1 = Reacs.elmt_degradation1;
        elmt_univ.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_univ.elmt_degradation3 = Reacs.elmt_degradation3;
        elmt_univ.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_univ.elmt_product1 = Reacs.elmt_product1;
        elmt_univ.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_univ.elmt_synthesismRNA = Reacs.elmt_synthesismRNA;
        elmt_univ.elmt_product5 = Reacs.elmt_product5;
        elmt_univ.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_univ.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_univ.elmt_product3 = Reacs.elmt_product3;
        elmt_univ.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_univ.elmt_degradationmRNA = Reacs.elmt_degradationmRNA;
        elmt_univ.elmt_DimerDis = Reacs.elmt_DimerDis;
        elmt_univ.elmt_product16 = Reacs.elmt_product16;
        elmt_univ.elmt_product15 = Reacs.elmt_product15;
        elmt_univ.elmt_product13 = Reacs.elmt_product13;
        elmt_univ.elmt_dephosphorylation = Reacs.elmt_dephosphorylation;
        elmt_univ.elmt_product17 = Reacs.elmt_product17;

end Veening2008_DegU_Regulation;
