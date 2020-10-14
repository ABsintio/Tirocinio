within BIOMD378;
model Chay1997_CalciumConcentration "Chay1997_CalciumConcentration" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Compartment elmt_Compartment;

    equation
        Params.elmt_n = elmt_Compartment.elmt_n;
        Params.elmt_V_membrane = elmt_Compartment.elmt_V_membrane;
        Params.elmt_h = elmt_Compartment.elmt_h;
        Params.elmt_d = elmt_Compartment.elmt_d;
        Params.elmt_Ca_i_cytosolic_calcium = elmt_Compartment.elmt_Ca_i_cytosolic_calcium;
        Params.elmt_Ca_lum = elmt_Compartment.elmt_Ca_lum;
        elmt_Compartment.elmt_i_K_ATP = Params.elmt_i_K_ATP;
        elmt_Compartment.elmt_d_infinity = Params.elmt_d_infinity;
        elmt_Compartment.elmt_tau_d = Params.elmt_tau_d;
        elmt_Compartment.elmt_n_infinity = Params.elmt_n_infinity;
        elmt_Compartment.elmt_i_K_Ca = Params.elmt_i_K_Ca;
        elmt_Compartment.elmt_i_Ca = Params.elmt_i_Ca;
        elmt_Compartment.elmt_h_infinity = Params.elmt_h_infinity;
        elmt_Compartment.elmt_omega = Params.elmt_omega;
        elmt_Compartment.elmt_k_Ca = Params.elmt_k_Ca;
        elmt_Compartment.elmt_i_NaL = Params.elmt_i_NaL;
        elmt_Compartment.elmt_i_fast = Params.elmt_i_fast;
        elmt_Compartment.elmt_k_rel = Params.elmt_k_rel;
        elmt_Compartment.elmt_Cm = Params.elmt_Cm;
        elmt_Compartment.elmt_i_NS = Params.elmt_i_NS;
        elmt_Compartment.elmt_i_K_dr = Params.elmt_i_K_dr;
        elmt_Compartment.elmt_tau_h = Params.elmt_tau_h;
        elmt_Compartment.elmt_k_pump = Params.elmt_k_pump;
        elmt_Compartment.elmt_tau_n = Params.elmt_tau_n;

end Chay1997_CalciumConcentration;
