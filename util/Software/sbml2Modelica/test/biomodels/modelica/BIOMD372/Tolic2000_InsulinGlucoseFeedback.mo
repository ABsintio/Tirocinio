within BIOMD372;
model Tolic2000_InsulinGlucoseFeedback "Tolic2000_InsulinGlucoseFeedback" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_COMpartment elmt_COMpartment;

    equation
        Params.elmt_Ii = elmt_COMpartment.elmt_Ii;
        Params.elmt_G = elmt_COMpartment.elmt_G;
        Params.elmt_x3 = elmt_COMpartment.elmt_x3;
        Params.elmt_Ip = elmt_COMpartment.elmt_Ip;
        elmt_COMpartment.elmt_ti = Params.elmt_ti;
        elmt_COMpartment.elmt_Vi = Params.elmt_Vi;
        elmt_COMpartment.elmt_f5_x3 = Params.elmt_f5_x3;
        elmt_COMpartment.elmt_f2_G = Params.elmt_f2_G;
        elmt_COMpartment.elmt_f1_G = Params.elmt_f1_G;
        elmt_COMpartment.elmt_f3_G = Params.elmt_f3_G;
        elmt_COMpartment.elmt_td = Params.elmt_td;
        elmt_COMpartment.elmt_E = Params.elmt_E;
        elmt_COMpartment.elmt_tp = Params.elmt_tp;
        elmt_COMpartment.elmt_Vp = Params.elmt_Vp;
        elmt_COMpartment.elmt_Gin = Params.elmt_Gin;
        elmt_COMpartment.elmt_f4_Ii = Params.elmt_f4_Ii;

end Tolic2000_InsulinGlucoseFeedback;
