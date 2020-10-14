within BIOMD341;
class Class_elmt_cell

    input Real elmt_si;
    input Real elmt_k;
    input Real elmt_r1;
    input Real elmt_r2;
    input Real elmt_sigma;
    input Real elmt_R0;
    input Real elmt_Eg0;
    input Real elmt_d0;
    input Real elmt_alpha;

    Real elmt_cell(unit = "") "cell";
    Real elmt_I_conc(unit = "");
    Real elmt_I_amount(unit = "");
    Real elmt_I(unit = "") "insulin";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_G_conc(unit = "");
    Real elmt_G_amount(unit = "");
    Real elmt_G(unit = "") "glucose";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_B_conc(unit = "");
    Real elmt_B_amount(unit = "");
    Real elmt_B(unit = "") "Mass";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_I_conc = 2.8;
        elmt_G_conc = 250.0;
        elmt_B_conc = 37.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_I = elmt_I_conc;
        elmt_G = elmt_G_conc;
        elmt_B = elmt_B_conc;
        der(elmt_I_amount / elmt_cell) = (((elmt_B * elmt_sigma * Functions.pow(elmt_G, 2.0)) / (elmt_alpha + Functions.pow(elmt_G, 2.0))) - (elmt_k * elmt_I));
        der(elmt_G_amount / elmt_cell) = (elmt_R0 - ((elmt_Eg0 + (elmt_si * elmt_I)) * elmt_G));
        der(elmt_B_amount / elmt_cell) = ((((- elmt_d0) + (elmt_r1 * elmt_G)) - (elmt_r2 * Functions.pow(elmt_G, 2.0))) * elmt_B);

    algorithm
        elmt_I_conc := elmt_I_amount / elmt_cell;
        elmt_G_conc := elmt_G_amount / elmt_cell;
        elmt_B_conc := elmt_B_amount / elmt_cell;
end Class_elmt_cell;
