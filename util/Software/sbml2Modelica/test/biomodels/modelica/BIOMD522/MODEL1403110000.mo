within BIOMD522;
model MODEL1403110000 "Muraro2014 - Vascular patterning in Arabidopsis roots" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Params.elmt_Cytokinin = elmt_compartment.elmt_Cytokinin;
        Params.elmt_CKX3p = elmt_compartment.elmt_CKX3p;
        Params.elmt_ARR5p = elmt_compartment.elmt_ARR5p;
        Params.elmt_Auxin = elmt_compartment.elmt_Auxin;
        Params.elmt_AHP6p = elmt_compartment.elmt_AHP6p;
        Params.elmt_PHBp = elmt_compartment.elmt_PHBp;
        elmt_compartment.elmt_d_mirna_mrna = Params.elmt_d_mirna_mrna;
        elmt_compartment.elmt_mu_p_AHP6 = Params.elmt_mu_p_AHP6;
        elmt_compartment.elmt_F_CK = Params.elmt_F_CK;
        elmt_compartment.elmt_mu_m_AHP6 = Params.elmt_mu_m_AHP6;
        elmt_compartment.elmt_mu_p_ARR5 = Params.elmt_mu_p_ARR5;
        elmt_compartment.elmt_mu_p_PHB = Params.elmt_mu_p_PHB;
        elmt_compartment.elmt_d_phb = Params.elmt_d_phb;
        elmt_compartment.elmt_delta_IAA2 = Params.elmt_delta_IAA2;
        elmt_compartment.elmt_mu_m_ARR5 = Params.elmt_mu_m_ARR5;
        elmt_compartment.elmt_p_ck = Params.elmt_p_ck;
        elmt_compartment.elmt_delta_CKX3 = Params.elmt_delta_CKX3;
        elmt_compartment.elmt_p_ax = Params.elmt_p_ax;
        elmt_compartment.elmt_lambda_ARR5 = Params.elmt_lambda_ARR5;
        elmt_compartment.elmt_mu_m_PIN7 = Params.elmt_mu_m_PIN7;
        elmt_compartment.elmt_p_phb = Params.elmt_p_phb;
        elmt_compartment.elmt_d_ck = Params.elmt_d_ck;
        elmt_compartment.elmt_phloem_rate_ck = Params.elmt_phloem_rate_ck;
        elmt_compartment.elmt_mu_p_IAA2 = Params.elmt_mu_p_IAA2;
        elmt_compartment.elmt_mu_m_PIN1 = Params.elmt_mu_m_PIN1;
        elmt_compartment.elmt_mu_m_PIN3 = Params.elmt_mu_m_PIN3;
        elmt_compartment.elmt_lambda_AHP6 = Params.elmt_lambda_AHP6;
        elmt_compartment.elmt_F_ARR5 = Params.elmt_F_ARR5;
        elmt_compartment.elmt_d_ax = Params.elmt_d_ax;
        elmt_compartment.elmt_F_PIN1 = Params.elmt_F_PIN1;
        elmt_compartment.elmt_delta_ARR5 = Params.elmt_delta_ARR5;
        elmt_compartment.elmt_delta_PHB = Params.elmt_delta_PHB;
        elmt_compartment.elmt_mu_m_IAA2 = Params.elmt_mu_m_IAA2;
        elmt_compartment.elmt_F_PIN7 = Params.elmt_F_PIN7;
        elmt_compartment.elmt_F_AHP6 = Params.elmt_F_AHP6;
        elmt_compartment.elmt_F_PIN3 = Params.elmt_F_PIN3;
        elmt_compartment.elmt_phloem_rate_ax = Params.elmt_phloem_rate_ax;
        elmt_compartment.elmt_delta_AHP6 = Params.elmt_delta_AHP6;
        elmt_compartment.elmt_lambda_PIN1 = Params.elmt_lambda_PIN1;
        elmt_compartment.elmt_F_IAA2 = Params.elmt_F_IAA2;
        elmt_compartment.elmt_lambda_PIN3 = Params.elmt_lambda_PIN3;
        elmt_compartment.elmt_mu_p_CKX3 = Params.elmt_mu_p_CKX3;
        elmt_compartment.elmt_lambda_PIN7 = Params.elmt_lambda_PIN7;
        elmt_compartment.elmt_lambda_IAA2 = Params.elmt_lambda_IAA2;

end MODEL1403110000;
