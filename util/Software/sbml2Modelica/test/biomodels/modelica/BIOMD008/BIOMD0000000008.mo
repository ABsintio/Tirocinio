within BIOMD008;
model BIOMD0000000008 "Gardner1998 - Cell Cycle Goldbeter" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Cell elmt_Cell;

    equation
        Params.elmt_M = elmt_Cell.elmt_M;
        Params.elmt_C = elmt_Cell.elmt_C;
        Reacs.elmt_M = elmt_Cell.elmt_M;
        Reacs.elmt_Y = elmt_Cell.elmt_Y;
        Reacs.elmt_Z = elmt_Cell.elmt_Z;
        Reacs.elmt_V3 = Params.elmt_V3;
        Reacs.elmt_X = elmt_Cell.elmt_X;
        Reacs.elmt_V1 = Params.elmt_V1;
        Reacs.elmt_C = elmt_Cell.elmt_C;
        elmt_Cell.elmt_product12 = Reacs.elmt_product12;
        elmt_Cell.elmt_product11 = Reacs.elmt_product11;
        elmt_Cell.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_Cell.elmt_reaction13 = Reacs.elmt_reaction13;
        elmt_Cell.elmt_reaction10 = Reacs.elmt_reaction10;
        elmt_Cell.elmt_reaction12 = Reacs.elmt_reaction12;
        elmt_Cell.elmt_reaction11 = Reacs.elmt_reaction11;
        elmt_Cell.elmt_product9 = Reacs.elmt_product9;
        elmt_Cell.elmt_reaction7 = Reacs.elmt_reaction7;
        elmt_Cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_Cell.elmt_reaction6 = Reacs.elmt_reaction6;
        elmt_Cell.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_Cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_Cell.elmt_reaction9 = Reacs.elmt_reaction9;
        elmt_Cell.elmt_reaction8 = Reacs.elmt_reaction8;
        elmt_Cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_Cell.elmt_reaction3 = Reacs.elmt_reaction3;
        elmt_Cell.elmt_reaction2 = Reacs.elmt_reaction2;
        elmt_Cell.elmt_reaction5 = Reacs.elmt_reaction5;
        elmt_Cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_Cell.elmt_reaction4 = Reacs.elmt_reaction4;
        elmt_Cell.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_Cell.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_Cell.elmt_product0 = Reacs.elmt_product0;
        elmt_Cell.elmt_reaction1 = Reacs.elmt_reaction1;
        elmt_Cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_Cell.elmt_product5 = Reacs.elmt_product5;
        elmt_Cell.elmt_product3 = Reacs.elmt_product3;
        elmt_Cell.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_Cell.elmt_product16 = Reacs.elmt_product16;
        elmt_Cell.elmt_product14 = Reacs.elmt_product14;
        elmt_Cell.elmt_product17 = Reacs.elmt_product17;

end BIOMD0000000008;
