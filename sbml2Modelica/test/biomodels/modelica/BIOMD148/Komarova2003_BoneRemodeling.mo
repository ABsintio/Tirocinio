within BIOMD148;
model Komarova2003_BoneRemodeling "Komarova2003_BoneRemodeling" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;
    Class_elmt_event_0000001 elmt_event_0000001;
    Class_elmt_event_0000004 elmt_event_0000004;
    Class_elmt_event_0000002 elmt_event_0000002;
    Class_elmt_event_0000003 elmt_event_0000003;

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
        Params.elmt_event_0000004 = elmt_event_0000004.trigger;
        Params.elmt_event_0000002 = elmt_event_0000002.trigger;
        Params.elmt_event_0000003 = elmt_event_0000003.trigger;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_flag_resorption = Params.elmt_flag_resorption;
        Reacs.elmt_x1_bar = elmt_compartment.elmt_x1_bar;
        Reacs.elmt_beta1 = Params.elmt_beta1;
        Reacs.elmt_beta2 = Params.elmt_beta2;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_g12 = Params.elmt_g12;
        Reacs.elmt_g22 = Params.elmt_g22;
        Reacs.elmt_g11 = Params.elmt_g11;
        Reacs.elmt_g21 = Params.elmt_g21;
        Reacs.elmt_alpha1 = Params.elmt_alpha1;
        Reacs.elmt_x2_bar = elmt_compartment.elmt_x2_bar;
        Reacs.elmt_alpha2 = Params.elmt_alpha2;
        Reacs.elmt_x1 = elmt_compartment.elmt_x1;
        Reacs.elmt_x2 = elmt_compartment.elmt_x2;
        Reacs.elmt_flag_formation = Params.elmt_flag_formation;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_R5 = Reacs.elmt_R5;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_R6 = Reacs.elmt_R6;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_R3 = Reacs.elmt_R3;
        elmt_compartment.elmt_R4 = Reacs.elmt_R4;
        elmt_compartment.elmt_R1 = Reacs.elmt_R1;
        elmt_compartment.elmt_R2 = Reacs.elmt_R2;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_beta1 = Params.elmt_beta1;
        elmt_compartment.elmt_beta2 = Params.elmt_beta2;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_g12 = Params.elmt_g12;
        elmt_compartment.elmt_g22 = Params.elmt_g22;
        elmt_compartment.elmt_g11 = Params.elmt_g11;
        elmt_compartment.elmt_g21 = Params.elmt_g21;
        elmt_compartment.elmt_gamma = Params.elmt_gamma;
        elmt_compartment.elmt_alpha1 = Params.elmt_alpha1;
        elmt_compartment.elmt_alpha2 = Params.elmt_alpha2;
        elmt_event_0000003.elmt_x1_bar = elmt_compartment.elmt_x1_bar;
        elmt_event_0000003.elmt_x1 = elmt_compartment.elmt_x1;
        elmt_event_0000001.elmt_x1_bar = elmt_compartment.elmt_x1_bar;
        elmt_event_0000001.elmt_x1 = elmt_compartment.elmt_x1;
        elmt_event_0000004.elmt_x2_bar = elmt_compartment.elmt_x2_bar;
        elmt_event_0000004.elmt_x2 = elmt_compartment.elmt_x2;
        elmt_event_0000002.elmt_x2_bar = elmt_compartment.elmt_x2_bar;
        elmt_event_0000002.elmt_x2 = elmt_compartment.elmt_x2;

        Params.assign_elmt_flag_resorption = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event_0000001.value_elmt_flag_resorption, elmt_event_0000003.value_elmt_flag_resorption}, {edge(elmt_event_0000001.trigger), edge(elmt_event_0000003.trigger)});
        Params.assign_elmt_flag_formation = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event_0000004.value_elmt_flag_formation, elmt_event_0000002.value_elmt_flag_formation}, {edge(elmt_event_0000004.trigger), edge(elmt_event_0000002.trigger)});
end Komarova2003_BoneRemodeling;
