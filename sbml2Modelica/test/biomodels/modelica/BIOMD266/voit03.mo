within BIOMD266;
model voit03 "Voit2003_Trehalose_Cycle" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	


	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_external elmt_external;

    equation
        Params.elmt_X7 = elmt_cell.elmt_X7;
        Params.elmt_X5 = elmt_cell.elmt_X5;
        Params.elmt_X6 = elmt_cell.elmt_X6;
        Params.elmt_X3 = elmt_cell.elmt_X3;
        Params.elmt_X4 = elmt_cell.elmt_X4;
        Params.elmt_X1 = elmt_cell.elmt_X1;
        Params.elmt_X2 = elmt_cell.elmt_X2;
        Params.elmt_X0 = elmt_external.elmt_X0;
        elmt_cell.elmt_flux_X2_out = Params.elmt_flux_X2_out;
        elmt_cell.elmt_flux_X7_out = Params.elmt_flux_X7_out;
        elmt_cell.elmt_flux_X5_out = Params.elmt_flux_X5_out;
        elmt_cell.elmt_flux_X3_in = Params.elmt_flux_X3_in;
        elmt_cell.elmt_flux_X2_in = Params.elmt_flux_X2_in;
        elmt_cell.elmt_flux_X1_in = Params.elmt_flux_X1_in;
        elmt_cell.elmt_flux_X5_in = Params.elmt_flux_X5_in;
        elmt_cell.elmt_flux_X1_out = Params.elmt_flux_X1_out;
        elmt_cell.elmt_flux_X4_in = Params.elmt_flux_X4_in;
        elmt_cell.elmt_flux_X7_in = Params.elmt_flux_X7_in;
        elmt_cell.elmt_flux_X6_in = Params.elmt_flux_X6_in;
        elmt_cell.elmt_flux_X3_out = Params.elmt_flux_X3_out;
        elmt_cell.elmt_flux_X6_out = Params.elmt_flux_X6_out;
        elmt_cell.elmt_flux_X4_out = Params.elmt_flux_X4_out;

end voit03;
