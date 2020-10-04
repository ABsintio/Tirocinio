within BIOMD047;
model Oxhamre_Bacteria_induced_Ca_oscillations "Oxhamre2005_Ca_oscillation" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Cytosol elmt_Cytosol;
    Class_elmt_Endoplasmic_Reticulum elmt_Endoplasmic_Reticulum;

    equation
        Params.elmt_Ca_Cyt = elmt_Cytosol.elmt_Ca_Cyt;
        Reacs.elmt_p3 = Params.elmt_p3;
        Reacs.elmt_p1 = Params.elmt_p1;
        Reacs.elmt_p2 = Params.elmt_p2;
        Reacs.elmt_Ca_Cyt = elmt_Cytosol.elmt_Ca_Cyt;
        elmt_Endoplasmic_Reticulum.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_Endoplasmic_Reticulum.elmt_Jleak = Reacs.elmt_Jleak;
        elmt_Endoplasmic_Reticulum.elmt_Jch = Reacs.elmt_Jch;
        elmt_Endoplasmic_Reticulum.elmt_product5 = Reacs.elmt_product5;
        elmt_Endoplasmic_Reticulum.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_Endoplasmic_Reticulum.elmt_Jpump = Reacs.elmt_Jpump;
        elmt_Cytosol.elmt_Jleak = Reacs.elmt_Jleak;
        elmt_Cytosol.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_Cytosol.elmt_Jch = Reacs.elmt_Jch;
        elmt_Cytosol.elmt_product1 = Reacs.elmt_product1;
        elmt_Cytosol.elmt_product3 = Reacs.elmt_product3;
        elmt_Cytosol.elmt_Jpump = Reacs.elmt_Jpump;

end Oxhamre_Bacteria_induced_Ca_oscillations;
