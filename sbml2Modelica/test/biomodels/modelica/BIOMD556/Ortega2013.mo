within BIOMD556;
model Ortega2013 "Ortega2013 - Interplay between secretases determines biphasic amyloid-beta level" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Brain elmt_Brain;

    equation
        Params.elmt_C99 = elmt_Brain.elmt_C99;
        Params.elmt_X = elmt_Brain.elmt_X;
        Params.elmt_C83 = elmt_Brain.elmt_C83;
        Reacs.elmt_km5 = Params.elmt_km5;
        Reacs.elmt_km4 = Params.elmt_km4;
        Reacs.elmt_km3 = Params.elmt_km3;
        Reacs.elmt_vm5 = Params.elmt_vm5;
        Reacs.elmt_C83 = elmt_Brain.elmt_C83;
        Reacs.elmt_vm4 = Params.elmt_vm4;
        Reacs.elmt_vm3 = Params.elmt_vm3;
        Reacs.elmt_vm2 = Params.elmt_vm2;
        Reacs.elmt_vm1 = Params.elmt_vm1;
        Reacs.elmt_kic = Params.elmt_kic;
        Reacs.elmt_C99 = elmt_Brain.elmt_C99;
        Reacs.elmt_APP = elmt_Brain.elmt_APP;
        Reacs.elmt_km2 = Params.elmt_km2;
        Reacs.elmt_km1 = Params.elmt_km1;
        Reacs.elmt_X = elmt_Brain.elmt_X;
        Reacs.elmt_Brain = elmt_Brain.elmt_Brain;
        Reacs.elmt_den = Params.elmt_den;
        Reacs.elmt_v0 = Params.elmt_v0;
        elmt_Brain.elmt_r5 = Reacs.elmt_r5;
        elmt_Brain.elmt_r3__D = Reacs.elmt_r3__D;
        elmt_Brain.elmt_r4__D = Reacs.elmt_r4__D;
        elmt_Brain.elmt_r1 = Reacs.elmt_r1;
        elmt_Brain.elmt_r2 = Reacs.elmt_r2;
        elmt_Brain.elmt_r0 = Reacs.elmt_r0;

end Ortega2013;
