within BIOMD390;
model S2MModel "Arnold2011_Giersch1990_CalvinCycle" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cytosol elmt_cytosol;
    Class_elmt_chloroplast elmt_chloroplast;

    equation
        Reacs.elmt_TPc = elmt_cytosol.elmt_TPc;
        Reacs.elmt_totRuBP = elmt_chloroplast.elmt_totRuBP;
        Reacs.elmt_Ru5P = elmt_chloroplast.elmt_Ru5P;
        Reacs.elmt_V6 = Params.elmt_V6;
        Reacs.elmt_ADP = elmt_chloroplast.elmt_ADP;
        Reacs.elmt_ATP = elmt_chloroplast.elmt_ATP;
        Reacs.elmt_TP = elmt_chloroplast.elmt_TP;
        Reacs.elmt_Pi = elmt_chloroplast.elmt_Pi;
        Reacs.elmt_chloroplast = elmt_chloroplast.elmt_chloroplast;
        Reacs.elmt_E_RuBisCO = elmt_chloroplast.elmt_E_RuBisCO;
        Reacs.elmt_Pic = elmt_cytosol.elmt_Pic;
        Reacs.elmt_PGA = elmt_chloroplast.elmt_PGA;
        elmt_chloroplast.elmt_ATP_S = Reacs.elmt_ATP_S;
        elmt_chloroplast.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_chloroplast.elmt_RuBisCO = Reacs.elmt_RuBisCO;
        elmt_chloroplast.elmt_product10 = Reacs.elmt_product10;
        elmt_chloroplast.elmt_PGA_red = Reacs.elmt_PGA_red;
        elmt_chloroplast.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_chloroplast.elmt_P_0 = Params.elmt_P_0;
        elmt_chloroplast.elmt_product9 = Reacs.elmt_product9;
        elmt_chloroplast.elmt_TPT = Reacs.elmt_TPT;
        elmt_chloroplast.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_chloroplast.elmt_TP_red = Reacs.elmt_TP_red;
        elmt_chloroplast.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_chloroplast.elmt_product7 = Reacs.elmt_product7;
        elmt_chloroplast.elmt_product6 = Reacs.elmt_product6;
        elmt_chloroplast.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_chloroplast.elmt_product21 = Reacs.elmt_product21;
        elmt_chloroplast.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_chloroplast.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_chloroplast.elmt_RuBP_reg = Reacs.elmt_RuBP_reg;
        elmt_chloroplast.elmt_product5 = Reacs.elmt_product5;
        elmt_chloroplast.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_chloroplast.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_chloroplast.elmt_product2 = Reacs.elmt_product2;
        elmt_chloroplast.elmt_product14 = Reacs.elmt_product14;
        elmt_chloroplast.elmt_product13 = Reacs.elmt_product13;
        elmt_chloroplast.elmt_product18 = Reacs.elmt_product18;

end S2MModel;
