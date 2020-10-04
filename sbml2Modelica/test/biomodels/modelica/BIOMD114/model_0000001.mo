within BIOMD114;
model model_0000001 "Somogyi1990_CaOscillations" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cytoplasm elmt_cytoplasm;
    Class_elmt_ER elmt_ER;
    Class_elmt_extracellular elmt_extracellular;

    equation
        Params.elmt_y = elmt_cytoplasm.elmt_y;
        Reacs.elmt_beta = Params.elmt_beta;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_fy = Params.elmt_fy;
        Reacs.elmt_k = Params.elmt_k;
        Reacs.elmt_cytoplasm = elmt_cytoplasm.elmt_cytoplasm;
        Reacs.elmt_y = elmt_cytoplasm.elmt_y;
        Reacs.elmt_gamma = Params.elmt_gamma;
        Reacs.elmt_ER = elmt_ER.elmt_ER;
        Reacs.elmt_x = elmt_ER.elmt_x;
        Reacs.elmt_alpha = Params.elmt_alpha;
        Reacs.elmt_extracellular = elmt_extracellular.elmt_extracellular;
        elmt_cytoplasm.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cytoplasm.elmt_product0 = Reacs.elmt_product0;
        elmt_cytoplasm.elmt_reaction_0000004 = Reacs.elmt_reaction_0000004;
        elmt_cytoplasm.elmt_product5 = Reacs.elmt_product5;
        elmt_cytoplasm.elmt_reaction_0000003 = Reacs.elmt_reaction_0000003;
        elmt_cytoplasm.elmt_reaction_0000002 = Reacs.elmt_reaction_0000002;
        elmt_cytoplasm.elmt_product2 = Reacs.elmt_product2;
        elmt_cytoplasm.elmt_reaction_0000001 = Reacs.elmt_reaction_0000001;
        elmt_ER.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_ER.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_ER.elmt_reaction_0000004 = Reacs.elmt_reaction_0000004;
        elmt_ER.elmt_reaction_0000002 = Reacs.elmt_reaction_0000002;

end model_0000001;
