within BIOMD258;
model Ortega2006_bistability_doublePhosphorylation "Ortega2006 - bistability from double phosphorylation in signal transduction" annotation(Documentation(info="<annotation>
  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
  </rdf:RDF>
</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_beta = elmt_cell.elmt_beta;
        Reacs.elmt_r24 = Params.elmt_r24;
        Reacs.elmt_gamma = elmt_cell.elmt_gamma;
        Reacs.elmt_r31 = Params.elmt_r31;
        Reacs.elmt_Ks3 = Params.elmt_Ks3;
        Reacs.elmt_alpha = elmt_cell.elmt_alpha;
        Reacs.elmt_Ks4 = Params.elmt_Ks4;
        Reacs.elmt_Vm1 = Params.elmt_Vm1;
        Reacs.elmt_Ks1 = Params.elmt_Ks1;
        Reacs.elmt_Chi14 = Params.elmt_Chi14;
        Reacs.elmt_Ks2 = Params.elmt_Ks2;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_v3 = Reacs.elmt_v3;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_v4 = Reacs.elmt_v4;
        elmt_cell.elmt_v1 = Reacs.elmt_v1;
        elmt_cell.elmt_v2 = Reacs.elmt_v2;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;

end Ortega2006_bistability_doublePhosphorylation;
