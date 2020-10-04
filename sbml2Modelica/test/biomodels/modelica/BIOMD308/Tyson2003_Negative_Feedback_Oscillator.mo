within BIOMD308;
model Tyson2003_Negative_Feedback_Oscillator "Tyson2003_NegFB_Oscillator" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_env elmt_env;

    equation
        Reacs.elmt_k0 = Params.elmt_k0;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_Km5 = Params.elmt_Km5;
        Reacs.elmt_Rt = Params.elmt_Rt;
        Reacs.elmt_Km6 = Params.elmt_Km6;
        Reacs.elmt_Km3 = Params.elmt_Km3;
        Reacs.elmt_Km4 = Params.elmt_Km4;
        Reacs.elmt_k6 = Params.elmt_k6;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_k5 = Params.elmt_k5;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_Rp = elmt_env.elmt_Rp;
        Reacs.elmt_X = elmt_env.elmt_X;
        Reacs.elmt_k2_prime = Params.elmt_k2_prime;
        Reacs.elmt_Yt = Params.elmt_Yt;
        Reacs.elmt_env = elmt_env.elmt_env;
        Reacs.elmt_S = elmt_env.elmt_S;
        Reacs.elmt_Yp = elmt_env.elmt_Yp;
        elmt_env.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_env.elmt_r5 = Reacs.elmt_r5;
        elmt_env.elmt_product7 = Reacs.elmt_product7;
        elmt_env.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_env.elmt_r6 = Reacs.elmt_r6;
        elmt_env.elmt_r3 = Reacs.elmt_r3;
        elmt_env.elmt_r4 = Reacs.elmt_r4;
        elmt_env.elmt_Rt = Params.elmt_Rt;
        elmt_env.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_env.elmt_r1 = Reacs.elmt_r1;
        elmt_env.elmt_r2 = Reacs.elmt_r2;
        elmt_env.elmt_product0 = Reacs.elmt_product0;
        elmt_env.elmt_product3 = Reacs.elmt_product3;
        elmt_env.elmt_Yt = Params.elmt_Yt;

end Tyson2003_Negative_Feedback_Oscillator;
