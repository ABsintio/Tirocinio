within BIOMD277;
model Shrestha2010_HyperCalcemia_PTHresponse "Shrestha2010_HyperCalcemia_PTHresponse" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Plasma_pool elmt_Plasma_pool;
    Class_elmt_PTG_pool elmt_PTG_pool;

    equation
        Params.elmt_Ca = elmt_Plasma_pool.elmt_Ca;
        elmt_Plasma_pool.elmt_Ca1 = Params.elmt_Ca1;
        elmt_Plasma_pool.elmt_lambda_2 = Params.elmt_lambda_2;
        elmt_Plasma_pool.elmt_Ca0 = Params.elmt_Ca0;
        elmt_Plasma_pool.elmt_t0 = Params.elmt_t0;
        elmt_Plasma_pool.elmt_lambda_Ca = Params.elmt_lambda_Ca;
        elmt_Plasma_pool.elmt_alpha = Params.elmt_alpha;
        elmt_Plasma_pool.elmt_x1 = elmt_PTG_pool.elmt_x1;
        elmt_PTG_pool.elmt_k = Params.elmt_k;
        elmt_PTG_pool.elmt_lambda_1 = Params.elmt_lambda_1;
        elmt_PTG_pool.elmt_lambda_Ca = Params.elmt_lambda_Ca;

end Shrestha2010_HyperCalcemia_PTHresponse;
