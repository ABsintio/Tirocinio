within BIOMD119;
model model_0000001 "Golomb2006_SomaticBursting_nonzero[Ca]" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_0000001 elmt_compartment_0000001;

    equation
        Params.elmt_Ca = elmt_compartment_0000001.elmt_Ca;
        Reacs.elmt_ICa = Params.elmt_ICa;
        Reacs.elmt_uuCa = Params.elmt_uuCa;
        Reacs.elmt_compartment_0000001 = elmt_compartment_0000001.elmt_compartment_0000001;
        Reacs.elmt_Ca = elmt_compartment_0000001.elmt_Ca;
        Reacs.elmt_tauCa = Params.elmt_tauCa;
        elmt_compartment_0000001.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment_0000001.elmt_reaction_0000001 = Reacs.elmt_reaction_0000001;

end model_0000001;
