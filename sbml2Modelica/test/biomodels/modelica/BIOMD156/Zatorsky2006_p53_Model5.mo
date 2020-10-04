within BIOMD156;
model Zatorsky2006_p53_Model5 "Zatorsky2006_p53_Model5" annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_psi = Params.elmt_psi;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_alpha_0 = Params.elmt_alpha_0;
        Reacs.elmt_Theta = Params.elmt_Theta;
        Reacs.elmt_y = elmt_compartment.elmt_y;
        Reacs.elmt_x = elmt_compartment.elmt_x;
        Reacs.elmt_beta_y = Params.elmt_beta_y;
        Reacs.elmt_alpha_xy = Params.elmt_alpha_xy;
        Reacs.elmt_alpha_y = Params.elmt_alpha_y;
        Reacs.elmt_y0 = elmt_compartment.elmt_y0;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_R5 = Reacs.elmt_R5;
        elmt_compartment.elmt_R6 = Reacs.elmt_R6;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_R3 = Reacs.elmt_R3;
        elmt_compartment.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment.elmt_R4 = Reacs.elmt_R4;
        elmt_compartment.elmt_R1 = Reacs.elmt_R1;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;

end Zatorsky2006_p53_Model5;
