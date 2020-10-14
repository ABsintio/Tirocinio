within BIOMD413;
model DIIVENUS_fullmodel "Band2012_DII-Venus_FullModel" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_lm = Params.elmt_lm;
        Reacs.elmt_VENUS = elmt_cell.elmt_VENUS;
        Reacs.elmt_auxin = elmt_cell.elmt_auxin;
        Reacs.elmt_mu = Params.elmt_mu;
        Reacs.elmt_la = Params.elmt_la;
        Reacs.elmt_ka = Params.elmt_ka;
        Reacs.elmt_alpha_tr = Params.elmt_alpha_tr;
        Reacs.elmt_kd = Params.elmt_kd;
        Reacs.elmt_auxinTIR1VENUS = elmt_cell.elmt_auxinTIR1VENUS;
        Reacs.elmt_auxinTIR1 = elmt_cell.elmt_auxinTIR1;
        Reacs.elmt_ld = Params.elmt_ld;
        Reacs.elmt_lambda = Params.elmt_lambda;
        Reacs.elmt_TIR1 = elmt_cell.elmt_TIR1;
        Reacs.elmt_delta = Params.elmt_delta;
        elmt_cell.elmt_auxin_TIR1_VENUSdissociation = Reacs.elmt_auxin_TIR1_VENUSdissociation;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_auxindecay = Reacs.elmt_auxindecay;
        elmt_cell.elmt_product10 = Reacs.elmt_product10;
        elmt_cell.elmt_auxin_TIR1_VENUSassociation = Reacs.elmt_auxin_TIR1_VENUSassociation;
        elmt_cell.elmt_auxinproduction = Reacs.elmt_auxinproduction;
        elmt_cell.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cell.elmt_VENUSproduction = Reacs.elmt_VENUSproduction;
        elmt_cell.elmt_product8 = Reacs.elmt_product8;
        elmt_cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_cell.elmt_auxin_TIR1dissociation = Reacs.elmt_auxin_TIR1dissociation;
        elmt_cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_auxin_TIR1_VENUSdissociationleadingtoubiquitination = Reacs.elmt_auxin_TIR1_VENUSdissociationleadingtoubiquitination;
        elmt_cell.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_cell.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_cell.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_product4 = Reacs.elmt_product4;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cell.elmt_product2 = Reacs.elmt_product2;
        elmt_cell.elmt_VENUSphotobleachingdecay = Reacs.elmt_VENUSphotobleachingdecay;
        elmt_cell.elmt_product16 = Reacs.elmt_product16;
        elmt_cell.elmt_auxin_TIR1association = Reacs.elmt_auxin_TIR1association;
        elmt_cell.elmt_product14 = Reacs.elmt_product14;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;

end DIIVENUS_fullmodel;
