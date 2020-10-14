within BIOMD124;
model model_0000001 "Wu2006_K+Channel" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_event_0000001 elmt_event_0000001;

    equation
        Params.elmt_cer = elmt_cell.elmt_cer;
        Params.elmt_c = elmt_cell.elmt_c;
        Params.elmt_event_0000001 = elmt_event_0000001.trigger;
        Reacs.elmt_jer = Params.elmt_jer;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_fer = Params.elmt_fer;
        Reacs.elmt_jmem = Params.elmt_jmem;
        Reacs.elmt_fcyt = Params.elmt_fcyt;
        Reacs.elmt_vcytver = Params.elmt_vcytver;
        elmt_cell.elmt_reaction_0000006 = Reacs.elmt_reaction_0000006;
        elmt_cell.elmt_reaction_0000005 = Reacs.elmt_reaction_0000005;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_product0 = Reacs.elmt_product0;

        Params.assign_elmt_gkatp = elmt_event_0000001.value_elmt_gkatp;
end model_0000001;
