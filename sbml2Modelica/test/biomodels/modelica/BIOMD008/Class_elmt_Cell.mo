within BIOMD008;
class Class_elmt_Cell

    input Real elmt_product12;
    input Real elmt_product11;
    input Real elmt_reactant18;
    input Real elmt_reaction13;
    input Real elmt_reaction10;
    input Real elmt_reaction12;
    input Real elmt_reaction11;
    input Real elmt_product9;
    input Real elmt_reaction7;
    input Real elmt_reactant2;
    input Real elmt_reaction6;
    input Real elmt_reactant1;
    input Real elmt_reactant4;
    input Real elmt_reaction9;
    input Real elmt_reaction8;
    input Real elmt_reactant6;
    input Real elmt_reaction3;
    input Real elmt_reaction2;
    input Real elmt_reaction5;
    input Real elmt_reactant8;
    input Real elmt_reaction4;
    input Real elmt_reactant7;
    input Real elmt_reactant15;
    input Real elmt_product0;
    input Real elmt_reaction1;
    input Real elmt_reactant10;
    input Real elmt_product5;
    input Real elmt_product3;
    input Real elmt_reactant13;
    input Real elmt_product16;
    input Real elmt_product14;
    input Real elmt_product17;

    Real elmt_Cell(unit = "m3.0") "Cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_M_conc(unit = "m-9.0.");
    Real elmt_M_amount(unit = "m-6.0.");
    Real elmt_M(unit = "m-9.0.") "cdc2k";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Y_conc(unit = "m-12.0.");
    Real elmt_Y_amount(unit = "m-9.0.");
    Real elmt_Y(unit = "m-12.0.") "cyclin inhibitor";
    Real elmt_Z_conc(unit = "m-15.0.");
    Real elmt_Z_amount(unit = "m-12.0.");
    Real elmt_Z(unit = "m-15.0.") "complex inhibitor-cyclin";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_X_conc(unit = "m-6.0.");
    Real elmt_X_amount(unit = "m-3.0.");
    Real elmt_X(unit = "m-6.0.") "protease";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C_conc(unit = "m-3.0.");
    Real elmt_C_amount(unit = "");
    Real elmt_C(unit = "m-3.0.") "cyclin";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Cell = 1.0;
        elmt_M_conc = (0.0 / elmt_Cell);
        elmt_Y_conc = (1.0 / elmt_Cell);
        elmt_Z_conc = (1.0 / elmt_Cell);
        elmt_X_conc = (0.0 / elmt_Cell);
        elmt_C_conc = (0.0 / elmt_Cell);


    equation
        assert(elmt_Cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Cell) = 0;
        elmt_M = elmt_M_conc;
        elmt_Y = elmt_Y_conc;
        elmt_Z = elmt_Z_conc;
        elmt_X = elmt_X_conc;
        elmt_C = elmt_C_conc;
        der(elmt_M_amount) = ((- (elmt_reaction5 * elmt_reactant4)) + (elmt_reaction4 * elmt_product3));
        der(elmt_Y_amount) = ((elmt_reaction9 * elmt_product12) + (- (elmt_reaction8 * elmt_reactant8)) + (- (elmt_reaction13 * elmt_reactant18)) + (elmt_reaction12 * elmt_product17) + (elmt_reaction11 * elmt_product16));
        der(elmt_Z_amount) = ((- (elmt_reaction9 * elmt_reactant10)) + (elmt_reaction8 * elmt_product9) + (- (elmt_reaction10 * elmt_reactant13)) + (- (elmt_reaction11 * elmt_reactant15)));
        der(elmt_X_amount) = ((- (elmt_reaction7 * elmt_reactant6)) + (elmt_reaction6 * elmt_product5));
        der(elmt_C_amount) = ((elmt_reaction9 * elmt_product11) + (- (elmt_reaction8 * elmt_reactant7)) + (- (elmt_reaction3 * elmt_reactant2)) + (- (elmt_reaction2 * elmt_reactant1)) + (elmt_reaction1 * elmt_product0) + (elmt_reaction10 * elmt_product14));

    algorithm
        elmt_M_conc := elmt_M_amount / elmt_Cell;
        elmt_Y_conc := elmt_Y_amount / elmt_Cell;
        elmt_Z_conc := elmt_Z_amount / elmt_Cell;
        elmt_X_conc := elmt_X_amount / elmt_Cell;
        elmt_C_conc := elmt_C_amount / elmt_Cell;
end Class_elmt_Cell;
