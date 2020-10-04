within BIOMD154;
model Zatorsky2006_p53_Model3 "Zatorsky2006_p53_Model3" annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_tau = Params.elmt_tau;
        Reacs.elmt_psi = Params.elmt_psi;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_y = elmt_compartment.elmt_y;
        Reacs.elmt_beta_x = Params.elmt_beta_x;
        Reacs.elmt_x = elmt_compartment.elmt_x;
        Reacs.elmt_beta_y = Params.elmt_beta_y;
        Reacs.elmt_alpha_xy = Params.elmt_alpha_xy;
        Reacs.elmt_alpha_y = Params.elmt_alpha_y;
        Reacs.elmt_alpha_x = Params.elmt_alpha_x;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_R5 = Reacs.elmt_R5;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_R3 = Reacs.elmt_R3;
        elmt_compartment.elmt_R4 = Reacs.elmt_R4;
        elmt_compartment.elmt_R1 = Reacs.elmt_R1;
        elmt_compartment.elmt_R2 = Reacs.elmt_R2;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;

end Zatorsky2006_p53_Model3;
