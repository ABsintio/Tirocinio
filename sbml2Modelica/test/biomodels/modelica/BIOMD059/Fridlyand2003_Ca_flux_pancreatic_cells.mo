within BIOMD059;
model Fridlyand2003_Ca_flux_pancreatic_cells "Fridlyand2003_Calcium_flux" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Cytoplasm elmt_Cytoplasm;
    Class_elmt_ER elmt_ER;

    equation
        Params.elmt_ADP_cyt = elmt_Cytoplasm.elmt_ADP_cyt;
        Params.elmt_ATP_cyt = elmt_Cytoplasm.elmt_ATP_cyt;
        Params.elmt_IP3_cyt = elmt_Cytoplasm.elmt_IP3_cyt;
        Params.elmt_Ca_cyt = elmt_Cytoplasm.elmt_Ca_cyt;
        Params.elmt_Ca_er = elmt_ER.elmt_Ca_er;
        Params.elmt_Na_cyt = elmt_Cytoplasm.elmt_Na_cyt;
        Reacs.elmt_Cytoplasm = elmt_Cytoplasm.elmt_Cytoplasm;
        Reacs.elmt_ADP_cyt = elmt_Cytoplasm.elmt_ADP_cyt;
        Reacs.elmt_fi = Params.elmt_fi;
        Reacs.elmt_Jout = Params.elmt_Jout;
        Reacs.elmt_ATP_cyt = elmt_Cytoplasm.elmt_ATP_cyt;
        Reacs.elmt_Ca_cyt = elmt_Cytoplasm.elmt_Ca_cyt;
        Reacs.elmt_Kipca = Params.elmt_Kipca;
        Reacs.elmt_kip = Params.elmt_kip;
        Reacs.elmt_katp = Params.elmt_katp;
        Reacs.elmt_ksg = Params.elmt_ksg;
        Reacs.elmt_I_NaK = Params.elmt_I_NaK;
        Reacs.elmt_I_CaPump = Params.elmt_I_CaPump;
        Reacs.elmt_F = Params.elmt_F;
        Reacs.elmt_I_Na = Params.elmt_I_Na;
        Reacs.elmt_IP3_cyt = elmt_Cytoplasm.elmt_IP3_cyt;
        Reacs.elmt_katpca = Params.elmt_katpca;
        Reacs.elmt_kdip = Params.elmt_kdip;
        Reacs.elmt_I_Vca = Params.elmt_I_Vca;
        Reacs.elmt_kadp = Params.elmt_kadp;
        Reacs.elmt_I_NaCa = Params.elmt_I_NaCa;
        Reacs.elmt_Jerp = Params.elmt_Jerp;
        Reacs.elmt_I_CRAN = Params.elmt_I_CRAN;
        elmt_ER.elmt_Calcium_cyt_Jerp = Reacs.elmt_Calcium_cyt_Jerp;
        elmt_ER.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_ER.elmt_Calcium_cyt_Jout = Reacs.elmt_Calcium_cyt_Jout;
        elmt_ER.elmt_product4 = Reacs.elmt_product4;
        elmt_Cytoplasm.elmt_product12 = Reacs.elmt_product12;
        elmt_Cytoplasm.elmt_ATP_production = Reacs.elmt_ATP_production;
        elmt_Cytoplasm.elmt_Calcium_cyt_Ivca = Reacs.elmt_Calcium_cyt_Ivca;
        elmt_Cytoplasm.elmt_Na_Ina = Reacs.elmt_Na_Ina;
        elmt_Cytoplasm.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_Cytoplasm.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_Cytoplasm.elmt_ATP_consumption = Reacs.elmt_ATP_consumption;
        elmt_Cytoplasm.elmt_Calcium_cyt_sequestration = Reacs.elmt_Calcium_cyt_sequestration;
        elmt_Cytoplasm.elmt_Na_Inak = Reacs.elmt_Na_Inak;
        elmt_Cytoplasm.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_Cytoplasm.elmt_Na_Icran = Reacs.elmt_Na_Icran;
        elmt_Cytoplasm.elmt_ATP_NaKATPase = Reacs.elmt_ATP_NaKATPase;
        elmt_Cytoplasm.elmt_Calcium_cyt_Inaca = Reacs.elmt_Calcium_cyt_Inaca;
        elmt_Cytoplasm.elmt_Calcium_cyt_Jerp = Reacs.elmt_Calcium_cyt_Jerp;
        elmt_Cytoplasm.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_Cytoplasm.elmt_product8 = Reacs.elmt_product8;
        elmt_Cytoplasm.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_Cytoplasm.elmt_product6 = Reacs.elmt_product6;
        elmt_Cytoplasm.elmt_IP3_synthesis = Reacs.elmt_IP3_synthesis;
        elmt_Cytoplasm.elmt_Na_Inaca = Reacs.elmt_Na_Inaca;
        elmt_Cytoplasm.elmt_ATP_Jerp = Reacs.elmt_ATP_Jerp;
        elmt_Cytoplasm.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_Cytoplasm.elmt_IP3_degradation = Reacs.elmt_IP3_degradation;
        elmt_Cytoplasm.elmt_ATP_Capump = Reacs.elmt_ATP_Capump;
        elmt_Cytoplasm.elmt_product1 = Reacs.elmt_product1;
        elmt_Cytoplasm.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_Cytoplasm.elmt_product0 = Reacs.elmt_product0;
        elmt_Cytoplasm.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_Cytoplasm.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_Cytoplasm.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_Cytoplasm.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_Cytoplasm.elmt_Calcium_cyt_Jout = Reacs.elmt_Calcium_cyt_Jout;
        elmt_Cytoplasm.elmt_ATP_Ca_dependent_consumption = Reacs.elmt_ATP_Ca_dependent_consumption;
        elmt_Cytoplasm.elmt_product14 = Reacs.elmt_product14;
        elmt_Cytoplasm.elmt_product13 = Reacs.elmt_product13;
        elmt_Cytoplasm.elmt_Calcium_cyt_Icapump = Reacs.elmt_Calcium_cyt_Icapump;

end Fridlyand2003_Ca_flux_pancreatic_cells;
