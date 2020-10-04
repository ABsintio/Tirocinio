within BIOMD309;
model Tyson2003_NegFB_Homeostasis "Tyson2003_NegFB_Homeostasis" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_env elmt_env;

    equation
        Reacs.elmt_k0 = Params.elmt_k0;
        Reacs.elmt_Km3 = Params.elmt_Km3;
        Reacs.elmt_Km4 = Params.elmt_Km4;
        Reacs.elmt_Ep = elmt_env.elmt_Ep;
        Reacs.elmt_E = elmt_env.elmt_E;
        Reacs.elmt_env = elmt_env.elmt_env;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_S = elmt_env.elmt_S;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_R = elmt_env.elmt_R;
        elmt_env.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_env.elmt_Et = Params.elmt_Et;
        elmt_env.elmt_r2 = Reacs.elmt_r2;
        elmt_env.elmt_r0 = Reacs.elmt_r0;
        elmt_env.elmt_product0 = Reacs.elmt_product0;
        elmt_env.elmt_k4 = Params.elmt_k4;
        elmt_env.elmt_J3 = Params.elmt_J3;
        elmt_env.elmt_J4 = Params.elmt_J4;
        elmt_env.elmt_k3 = Params.elmt_k3;

end Tyson2003_NegFB_Homeostasis;
