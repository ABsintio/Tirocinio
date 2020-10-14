within BIOMD176;
model Conant2007_WGD_glycolysis_2A3AB "Conant2007_WGD_glycolysis_2A3AB" annotation(Documentation(info="<annotation>
  <jd:header>
    <jd:VersionHeader SBMLVersion=\"1.0\"/>
    <jd:ModelHeader Author=\"Conant_Wolfe\" ModelTitle=\"YeastGlyco: WGD param and added PDH\" ModelVersion=\"0.0\"/>
  </jd:header>
  <jd:display>
    <jd:SBMLGraphicsHeader BackGroundColor=\"15728639\"/>
  </jd:display>
  <jd:notes type=\"ASCII\">
    <jd:note value=\"Model used by Conant and Wolfe, 2007, unpublished. Taken from Pritchard and Kell, 2002, Eur J Biochem 269: 3894-3904.\"/>
    <jd:note value=\"Changes: \"/>
    <jd:note value=\"-Added reaction names in some cases\"/>
    <jd:note value=\"-Added a new pseudo-species called WGD_E\"/>
    <jd:note value=\"-Made all rate laws dependent on the product of WGD_E and Vmax\"/>
    <jd:note value=\"-Added a new compartment of unit volume to represent the mitochondria\"/>
    <jd:note value=\"-Added two new fixed products AcCoA and Co2 as the outputs of PDH\"/>
    <jd:note value=\"-Added a mass-balance reaction for the transport of Pyr into the new compartment\"/>
    <jd:note value=\"-Added a PDH reaction using the kinetic values described in Rizzi et al., 1997, Biotechnology and Bioengineering 55: 592-608\"/>
    <jd:note value=\"Results for the analysis in the above manuscrijd:pt (Figure 2C) were obtained by manually changing the value of [WGD] to range between 0.65 and 1.0.\"/>
    <jd:note value=\" \"/>
  </jd:notes>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cyto elmt_cyto;

    equation
        Reacs.elmt_fV_ENO = Params.elmt_fV_ENO;
        Reacs.elmt_GAP = elmt_cyto.elmt_GAP;
        Reacs.elmt_NAD = elmt_cyto.elmt_NAD;
        Reacs.elmt_ATP = elmt_cyto.elmt_ATP;
        Reacs.elmt_Glycerol = elmt_cyto.elmt_Glycerol;
        Reacs.elmt_PEP = elmt_cyto.elmt_PEP;
        Reacs.elmt_BPG = elmt_cyto.elmt_BPG;
        Reacs.elmt_fV_HXT = Params.elmt_fV_HXT;
        Reacs.elmt_fV_GPM = Params.elmt_fV_GPM;
        Reacs.elmt_fV_FBA = Params.elmt_fV_FBA;
        Reacs.elmt_fV_TDH = Params.elmt_fV_TDH;
        Reacs.elmt_P3G = elmt_cyto.elmt_P3G;
        Reacs.elmt_DHAP = elmt_cyto.elmt_DHAP;
        Reacs.elmt_GLCo = elmt_cyto.elmt_GLCo;
        Reacs.elmt_WGD_E = Params.elmt_WGD_E;
        Reacs.elmt_ADP = elmt_cyto.elmt_ADP;
        Reacs.elmt_F26bP = elmt_cyto.elmt_F26bP;
        Reacs.elmt_NADH = elmt_cyto.elmt_NADH;
        Reacs.elmt_fV_PFK = Params.elmt_fV_PFK;
        Reacs.elmt_cyto = elmt_cyto.elmt_cyto;
        Reacs.elmt_GLCi = elmt_cyto.elmt_GLCi;
        Reacs.elmt_F6P = elmt_cyto.elmt_F6P;
        Reacs.elmt_EtOH = elmt_cyto.elmt_EtOH;
        Reacs.elmt_fV_PYK = Params.elmt_fV_PYK;
        Reacs.elmt_AcAld = elmt_cyto.elmt_AcAld;
        Reacs.elmt_F16bP = elmt_cyto.elmt_F16bP;
        Reacs.elmt_P2G = elmt_cyto.elmt_P2G;
        Reacs.elmt_AMP = elmt_cyto.elmt_AMP;
        Reacs.elmt_fV_HXK = Params.elmt_fV_HXK;
        Reacs.elmt_G6P = elmt_cyto.elmt_G6P;
        Reacs.elmt_fV_PGI = Params.elmt_fV_PGI;
        Reacs.elmt_fV_PGK = Params.elmt_fV_PGK;
        Reacs.elmt_PYR = elmt_cyto.elmt_PYR;
        elmt_cyto.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_cyto.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_cyto.elmt_product34 = Reacs.elmt_product34;
        elmt_cyto.elmt_PGK = Reacs.elmt_PGK;
        elmt_cyto.elmt_product32 = Reacs.elmt_product32;
        elmt_cyto.elmt_product31 = Reacs.elmt_product31;
        elmt_cyto.elmt_PGI = Reacs.elmt_PGI;
        elmt_cyto.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt_cyto.elmt_HXK = Reacs.elmt_HXK;
        elmt_cyto.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_cyto.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_cyto.elmt_ENO = Reacs.elmt_ENO;
        elmt_cyto.elmt_HXT = Reacs.elmt_HXT;
        elmt_cyto.elmt_PDC = Reacs.elmt_PDC;
        elmt_cyto.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cyto.elmt_product26 = Reacs.elmt_product26;
        elmt_cyto.elmt_TPI = Reacs.elmt_TPI;
        elmt_cyto.elmt_product24 = Reacs.elmt_product24;
        elmt_cyto.elmt_product28 = Reacs.elmt_product28;
        elmt_cyto.elmt_TDH = Reacs.elmt_TDH;
        elmt_cyto.elmt_product41 = Reacs.elmt_product41;
        elmt_cyto.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_cyto.elmt_reactant53 = Reacs.elmt_reactant53;
        elmt_cyto.elmt_ATPase = Reacs.elmt_ATPase;
        elmt_cyto.elmt_product44 = Reacs.elmt_product44;
        elmt_cyto.elmt_product43 = Reacs.elmt_product43;
        elmt_cyto.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_cyto.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_cyto.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_cyto.elmt_reactant54 = Reacs.elmt_reactant54;
        elmt_cyto.elmt_AK = Reacs.elmt_AK;
        elmt_cyto.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cyto.elmt_reactant57 = Reacs.elmt_reactant57;
        elmt_cyto.elmt_trehalose_synth = Reacs.elmt_trehalose_synth;
        elmt_cyto.elmt_PYK = Reacs.elmt_PYK;
        elmt_cyto.elmt_product38 = Reacs.elmt_product38;
        elmt_cyto.elmt_G3PDH = Reacs.elmt_G3PDH;
        elmt_cyto.elmt_product39 = Reacs.elmt_product39;
        elmt_cyto.elmt_product51 = Reacs.elmt_product51;
        elmt_cyto.elmt_product55 = Reacs.elmt_product55;
        elmt_cyto.elmt_product11 = Reacs.elmt_product11;
        elmt_cyto.elmt_product10 = Reacs.elmt_product10;
        elmt_cyto.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_cyto.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_cyto.elmt_succinate_syn = Reacs.elmt_succinate_syn;
        elmt_cyto.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_cyto.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_cyto.elmt_FBA = Reacs.elmt_FBA;
        elmt_cyto.elmt_ADH = Reacs.elmt_ADH;
        elmt_cyto.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_cyto.elmt_GPM = Reacs.elmt_GPM;
        elmt_cyto.elmt_product47 = Reacs.elmt_product47;
        elmt_cyto.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cyto.elmt_PFK = Reacs.elmt_PFK;
        elmt_cyto.elmt_glycogen_branch = Reacs.elmt_glycogen_branch;
        elmt_cyto.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_cyto.elmt_product7 = Reacs.elmt_product7;
        elmt_cyto.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cyto.elmt_product23 = Reacs.elmt_product23;
        elmt_cyto.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cyto.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cyto.elmt_product20 = Reacs.elmt_product20;
        elmt_cyto.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_cyto.elmt_product1 = Reacs.elmt_product1;
        elmt_cyto.elmt_product5 = Reacs.elmt_product5;
        elmt_cyto.elmt_product4 = Reacs.elmt_product4;
        elmt_cyto.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_cyto.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_cyto.elmt_product16 = Reacs.elmt_product16;
        elmt_cyto.elmt_product59 = Reacs.elmt_product59;
        elmt_cyto.elmt_product14 = Reacs.elmt_product14;
        elmt_cyto.elmt_product13 = Reacs.elmt_product13;
        elmt_cyto.elmt_product19 = Reacs.elmt_product19;

end Conant2007_WGD_glycolysis_2A3AB;
