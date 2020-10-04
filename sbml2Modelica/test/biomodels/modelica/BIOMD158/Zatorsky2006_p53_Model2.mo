within BIOMD158;
model Zatorsky2006_p53_Model2 "Zatorsky2006_p53_Model2" annotation(Documentation(info="<annotation>
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
        Params.elmt_x = elmt_compartment.elmt_x;
        Params.elmt_event_0000001 = elmt_event_0000001.trigger;
        Params.elmt_event_0000002 = elmt_event_0000002.trigger;
        Reacs.elmt_psi = Params.elmt_psi;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_alpha_0 = Params.elmt_alpha_0;
        Reacs.elmt_fx = Params.elmt_fx;
        Reacs.elmt_y = elmt_compartment.elmt_y;
        Reacs.elmt_x = elmt_compartment.elmt_x;
        Reacs.elmt_beta_y = Params.elmt_beta_y;
        Reacs.elmt_alpha_xy = Params.elmt_alpha_xy;
        Reacs.elmt_alpha_y = Params.elmt_alpha_y;
        Reacs.elmt_alpha_x = Params.elmt_alpha_x;
        Reacs.elmt_y0 = elmt_compartment.elmt_y0;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_R5 = Reacs.elmt_R5;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_R6 = Reacs.elmt_R6;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_R3 = Reacs.elmt_R3;
        elmt_compartment.elmt_R4 = Reacs.elmt_R4;
        elmt_compartment.elmt_R1 = Reacs.elmt_R1;
        elmt_compartment.elmt_R2 = Reacs.elmt_R2;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_event_0000002.elmt_xmax = Params.elmt_xmax;
        elmt_event_0000002.elmt_x = elmt_compartment.elmt_x;
        elmt_event_0000001.elmt_xmax = Params.elmt_xmax;
        elmt_event_0000001.elmt_x = elmt_compartment.elmt_x;

        Params.assign_elmt_flag3 = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event_0000001.value_elmt_flag3, elmt_event_0000002.value_elmt_flag3}, {edge(elmt_event_0000001.trigger), edge(elmt_event_0000002.trigger)});
        Params.assign_elmt_flag2 = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event_0000001.value_elmt_flag2, elmt_event_0000002.value_elmt_flag2}, {edge(elmt_event_0000001.trigger), edge(elmt_event_0000002.trigger)});
        Params.assign_elmt_flag1 = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event_0000001.value_elmt_flag1, elmt_event_0000002.value_elmt_flag1}, {edge(elmt_event_0000001.trigger), edge(elmt_event_0000002.trigger)});
end Zatorsky2006_p53_Model2;
