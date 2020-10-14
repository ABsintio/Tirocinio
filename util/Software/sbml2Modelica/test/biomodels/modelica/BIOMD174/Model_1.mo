within BIOMD174;
model Model_1 "Del_Conte_Zerial2008_Rab5_Rab7_cut_out_switch" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_endosome elmt_endosome;

    equation
        Reacs.elmt_R7 = elmt_endosome.elmt_R7;
        Reacs.elmt_r7 = elmt_endosome.elmt_r7;
        Reacs.elmt_R5 = elmt_endosome.elmt_R5;
        Reacs.elmt_r5 = elmt_endosome.elmt_r5;
        Reacs.elmt_endosome = elmt_endosome.elmt_endosome;
        elmt_endosome.elmt_product10 = Reacs.elmt_product10;
        elmt_endosome.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_endosome.elmt_product8 = Reacs.elmt_product8;
        elmt_endosome.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_endosome.elmt_product6 = Reacs.elmt_product6;
        elmt_endosome.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_endosome.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_endosome.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_endosome.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_endosome.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_endosome.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_endosome.elmt_product0 = Reacs.elmt_product0;
        elmt_endosome.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_endosome.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_endosome.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_endosome.elmt_product4 = Reacs.elmt_product4;
        elmt_endosome.elmt_reaction_0 = Reacs.elmt_reaction_0;
        elmt_endosome.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_endosome.elmt_product2 = Reacs.elmt_product2;
        elmt_endosome.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_endosome.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_endosome.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_endosome.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_endosome.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_endosome.elmt_product15 = Reacs.elmt_product15;
        elmt_endosome.elmt_product13 = Reacs.elmt_product13;

end Model_1;
