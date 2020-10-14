within BIOMD420;
model Ratushny2012_ASSURE_I "Ratushny2012_ASSURE_I" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_univ elmt_univ;

    equation
        Params.elmt_P2 = elmt_univ.elmt_P2;
        Params.elmt_univ = elmt_univ.elmt_univ;
        Reacs.elmt_k0 = Params.elmt_k0;
        Reacs.elmt_ka = Params.elmt_ka;
        Reacs.elmt_P2 = elmt_univ.elmt_P2;
        Reacs.elmt_Target = elmt_univ.elmt_Target;
        Reacs.elmt_h = Params.elmt_h;
        Reacs.elmt_dsp1p2kd = Params.elmt_dsp1p2kd;
        Reacs.elmt_ks = Params.elmt_ks;
        elmt_univ.elmt____r3 = Reacs.elmt____r3;
        elmt_univ.elmt____r2 = Reacs.elmt____r2;
        elmt_univ.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_univ.elmt____r1 = Reacs.elmt____r1;
        elmt_univ.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_univ.elmt_product0 = Reacs.elmt_product0;
        elmt_univ.elmt_product2 = Reacs.elmt_product2;
        elmt_univ.elmt____r4 = Reacs.elmt____r4;

end Ratushny2012_ASSURE_I;
