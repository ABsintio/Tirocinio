within BIOMD570;
model Aubert2002 "Aubert2002 - Coupling between Brain electrical activity, Metabolism and Hemodynamics" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>A Model of the Coupling between Brain Electrical Activity, Metabolism, and Hemodynamics: Application to the Interpretation of Functional Neuroimaging</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1006/nimg.2002.1224\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>A Model of the Coupling between Brain Electrical Activity, Metabolism, and Hemodynamics: Application to the Interpretation of Functional Neuroimaging</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/12414257\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-04-09T16:25:29Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>winter@kapora.de</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Winter</vCard:Family>
                    <vCard:Given>Felix</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>ASD GmbH Rostock</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:modified>
              <rdf:Description>
                <dcterms:W3CDTF>2015-02-27T09:42:45</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:modified>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_1 elmt_compartment_1;
    Class_elmt_compartment_4 elmt_compartment_4;
    Class_elmt_compartment_3 elmt_compartment_3;
    Class_elmt_compartment_2 elmt_compartment_2;
    Class_elmt_from_decrease_to_at_rest elmt_from_decrease_to_at_rest;
    Class_elmt_from_increase_to_stable elmt_from_increase_to_stable;
    Class_elmt_from_stable_to_decrease__end_of_stimulation elmt_from_stable_to_decrease__end_of_stimulation;

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
        Params.elmt_mitochondrial_respiration = Reacs.elmt_mitochondrial_respiration;
        Params.elmt_ATPases = Reacs.elmt_ATPases;
        Params.elmt_species_7 = elmt_compartment_1.elmt_species_7;
        Params.elmt_reaction_4 = Reacs.elmt_reaction_4;
        Params.elmt_reaction_2 = Reacs.elmt_reaction_2;
        Params.elmt_species_8 = elmt_compartment_1.elmt_species_8;
        Params.elmt_reaction_9 = Reacs.elmt_reaction_9;
        Params.elmt_species_19 = elmt_compartment_3.elmt_species_19;
        Params.elmt_reaction_5 = Reacs.elmt_reaction_5;
        Params.elmt_reaction_6 = Reacs.elmt_reaction_6;
        Params.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Params.elmt_compartment_4 = elmt_compartment_4.elmt_compartment_4;
        Params.elmt_compartment_3 = elmt_compartment_3.elmt_compartment_3;
        Params.elmt_species_13 = elmt_compartment_1.elmt_species_13;
        Params.elmt_species_14 = elmt_compartment_2.elmt_species_14;
        Params.elmt_compartment_2 = elmt_compartment_2.elmt_compartment_2;
        Params.elmt_from_decrease_to_at_rest = elmt_from_decrease_to_at_rest.trigger;
        Params.elmt_from_increase_to_stable = elmt_from_increase_to_stable.trigger;
        Params.elmt_from_stable_to_decrease__end_of_stimulation = elmt_from_stable_to_decrease__end_of_stimulation.trigger;
        Reacs.elmt_parameter_9 = Params.elmt_parameter_9;
        Reacs.elmt_parameter_8 = Params.elmt_parameter_8;
        Reacs.elmt_parameter_19 = Params.elmt_parameter_19;
        Reacs.elmt_parameter_18 = Params.elmt_parameter_18;
        Reacs.elmt_parameter_17 = Params.elmt_parameter_17;
        Reacs.elmt_parameter_16 = Params.elmt_parameter_16;
        Reacs.elmt_parameter_15 = Params.elmt_parameter_15;
        Reacs.elmt_parameter_14 = Params.elmt_parameter_14;
        Reacs.elmt_compartment_1 = elmt_compartment_1.elmt_compartment_1;
        Reacs.elmt_parameter_6 = Params.elmt_parameter_6;
        Reacs.elmt_parameter_5 = Params.elmt_parameter_5;
        Reacs.elmt_parameter_4 = Params.elmt_parameter_4;
        Reacs.elmt_parameter_3 = Params.elmt_parameter_3;
        Reacs.elmt_parameter_2 = Params.elmt_parameter_2;
        Reacs.elmt_parameter_1 = Params.elmt_parameter_1;
        Reacs.elmt_compartment_4 = elmt_compartment_4.elmt_compartment_4;
        Reacs.elmt_compartment_3 = elmt_compartment_3.elmt_compartment_3;
        Reacs.elmt_compartment_2 = elmt_compartment_2.elmt_compartment_2;
        Reacs.elmt_parameter_20 = Params.elmt_parameter_20;
        Reacs.elmt_parameter_29 = Params.elmt_parameter_29;
        Reacs.elmt_parameter_27 = Params.elmt_parameter_27;
        Reacs.elmt_parameter_26 = Params.elmt_parameter_26;
        Reacs.elmt_parameter_25 = Params.elmt_parameter_25;
        Reacs.elmt_parameter_24 = Params.elmt_parameter_24;
        Reacs.elmt_parameter_23 = Params.elmt_parameter_23;
        Reacs.elmt_species_2 = elmt_compartment_1.elmt_species_2;
        Reacs.elmt_species_3 = elmt_compartment_1.elmt_species_3;
        Reacs.elmt_species_1 = elmt_compartment_1.elmt_species_1;
        Reacs.elmt_parameter_33 = Params.elmt_parameter_33;
        Reacs.elmt_parameter_32 = Params.elmt_parameter_32;
        Reacs.elmt_parameter_30 = Params.elmt_parameter_30;
        Reacs.elmt_species_6 = elmt_compartment_1.elmt_species_6;
        Reacs.elmt_species_7 = elmt_compartment_1.elmt_species_7;
        Reacs.elmt_species_4 = elmt_compartment_1.elmt_species_4;
        Reacs.elmt_dHb = elmt_compartment_3.elmt_dHb;
        Reacs.elmt_F_out = Params.elmt_F_out;
        Reacs.elmt_species_5 = elmt_compartment_1.elmt_species_5;
        Reacs.elmt_parameter_38 = Params.elmt_parameter_38;
        Reacs.elmt_parameter_37 = Params.elmt_parameter_37;
        Reacs.elmt_species_8 = elmt_compartment_1.elmt_species_8;
        Reacs.elmt_parameter_35 = Params.elmt_parameter_35;
        Reacs.elmt_species_9 = elmt_compartment_1.elmt_species_9;
        Reacs.elmt_parameter_34 = Params.elmt_parameter_34;
        Reacs.elmt_species_15 = elmt_compartment_2.elmt_species_15;
        Reacs.elmt_species_16 = elmt_compartment_2.elmt_species_16;
        Reacs.elmt_species_17 = elmt_compartment_3.elmt_species_17;
        Reacs.elmt_v_Mito_H3 = Params.elmt_v_Mito_H3;
        Reacs.elmt_species_18 = elmt_compartment_3.elmt_species_18;
        Reacs.elmt_species_19 = elmt_compartment_3.elmt_species_19;
        Reacs.elmt_species_10 = elmt_compartment_1.elmt_species_10;
        Reacs.elmt_species_11 = elmt_compartment_1.elmt_species_11;
        Reacs.elmt_species_12 = elmt_compartment_1.elmt_species_12;
        Reacs.elmt_species_13 = elmt_compartment_1.elmt_species_13;
        Reacs.elmt_species_14 = elmt_compartment_2.elmt_species_14;
        Reacs.elmt_v_stim_constant = Params.elmt_v_stim_constant;
        elmt_compartment_3.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment_3.elmt_product23 = Reacs.elmt_product23;
        elmt_compartment_3.elmt_product33 = Reacs.elmt_product33;
        elmt_compartment_3.elmt_product31 = Reacs.elmt_product31;
        elmt_compartment_3.elmt_inflow_of_dHb = Reacs.elmt_inflow_of_dHb;
        elmt_compartment_3.elmt_product42 = Reacs.elmt_product42;
        elmt_compartment_3.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment_3.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_compartment_3.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt_compartment_3.elmt_outflow_of_dHb = Reacs.elmt_outflow_of_dHb;
        elmt_compartment_3.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment_3.elmt_product35 = Reacs.elmt_product35;
        elmt_compartment_3.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt_compartment_3.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_compartment_3.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_compartment_3.elmt_reaction_11 = Reacs.elmt_reaction_11;
        elmt_compartment_4.elmt_F_out = Params.elmt_F_out;
        elmt_compartment_4.elmt_parameter_37 = Params.elmt_parameter_37;
        elmt_compartment_1.elmt_mitochondrial_respiration = Reacs.elmt_mitochondrial_respiration;
        elmt_compartment_1.elmt_parameter_10 = Params.elmt_parameter_10;
        elmt_compartment_1.elmt_parameter_31 = Params.elmt_parameter_31;
        elmt_compartment_1.elmt_product12 = Reacs.elmt_product12;
        elmt_compartment_1.elmt_parameter_7 = Params.elmt_parameter_7;
        elmt_compartment_1.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_compartment_1.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_compartment_1.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_compartment_1.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment_1.elmt_product29 = Reacs.elmt_product29;
        elmt_compartment_1.elmt_parameter_22 = Params.elmt_parameter_22;
        elmt_compartment_1.elmt_product41 = Reacs.elmt_product41;
        elmt_compartment_1.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment_1.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment_1.elmt_Na__inflow_after_stimulation = Reacs.elmt_Na__inflow_after_stimulation;
        elmt_compartment_1.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment_1.elmt_product20 = Reacs.elmt_product20;
        elmt_compartment_1.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment_1.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_compartment_1.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt_compartment_1.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment_1.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment_1.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment_1.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment_1.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_compartment_1.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment_1.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment_1.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment_1.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_compartment_1.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_compartment_1.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment_1.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment_1.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_compartment_1.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment_1.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_compartment_1.elmt_product17 = Reacs.elmt_product17;
        elmt_from_stable_to_decrease__end_of_stimulation.elmt_ModelValue_53 = Params.elmt_ModelValue_53;
        elmt_from_decrease_to_at_rest.elmt_ModelValue_52 = Params.elmt_ModelValue_52;
        elmt_from_decrease_to_at_rest.elmt_ModelValue_53 = Params.elmt_ModelValue_53;
        elmt_from_increase_to_stable.elmt_ModelValue_52 = Params.elmt_ModelValue_52;

        Params.assign_elmt_is_rising = elmt_from_increase_to_stable.value_elmt_is_rising;
        Params.assign_elmt_is_maximum = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_from_increase_to_stable.value_elmt_is_maximum, elmt_from_stable_to_decrease__end_of_stimulation.value_elmt_is_maximum}, {edge(elmt_from_increase_to_stable.trigger), edge(elmt_from_stable_to_decrease__end_of_stimulation.trigger)});
        Params.assign_elmt_v_stim_constant = elmt_from_stable_to_decrease__end_of_stimulation.value_elmt_v_stim_constant;
        Params.assign_elmt_is_falling = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_from_decrease_to_at_rest.value_elmt_is_falling, elmt_from_stable_to_decrease__end_of_stimulation.value_elmt_is_falling}, {edge(elmt_from_decrease_to_at_rest.trigger), edge(elmt_from_stable_to_decrease__end_of_stimulation.trigger)});
end Aubert2002;
