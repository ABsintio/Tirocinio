within BIOMD178;
model Lebeda2008_BoTN_Paralysis_4stepModel "Lebeda2008 - BoTN Paralysis (4 step model)" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_endosome elmt_endosome;
    Class_elmt_neuroplasm elmt_neuroplasm;
    Class_elmt_extracellular elmt_extracellular;

    equation
        Params.elmt_lytic = elmt_neuroplasm.elmt_lytic;
        Reacs.elmt_bulk = elmt_extracellular.elmt_bulk;
        Reacs.elmt_endosome = elmt_endosome.elmt_endosome;
        Reacs.elmt_translocate = elmt_endosome.elmt_translocate;
        Reacs.elmt_extracellular = elmt_extracellular.elmt_extracellular;
        Reacs.elmt_bound = elmt_extracellular.elmt_bound;
        Reacs.elmt_free = elmt_extracellular.elmt_free;
        elmt_neuroplasm.elmt_translocation = Reacs.elmt_translocation;
        elmt_neuroplasm.elmt_product3 = Reacs.elmt_product3;
        elmt_extracellular.elmt_bulk_movement = Reacs.elmt_bulk_movement;
        elmt_extracellular.elmt_binding = Reacs.elmt_binding;
        elmt_extracellular.elmt_product7 = Reacs.elmt_product7;
        elmt_extracellular.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_extracellular.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_extracellular.elmt_product5 = Reacs.elmt_product5;
        elmt_extracellular.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_extracellular.elmt_endocytosis = Reacs.elmt_endocytosis;
        elmt_endosome.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_endosome.elmt_translocation = Reacs.elmt_translocation;
        elmt_endosome.elmt_product1 = Reacs.elmt_product1;
        elmt_endosome.elmt_endocytosis = Reacs.elmt_endocytosis;

end Lebeda2008_BoTN_Paralysis_4stepModel;
