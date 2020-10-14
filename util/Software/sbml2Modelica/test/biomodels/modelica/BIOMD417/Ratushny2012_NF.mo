within BIOMD417;
model Ratushny2012_NF "Ratushny2012_NF" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_univ elmt_univ;

    equation
        Reacs.elmt_k0 = Params.elmt_k0;
        Reacs.elmt_ka = Params.elmt_ka;
        Reacs.elmt_dspspkd = Params.elmt_dspspkd;
        Reacs.elmt_Target = elmt_univ.elmt_Target;
        Reacs.elmt_h = Params.elmt_h;
        Reacs.elmt_ks = Params.elmt_ks;
        elmt_univ.elmt____r2 = Reacs.elmt____r2;
        elmt_univ.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_univ.elmt____r1 = Reacs.elmt____r1;
        elmt_univ.elmt_product0 = Reacs.elmt_product0;

end Ratushny2012_NF;
