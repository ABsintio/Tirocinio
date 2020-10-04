within BIOMD521;
model MODEL1402250000 "Ribba2012 - Low-grade gliomas, tumour growth inhibition model" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_tissue elmt_tissue;
    Class_elmt_plama elmt_plama;

    equation
        Params.elmt_P = elmt_tissue.elmt_P;
        Params.elmt_Qp = elmt_tissue.elmt_Qp;
        Params.elmt_Q = elmt_tissue.elmt_Q;
        elmt_tissue.elmt_delta_QP = Params.elmt_delta_QP;
        elmt_tissue.elmt_k_PQ = Params.elmt_k_PQ;
        elmt_tissue.elmt_Pstar = Params.elmt_Pstar;
        elmt_tissue.elmt_K = Params.elmt_K;
        elmt_tissue.elmt_lambda_P = Params.elmt_lambda_P;
        elmt_tissue.elmt_gamma = Params.elmt_gamma;
        elmt_tissue.elmt_k_Qp_P = Params.elmt_k_Qp_P;
        elmt_tissue.elmt_C = elmt_plama.elmt_C;
        elmt_tissue.elmt_KDE = Params.elmt_KDE;
        elmt_plama.elmt_KDE = Params.elmt_KDE;

end MODEL1402250000;
