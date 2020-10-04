within BIOMD304;
model Plant1981_BurstingNerveCells "Plant1981_BurstingNerveCells" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_COMpartment elmt_COMpartment;

    equation
        Params.elmt_n1 = elmt_COMpartment.elmt_n1;
        Params.elmt_V_membrane = elmt_COMpartment.elmt_V_membrane;
        Params.elmt_c = elmt_COMpartment.elmt_c;
        Params.elmt_h1 = elmt_COMpartment.elmt_h1;
        Params.elmt_x1 = elmt_COMpartment.elmt_x1;
        elmt_COMpartment.elmt_i_L = Params.elmt_i_L;
        elmt_COMpartment.elmt_i_K = Params.elmt_i_K;
        elmt_COMpartment.elmt_V_Ca = Params.elmt_V_Ca;
        elmt_COMpartment.elmt_n_infinity = Params.elmt_n_infinity;
        elmt_COMpartment.elmt_i_K_Ca = Params.elmt_i_K_Ca;
        elmt_COMpartment.elmt_i_Ca = Params.elmt_i_Ca;
        elmt_COMpartment.elmt_h_infinity = Params.elmt_h_infinity;
        elmt_COMpartment.elmt_tau_x = Params.elmt_tau_x;
        elmt_COMpartment.elmt_f = Params.elmt_f;
        elmt_COMpartment.elmt_x_infinity = Params.elmt_x_infinity;
        elmt_COMpartment.elmt_tau_h = Params.elmt_tau_h;
        elmt_COMpartment.elmt_K_c = Params.elmt_K_c;
        elmt_COMpartment.elmt_i_Na = Params.elmt_i_Na;
        elmt_COMpartment.elmt_tau_n = Params.elmt_tau_n;

end Plant1981_BurstingNerveCells;
