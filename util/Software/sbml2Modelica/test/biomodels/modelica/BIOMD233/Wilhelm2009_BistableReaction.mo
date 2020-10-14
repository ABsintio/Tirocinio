within BIOMD233;
model Wilhelm2009_BistableReaction "Wilhelm2009_BistableReaction" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_batch elmt_batch;

    equation
        Reacs.elmt_Y = elmt_batch.elmt_Y;
        Reacs.elmt_X = elmt_batch.elmt_X;
        Reacs.elmt_S = elmt_batch.elmt_S;
        elmt_batch.elmt_product9 = Reacs.elmt_product9;
        elmt_batch.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_batch.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_batch.elmt_r3 = Reacs.elmt_r3;
        elmt_batch.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_batch.elmt_r4 = Reacs.elmt_r4;
        elmt_batch.elmt_r1 = Reacs.elmt_r1;
        elmt_batch.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_batch.elmt_r2 = Reacs.elmt_r2;
        elmt_batch.elmt_product5 = Reacs.elmt_product5;
        elmt_batch.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_batch.elmt_product4 = Reacs.elmt_product4;
        elmt_batch.elmt_product2 = Reacs.elmt_product2;

end Wilhelm2009_BistableReaction;
