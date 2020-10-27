within S2MBIOMDx8016;
model Goldbeter1995 "Goldbeter1995_CircClock"
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
//<notes>
//      <body xmlns="http://www.w3.org/1999/xhtml">
//        <p>To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. Please refer to      <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a>
//          for more information.      </p>
//            <p>In summary, you are entitled to use this encoded model in absolutely any manner you deem suitable, verbatim, or with modification, alone or embedded it in a larger context, redistribute it, commercially or not, in a restricted way or not.</p>
//            <br/>
//            <p>To cite BioModels Database, please use:      <a href="http://www.ncbi.nlm.nih.gov/pubmed/20587024" target="_blank">Li C, Donizelli M, Rodriguez N, Dharuri H, Endler L, Chelliah V, Li L, He E, Henry A, Stefan MI, Snoep JL, Hucka M, Le Novère N, Laibe C (2010) BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models. BMC Syst Biol., 4:92.</a>
//                </p>
//            </body>
//      
//    </notes>


    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_0000004 elmt_compartment_0000004;
    Class_elmt_default elmt_default;
    Class_elmt_CYTOPLASM elmt_CYTOPLASM;

    equation
        Reacs.elmt_compartment_0000004 = elmt_compartment_0000004.elmt_compartment_0000004;
        Reacs.elmt_M = elmt_CYTOPLASM.elmt_M;
        Reacs.elmt_P1 = elmt_CYTOPLASM.elmt_P1;
        Reacs.elmt_P2 = elmt_CYTOPLASM.elmt_P2;
        Reacs.elmt_P0 = elmt_CYTOPLASM.elmt_P0;
        Reacs.elmt_Pn = elmt_compartment_0000004.elmt_Pn;
        Reacs.elmt_default = elmt_default.elmt_default;
        Reacs.elmt_CYTOPLASM = elmt_CYTOPLASM.elmt_CYTOPLASM;
        elmt_CYTOPLASM.elmt_product11 = Reacs.elmt_product11;
        elmt_CYTOPLASM.elmt_rVd = Reacs.elmt_rVd;
        elmt_CYTOPLASM.elmt_rP21 = Reacs.elmt_rP21;
        elmt_CYTOPLASM.elmt_rmRNAd = Reacs.elmt_rmRNAd;
        elmt_CYTOPLASM.elmt_rP2n = Reacs.elmt_rP2n;
        elmt_CYTOPLASM.elmt_rPn2 = Reacs.elmt_rPn2;
        elmt_CYTOPLASM.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_CYTOPLASM.elmt_rP01 = Reacs.elmt_rP01;
        elmt_CYTOPLASM.elmt_product9 = Reacs.elmt_product9;
        elmt_CYTOPLASM.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_CYTOPLASM.elmt_product7 = Reacs.elmt_product7;
        elmt_CYTOPLASM.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_CYTOPLASM.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_CYTOPLASM.elmt_product1 = Reacs.elmt_product1;
        elmt_CYTOPLASM.elmt_rP10 = Reacs.elmt_rP10;
        elmt_CYTOPLASM.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_CYTOPLASM.elmt_product5 = Reacs.elmt_product5;
        elmt_CYTOPLASM.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_CYTOPLASM.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_CYTOPLASM.elmt_product3 = Reacs.elmt_product3;
        elmt_CYTOPLASM.elmt_rP12 = Reacs.elmt_rP12;
        elmt_CYTOPLASM.elmt_Pn = elmt_compartment_0000004.elmt_Pn;
        elmt_CYTOPLASM.elmt_product15 = Reacs.elmt_product15;
        elmt_CYTOPLASM.elmt_rM = Reacs.elmt_rM;
        elmt_CYTOPLASM.elmt_rTL = Reacs.elmt_rTL;
        elmt_compartment_0000004.elmt_rPn2 = Reacs.elmt_rPn2;
        elmt_compartment_0000004.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_compartment_0000004.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment_0000004.elmt_rP2n = Reacs.elmt_rP2n;

end Goldbeter1995;
