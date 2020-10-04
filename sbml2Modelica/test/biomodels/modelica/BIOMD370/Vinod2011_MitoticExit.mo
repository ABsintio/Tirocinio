within BIOMD370;
model Vinod2011_MitoticExit "Vinod2011_MitoticExit" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell_1 elmt_cell_1;

    equation
        Params.elmt_Net1dep_1 = elmt_cell_1.elmt_Net1dep_1;
        Params.elmt_MEN_1 = elmt_cell_1.elmt_MEN_1;
        Params.elmt_Cdc14n_1 = elmt_cell_1.elmt_Cdc14n_1;
        Params.elmt_Cdc20_1 = elmt_cell_1.elmt_Cdc20_1;
        Params.elmt_Clb2_2 = elmt_cell_1.elmt_Clb2_2;
        Params.elmt_Cdc14c_1 = elmt_cell_1.elmt_Cdc14c_1;
        Params.elmt_Esp1_1 = elmt_cell_1.elmt_Esp1_1;
        Params.elmt_Cdh1_1 = elmt_cell_1.elmt_Cdh1_1;
        Params.elmt_Clb5_1 = elmt_cell_1.elmt_Clb5_1;
        Params.elmt_Cln_1 = elmt_cell_1.elmt_Cln_1;
        elmt_cell_1.elmt_Jcdc15_1 = Params.elmt_Jcdc15_1;
        elmt_cell_1.elmt_lapds_1 = Params.elmt_lapds_1;
        elmt_cell_1.elmt_ldmen_1 = Params.elmt_ldmen_1;
        elmt_cell_1.elmt_V2_1 = Params.elmt_V2_1;
        elmt_cell_1.elmt_Vaswi_1 = Params.elmt_Vaswi_1;
        elmt_cell_1.elmt_Jtem1_1 = Params.elmt_Jtem1_1;
        elmt_cell_1.elmt_ldnet_1 = Params.elmt_ldnet_1;
        elmt_cell_1.elmt_kdsic5_1 = Params.elmt_kdsic5_1;
        elmt_cell_1.elmt_kp_1 = Params.elmt_kp_1;
        elmt_cell_1.elmt_Vexp_1 = Params.elmt_Vexp_1;
        elmt_cell_1.elmt_Vacdh_1 = Params.elmt_Vacdh_1;
        elmt_cell_1.elmt_Jmcm_1 = Params.elmt_Jmcm_1;
        elmt_cell_1.elmt_Swi5T_1 = Params.elmt_Swi5T_1;
        elmt_cell_1.elmt_Jswi_1 = Params.elmt_Jswi_1;
        elmt_cell_1.elmt_kd20_2 = Params.elmt_kd20_2;
        elmt_cell_1.elmt_Cdc14T_1 = Params.elmt_Cdc14T_1;
        elmt_cell_1.elmt_kd20_1 = Params.elmt_kd20_1;
        elmt_cell_1.elmt_kasic5_1 = Params.elmt_kasic5_1;
        elmt_cell_1.elmt_kitem_1 = Params.elmt_kitem_1;
        elmt_cell_1.elmt_ksclb5_2 = Params.elmt_ksclb5_2;
        elmt_cell_1.elmt_kdpds_1 = Params.elmt_kdpds_1;
        elmt_cell_1.elmt_kimp_1 = Params.elmt_kimp_1;
        elmt_cell_1.elmt_kdpds_2 = Params.elmt_kdpds_2;
        elmt_cell_1.elmt_Viswi_1 = Params.elmt_Viswi_1;
        elmt_cell_1.elmt_kapolo_2 = Params.elmt_kapolo_2;
        elmt_cell_1.elmt_kapolo_1 = Params.elmt_kapolo_1;
        elmt_cell_1.elmt_ksclb5_1 = Params.elmt_ksclb5_1;
        elmt_cell_1.elmt_kic15_1 = Params.elmt_kic15_1;
        elmt_cell_1.elmt_kic15_2 = Params.elmt_kic15_2;
        elmt_cell_1.elmt_katem_2 = Params.elmt_katem_2;
        elmt_cell_1.elmt_kdpolo_1 = Params.elmt_kdpolo_1;
        elmt_cell_1.elmt_kdpolo_2 = Params.elmt_kdpolo_2;
        elmt_cell_1.elmt_V6_1 = Params.elmt_V6_1;
        elmt_cell_1.elmt_katem_1 = Params.elmt_katem_1;
        elmt_cell_1.elmt_Clb2nd_1 = Params.elmt_Clb2nd_1;
        elmt_cell_1.elmt_ksesp_1 = Params.elmt_ksesp_1;
        elmt_cell_1.elmt_lamen_1 = Params.elmt_lamen_1;
        elmt_cell_1.elmt_kssic_1 = Params.elmt_kssic_1;
        elmt_cell_1.elmt_kdcln_1 = Params.elmt_kdcln_1;
        elmt_cell_1.elmt_kac15_2 = Params.elmt_kac15_2;
        elmt_cell_1.elmt_kssic_2 = Params.elmt_kssic_2;
        elmt_cell_1.elmt_kac15_1 = Params.elmt_kac15_1;
        elmt_cell_1.elmt_lanet_1 = Params.elmt_lanet_1;
        elmt_cell_1.elmt_Vp_1 = Params.elmt_Vp_1;
        elmt_cell_1.elmt_kdesp_1 = Params.elmt_kdesp_1;
        elmt_cell_1.elmt_kspolo_2 = Params.elmt_kspolo_2;
        elmt_cell_1.elmt_Vd_1 = Params.elmt_Vd_1;
        elmt_cell_1.elmt_kspolo_1 = Params.elmt_kspolo_1;
        elmt_cell_1.elmt_kipolo_1 = Params.elmt_kipolo_1;
        elmt_cell_1.elmt_kambf_1 = Params.elmt_kambf_1;
        elmt_cell_1.elmt_kdsic2_1 = Params.elmt_kdsic2_1;
        elmt_cell_1.elmt_ldpds_1 = Params.elmt_ldpds_1;
        elmt_cell_1.elmt_Jcdh_1 = Params.elmt_Jcdh_1;
        elmt_cell_1.elmt_kasic2_1 = Params.elmt_kasic2_1;
        elmt_cell_1.elmt_kspds_1 = Params.elmt_kspds_1;
        elmt_cell_1.elmt_kitem_2 = Params.elmt_kitem_2;
        elmt_cell_1.elmt_Net1T_1 = Params.elmt_Net1T_1;
        elmt_cell_1.elmt_kspds_2 = Params.elmt_kspds_2;
        elmt_cell_1.elmt_kitem_3 = Params.elmt_kitem_3;
        elmt_cell_1.elmt_kimbf_3 = Params.elmt_kimbf_3;
        elmt_cell_1.elmt_kdmcm_1 = Params.elmt_kdmcm_1;
        elmt_cell_1.elmt_kimbf_1 = Params.elmt_kimbf_1;
        elmt_cell_1.elmt_Vdsic_1 = Params.elmt_Vdsic_1;
        elmt_cell_1.elmt_Jmbf_1 = Params.elmt_Jmbf_1;
        elmt_cell_1.elmt_ksclb2_2 = Params.elmt_ksclb2_2;
        elmt_cell_1.elmt_ksclb2_1 = Params.elmt_ksclb2_1;
        elmt_cell_1.elmt_Jpolo_1 = Params.elmt_Jpolo_1;
        elmt_cell_1.elmt_kscln_1 = Params.elmt_kscln_1;
        elmt_cell_1.elmt_kscln_2 = Params.elmt_kscln_2;
        elmt_cell_1.elmt_Vicdh_1 = Params.elmt_Vicdh_1;
        elmt_cell_1.elmt_ks20_1 = Params.elmt_ks20_1;
        elmt_cell_1.elmt_ksmcm_3 = Params.elmt_ksmcm_3;
        elmt_cell_1.elmt_ks20_2 = Params.elmt_ks20_2;
        elmt_cell_1.elmt_ksmcm_1 = Params.elmt_ksmcm_1;

end Vinod2011_MitoticExit;
