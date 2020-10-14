within BIOMD248;
model Lai2007_O2_Transport_Metabolism "Lai2007_O2_Transport_Metabolism" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Tissue elmt_Tissue;
    Class_elmt_Capillary elmt_Capillary;

    equation
        Params.elmt_Tissue = elmt_Tissue.elmt_Tissue;
        Params.elmt_Capillary = elmt_Capillary.elmt_Capillary;
        Params.elmt_CFtis = elmt_Tissue.elmt_CFtis;
        Params.elmt_ATPase = Reacs.elmt_ATPase;
        Params.elmt_CFcap = elmt_Capillary.elmt_CFcap;
        Params.elmt_OxidativePhosphorylation = Reacs.elmt_OxidativePhosphorylation;
        Params.elmt_CreatineKinase = Reacs.elmt_CreatineKinase;
        Reacs.elmt_Kp = Params.elmt_Kp;
        Reacs.elmt_Vmax = Params.elmt_Vmax;
        Reacs.elmt_Kiq = Params.elmt_Kiq;
        Reacs.elmt_Km = Params.elmt_Km;
        Reacs.elmt_Kadp = Params.elmt_Kadp;
        Reacs.elmt_CFcap = elmt_Capillary.elmt_CFcap;
        Reacs.elmt_PCr = elmt_Tissue.elmt_PCr;
        Reacs.elmt_Katpase = Params.elmt_Katpase;
        Reacs.elmt_ATP = elmt_Tissue.elmt_ATP;
        Reacs.elmt_VrCK = Params.elmt_VrCK;
        Reacs.elmt_CTcap = elmt_Capillary.elmt_CTcap;
        Reacs.elmt_Tissue = elmt_Tissue.elmt_Tissue;
        Reacs.elmt_VfCK = Params.elmt_VfCK;
        Reacs.elmt_CFtis = elmt_Tissue.elmt_CFtis;
        Reacs.elmt_Kia = Params.elmt_Kia;
        Reacs.elmt_Kib = Params.elmt_Kib;
        Reacs.elmt_Cr = elmt_Tissue.elmt_Cr;
        Reacs.elmt_ADP = elmt_Tissue.elmt_ADP;
        Reacs.elmt_Qm = Params.elmt_Qm;
        Reacs.elmt_CTart = Params.elmt_CTart;
        Reacs.elmt_Kb = Params.elmt_Kb;
        Reacs.elmt_PSm = Params.elmt_PSm;
        elmt_Tissue.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_Tissue.elmt_product7 = Reacs.elmt_product7;
        elmt_Tissue.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_Tissue.elmt_Vmax = Params.elmt_Vmax;
        elmt_Tissue.elmt_Km = Params.elmt_Km;
        elmt_Tissue.elmt_Kadp = Params.elmt_Kadp;
        elmt_Tissue.elmt_product11 = Reacs.elmt_product11;
        elmt_Tissue.elmt_ATPase = Reacs.elmt_ATPase;
        elmt_Tissue.elmt_product10 = Reacs.elmt_product10;
        elmt_Tissue.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_Tissue.elmt_CFcap = elmt_Capillary.elmt_CFcap;
        elmt_Tissue.elmt_product1 = Reacs.elmt_product1;
        elmt_Tissue.elmt_KMb = Params.elmt_KMb;
        elmt_Tissue.elmt_OxidativePhosphorylation = Reacs.elmt_OxidativePhosphorylation;
        elmt_Tissue.elmt_product4 = Reacs.elmt_product4;
        elmt_Tissue.elmt_CreatineKinase = Reacs.elmt_CreatineKinase;
        elmt_Tissue.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_Tissue.elmt_DiffusionTransport = Reacs.elmt_DiffusionTransport;
        elmt_Tissue.elmt_CmcMb = Params.elmt_CmcMb;
        elmt_Tissue.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_Tissue.elmt_Wmc = Params.elmt_Wmc;
        elmt_Tissue.elmt_PSm = Params.elmt_PSm;
        elmt_Capillary.elmt_CrbcHb = Params.elmt_CrbcHb;
        elmt_Capillary.elmt_KHb = Params.elmt_KHb;
        elmt_Capillary.elmt_CFtis = elmt_Tissue.elmt_CFtis;
        elmt_Capillary.elmt_DiffusionTransport = Reacs.elmt_DiffusionTransport;
        elmt_Capillary.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_Capillary.elmt_Qm = Params.elmt_Qm;
        elmt_Capillary.elmt_ConvectionTransport = Reacs.elmt_ConvectionTransport;
        elmt_Capillary.elmt_product5 = Reacs.elmt_product5;
        elmt_Capillary.elmt_nH = Params.elmt_nH;
        elmt_Capillary.elmt_Hct = Params.elmt_Hct;
        elmt_Capillary.elmt_CTart = Params.elmt_CTart;
        elmt_Capillary.elmt_PSm = Params.elmt_PSm;

end Lai2007_O2_Transport_Metabolism;
