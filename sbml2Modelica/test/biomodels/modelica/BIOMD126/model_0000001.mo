within BIOMD126;
model model_0000001 "Clancy2002_CardiacSodiumChannel_WT" annotation(Documentation(info="<annotation>
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
        Params.elmt_O = elmt_cell.elmt_O;
        Params.elmt_IC2 = elmt_cell.elmt_IC2;
        Params.elmt_C2 = elmt_cell.elmt_C2;
        Params.elmt_C3 = elmt_cell.elmt_C3;
        Params.elmt_IF = elmt_cell.elmt_IF;
        Params.elmt_C1 = elmt_cell.elmt_C1;
        Params.elmt_IM1 = elmt_cell.elmt_IM1;
        Params.elmt_IM2 = elmt_cell.elmt_IM2;
        Params.elmt_IC3 = elmt_cell.elmt_IC3;
        Params.elmt_event_0000001 = elmt_event_0000001.trigger;
        Params.elmt_event_0000002 = elmt_event_0000002.trigger;
        Reacs.elmt_O = elmt_cell.elmt_O;
        Reacs.elmt_IC2 = elmt_cell.elmt_IC2;
        Reacs.elmt_C1 = elmt_cell.elmt_C1;
        Reacs.elmt_IC3 = elmt_cell.elmt_IC3;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_b5 = Params.elmt_b5;
        Reacs.elmt_a4 = Params.elmt_a4;
        Reacs.elmt_a5 = Params.elmt_a5;
        Reacs.elmt_b3 = Params.elmt_b3;
        Reacs.elmt_b13 = Params.elmt_b13;
        Reacs.elmt_a2 = Params.elmt_a2;
        Reacs.elmt_b12 = Params.elmt_b12;
        Reacs.elmt_a3 = Params.elmt_a3;
        Reacs.elmt_a13 = Params.elmt_a13;
        Reacs.elmt_b4 = Params.elmt_b4;
        Reacs.elmt_C2 = elmt_cell.elmt_C2;
        Reacs.elmt_a12 = Params.elmt_a12;
        Reacs.elmt_b11 = Params.elmt_b11;
        Reacs.elmt_C3 = elmt_cell.elmt_C3;
        Reacs.elmt_a11 = Params.elmt_a11;
        Reacs.elmt_b2 = Params.elmt_b2;
        Reacs.elmt_IF = elmt_cell.elmt_IF;
        Reacs.elmt_IM1 = elmt_cell.elmt_IM1;
        Reacs.elmt_IM2 = elmt_cell.elmt_IM2;
        elmt_cell.elmt_reaction_0000008 = Reacs.elmt_reaction_0000008;
        elmt_cell.elmt_reaction_0000007 = Reacs.elmt_reaction_0000007;
        elmt_cell.elmt_reaction_0000006 = Reacs.elmt_reaction_0000006;
        elmt_cell.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_cell.elmt_reaction_0000005 = Reacs.elmt_reaction_0000005;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_reaction_0000009 = Reacs.elmt_reaction_0000009;
        elmt_cell.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_cell.elmt_reaction_0000004 = Reacs.elmt_reaction_0000004;
        elmt_cell.elmt_reaction_0000003 = Reacs.elmt_reaction_0000003;
        elmt_cell.elmt_reaction_0000002 = Reacs.elmt_reaction_0000002;
        elmt_cell.elmt_reaction_0000001 = Reacs.elmt_reaction_0000001;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_product21 = Reacs.elmt_product21;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cell.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_reaction_0000011 = Reacs.elmt_reaction_0000011;
        elmt_cell.elmt_reaction_0000010 = Reacs.elmt_reaction_0000010;
        elmt_cell.elmt_product15 = Reacs.elmt_product15;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;
        elmt_cell.elmt_product19 = Reacs.elmt_product19;
        elmt_cell.elmt_product17 = Reacs.elmt_product17;

        Params.assign_elmt_v = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event_0000001.value_elmt_v, elmt_event_0000002.value_elmt_v}, {edge(elmt_event_0000001.trigger), edge(elmt_event_0000002.trigger)});
end model_0000001;
