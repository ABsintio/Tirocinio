within BIOMD040;
model Field1974_Oregonator "Field1974_Oregonator" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_BZ elmt_BZ;

    equation
        Reacs.elmt_HBrO2 = elmt_BZ.elmt_HBrO2;
        Reacs.elmt_Ce = elmt_BZ.elmt_Ce;
        Reacs.elmt_BrO3 = elmt_BZ.elmt_BrO3;
        Reacs.elmt_Br = elmt_BZ.elmt_Br;
        Reacs.elmt_f = Params.elmt_f;
        Reacs.elmt_BZ = elmt_BZ.elmt_BZ;
        elmt_BZ.elmt_product9 = Reacs.elmt_product9;
        elmt_BZ.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_BZ.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_BZ.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_BZ.elmt_product10 = Reacs.elmt_product10;
        elmt_BZ.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_BZ.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_BZ.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_BZ.elmt_product2 = Reacs.elmt_product2;
        elmt_BZ.elmt_Reaction5 = Reacs.elmt_Reaction5;
        elmt_BZ.elmt_Reaction4 = Reacs.elmt_Reaction4;
        elmt_BZ.elmt_Reaction3 = Reacs.elmt_Reaction3;
        elmt_BZ.elmt_Reaction2 = Reacs.elmt_Reaction2;
        elmt_BZ.elmt_Reaction1 = Reacs.elmt_Reaction1;
        elmt_BZ.elmt_product15 = Reacs.elmt_product15;

end Field1974_Oregonator;
