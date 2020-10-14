within BIOMD366;
model Model_1 "Orfao2008_ThrombinGeneration_AmidolyticActivity" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_1 elmt_compartment_1;

    equation
        Params.elmt_IIa = elmt_compartment_1.elmt_IIa;
        Params.elmt_IIa_alpha2M = elmt_compartment_1.elmt_IIa_alpha2M;
        Reacs.elmt_kcat_II = Params.elmt_kcat_II;
        Reacs.elmt_PT = elmt_compartment_1.elmt_PT;
        Reacs.elmt_km_2 = Params.elmt_km_2;
        Reacs.elmt_k_PL = Params.elmt_k_PL;
        Reacs.elmt_ki_Xa = Params.elmt_ki_Xa;
        Reacs.elmt_ki_IIaAlpha2M = Params.elmt_ki_IIaAlpha2M;
        Reacs.elmt_kcat_2 = Params.elmt_kcat_2;
        Reacs.elmt_RVV = elmt_compartment_1.elmt_RVV;
        Reacs.elmt_II = elmt_compartment_1.elmt_II;
        Reacs.elmt_km_X = Params.elmt_km_X;
        Reacs.elmt_Va = elmt_compartment_1.elmt_Va;
        Reacs.elmt_Xa = elmt_compartment_1.elmt_Xa;
        Reacs.elmt_k_PT = Params.elmt_k_PT;
        Reacs.elmt_km_V = Params.elmt_km_V;
        Reacs.elmt_km_II = Params.elmt_km_II;
        Reacs.elmt_ki_IIaATIII = Params.elmt_ki_IIaATIII;
        Reacs.elmt_IIa = elmt_compartment_1.elmt_IIa;
        Reacs.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Reacs.elmt_X = elmt_compartment_1.elmt_X;
        Reacs.elmt_kcat_V = Params.elmt_kcat_V;
        Reacs.elmt_PL = elmt_compartment_1.elmt_PL;
        Reacs.elmt_V = elmt_compartment_1.elmt_V;
        Reacs.elmt_kcat_X = Params.elmt_kcat_X;
        elmt_compartment_1.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment_1.elmt_R7 = Reacs.elmt_R7;
        elmt_compartment_1.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment_1.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment_1.elmt_R8 = Reacs.elmt_R8;
        elmt_compartment_1.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment_1.elmt_R5 = Reacs.elmt_R5;
        elmt_compartment_1.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment_1.elmt_R6 = Reacs.elmt_R6;
        elmt_compartment_1.elmt_R3 = Reacs.elmt_R3;
        elmt_compartment_1.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment_1.elmt_R4 = Reacs.elmt_R4;
        elmt_compartment_1.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment_1.elmt_R1 = Reacs.elmt_R1;
        elmt_compartment_1.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment_1.elmt_R2 = Reacs.elmt_R2;
        elmt_compartment_1.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_compartment_1.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment_1.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_compartment_1.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment_1.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment_1.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment_1.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment_1.elmt_product15 = Reacs.elmt_product15;
        elmt_compartment_1.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment_1.elmt_product17 = Reacs.elmt_product17;

end Model_1;
