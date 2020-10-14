within BIOMD046;
model S2MModel "Olsen2003_peroxidase" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_per3 = elmt_compartment.elmt_per3;
        Reacs.elmt_ArH = elmt_compartment.elmt_ArH;
        Reacs.elmt_per2 = elmt_compartment.elmt_per2;
        Reacs.elmt_O2 = elmt_compartment.elmt_O2;
        Reacs.elmt_coIII = elmt_compartment.elmt_coIII;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_H2O2 = elmt_compartment.elmt_H2O2;
        Reacs.elmt_coI = elmt_compartment.elmt_coI;
        Reacs.elmt_Ar = elmt_compartment.elmt_Ar;
        Reacs.elmt_NADrad = elmt_compartment.elmt_NADrad;
        Reacs.elmt_O2g = elmt_compartment.elmt_O2g;
        Reacs.elmt_super = elmt_compartment.elmt_super;
        Reacs.elmt_coII = elmt_compartment.elmt_coII;
        Reacs.elmt_NADH = elmt_compartment.elmt_NADH;
        elmt_compartment.elmt_v9 = Reacs.elmt_v9;
        elmt_compartment.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_compartment.elmt_v7 = Reacs.elmt_v7;
        elmt_compartment.elmt_product33 = Reacs.elmt_product33;
        elmt_compartment.elmt_v8 = Reacs.elmt_v8;
        elmt_compartment.elmt_v5 = Reacs.elmt_v5;
        elmt_compartment.elmt_v6 = Reacs.elmt_v6;
        elmt_compartment.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_compartment.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_compartment.elmt_v3 = Reacs.elmt_v3;
        elmt_compartment.elmt_v4 = Reacs.elmt_v4;
        elmt_compartment.elmt_v1 = Reacs.elmt_v1;
        elmt_compartment.elmt_v2 = Reacs.elmt_v2;
        elmt_compartment.elmt_product24 = Reacs.elmt_product24;
        elmt_compartment.elmt_product28 = Reacs.elmt_product28;
        elmt_compartment.elmt_product41 = Reacs.elmt_product41;
        elmt_compartment.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_compartment.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_compartment.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment.elmt_product37 = Reacs.elmt_product37;
        elmt_compartment.elmt_product39 = Reacs.elmt_product39;
        elmt_compartment.elmt_v132 = Reacs.elmt_v132;
        elmt_compartment.elmt_v131 = Reacs.elmt_v131;
        elmt_compartment.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_compartment.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_compartment.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_compartment.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment.elmt_product47 = Reacs.elmt_product47;
        elmt_compartment.elmt_product46 = Reacs.elmt_product46;
        elmt_compartment.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_v12 = Reacs.elmt_v12;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_v11 = Reacs.elmt_v11;
        elmt_compartment.elmt_v10 = Reacs.elmt_v10;
        elmt_compartment.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_compartment.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment.elmt_product23 = Reacs.elmt_product23;
        elmt_compartment.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment.elmt_product21 = Reacs.elmt_product21;
        elmt_compartment.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_compartment.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment.elmt_v14 = Reacs.elmt_v14;
        elmt_compartment.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment.elmt_product18 = Reacs.elmt_product18;

end S2MModel;
