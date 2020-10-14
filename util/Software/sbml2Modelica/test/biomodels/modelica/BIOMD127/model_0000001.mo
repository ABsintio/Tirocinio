within BIOMD127;
model model_0000001 "Izhikevich2003_SpikingNeuron" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_event_0000001 elmt_event_0000001;
    Class_elmt_event_0000002 elmt_event_0000002;

    equation
        Params.elmt_event_0000001 = elmt_event_0000001.trigger;
        Params.elmt_event_0000002 = elmt_event_0000002.trigger;
        elmt_event_0000001.elmt_Vthresh = Params.elmt_Vthresh;
        elmt_event_0000001.elmt_U = Params.elmt_U;
        elmt_event_0000001.elmt_v = Params.elmt_v;
        elmt_event_0000001.elmt_c = Params.elmt_c;
        elmt_event_0000001.elmt_d = Params.elmt_d;

        Params.assign_elmt_i = elmt_event_0000002.value_elmt_i;
        Params.assign_elmt_U = elmt_event_0000001.value_elmt_U;
        Params.assign_elmt_v = elmt_event_0000001.value_elmt_v;
end model_0000001;
