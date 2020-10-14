within BIOMD371;
model DeVries2000_PancreaticBetaCells_InsulinSecretion "DeVries2000_PancreaticBetaCells_InsulinSecretion" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Compartment elmt_Compartment;

    equation
        Params.elmt_n = elmt_Compartment.elmt_n;
        Params.elmt_V_membrane = elmt_Compartment.elmt_V_membrane;
        Params.elmt_s = elmt_Compartment.elmt_s;
        elmt_Compartment.elmt_tau_potassium_current_n_gate = Params.elmt_tau_potassium_current_n_gate;
        elmt_Compartment.elmt_i_K_ATP = Params.elmt_i_K_ATP;
        elmt_Compartment.elmt_lamda = Params.elmt_lamda;
        elmt_Compartment.elmt_i_K = Params.elmt_i_K;
        elmt_Compartment.elmt_tau_s = Params.elmt_tau_s;
        elmt_Compartment.elmt_n_infinity = Params.elmt_n_infinity;
        elmt_Compartment.elmt_i_Ca = Params.elmt_i_Ca;
        elmt_Compartment.elmt_i_s = Params.elmt_i_s;
        elmt_Compartment.elmt_s_infinity = Params.elmt_s_infinity;
        elmt_Compartment.elmt_tau_membrane = Params.elmt_tau_membrane;

end DeVries2000_PancreaticBetaCells_InsulinSecretion;
