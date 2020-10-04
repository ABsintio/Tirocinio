within BIOMD013;
model untitled "Poolman2004_CalvinCycle" annotation(Documentation(info="<annotation>
    <jd:notes type=\"ASCII\">
      <jd:note value=\"// Calvin cycle model\"/>
      <jd:note value=\"// (c) Mark Poolman (mgpoolman@brookes.ac.uk) 1995-2002\"/>
      <jd:note value=\"// Based description by Pettersson 1988, Eur. J. Biochem. 175, 661--672\"/>
      <jd:note value=\"//\"/>
      <jd:note value=\"//Differences are:\"/>
      <jd:note value=\"//    1 - Reactions assumed by Pettersson to be in equilibrium have fast mass action kinetics.\"/>
      <jd:note value=\"//\"/>
      <jd:note value=\"//    2 - Introduction of the parameter PGAxpMult to modulate PGA export through TPT.\"/>
      <jd:note value=\"//\"/>
      <jd:note value=\"//    3 - Introduction of Starch phosphorylase reaction.\"/>
      <jd:note value=\"//\"/>
      <jd:note value=\"//\"/>
      <jd:note value=\"//This file may be freely copied or translated into other formats provided:\"/>
      <jd:note value=\"//\"/>
      <jd:note value=\"//    1 - This notice is reproduced in its entirety\"/>
      <jd:note value=\"//\"/>
      <jd:note value=\"//    2 - Published material making use of (information gained from) this model cites at least:\"/>
      <jd:note value=\"//\"/>
      <jd:note value=\"// (a) Poolman, 1999, Computer Modelling Applied to the Calvin Cycle, PhD Thesis, Oxford Brookes University\"/>
      <jd:note value=\"//\"/>
      <jd:note value=\"// and:\"/>
      <jd:note value=\"//     (b) Poolman, Fell, and Thomas. 2000, Modelling Photosynthesis and its control,\"/>
      <jd:note value=\"//         J. Exp. Bot. 51, 319--328\"/>
      <jd:note value=\"//\"/>
      <jd:note value=\"//     or\"/>
      <jd:note value=\"//\"/>
      <jd:note value=\"//     (c) Poolman et al. 2001, Computer modelling and experimental evidence for two steady states in\"/>
      <jd:note value=\"//         the photosynthetic Calvin cycle. Eur. J. Biochem. 268, 2810--2816 \"/>
      <jd:note value=\"//\"/>
      <jd:note value=\"//Further related information may be found at http://mudshark.brookes.ac.uk\"/>
    </jd:notes>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cytosol elmt_cytosol;
    Class_elmt_chloroplast elmt_chloroplast;

    equation
        Reacs.elmt_BPGA_ch = elmt_chloroplast.elmt_BPGA_ch;
        Reacs.elmt_E4P_ch = elmt_chloroplast.elmt_E4P_ch;
        Reacs.elmt_DHAP_ch = elmt_chloroplast.elmt_DHAP_ch;
        Reacs.elmt_R5P_ch = elmt_chloroplast.elmt_R5P_ch;
        Reacs.elmt_ADP_ch = elmt_chloroplast.elmt_ADP_ch;
        Reacs.elmt_x_NADP_ch = elmt_chloroplast.elmt_x_NADP_ch;
        Reacs.elmt_S7P_ch = elmt_chloroplast.elmt_S7P_ch;
        Reacs.elmt_Ru5P_ch = elmt_chloroplast.elmt_Ru5P_ch;
        Reacs.elmt_GAP_ch = elmt_chloroplast.elmt_GAP_ch;
        Reacs.elmt_x_NADPH_ch = elmt_chloroplast.elmt_x_NADPH_ch;
        Reacs.elmt_x_Proton_ch = elmt_chloroplast.elmt_x_Proton_ch;
        Reacs.elmt_G6P_ch = elmt_chloroplast.elmt_G6P_ch;
        Reacs.elmt_FBP_ch = elmt_chloroplast.elmt_FBP_ch;
        Reacs.elmt_X5P_ch = elmt_chloroplast.elmt_X5P_ch;
        Reacs.elmt_SBP_ch = elmt_chloroplast.elmt_SBP_ch;
        Reacs.elmt_Light_on = Params.elmt_Light_on;
        Reacs.elmt_x_Pi_cyt = elmt_cytosol.elmt_x_Pi_cyt;
        Reacs.elmt_RuBP_ch = elmt_chloroplast.elmt_RuBP_ch;
        Reacs.elmt_PGA_ch = elmt_chloroplast.elmt_PGA_ch;
        Reacs.elmt_F6P_ch = elmt_chloroplast.elmt_F6P_ch;
        Reacs.elmt_Pi_ch = elmt_chloroplast.elmt_Pi_ch;
        Reacs.elmt_ATP_ch = elmt_chloroplast.elmt_ATP_ch;
        Reacs.elmt_chloroplast = elmt_chloroplast.elmt_chloroplast;
        Reacs.elmt_G1P_ch = elmt_chloroplast.elmt_G1P_ch;
        elmt_chloroplast.elmt_product30 = Reacs.elmt_product30;
        elmt_chloroplast.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_chloroplast.elmt_product34 = Reacs.elmt_product34;
        elmt_chloroplast.elmt_product33 = Reacs.elmt_product33;
        elmt_chloroplast.elmt_E2 = Reacs.elmt_E2;
        elmt_chloroplast.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt_chloroplast.elmt_E3 = Reacs.elmt_E3;
        elmt_chloroplast.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_chloroplast.elmt_E1 = Reacs.elmt_E1;
        elmt_chloroplast.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt_chloroplast.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_chloroplast.elmt_product27 = Reacs.elmt_product27;
        elmt_chloroplast.elmt_product69 = Reacs.elmt_product69;
        elmt_chloroplast.elmt_product24 = Reacs.elmt_product24;
        elmt_chloroplast.elmt_product29 = Reacs.elmt_product29;
        elmt_chloroplast.elmt_product41 = Reacs.elmt_product41;
        elmt_chloroplast.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_chloroplast.elmt_reactant51 = Reacs.elmt_reactant51;
        elmt_chloroplast.elmt_product44 = Reacs.elmt_product44;
        elmt_chloroplast.elmt_product42 = Reacs.elmt_product42;
        elmt_chloroplast.elmt_E18_GAP = Reacs.elmt_E18_GAP;
        elmt_chloroplast.elmt_reactant59 = Reacs.elmt_reactant59;
        elmt_chloroplast.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_chloroplast.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_chloroplast.elmt_E18_DHAP = Reacs.elmt_E18_DHAP;
        elmt_chloroplast.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_chloroplast.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_chloroplast.elmt_E8 = Reacs.elmt_E8;
        elmt_chloroplast.elmt_E9 = Reacs.elmt_E9;
        elmt_chloroplast.elmt_E18_PGA = Reacs.elmt_E18_PGA;
        elmt_chloroplast.elmt_E6 = Reacs.elmt_E6;
        elmt_chloroplast.elmt_E7 = Reacs.elmt_E7;
        elmt_chloroplast.elmt_E4 = Reacs.elmt_E4;
        elmt_chloroplast.elmt_E5 = Reacs.elmt_E5;
        elmt_chloroplast.elmt_product38 = Reacs.elmt_product38;
        elmt_chloroplast.elmt_product36 = Reacs.elmt_product36;
        elmt_chloroplast.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt_chloroplast.elmt_product12 = Reacs.elmt_product12;
        elmt_chloroplast.elmt_product11 = Reacs.elmt_product11;
        elmt_chloroplast.elmt_product54 = Reacs.elmt_product54;
        elmt_chloroplast.elmt_light_reaction = Reacs.elmt_light_reaction;
        elmt_chloroplast.elmt_product53 = Reacs.elmt_product53;
        elmt_chloroplast.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_chloroplast.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_chloroplast.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_chloroplast.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_chloroplast.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_chloroplast.elmt_reactant67 = Reacs.elmt_reactant67;
        elmt_chloroplast.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_chloroplast.elmt_product49 = Reacs.elmt_product49;
        elmt_chloroplast.elmt_product46 = Reacs.elmt_product46;
        elmt_chloroplast.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_chloroplast.elmt_product61 = Reacs.elmt_product61;
        elmt_chloroplast.elmt_product6 = Reacs.elmt_product6;
        elmt_chloroplast.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_chloroplast.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_chloroplast.elmt_product23 = Reacs.elmt_product23;
        elmt_chloroplast.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_chloroplast.elmt_product65 = Reacs.elmt_product65;
        elmt_chloroplast.elmt_product20 = Reacs.elmt_product20;
        elmt_chloroplast.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt_chloroplast.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_chloroplast.elmt_product5 = Reacs.elmt_product5;
        elmt_chloroplast.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_chloroplast.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_chloroplast.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_chloroplast.elmt_product2 = Reacs.elmt_product2;
        elmt_chloroplast.elmt_E13 = Reacs.elmt_E13;
        elmt_chloroplast.elmt_E14 = Reacs.elmt_E14;
        elmt_chloroplast.elmt_E11 = Reacs.elmt_E11;
        elmt_chloroplast.elmt_E12 = Reacs.elmt_E12;
        elmt_chloroplast.elmt_E10 = Reacs.elmt_E10;
        elmt_chloroplast.elmt_product14 = Reacs.elmt_product14;
        elmt_chloroplast.elmt_product57 = Reacs.elmt_product57;
        elmt_chloroplast.elmt_E17 = Reacs.elmt_E17;
        elmt_chloroplast.elmt_product19 = Reacs.elmt_product19;
        elmt_chloroplast.elmt_E15 = Reacs.elmt_E15;
        elmt_chloroplast.elmt_E16 = Reacs.elmt_E16;
        elmt_chloroplast.elmt_product17 = Reacs.elmt_product17;

end untitled;
