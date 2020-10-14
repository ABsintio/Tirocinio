within BIOMD523;
model MODEL1403050000 "Kallenberger2014 - CD95L induced apoptosis initiated by caspase-8, CD95 HeLa cells (cis/trans variant)" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Params.elmt_CD95L = elmt_cell.elmt_CD95L;
        Params.elmt_CD95 = elmt_cell.elmt_CD95;
        Reacs.elmt_p18 = elmt_cell.elmt_p18;
        Reacs.elmt_kDISC = Params.elmt_kDISC;
        Reacs.elmt_p55free = elmt_cell.elmt_p55free;
        Reacs.elmt_kD216 = Params.elmt_kD216;
        Reacs.elmt_kBid = Params.elmt_kBid;
        Reacs.elmt_PrNES_mCherry = elmt_cell.elmt_PrNES_mCherry;
        Reacs.elmt_Bid = elmt_cell.elmt_Bid;
        Reacs.elmt_koff_FADD = Params.elmt_koff_FADD;
        Reacs.elmt_kon_FADD = Params.elmt_kon_FADD;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_DISC = elmt_cell.elmt_DISC;
        Reacs.elmt_CD95act = Params.elmt_CD95act;
        Reacs.elmt_kD374trans_p43 = Params.elmt_kD374trans_p43;
        Reacs.elmt_p43 = elmt_cell.elmt_p43;
        Reacs.elmt_kD374trans_p55 = Params.elmt_kD374trans_p55;
        Reacs.elmt_p30 = elmt_cell.elmt_p30;
        Reacs.elmt_kD374probe = Params.elmt_kD374probe;
        Reacs.elmt_PrER_mGFP = elmt_cell.elmt_PrER_mGFP;
        Reacs.elmt_DISCp55 = elmt_cell.elmt_DISCp55;
        Reacs.elmt_kdiss_p18 = Params.elmt_kdiss_p18;
        Reacs.elmt_FADD = elmt_cell.elmt_FADD;
        elmt_cell.elmt_product30 = Reacs.elmt_product30;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_product10 = Reacs.elmt_product10;
        elmt_cell.elmt_product31 = Reacs.elmt_product31;
        elmt_cell.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_cell.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_cell.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_cell.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_cell.elmt_product27 = Reacs.elmt_product27;
        elmt_cell.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cell.elmt_product25 = Reacs.elmt_product25;
        elmt_cell.elmt_product28 = Reacs.elmt_product28;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_product8 = Reacs.elmt_product8;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_product6 = Reacs.elmt_product6;
        elmt_cell.elmt_product23 = Reacs.elmt_product23;
        elmt_cell.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_cell.elmt_product21 = Reacs.elmt_product21;
        elmt_cell.elmt_product20 = Reacs.elmt_product20;
        elmt_cell.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cell.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cell.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_cell.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_cell.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cell.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_cell.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_cell.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_cell.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_cell.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_cell.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_cell.elmt_product15 = Reacs.elmt_product15;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;
        elmt_cell.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt_cell.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_cell.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_cell.elmt_product18 = Reacs.elmt_product18;
        elmt_cell.elmt_product17 = Reacs.elmt_product17;
        elmt_cell.elmt_reaction_11 = Reacs.elmt_reaction_11;

end MODEL1403050000;
