within BIOMD528;
model MODEL1403310002 "Fribourg2014 - Dynamics of viral antagonism and innate immune response (H1N1 influenza A virus - Cal/09)" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;
    Class_elmt_c2 elmt_c2;
    Class_elmt_default elmt_default;

    equation
        Params.elmt_SOCS1m = elmt_compartment.elmt_SOCS1m;
        Params.elmt_IFNb_env = elmt_c2.elmt_IFNb_env;
        Params.elmt_IFNa_env = elmt_c2.elmt_IFNa_env;
        Reacs.elmt_tao9 = Params.elmt_tao9;
        Reacs.elmt_r3 = Params.elmt_r3;
        Reacs.elmt_K19 = Params.elmt_K19;
        Reacs.elmt_r4 = Params.elmt_r4;
        Reacs.elmt_K17 = Params.elmt_K17;
        Reacs.elmt_r1 = Params.elmt_r1;
        Reacs.elmt_k28 = Params.elmt_k28;
        Reacs.elmt_STATm = elmt_compartment.elmt_STATm;
        Reacs.elmt_tao1 = Params.elmt_tao1;
        Reacs.elmt_rmax20 = Params.elmt_rmax20;
        Reacs.elmt_IFNa_mRNA = elmt_compartment.elmt_IFNa_mRNA;
        Reacs.elmt_tao4 = Params.elmt_tao4;
        Reacs.elmt_vmax2 = Params.elmt_vmax2;
        Reacs.elmt_tao3 = Params.elmt_tao3;
        Reacs.elmt_tao6 = Params.elmt_tao6;
        Reacs.elmt_K5 = Params.elmt_K5;
        Reacs.elmt_IRF7Pn = elmt_compartment.elmt_IRF7Pn;
        Reacs.elmt_tao8 = Params.elmt_tao8;
        Reacs.elmt_K2 = Params.elmt_K2;
        Reacs.elmt_TJ = Params.elmt_TJ;
        Reacs.elmt_NA = Params.elmt_NA;
        Reacs.elmt_SOCS1m = elmt_compartment.elmt_SOCS1m;
        Reacs.elmt_k16 = Params.elmt_k16;
        Reacs.elmt_r0 = Params.elmt_r0;
        Reacs.elmt_k15 = Params.elmt_k15;
        Reacs.elmt_k14 = Params.elmt_k14;
        Reacs.elmt_k12 = Params.elmt_k12;
        Reacs.elmt_k11 = Params.elmt_k11;
        Reacs.elmt_K20 = Params.elmt_K20;
        Reacs.elmt_IC1 = Params.elmt_IC1;
        Reacs.elmt_IC2 = Params.elmt_IC2;
        Reacs.elmt_IFNb_mRNA = elmt_compartment.elmt_IFNb_mRNA;
        Reacs.elmt_STATP2n = elmt_compartment.elmt_STATP2n;
        Reacs.elmt_TNFenv = elmt_c2.elmt_TNFenv;
        Reacs.elmt_k8 = Params.elmt_k8;
        Reacs.elmt_tao12 = Params.elmt_tao12;
        Reacs.elmt_TNFam = elmt_compartment.elmt_TNFam;
        Reacs.elmt_tao13 = Params.elmt_tao13;
        Reacs.elmt_C = Params.elmt_C;
        Reacs.elmt_IRF7m = elmt_compartment.elmt_IRF7m;
        Reacs.elmt_IC2ifa = Params.elmt_IC2ifa;
        Reacs.elmt_k26 = Params.elmt_k26;
        Reacs.elmt_STAT = elmt_compartment.elmt_STAT;
        Reacs.elmt_vmax19 = Params.elmt_vmax19;
        Reacs.elmt_vmax17 = Params.elmt_vmax17;
        elmt_c2.elmt_J8 = Reacs.elmt_J8;
        elmt_c2.elmt_product15 = Reacs.elmt_product15;
        elmt_c2.elmt_product19 = Reacs.elmt_product19;
        elmt_c2.elmt_product3 = Reacs.elmt_product3;
        elmt_c2.elmt_J10 = Reacs.elmt_J10;
        elmt_c2.elmt_J2 = Reacs.elmt_J2;
        elmt_compartment.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_product23 = Reacs.elmt_product23;
        elmt_compartment.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment.elmt_product21 = Reacs.elmt_product21;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_J7 = Reacs.elmt_J7;
        elmt_compartment.elmt_J5 = Reacs.elmt_J5;
        elmt_compartment.elmt_J6 = Reacs.elmt_J6;
        elmt_compartment.elmt_J3 = Reacs.elmt_J3;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_J4 = Reacs.elmt_J4;
        elmt_compartment.elmt_J1 = Reacs.elmt_J1;
        elmt_compartment.elmt_J9 = Reacs.elmt_J9;
        elmt_compartment.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment.elmt_J12 = Reacs.elmt_J12;
        elmt_compartment.elmt_J11 = Reacs.elmt_J11;
        elmt_compartment.elmt_product17 = Reacs.elmt_product17;

end MODEL1403310002;
