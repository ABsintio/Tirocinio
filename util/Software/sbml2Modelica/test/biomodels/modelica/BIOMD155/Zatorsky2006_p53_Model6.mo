within BIOMD155;
model Zatorsky2006_p53_Model6 "Zatorsky2006_p53_Model6" annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Params.elmt_y = elmt_compartment.elmt_y;
        Reacs.elmt_tau = Params.elmt_tau;
        Reacs.elmt_psi = Params.elmt_psi;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_n = Params.elmt_n;
        Reacs.elmt_y = elmt_compartment.elmt_y;
        Reacs.elmt_beta_x = Params.elmt_beta_x;
        Reacs.elmt_x = elmt_compartment.elmt_x;
        Reacs.elmt_beta_y = Params.elmt_beta_y;
        Reacs.elmt_alpha_xy = Params.elmt_alpha_xy;
        Reacs.elmt_alpha_y = Params.elmt_alpha_y;
        Reacs.elmt_S = Params.elmt_S;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_R5 = Reacs.elmt_R5;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_R3 = Reacs.elmt_R3;
        elmt_compartment.elmt_R4 = Reacs.elmt_R4;
        elmt_compartment.elmt_R1 = Reacs.elmt_R1;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;

end Zatorsky2006_p53_Model6;
