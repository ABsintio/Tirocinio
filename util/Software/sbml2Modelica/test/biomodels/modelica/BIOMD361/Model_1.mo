within BIOMD361;
model Model_1 "Panteleev2002_TFPImechanism_schmema1" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_VIIa_TF_X = elmt_compartment.elmt_VIIa_TF_X;
        Reacs.elmt_VIIa_TF = elmt_compartment.elmt_VIIa_TF;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_Xa_TFPI = elmt_compartment.elmt_Xa_TFPI;
        Reacs.elmt_TFPI = elmt_compartment.elmt_TFPI;
        Reacs.elmt_X = elmt_compartment.elmt_X;
        Reacs.elmt_Xa_TFPI_VIIa_TF = elmt_compartment.elmt_Xa_TFPI_VIIa_TF;
        Reacs.elmt_VIIa_TF_Xa = elmt_compartment.elmt_VIIa_TF_Xa;
        Reacs.elmt_Xa = elmt_compartment.elmt_Xa;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_compartment.elmt_product4 = Reacs.elmt_product4;
        elmt_compartment.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment.elmt_product13 = Reacs.elmt_product13;

end Model_1;
