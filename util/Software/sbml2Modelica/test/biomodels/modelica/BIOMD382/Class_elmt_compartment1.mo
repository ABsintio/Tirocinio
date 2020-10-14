within BIOMD382;
class Class_elmt_compartment1

    input Real elmt_I;
    input Real elmt_t3;
    input Real elmt_f5;
    input Real elmt_f3;
    input Real elmt_t1;
    input Real elmt_f4;
    input Real elmt_t2;
    input Real elmt_E;
    input Real elmt_f1;
    input Real elmt_v1;
    input Real elmt_f2;
    input Real elmt_v2;

    Real elmt_compartment1(unit = "") "compartment1";
    Real elmt_y_conc(unit = "");
    Real elmt_y_amount(unit = "");
    Real elmt_y(unit = "") "y";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_z_conc(unit = "");
    Real elmt_z_amount(unit = "");
    Real elmt_z(unit = "") "z";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x_conc(unit = "");
    Real elmt_x_amount(unit = "");
    Real elmt_x(unit = "") "x";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_h3_conc(unit = "");
    Real elmt_h3_amount(unit = "");
    Real elmt_h3(unit = "") "h3";
    Real elmt_h1_conc(unit = "");
    Real elmt_h1_amount(unit = "");
    Real elmt_h1(unit = "") "h1";
    Real elmt_h2_conc(unit = "");
    Real elmt_h2_amount(unit = "");
    Real elmt_h2(unit = "") "h2";

    initial equation
        elmt_compartment1 = 1.0;
        elmt_y_conc = (180.0 / elmt_compartment1);
        elmt_z_conc = (13000.0 / elmt_compartment1);
        elmt_x_conc = (90.0 / elmt_compartment1);
        elmt_h3_conc = (70.0 / elmt_compartment1);
        elmt_h1_conc = (70.0 / elmt_compartment1);
        elmt_h2_conc = (70.0 / elmt_compartment1);


    equation
        assert(elmt_compartment1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment1) = 0;
        elmt_y = elmt_y_conc;
        elmt_z = elmt_z_conc;
        elmt_x = elmt_x_conc;
        elmt_h3 = elmt_h3_conc;
        elmt_h1 = elmt_h1_conc;
        elmt_h2 = elmt_h2_conc;
        der(elmt_y_amount / elmt_compartment1) = ((elmt_E * ((elmt_x / elmt_v1) - (elmt_y / elmt_v2))) - (elmt_y / elmt_t2));
        der(elmt_z_amount / elmt_compartment1) = (((elmt_f5 + elmt_I) - elmt_f2) - (elmt_f3 * elmt_f4));
        der(elmt_x_amount / elmt_compartment1) = ((elmt_f1 - (elmt_E * ((elmt_x / elmt_v1) - (elmt_y / elmt_v2)))) - (elmt_x / elmt_t1));
        der(elmt_h3_amount / elmt_compartment1) = ((3.0 * (elmt_h2 - elmt_h3)) / elmt_t3);
        der(elmt_h1_amount / elmt_compartment1) = ((3.0 * (elmt_x - elmt_h1)) / elmt_t3);
        der(elmt_h2_amount / elmt_compartment1) = ((3.0 * (elmt_h1 - elmt_h2)) / elmt_t3);

    algorithm
        elmt_y_conc := elmt_y_amount / elmt_compartment1;
        elmt_z_conc := elmt_z_amount / elmt_compartment1;
        elmt_x_conc := elmt_x_amount / elmt_compartment1;
        elmt_h3_conc := elmt_h3_amount / elmt_compartment1;
        elmt_h1_conc := elmt_h1_amount / elmt_compartment1;
        elmt_h2_conc := elmt_h2_amount / elmt_compartment1;
end Class_elmt_compartment1;
