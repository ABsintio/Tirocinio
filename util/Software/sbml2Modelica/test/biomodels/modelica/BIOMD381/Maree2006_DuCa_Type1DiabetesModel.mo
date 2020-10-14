within BIOMD381;
model Maree2006_DuCa_Type1DiabetesModel "Maree2006_DuCa_Type1DiabetesModel" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment1 elmt_compartment1;

    equation
        elmt_compartment1.elmt_k = Params.elmt_k;
        elmt_compartment1.elmt_Amax = Params.elmt_Amax;
        elmt_compartment1.elmt_J = Params.elmt_J;
        elmt_compartment1.elmt_e2 = Params.elmt_e2;
        elmt_compartment1.elmt_f1 = Params.elmt_f1;
        elmt_compartment1.elmt_e1 = Params.elmt_e1;
        elmt_compartment1.elmt_f2 = Params.elmt_f2;
        elmt_compartment1.elmt_c = Params.elmt_c;
        elmt_compartment1.elmt_d = Params.elmt_d;
        elmt_compartment1.elmt_b = Params.elmt_b;
        elmt_compartment1.elmt_W = Params.elmt_W;
        elmt_compartment1.elmt_alpha = Params.elmt_alpha;
        elmt_compartment1.elmt_delta = Params.elmt_delta;
        elmt_compartment1.elmt_kc = Params.elmt_kc;

end Maree2006_DuCa_Type1DiabetesModel;
