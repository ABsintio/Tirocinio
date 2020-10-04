within BIOMD130;
model Izhikevich2004_SpikingNeurons_integrator "Izhikevich2004_SpikingNeurons_integrator" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_event_0000001 elmt_event_0000001;
    Class_elmt_event_0000004 elmt_event_0000004;
    Class_elmt_event_0000005 elmt_event_0000005;
    Class_elmt_event_0000002 elmt_event_0000002;
    Class_elmt_event_0000003 elmt_event_0000003;

    function prioritize_between_4
        input Real[4] prios;
        input Real[4] values;
        input Boolean[4] trigs;
        output Real value;
        protected Real min_prio;
        algorithm
            value := 0;
            min_prio := Constants.INFINITY;
            for i in 1:4 loop
                if trigs[i] and prios[i] < min_prio then
                    value := values[i];
                    min_prio := prios[i];
                end if;
            end for;
    end prioritize_between_4;
    equation
        Params.elmt_event_0000001 = elmt_event_0000001.trigger;
        Params.elmt_event_0000004 = elmt_event_0000004.trigger;
        Params.elmt_event_0000005 = elmt_event_0000005.trigger;
        Params.elmt_event_0000002 = elmt_event_0000002.trigger;
        Params.elmt_event_0000003 = elmt_event_0000003.trigger;
        elmt_event_0000001.elmt_Vthresh = Params.elmt_Vthresh;
        elmt_event_0000001.elmt_u = Params.elmt_u;
        elmt_event_0000001.elmt_v = Params.elmt_v;
        elmt_event_0000001.elmt_c = Params.elmt_c;
        elmt_event_0000001.elmt_d = Params.elmt_d;

        Params.assign_elmt_i = prioritize_between_4({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event_0000004.value_elmt_i, elmt_event_0000005.value_elmt_i, elmt_event_0000002.value_elmt_i, elmt_event_0000003.value_elmt_i}, {edge(elmt_event_0000004.trigger), edge(elmt_event_0000005.trigger), edge(elmt_event_0000002.trigger), edge(elmt_event_0000003.trigger)});
        Params.assign_elmt_u = elmt_event_0000001.value_elmt_u;
        Params.assign_elmt_v = elmt_event_0000001.value_elmt_v;
end Izhikevich2004_SpikingNeurons_integrator;
