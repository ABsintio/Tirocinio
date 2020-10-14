within BIOMD591;
model MODEL1501220000 "Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cyt elmt_cyt;
    Class_elmt_nuc elmt_nuc;

    equation
        Reacs.elmt_STAT5B = elmt_cyt.elmt_STAT5B;
        Reacs.elmt_STAT5A = elmt_cyt.elmt_STAT5A;
        Reacs.elmt_k_exp_hetero = Params.elmt_k_exp_hetero;
        Reacs.elmt_k_imp_hetero = Params.elmt_k_imp_hetero;
        Reacs.elmt_nucpApA = elmt_nuc.elmt_nucpApA;
        Reacs.elmt_nucpApB = elmt_nuc.elmt_nucpApB;
        Reacs.elmt_nucpBpB = elmt_nuc.elmt_nucpBpB;
        Reacs.elmt_k_imp_homo = Params.elmt_k_imp_homo;
        Reacs.elmt_Epo_degradation_BaF3 = Params.elmt_Epo_degradation_BaF3;
        Reacs.elmt_pApB = elmt_cyt.elmt_pApB;
        Reacs.elmt_pBpB = elmt_cyt.elmt_pBpB;
        Reacs.elmt_pApA = elmt_cyt.elmt_pApA;
        Reacs.elmt_k_phos = Params.elmt_k_phos;
        Reacs.elmt_k_exp_homo = Params.elmt_k_exp_homo;
        elmt_cyt.elmt_reaction7 = Reacs.elmt_reaction7;
        elmt_cyt.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cyt.elmt_reaction6 = Reacs.elmt_reaction6;
        elmt_cyt.elmt_reaction9 = Reacs.elmt_reaction9;
        elmt_cyt.elmt_reaction8 = Reacs.elmt_reaction8;
        elmt_cyt.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cyt.elmt_product6 = Reacs.elmt_product6;
        elmt_cyt.elmt_reaction3 = Reacs.elmt_reaction3;
        elmt_cyt.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cyt.elmt_reaction2 = Reacs.elmt_reaction2;
        elmt_cyt.elmt_ratio = Params.elmt_ratio;
        elmt_cyt.elmt_reaction5 = Reacs.elmt_reaction5;
        elmt_cyt.elmt_reaction4 = Reacs.elmt_reaction4;
        elmt_cyt.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cyt.elmt_product1 = Reacs.elmt_product1;
        elmt_cyt.elmt_reaction1 = Reacs.elmt_reaction1;
        elmt_cyt.elmt_product4 = Reacs.elmt_product4;
        elmt_cyt.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_cyt.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cyt.elmt_product16 = Reacs.elmt_product16;
        elmt_cyt.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cyt.elmt_product14 = Reacs.elmt_product14;
        elmt_cyt.elmt_product19 = Reacs.elmt_product19;
        elmt_cyt.elmt_product17 = Reacs.elmt_product17;
        elmt_nuc.elmt_reaction7 = Reacs.elmt_reaction7;
        elmt_nuc.elmt_product8 = Reacs.elmt_product8;
        elmt_nuc.elmt_reaction6 = Reacs.elmt_reaction6;
        elmt_nuc.elmt_reaction9 = Reacs.elmt_reaction9;
        elmt_nuc.elmt_reaction8 = Reacs.elmt_reaction8;
        elmt_nuc.elmt_product12 = Reacs.elmt_product12;
        elmt_nuc.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_nuc.elmt_reaction5 = Reacs.elmt_reaction5;
        elmt_nuc.elmt_product10 = Reacs.elmt_product10;
        elmt_nuc.elmt_reaction4 = Reacs.elmt_reaction4;
        elmt_nuc.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_nuc.elmt_reactant13 = Reacs.elmt_reactant13;

end MODEL1501220000;
