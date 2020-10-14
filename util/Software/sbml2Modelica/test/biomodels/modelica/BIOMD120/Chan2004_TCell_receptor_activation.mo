within BIOMD120;
model Chan2004_TCell_receptor_activation "Chan2004_TCell_receptor_activation" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;
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
        Reacs.elmt_m2 = Params.elmt_m2;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_n1 = Params.elmt_n1;
        Reacs.elmt_n2 = Params.elmt_n2;
        Reacs.elmt_m1 = Params.elmt_m1;
        Reacs.elmt_n = Params.elmt_n;
        Reacs.elmt_phosphatase_active = elmt_compartment.elmt_phosphatase_active;
        Reacs.elmt_d1 = Params.elmt_d1;
        Reacs.elmt_d2 = Params.elmt_d2;
        Reacs.elmt_r_l = Params.elmt_r_l;
        Reacs.elmt_phosphatase_inactive = elmt_compartment.elmt_phosphatase_inactive;
        Reacs.elmt_d0 = Params.elmt_d0;
        Reacs.elmt_lck_inactive = elmt_compartment.elmt_lck_inactive;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_lck_active = elmt_compartment.elmt_lck_active;
        elmt_compartment.elmt_v9 = Reacs.elmt_v9;
        elmt_compartment.elmt_v7 = Reacs.elmt_v7;
        elmt_compartment.elmt_product12 = Reacs.elmt_product12;
        elmt_compartment.elmt_v8 = Reacs.elmt_v8;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_v5 = Reacs.elmt_v5;
        elmt_compartment.elmt_v6 = Reacs.elmt_v6;
        elmt_compartment.elmt_v3 = Reacs.elmt_v3;
        elmt_compartment.elmt_v4 = Reacs.elmt_v4;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment.elmt_v1 = Reacs.elmt_v1;
        elmt_compartment.elmt_v2 = Reacs.elmt_v2;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_v10 = Reacs.elmt_v10;
        elmt_compartment.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_compartment.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;

        Params.assign_elmt_r_l = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event_0000001.value_elmt_r_l, elmt_event_0000002.value_elmt_r_l}, {edge(elmt_event_0000001.trigger), edge(elmt_event_0000002.trigger)});
end Chan2004_TCell_receptor_activation;
