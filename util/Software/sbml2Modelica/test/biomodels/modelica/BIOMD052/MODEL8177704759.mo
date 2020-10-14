within BIOMD052;
model MODEL8177704759 "Brands2002 - Monosaccharide-casein systems" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_Amadori = elmt_compartment.elmt_Amadori;
        Reacs.elmt_AMP = elmt_compartment.elmt_AMP;
        Reacs.elmt_Triose = elmt_compartment.elmt_Triose;
        Reacs.elmt_Glu = elmt_compartment.elmt_Glu;
        Reacs.elmt_lys_R = elmt_compartment.elmt_lys_R;
        Reacs.elmt_Fru = elmt_compartment.elmt_Fru;
        elmt_compartment.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_compartment.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_compartment.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_compartment.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_compartment.elmt__J3 = Reacs.elmt__J3;
        elmt_compartment.elmt__J2 = Reacs.elmt__J2;
        elmt_compartment.elmt__J1 = Reacs.elmt__J1;
        elmt_compartment.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_compartment.elmt_product27 = Reacs.elmt_product27;
        elmt_compartment.elmt__J9 = Reacs.elmt__J9;
        elmt_compartment.elmt_product25 = Reacs.elmt_product25;
        elmt_compartment.elmt__J8 = Reacs.elmt__J8;
        elmt_compartment.elmt__J7 = Reacs.elmt__J7;
        elmt_compartment.elmt__J6 = Reacs.elmt__J6;
        elmt_compartment.elmt__J5 = Reacs.elmt__J5;
        elmt_compartment.elmt__J4 = Reacs.elmt__J4;
        elmt_compartment.elmt_product9 = Reacs.elmt_product9;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt__J11 = Reacs.elmt__J11;
        elmt_compartment.elmt_product6 = Reacs.elmt_product6;
        elmt_compartment.elmt__J10 = Reacs.elmt__J10;
        elmt_compartment.elmt_product22 = Reacs.elmt_product22;
        elmt_compartment.elmt_product20 = Reacs.elmt_product20;
        elmt_compartment.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment.elmt_product13 = Reacs.elmt_product13;
        elmt_compartment.elmt_product19 = Reacs.elmt_product19;
        elmt_compartment.elmt_product17 = Reacs.elmt_product17;

end MODEL8177704759;
