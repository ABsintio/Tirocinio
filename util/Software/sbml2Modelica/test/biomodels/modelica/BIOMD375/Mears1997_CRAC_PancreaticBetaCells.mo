within BIOMD375;
model Mears1997_CRAC_PancreaticBetaCells "Mears1997_CRAC_PancreaticBetaCells" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_COMpartment elmt_COMpartment;

    equation
        Params.elmt_jm = elmt_COMpartment.elmt_jm;
        Params.elmt_n = elmt_COMpartment.elmt_n;
        Params.elmt_Ca_er_Ca_equations = elmt_COMpartment.elmt_Ca_er_Ca_equations;
        Params.elmt_V_membrane = elmt_COMpartment.elmt_V_membrane;
        Params.elmt_Ca_i = elmt_COMpartment.elmt_Ca_i;
        elmt_COMpartment.elmt_i_CRAC = Params.elmt_i_CRAC;
        elmt_COMpartment.elmt_i_K_ATP = Params.elmt_i_K_ATP;
        elmt_COMpartment.elmt_i_K = Params.elmt_i_K;
        elmt_COMpartment.elmt_n_infinity = Params.elmt_n_infinity;
        elmt_COMpartment.elmt_i_K_Ca = Params.elmt_i_K_Ca;
        elmt_COMpartment.elmt_i_Ca = Params.elmt_i_Ca;
        elmt_COMpartment.elmt_i_leak = Params.elmt_i_leak;
        elmt_COMpartment.elmt_Cm = Params.elmt_Cm;
        elmt_COMpartment.elmt_J_er_tot = Params.elmt_J_er_tot;
        elmt_COMpartment.elmt_sigma_er = Params.elmt_sigma_er;
        elmt_COMpartment.elmt_jm_infinity = Params.elmt_jm_infinity;
        elmt_COMpartment.elmt_lambda_n = Params.elmt_lambda_n;
        elmt_COMpartment.elmt_tau_j = Params.elmt_tau_j;
        elmt_COMpartment.elmt_lambda_er = Params.elmt_lambda_er;
        elmt_COMpartment.elmt_J_mem_tot = Params.elmt_J_mem_tot;
        elmt_COMpartment.elmt_tau_n = Params.elmt_tau_n;

end Mears1997_CRAC_PancreaticBetaCells;
