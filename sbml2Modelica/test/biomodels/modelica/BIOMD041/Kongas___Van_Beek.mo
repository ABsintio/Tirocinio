within BIOMD041;
model Kongas___Van_Beek "Kongas2007 - Creatine Kinase in energy metabolic signaling in muscle" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_IMS elmt_IMS;
    Class_elmt_CYT elmt_CYT;

    equation
        Reacs.elmt_P = elmt_CYT.elmt_P;
        Reacs.elmt_PCri = elmt_IMS.elmt_PCri;
        Reacs.elmt_Cr = elmt_CYT.elmt_Cr;
        Reacs.elmt_IMS = elmt_IMS.elmt_IMS;
        Reacs.elmt_PCr = elmt_CYT.elmt_PCr;
        Reacs.elmt_ADP = elmt_CYT.elmt_ADP;
        Reacs.elmt_ATP = elmt_CYT.elmt_ATP;
        Reacs.elmt_CYT = elmt_CYT.elmt_CYT;
        Reacs.elmt_ADPi = elmt_IMS.elmt_ADPi;
        Reacs.elmt_ATPi = elmt_IMS.elmt_ATPi;
        Reacs.elmt_Pi = elmt_IMS.elmt_Pi;
        Reacs.elmt_Cri = elmt_IMS.elmt_Cri;
        elmt_IMS.elmt_ADP_diffusion = Reacs.elmt_ADP_diffusion;
        elmt_IMS.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_IMS.elmt_MiCK = Reacs.elmt_MiCK;
        elmt_IMS.elmt_Pi_diffusion = Reacs.elmt_Pi_diffusion;
        elmt_IMS.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_IMS.elmt_product6 = Reacs.elmt_product6;
        elmt_IMS.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_IMS.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_IMS.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_IMS.elmt_PCr_diffusion = Reacs.elmt_PCr_diffusion;
        elmt_IMS.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_IMS.elmt_product5 = Reacs.elmt_product5;
        elmt_IMS.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_IMS.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_IMS.elmt_ATP_diffusion = Reacs.elmt_ATP_diffusion;
        elmt_IMS.elmt_product2 = Reacs.elmt_product2;
        elmt_IMS.elmt_Cr_diffusion = Reacs.elmt_Cr_diffusion;
        elmt_IMS.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_IMS.elmt_OxPhos = Reacs.elmt_OxPhos;
        elmt_CYT.elmt_product9 = Reacs.elmt_product9;
        elmt_CYT.elmt_ADP_diffusion = Reacs.elmt_ADP_diffusion;
        elmt_CYT.elmt_Pi_diffusion = Reacs.elmt_Pi_diffusion;
        elmt_CYT.elmt_product12 = Reacs.elmt_product12;
        elmt_CYT.elmt_product23 = Reacs.elmt_product23;
        elmt_CYT.elmt_ATPase = Reacs.elmt_ATPase;
        elmt_CYT.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_CYT.elmt_product21 = Reacs.elmt_product21;
        elmt_CYT.elmt_product10 = Reacs.elmt_product10;
        elmt_CYT.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_CYT.elmt_PCr_diffusion = Reacs.elmt_PCr_diffusion;
        elmt_CYT.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_CYT.elmt_ATP_diffusion = Reacs.elmt_ATP_diffusion;
        elmt_CYT.elmt_MMCK = Reacs.elmt_MMCK;
        elmt_CYT.elmt_Cr_diffusion = Reacs.elmt_Cr_diffusion;
        elmt_CYT.elmt_product15 = Reacs.elmt_product15;
        elmt_CYT.elmt_product13 = Reacs.elmt_product13;
        elmt_CYT.elmt_product19 = Reacs.elmt_product19;
        elmt_CYT.elmt_product17 = Reacs.elmt_product17;

end Kongas___Van_Beek;
