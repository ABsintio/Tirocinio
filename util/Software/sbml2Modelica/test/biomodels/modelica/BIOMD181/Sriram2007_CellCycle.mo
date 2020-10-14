within BIOMD181;
model Sriram2007_CellCycle "Sriram2007_CellCycle" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_kd1 = Params.elmt_kd1;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_n = Params.elmt_n;
        Reacs.elmt_C1 = elmt_compartment.elmt_C1;
        Reacs.elmt_kd6 = Params.elmt_kd6;
        Reacs.elmt_kd5 = Params.elmt_kd5;
        Reacs.elmt_j3 = Params.elmt_j3;
        Reacs.elmt_kd4 = Params.elmt_kd4;
        Reacs.elmt_kd3 = Params.elmt_kd3;
        Reacs.elmt_j1 = Params.elmt_j1;
        Reacs.elmt_kd2 = Params.elmt_kd2;
        Reacs.elmt_j2 = Params.elmt_j2;
        Reacs.elmt_k120 = Params.elmt_k120;
        Reacs.elmt_k100 = Params.elmt_k100;
        Reacs.elmt_vd3 = Params.elmt_vd3;
        Reacs.elmt_vd2 = Params.elmt_vd2;
        Reacs.elmt_vd1 = Params.elmt_vd1;
        Reacs.elmt_km2 = Params.elmt_km2;
        Reacs.elmt_km1 = Params.elmt_km1;
        Reacs.elmt_v12 = Params.elmt_v12;
        Reacs.elmt_v11 = Params.elmt_v11;
        Reacs.elmt_v10 = Params.elmt_v10;
        Reacs.elmt_T3 = elmt_compartment.elmt_T3;
        Reacs.elmt_km3 = Params.elmt_km3;
        Reacs.elmt_kc3 = Params.elmt_kc3;
        Reacs.elmt_kc2 = Params.elmt_kc2;
        Reacs.elmt_kc1 = Params.elmt_kc1;
        Reacs.elmt_k110 = Params.elmt_k110;
        Reacs.elmt_C2 = elmt_compartment.elmt_C2;
        Reacs.elmt_C3 = elmt_compartment.elmt_C3;
        Reacs.elmt_T1 = elmt_compartment.elmt_T1;
        Reacs.elmt_T2 = elmt_compartment.elmt_T2;
        elmt_compartment.elmt_R16 = Reacs.elmt_R16;
        elmt_compartment.elmt_R17 = Reacs.elmt_R17;
        elmt_compartment.elmt_R14 = Reacs.elmt_R14;
        elmt_compartment.elmt_R15 = Reacs.elmt_R15;
        elmt_compartment.elmt_R12 = Reacs.elmt_R12;
        elmt_compartment.elmt_product12 = Reacs.elmt_product12;
        elmt_compartment.elmt_R13 = Reacs.elmt_R13;
        elmt_compartment.elmt_R10 = Reacs.elmt_R10;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_R11 = Reacs.elmt_R11;
        elmt_compartment.elmt_R18 = Reacs.elmt_R18;
        elmt_compartment.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment.elmt_R7 = Reacs.elmt_R7;
        elmt_compartment.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment.elmt_R8 = Reacs.elmt_R8;
        elmt_compartment.elmt_R5 = Reacs.elmt_R5;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment.elmt_R6 = Reacs.elmt_R6;
        elmt_compartment.elmt_R3 = Reacs.elmt_R3;
        elmt_compartment.elmt_R4 = Reacs.elmt_R4;
        elmt_compartment.elmt_R1 = Reacs.elmt_R1;
        elmt_compartment.elmt_R2 = Reacs.elmt_R2;
        elmt_compartment.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_compartment.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment.elmt_R9 = Reacs.elmt_R9;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;

end Sriram2007_CellCycle;
