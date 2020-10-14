within BIOMD614;
model Kamihira2000 "Kamihira2000" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment_ elmt_compartment_;

    equation
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_compartment_ = elmt_compartment_.elmt_compartment_;
        Reacs.elmt_f = elmt_compartment_.elmt_f;
        Reacs.elmt_a = Params.elmt_a;
        Reacs.elmt_k2 = Params.elmt_k2;
        elmt_compartment_.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment_.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment_.elmt_R3 = Reacs.elmt_R3;
        elmt_compartment_.elmt_R4 = Reacs.elmt_R4;
        elmt_compartment_.elmt_R1 = Reacs.elmt_R1;
        elmt_compartment_.elmt_R2 = Reacs.elmt_R2;
        elmt_compartment_.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment_.elmt_product0 = Reacs.elmt_product0;

end Kamihira2000;
