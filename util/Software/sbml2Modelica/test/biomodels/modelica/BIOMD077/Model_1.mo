within BIOMD077;
model Model_1 "Blum2000_LHsecretion_1" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_RemovalH elmt_RemovalH;

    equation
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_HRRH = elmt_cell.elmt_HRRH;
        Reacs.elmt_H = elmt_cell.elmt_H;
        Reacs.elmt_E = elmt_cell.elmt_E;
        Reacs.elmt_IP3 = elmt_cell.elmt_IP3;
        Reacs.elmt_HR = elmt_cell.elmt_HR;
        Reacs.elmt_GQ = elmt_cell.elmt_GQ;
        Reacs.elmt_R = elmt_cell.elmt_R;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_beta = Params.elmt_beta;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_cell.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_cell.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_cell.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_cell.elmt_product4 = Reacs.elmt_product4;
        elmt_cell.elmt_reaction_0 = Reacs.elmt_reaction_0;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;
        elmt_cell.elmt_alpha = Params.elmt_alpha;
        elmt_cell.elmt_RemovalH = elmt_RemovalH.trigger;

        elmt_cell.assign_elmt_H = elmt_RemovalH.value_elmt_H;
end Model_1;
