within BIOMD379;
model DallaMan2007_MealModel_GlucoseInsulinSystem "DallaMan2007_MealModel_GlucoseInsulinSystem" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Compartment1 elmt_Compartment1;

    equation
        Params.elmt_G_p = elmt_Compartment1.elmt_G_p;
        Params.elmt_I_po = elmt_Compartment1.elmt_I_po;
        Params.elmt_Y = elmt_Compartment1.elmt_Y;
        Params.elmt_Q_sto2 = elmt_Compartment1.elmt_Q_sto2;
        Params.elmt_X = elmt_Compartment1.elmt_X;
        Params.elmt_Q_sto1 = elmt_Compartment1.elmt_Q_sto1;
        Params.elmt_I_d = elmt_Compartment1.elmt_I_d;
        Params.elmt_G_t = elmt_Compartment1.elmt_G_t;
        Params.elmt_Q_gut = elmt_Compartment1.elmt_Q_gut;
        Params.elmt_I_p = elmt_Compartment1.elmt_I_p;
        elmt_Compartment1.elmt_U_ii = Params.elmt_U_ii;
        elmt_Compartment1.elmt_k_empt = Params.elmt_k_empt;
        elmt_Compartment1.elmt_p_2U = Params.elmt_p_2U;
        elmt_Compartment1.elmt_U_id = Params.elmt_U_id;
        elmt_Compartment1.elmt_k_abs = Params.elmt_k_abs;
        elmt_Compartment1.elmt_S = Params.elmt_S;
        elmt_Compartment1.elmt_alpha = Params.elmt_alpha;
        elmt_Compartment1.elmt_beta = Params.elmt_beta;
        elmt_Compartment1.elmt_k_gri = Params.elmt_k_gri;
        elmt_Compartment1.elmt_k_i = Params.elmt_k_i;
        elmt_Compartment1.elmt_S_po = Params.elmt_S_po;
        elmt_Compartment1.elmt_I = Params.elmt_I;
        elmt_Compartment1.elmt_m_2 = Params.elmt_m_2;
        elmt_Compartment1.elmt_G = Params.elmt_G;
        elmt_Compartment1.elmt_m_1 = Params.elmt_m_1;
        elmt_Compartment1.elmt_E = Params.elmt_E;
        elmt_Compartment1.elmt_k_2 = Params.elmt_k_2;
        elmt_Compartment1.elmt_k_1 = Params.elmt_k_1;
        elmt_Compartment1.elmt_Ra = Params.elmt_Ra;
        elmt_Compartment1.elmt_m_4 = Params.elmt_m_4;
        elmt_Compartment1.elmt_m_3 = Params.elmt_m_3;
        elmt_Compartment1.elmt_gamma = Params.elmt_gamma;
        elmt_Compartment1.elmt_EGP = Params.elmt_EGP;
        elmt_Compartment1.elmt_I_b = Params.elmt_I_b;
        elmt_Compartment1.elmt_G_b = Params.elmt_G_b;

end DallaMan2007_MealModel_GlucoseInsulinSystem;
