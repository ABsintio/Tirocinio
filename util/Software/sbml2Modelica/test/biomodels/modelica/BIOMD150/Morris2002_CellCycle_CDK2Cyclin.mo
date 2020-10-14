within BIOMD150;
model Morris2002_CellCycle_CDK2Cyclin "Morris2002_CellCycle_CDK2Cyclin" annotation(Documentation(info="<annotation xmlns:doqcs=\"http://www.doqcs.ncbs.res.in\">
<doqcs:timestamp>Fri Nov 10 10:46:33 2006</doqcs:timestamp>
      <doqcs:accesstype>pathway</doqcs:accesstype>
      <doqcs:transcriber> Sharat J. Vayttaden, NCBS</doqcs:transcriber>
      <doqcs:developer> May C. Morris, Claire Gondeau, John A. Tainer, and Gilles Divita</doqcs:developer>
      <doqcs:species>Human, Xenopus</doqcs:species>
      <doqcs:tissue>Expressed in E.coli</doqcs:tissue>
      <doqcs:cellcompartment>Cytosol</doqcs:cellcompartment>
      <doqcs:methodology>Qualitative</doqcs:methodology>
      <doqcs:model_implementation>Exact GENESIS implementation</doqcs:model_implementation>
      <doqcs:model_validation>Approximates original data </doqcs:model_validation>
                                  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_geometry elmt_geometry;

    equation
        Params.elmt_CDK2cycA_star_ = elmt_geometry.elmt_CDK2cycA_star_;
        Params.elmt_CDK2cycA = elmt_geometry.elmt_CDK2cycA;
        Reacs.elmt_geometry = elmt_geometry.elmt_geometry;
        Reacs.elmt_CyclinA = elmt_geometry.elmt_CyclinA;
        Reacs.elmt_CDK2cycA_star_ = elmt_geometry.elmt_CDK2cycA_star_;
        Reacs.elmt_Cdk2 = elmt_geometry.elmt_Cdk2;
        Reacs.elmt_CDK2cycA = elmt_geometry.elmt_CDK2cycA;
        elmt_geometry.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_geometry.elmt_Activation = Reacs.elmt_Activation;
        elmt_geometry.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_geometry.elmt_Binding = Reacs.elmt_Binding;
        elmt_geometry.elmt_product4 = Reacs.elmt_product4;
        elmt_geometry.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_geometry.elmt_product2 = Reacs.elmt_product2;

end Morris2002_CellCycle_CDK2Cyclin;
