within BIOMD192;
model RanGTP_gradient "Görlich2003_RanGTP_gradient" annotation(Documentation(info="<annotation xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\" xmlns:doqcs=\"http://www.doqcs.ncbs.res.in\" xmlns:jd=\"http://www.sys-bio.org/sbml\">
    <doqcs:timestamp>Sat Nov 11 13:59:45 2006</doqcs:timestamp>
    <doqcs:accesstype>network</doqcs:accesstype>
    <doqcs:transcriber>Sharat J. Vayttaden and Pragati Jain, NCBS</doqcs:transcriber>
    <doqcs:developer>D.Gorlich, M.J.Seewald and K.Ribbeck</doqcs:developer>
    <doqcs:species>Eukaryotic system</doqcs:species>
    <doqcs:tissue>HeLa Cells</doqcs:tissue>
    <doqcs:cellcompartment>Cytosol, Nucleus</doqcs:cellcompartment>
    <doqcs:methodology>Qualitative</doqcs:methodology>
    <doqcs:model_implementation>Exact GENESIS implementation</doqcs:model_implementation>
    <doqcs:model_validation>Approximates original data </doqcs:model_validation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_nucleus elmt_nucleus;
    Class_elmt_cytoplasm elmt_cytoplasm;

    equation
        Reacs.elmt_nucleus = elmt_nucleus.elmt_nucleus;
        Reacs.elmt_RanGAP = elmt_cytoplasm.elmt_RanGAP;
        Reacs.elmt_GDP = elmt_nucleus.elmt_GDP;
        Reacs.elmt_RanGTP_cy = elmt_cytoplasm.elmt_RanGTP_cy;
        Reacs.elmt_RCC1_RanGTP = elmt_nucleus.elmt_RCC1_RanGTP;
        Reacs.elmt_RCC1 = elmt_nucleus.elmt_RCC1;
        Reacs.elmt_RanGDP_cy = elmt_cytoplasm.elmt_RanGDP_cy;
        Reacs.elmt_RanGDP_nuc = elmt_nucleus.elmt_RanGDP_nuc;
        Reacs.elmt_GTP = elmt_nucleus.elmt_GTP;
        Reacs.elmt_RCC1_Ran = elmt_nucleus.elmt_RCC1_Ran;
        Reacs.elmt_RanGTP_nuc = elmt_nucleus.elmt_RanGTP_nuc;
        Reacs.elmt_cytoplasm = elmt_cytoplasm.elmt_cytoplasm;
        Reacs.elmt_RCC1_RanGDP = elmt_nucleus.elmt_RCC1_RanGDP;
        Reacs.elmt_RanBP1 = elmt_cytoplasm.elmt_RanBP1;
        Reacs.elmt_RanGTP_RanBP1 = elmt_cytoplasm.elmt_RanGTP_RanBP1;
        elmt_nucleus.elmt_Cytoplasmic_transfer = Reacs.elmt_Cytoplasmic_transfer;
        elmt_nucleus.elmt_product8 = Reacs.elmt_product8;
        elmt_nucleus.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_nucleus.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_nucleus.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_nucleus.elmt_GTP_binding = Reacs.elmt_GTP_binding;
        elmt_nucleus.elmt_product11 = Reacs.elmt_product11;
        elmt_nucleus.elmt_RanGTP_release = Reacs.elmt_RanGTP_release;
        elmt_nucleus.elmt_product10 = Reacs.elmt_product10;
        elmt_nucleus.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_nucleus.elmt_product4 = Reacs.elmt_product4;
        elmt_nucleus.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_nucleus.elmt_GDP_dissociation = Reacs.elmt_GDP_dissociation;
        elmt_nucleus.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_nucleus.elmt_product2 = Reacs.elmt_product2;
        elmt_nucleus.elmt_Nucleoplasmic_transfer = Reacs.elmt_Nucleoplasmic_transfer;
        elmt_nucleus.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_nucleus.elmt_RCC1_binding = Reacs.elmt_RCC1_binding;
        elmt_cytoplasm.elmt_Cytoplasmic_transfer = Reacs.elmt_Cytoplasmic_transfer;
        elmt_cytoplasm.elmt_product23 = Reacs.elmt_product23;
        elmt_cytoplasm.elmt_product21 = Reacs.elmt_product21;
        elmt_cytoplasm.elmt_product20 = Reacs.elmt_product20;
        elmt_cytoplasm.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cytoplasm.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_cytoplasm.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_cytoplasm.elmt_RanBP1_RanGDP = Reacs.elmt_RanBP1_RanGDP;
        elmt_cytoplasm.elmt_Nucleoplasmic_transfer = Reacs.elmt_Nucleoplasmic_transfer;
        elmt_cytoplasm.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_cytoplasm.elmt_RanGAP_RanGDP = Reacs.elmt_RanGAP_RanGDP;
        elmt_cytoplasm.elmt_product15 = Reacs.elmt_product15;
        elmt_cytoplasm.elmt_product13 = Reacs.elmt_product13;
        elmt_cytoplasm.elmt_RanGTP_binding = Reacs.elmt_RanGTP_binding;
        elmt_cytoplasm.elmt_product18 = Reacs.elmt_product18;

end RanGTP_gradient;
