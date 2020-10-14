within BIOMD485;
model MODEL1308080005 "Cao2013 - Application of ABSIS method in the bistable Schlögl model" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_default elmt_default;

    equation
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_X = elmt_default.elmt_X;
        Reacs.elmt_V = Params.elmt_V;
        Reacs.elmt_default = elmt_default.elmt_default;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_A = Params.elmt_A;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_B = Params.elmt_B;
        elmt_default.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_default.elmt_product7 = Reacs.elmt_product7;
        elmt_default.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_default.elmt_Reaction7 = Reacs.elmt_Reaction7;
        elmt_default.elmt_Reaction6 = Reacs.elmt_Reaction6;
        elmt_default.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_default.elmt_Reaction2 = Reacs.elmt_Reaction2;
        elmt_default.elmt_product1 = Reacs.elmt_product1;
        elmt_default.elmt_Reaction1 = Reacs.elmt_Reaction1;
        elmt_default.elmt_product5 = Reacs.elmt_product5;
        elmt_default.elmt_product3 = Reacs.elmt_product3;
        elmt_default.elmt_reactant0 = Reacs.elmt_reactant0;

end MODEL1308080005;
