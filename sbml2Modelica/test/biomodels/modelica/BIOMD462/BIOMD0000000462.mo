within BIOMD462;
model BIOMD0000000462 "Proctor2012 - Role of Amyloid-beta dimers in aggregation formation" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;

    equation
        Reacs.elmt_kdimer = Params.elmt_kdimer;
        Reacs.elmt_kdisagg = Params.elmt_kdisagg;
        Reacs.elmt_kdeg = Params.elmt_kdeg;
        Reacs.elmt_Abeta = elmt_cell.elmt_Abeta;
        Reacs.elmt_kdegNep = Params.elmt_kdegNep;
        Reacs.elmt_Source = elmt_cell.elmt_Source;
        Reacs.elmt_Nep = elmt_cell.elmt_Nep;
        Reacs.elmt_kprod = Params.elmt_kprod;
        Reacs.elmt_kdedimer = Params.elmt_kdedimer;
        Reacs.elmt_kpg = Params.elmt_kpg;
        Reacs.elmt_kpf = Params.elmt_kpf;
        Reacs.elmt_AbP = elmt_cell.elmt_AbP;
        Reacs.elmt_kpghalf = Params.elmt_kpghalf;
        Reacs.elmt_AbDim = elmt_cell.elmt_AbDim;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_AbetaPlaqueGrowth = Reacs.elmt_AbetaPlaqueGrowth;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_AbetaDisaggregation = Reacs.elmt_AbetaDisaggregation;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_cell.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cell.elmt_AbetaDimerisation = Reacs.elmt_AbetaDimerisation;
        elmt_cell.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_cell.elmt_NepDegradation = Reacs.elmt_NepDegradation;
        elmt_cell.elmt_AbetaDedimerisation = Reacs.elmt_AbetaDedimerisation;
        elmt_cell.elmt_product16 = Reacs.elmt_product16;
        elmt_cell.elmt_product14 = Reacs.elmt_product14;
        elmt_cell.elmt_Abetaproduction = Reacs.elmt_Abetaproduction;
        elmt_cell.elmt_AbetaDegradation = Reacs.elmt_AbetaDegradation;
        elmt_cell.elmt_AbetaPlaqueFormation = Reacs.elmt_AbetaPlaqueFormation;

end BIOMD0000000462;
