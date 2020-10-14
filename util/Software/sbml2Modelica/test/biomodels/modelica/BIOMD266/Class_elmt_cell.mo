within BIOMD266;
class Class_elmt_cell

    input Real elmt_flux_X2_out;
    input Real elmt_flux_X7_out;
    input Real elmt_flux_X5_out;
    input Real elmt_flux_X3_in;
    input Real elmt_flux_X2_in;
    input Real elmt_flux_X1_in;
    input Real elmt_flux_X5_in;
    input Real elmt_flux_X1_out;
    input Real elmt_flux_X4_in;
    input Real elmt_flux_X7_in;
    input Real elmt_flux_X6_in;
    input Real elmt_flux_X3_out;
    input Real elmt_flux_X6_out;
    input Real elmt_flux_X4_out;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	


	</rdf:RDF>
	</annotation>"));
    Real elmt_X7_conc(unit = "");
    Real elmt_X7_amount(unit = "");
    Real elmt_X7(unit = "") "trehalose";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	


	</rdf:RDF>
	</annotation>"));
    Real elmt_X5_conc(unit = "");
    Real elmt_X5_amount(unit = "");
    Real elmt_X5(unit = "") "glycogen";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	


	</rdf:RDF>
	</annotation>"));
    Real elmt_X6_conc(unit = "");
    Real elmt_X6_amount(unit = "");
    Real elmt_X6(unit = "") "T6P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	


	</rdf:RDF>
	</annotation>"));
    Real elmt_X3_conc(unit = "");
    Real elmt_X3_amount(unit = "");
    Real elmt_X3(unit = "") "G1P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	


	</rdf:RDF>
	</annotation>"));
    Real elmt_X4_conc(unit = "");
    Real elmt_X4_amount(unit = "");
    Real elmt_X4(unit = "") "UDPG";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	


	</rdf:RDF>
	</annotation>"));
    Real elmt_X1_conc(unit = "");
    Real elmt_X1_amount(unit = "");
    Real elmt_X1(unit = "") "glucose";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	


	</rdf:RDF>
	</annotation>"));
    Real elmt_X2_conc(unit = "");
    Real elmt_X2_amount(unit = "");
    Real elmt_X2(unit = "") "G6P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	
	
	
	
	


	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_X7_conc = 0.05;
        elmt_X5_conc = 1.0;
        elmt_X6_conc = 0.02;
        elmt_X3_conc = 0.1;
        elmt_X4_conc = 0.7;
        elmt_X1_conc = 0.03;
        elmt_X2_conc = 1.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_X7 = elmt_X7_conc;
        elmt_X5 = elmt_X5_conc;
        elmt_X6 = elmt_X6_conc;
        elmt_X3 = elmt_X3_conc;
        elmt_X4 = elmt_X4_conc;
        elmt_X1 = elmt_X1_conc;
        elmt_X2 = elmt_X2_conc;
        der(elmt_X7_amount / elmt_cell) = (elmt_flux_X7_in - elmt_flux_X7_out);
        der(elmt_X5_amount / elmt_cell) = (elmt_flux_X5_in - elmt_flux_X5_out);
        der(elmt_X6_amount / elmt_cell) = (elmt_flux_X6_in - elmt_flux_X6_out);
        der(elmt_X3_amount / elmt_cell) = (elmt_flux_X3_in - elmt_flux_X3_out);
        der(elmt_X4_amount / elmt_cell) = (elmt_flux_X4_in - elmt_flux_X4_out);
        der(elmt_X1_amount / elmt_cell) = (elmt_flux_X1_in - elmt_flux_X1_out);
        der(elmt_X2_amount / elmt_cell) = (elmt_flux_X2_in - elmt_flux_X2_out);

    algorithm
        elmt_X7_conc := elmt_X7_amount / elmt_cell;
        elmt_X5_conc := elmt_X5_amount / elmt_cell;
        elmt_X6_conc := elmt_X6_amount / elmt_cell;
        elmt_X3_conc := elmt_X3_amount / elmt_cell;
        elmt_X4_conc := elmt_X4_amount / elmt_cell;
        elmt_X1_conc := elmt_X1_amount / elmt_cell;
        elmt_X2_conc := elmt_X2_amount / elmt_cell;
end Class_elmt_cell;
