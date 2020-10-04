within BIOMD025;
model Smolen2002 "Smolen2002_CircClock" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_CELL elmt_CELL;

    equation
        Params.elmt_Per = elmt_CELL.elmt_Per;
        Params.elmt_dClk = elmt_CELL.elmt_dClk;
        Reacs.elmt_CELL = elmt_CELL.elmt_CELL;
        Reacs.elmt_dClkF_tau1 = Params.elmt_dClkF_tau1;
        Reacs.elmt_K1 = Params.elmt_K1;
        Reacs.elmt_kdp = Params.elmt_kdp;
        Reacs.elmt_Vsc = Params.elmt_Vsc;
        Reacs.elmt_dClkF_tau2 = Params.elmt_dClkF_tau2;
        Reacs.elmt_Vsp = Params.elmt_Vsp;
        Reacs.elmt_Per = elmt_CELL.elmt_Per;
        Reacs.elmt_K2 = Params.elmt_K2;
        Reacs.elmt_kdc = Params.elmt_kdc;
        Reacs.elmt_dClk = elmt_CELL.elmt_dClk;
        elmt_CELL.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_CELL.elmt_rdClk = Reacs.elmt_rdClk;
        elmt_CELL.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_CELL.elmt_product1 = Reacs.elmt_product1;
        elmt_CELL.elmt_rPer = Reacs.elmt_rPer;
        elmt_CELL.elmt_rPerD = Reacs.elmt_rPerD;
        elmt_CELL.elmt_product3 = Reacs.elmt_product3;
        elmt_CELL.elmt_rdClkD = Reacs.elmt_rdClkD;

end Smolen2002;
