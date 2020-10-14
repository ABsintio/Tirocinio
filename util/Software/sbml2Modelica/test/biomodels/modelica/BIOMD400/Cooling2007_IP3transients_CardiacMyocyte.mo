within BIOMD400;
model Cooling2007_IP3transients_CardiacMyocyte "Cooling2007_IP3transients_CardiacMyocyte" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Compartment elmt_Compartment;

    equation
        Params.elmt_Rg = elmt_Compartment.elmt_Rg;
        Params.elmt_P = elmt_Compartment.elmt_P;
        Params.elmt_Pc = elmt_Compartment.elmt_Pc;
        Params.elmt_Pcg = elmt_Compartment.elmt_Pcg;
        Params.elmt_Gt = elmt_Compartment.elmt_Gt;
        Params.elmt_Gd = elmt_Compartment.elmt_Gd;
        Params.elmt_Ca = elmt_Compartment.elmt_Ca;
        Params.elmt_Rlg = elmt_Compartment.elmt_Rlg;
        Params.elmt_IP3 = elmt_Compartment.elmt_IP3;
        Params.elmt_Rl = elmt_Compartment.elmt_Rl;
        Params.elmt_Pg = elmt_Compartment.elmt_Pg;
        Params.elmt_R = elmt_Compartment.elmt_R;
        elmt_Compartment.elmt_Cpc = Params.elmt_Cpc;
        elmt_Compartment.elmt_J7 = Params.elmt_J7;
        elmt_Compartment.elmt_J8 = Params.elmt_J8;
        elmt_Compartment.elmt_J5 = Params.elmt_J5;
        elmt_Compartment.elmt_J6 = Params.elmt_J6;
        elmt_Compartment.elmt_J3 = Params.elmt_J3;
        elmt_Compartment.elmt_J4 = Params.elmt_J4;
        elmt_Compartment.elmt_J1 = Params.elmt_J1;
        elmt_Compartment.elmt_J2 = Params.elmt_J2;
        elmt_Compartment.elmt_J9 = Params.elmt_J9;
        elmt_Compartment.elmt_J16 = Params.elmt_J16;
        elmt_Compartment.elmt_J14 = Params.elmt_J14;
        elmt_Compartment.elmt_J15 = Params.elmt_J15;
        elmt_Compartment.elmt_J12 = Params.elmt_J12;
        elmt_Compartment.elmt_J13 = Params.elmt_J13;
        elmt_Compartment.elmt_J10 = Params.elmt_J10;
        elmt_Compartment.elmt_J11 = Params.elmt_J11;

end Cooling2007_IP3transients_CardiacMyocyte;
