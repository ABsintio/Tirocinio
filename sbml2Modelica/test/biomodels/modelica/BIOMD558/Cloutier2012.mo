within BIOMD558;
model Cloutier2012 "Cloutier2012 - Feedback motif for Parkinson's disease" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Neuron elmt_Neuron;

    equation
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_ROS = elmt_Neuron.elmt_ROS;
        Reacs.elmt_kalphasyn = Params.elmt_kalphasyn;
        Reacs.elmt_Neuron = elmt_Neuron.elmt_Neuron;
        Reacs.elmt_S1 = Params.elmt_S1;
        Reacs.elmt_alpha_syn = elmt_Neuron.elmt_alpha_syn;
        Reacs.elmt_dalphasyn = Params.elmt_dalphasyn;
        Reacs.elmt_S2_4 = Params.elmt_S2_4;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_k3 = Params.elmt_k3;
        elmt_Neuron.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_Neuron.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_Neuron.elmt_ROS_1 = Reacs.elmt_ROS_1;
        elmt_Neuron.elmt_ROS_2 = Reacs.elmt_ROS_2;
        elmt_Neuron.elmt_aSyn_1 = Reacs.elmt_aSyn_1;
        elmt_Neuron.elmt_product0 = Reacs.elmt_product0;
        elmt_Neuron.elmt_aSyn_2 = Reacs.elmt_aSyn_2;
        elmt_Neuron.elmt_product2 = Reacs.elmt_product2;

end Cloutier2012;
