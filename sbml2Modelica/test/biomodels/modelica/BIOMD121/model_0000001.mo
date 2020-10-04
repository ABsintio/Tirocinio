within BIOMD121;
model model_0000001 "Clancy2001_Kchannel" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_event_0000001 elmt_event_0000001;
    Class_elmt_event_0000002 elmt_event_0000002;

    function prioritize_between_2
        input Real[2] prios;
        input Real[2] values;
        input Boolean[2] trigs;
        output Real value;
        protected Real min_prio;
        algorithm
            value := 0;
            min_prio := Constants.INFINITY;
            for i in 1:2 loop
                if trigs[i] and prios[i] < min_prio then
                    value := values[i];
                    min_prio := prios[i];
                end if;
            end for;
    end prioritize_between_2;
    equation
        Params.elmt_event_0000001 = elmt_event_0000001.trigger;
        Params.elmt_event_0000002 = elmt_event_0000002.trigger;
        Reacs.elmt_o = elmt_cell.elmt_o;
        Reacs.elmt_i = elmt_cell.elmt_i;
        Reacs.elmt_aa = Params.elmt_aa;
        Reacs.elmt_bb = Params.elmt_bb;
        Reacs.elmt_c1 = elmt_cell.elmt_c1;
        Reacs.elmt_bi = Params.elmt_bi;
        Reacs.elmt_a = Params.elmt_a;
        Reacs.elmt_ai = Params.elmt_ai;
        Reacs.elmt_b = Params.elmt_b;
        Reacs.elmt_bin = Params.elmt_bin;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_ain = Params.elmt_ain;
        Reacs.elmt_c2 = elmt_cell.elmt_c2;
        Reacs.elmt_c3 = elmt_cell.elmt_c3;
        Reacs.elmt_u = Params.elmt_u;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_Gk = Params.elmt_Gk;
        elmt_cell.elmt_reaction_0000005 = Reacs.elmt_reaction_0000005;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_vk = Params.elmt_vk;
        elmt_cell.elmt_v = Params.elmt_v;
        elmt_cell.elmt_reaction_0000004 = Reacs.elmt_reaction_0000004;
        elmt_cell.elmt_reaction_0000003 = Reacs.elmt_reaction_0000003;
        elmt_cell.elmt_reaction_0000002 = Reacs.elmt_reaction_0000002;
        elmt_cell.elmt_reaction_0000001 = Reacs.elmt_reaction_0000001;
        elmt_event_0000001.elmt_vtest = Params.elmt_vtest;
        elmt_event_0000002.elmt_vhold = Params.elmt_vhold;

        Params.assign_elmt_v = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event_0000001.value_elmt_v, elmt_event_0000002.value_elmt_v}, {edge(elmt_event_0000001.trigger), edge(elmt_event_0000002.trigger)});
end model_0000001;
