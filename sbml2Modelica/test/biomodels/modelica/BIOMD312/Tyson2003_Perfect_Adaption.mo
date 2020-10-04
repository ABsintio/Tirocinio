within BIOMD312;
model Tyson2003_Perfect_Adaption "Tyson2003_Perfect_Adaption" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_env elmt_env;

    equation
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_X = elmt_env.elmt_X;
        Reacs.elmt_env = elmt_env.elmt_env;
        Reacs.elmt_S = elmt_env.elmt_S;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_R = elmt_env.elmt_R;
        elmt_env.elmt_k1 = Params.elmt_k1;
        elmt_env.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_env.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_env.elmt_r3 = Reacs.elmt_r3;
        elmt_env.elmt_r4 = Reacs.elmt_r4;
        elmt_env.elmt_r1 = Reacs.elmt_r1;
        elmt_env.elmt_r2 = Reacs.elmt_r2;
        elmt_env.elmt_product0 = Reacs.elmt_product0;
        elmt_env.elmt_k4 = Params.elmt_k4;
        elmt_env.elmt_k2 = Params.elmt_k2;
        elmt_env.elmt_product2 = Reacs.elmt_product2;
        elmt_env.elmt_k3 = Params.elmt_k3;
        elmt_env.elmt_tau = Params.elmt_tau;

end Tyson2003_Perfect_Adaption;
