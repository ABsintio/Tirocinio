within BIOMD337;
model Pfeiffer2001_ATPProducingPathways_CooperationCompetition "Pfeiffer2001_ATP-ProducingPathways_CooperationCompetition" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;
    Class_elmt_event0 elmt_event0;

    equation
        Reacs.elmt_N1 = elmt_compartment.elmt_N1;
        Reacs.elmt_N2 = elmt_compartment.elmt_N2;
        Reacs.elmt_v = Params.elmt_v;
        Reacs.elmt_S = elmt_compartment.elmt_S;
        Reacs.elmt_d = Params.elmt_d;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_r5 = Reacs.elmt_r5;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_r3 = Reacs.elmt_r3;
        elmt_compartment.elmt_r4 = Reacs.elmt_r4;
        elmt_compartment.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment.elmt_r1 = Reacs.elmt_r1;
        elmt_compartment.elmt_r2 = Reacs.elmt_r2;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_event0 = elmt_event0.trigger;

        elmt_compartment.assign_elmt_N2 = elmt_event0.value_elmt_N2;
end Pfeiffer2001_ATPProducingPathways_CooperationCompetition;
