within BIOMD215;
model Schulz2009_Th1_differentiation "Schulz2009_Th1_differentiation" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_Tbet_mRNA = elmt_compartment.elmt_Tbet_mRNA;
        Reacs.elmt_Rec_Prot = elmt_compartment.elmt_Rec_Prot;
        Reacs.elmt_Ag = elmt_compartment.elmt_Ag;
        Reacs.elmt_Ifn_Prot = elmt_compartment.elmt_Ifn_Prot;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_Tbet_Prot = elmt_compartment.elmt_Tbet_Prot;
        Reacs.elmt_Ifn_mRNA = elmt_compartment.elmt_Ifn_mRNA;
        Reacs.elmt_Rec_mRNA = elmt_compartment.elmt_Rec_mRNA;
        elmt_compartment.elmt_product12 = Reacs.elmt_product12;
        elmt_compartment.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_compartment.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_compartment.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_compartment.elmt_vtrnldeg = Reacs.elmt_vtrnldeg;
        elmt_compartment.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_compartment.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_compartment.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_compartment.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_compartment.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt_compartment.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_compartment.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_compartment.elmt_reaction_11 = Reacs.elmt_reaction_11;

end Schulz2009_Th1_differentiation;
