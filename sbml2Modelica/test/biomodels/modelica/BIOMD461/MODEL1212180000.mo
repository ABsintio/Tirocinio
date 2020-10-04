within BIOMD461;
model MODEL1212180000 "Liebal2012 - B.subtilis transcription inhibition model" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_kxd = Params.elmt_kxd;
        Reacs.elmt_kxs = Params.elmt_kxs;
        Reacs.elmt_kzd = Params.elmt_kzd;
        Reacs.elmt_kzs = Params.elmt_kzs;
        Reacs.elmt_lacz = elmt_compartment.elmt_lacz;
        Reacs.elmt_x = elmt_compartment.elmt_x;
        Reacs.elmt_sigb = elmt_compartment.elmt_sigb;
        Reacs.elmt_kbd = Params.elmt_kbd;
        Reacs.elmt_kbs = Params.elmt_kbs;
        Reacs.elmt_IPTG = elmt_compartment.elmt_IPTG;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_v3 = Reacs.elmt_v3;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_v1 = Reacs.elmt_v1;
        elmt_compartment.elmt_v2 = Reacs.elmt_v2;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;

end MODEL1212180000;
