within BIOMD551;
model Das2010___Effect_of_a_gamma_secretase_inhibitor_on_Amyloid_beta_dynamics "Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_CSF elmt_CSF;
    Class_elmt_Plasma elmt_Plasma;

    equation
        elmt_CSF.elmt_k1 = Params.elmt_k1;
        elmt_CSF.elmt_Sc = Params.elmt_Sc;
        elmt_CSF.elmt_J = Params.elmt_J;
        elmt_CSF.elmt_Ki = Params.elmt_Ki;
        elmt_CSF.elmt_g_t = Params.elmt_g_t;
        elmt_Plasma.elmt_k1 = Params.elmt_k1;
        elmt_Plasma.elmt_deltap = Params.elmt_deltap;
        elmt_Plasma.elmt_l = Params.elmt_l;
        elmt_Plasma.elmt_J = Params.elmt_J;
        elmt_Plasma.elmt_C = elmt_CSF.elmt_C;
        elmt_Plasma.elmt_r = Params.elmt_r;

end Das2010___Effect_of_a_gamma_secretase_inhibitor_on_Amyloid_beta_dynamics;
