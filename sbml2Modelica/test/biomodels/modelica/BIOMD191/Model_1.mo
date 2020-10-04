within BIOMD191;
model Model_1 "Montañez2008_Arginine_catabolism" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_extracellular elmt_extracellular;
    Class_elmt_cytosol elmt_cytosol;

    equation
        Reacs.elmt_ARGin = elmt_cytosol.elmt_ARGin;
        Reacs.elmt_ARGex = elmt_extracellular.elmt_ARGex;
        Reacs.elmt_cytosol = elmt_cytosol.elmt_cytosol;
        Reacs.elmt_ORN = elmt_cytosol.elmt_ORN;
        Reacs.elmt_extracellular = elmt_extracellular.elmt_extracellular;
        elmt_cytosol.elmt_Ornithine_efflux = Reacs.elmt_Ornithine_efflux;
        elmt_cytosol.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cytosol.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cytosol.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cytosol.elmt_NOS = Reacs.elmt_NOS;
        elmt_cytosol.elmt_Arginine_transport = Reacs.elmt_Arginine_transport;
        elmt_cytosol.elmt_product1 = Reacs.elmt_product1;
        elmt_cytosol.elmt_Arginase = Reacs.elmt_Arginase;
        elmt_cytosol.elmt_ODC = Reacs.elmt_ODC;
        elmt_cytosol.elmt_product3 = Reacs.elmt_product3;
        elmt_cytosol.elmt_reactant0 = Reacs.elmt_reactant0;

end Model_1;
