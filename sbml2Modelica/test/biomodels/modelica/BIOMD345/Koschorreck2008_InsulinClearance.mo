within BIOMD345;
model Koschorreck2008_InsulinClearance "Koschorreck2008_InsulinClearance" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment1 elmt_compartment1;

    equation
        Params.elmt_RPen = elmt_compartment1.elmt_RPen;
        Params.elmt_I2Ren = elmt_compartment1.elmt_I2Ren;
        Params.elmt_I2RPen = elmt_compartment1.elmt_I2RPen;
        Params.elmt_I2Rp = elmt_compartment1.elmt_I2Rp;
        Params.elmt_IR = elmt_compartment1.elmt_IR;
        Params.elmt_IRPen = elmt_compartment1.elmt_IRPen;
        Params.elmt_Ren = elmt_compartment1.elmt_Ren;
        Params.elmt_IRp = elmt_compartment1.elmt_IRp;
        Params.elmt_IRen = elmt_compartment1.elmt_IRen;
        Params.elmt_Rp = elmt_compartment1.elmt_Rp;
        Params.elmt_ins = elmt_compartment1.elmt_ins;
        Params.elmt_I2R = elmt_compartment1.elmt_I2R;
        Params.elmt_R = elmt_compartment1.elmt_R;
        elmt_compartment1.elmt_r7 = Params.elmt_r7;
        elmt_compartment1.elmt_r5 = Params.elmt_r5;
        elmt_compartment1.elmt_r6 = Params.elmt_r6;
        elmt_compartment1.elmt_r3 = Params.elmt_r3;
        elmt_compartment1.elmt_r4 = Params.elmt_r4;
        elmt_compartment1.elmt_r1 = Params.elmt_r1;
        elmt_compartment1.elmt_r2 = Params.elmt_r2;
        elmt_compartment1.elmt_f3 = Params.elmt_f3;
        elmt_compartment1.elmt_i6 = Params.elmt_i6;
        elmt_compartment1.elmt_f4 = Params.elmt_f4;
        elmt_compartment1.elmt_i7 = Params.elmt_i7;
        elmt_compartment1.elmt_f1 = Params.elmt_f1;
        elmt_compartment1.elmt_i4 = Params.elmt_i4;
        elmt_compartment1.elmt_f2 = Params.elmt_f2;
        elmt_compartment1.elmt_i5 = Params.elmt_i5;
        elmt_compartment1.elmt_i2 = Params.elmt_i2;
        elmt_compartment1.elmt_i3 = Params.elmt_i3;
        elmt_compartment1.elmt_i1 = Params.elmt_i1;
        elmt_compartment1.elmt_Rtotal = Params.elmt_Rtotal;
        elmt_compartment1.elmt_f5 = Params.elmt_f5;
        elmt_compartment1.elmt_f6 = Params.elmt_f6;

end Koschorreck2008_InsulinClearance;
