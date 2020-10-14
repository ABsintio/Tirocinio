within BIOMD274;
class Class_elmt_Compartment

    input Real elmt_k1;
    input Real elmt_k2;
    input Real elmt_k3;
    input Real elmt_a4;
    input Real elmt_a5;
    input Real elmt_a2;
    input Real elmt_b3;
    input Real elmt_a3;
    input Real elmt_b1;
    input Real elmt_b2;
    input Real elmt_a1;
    input Real elmt_epsilon;
    input Real elmt_delta;

    Real elmt_Compartment(unit = "m3.0") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_y_conc(unit = "");
    Real elmt_y_amount(unit = "");
    Real elmt_y(unit = "") "active osteoclasts";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_z_conc(unit = "");
    Real elmt_z_amount(unit = "");
    Real elmt_z(unit = "") "active osteoblasts";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x_conc(unit = "");
    Real elmt_x_amount(unit = "");
    Real elmt_x(unit = "") "PTH";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Compartment = 1.0;
        elmt_y_conc = 1.0;
        elmt_z_conc = 0.15;
        elmt_x_conc = 2.0;


    equation
        assert(elmt_Compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Compartment) = 0;
        elmt_y = elmt_y_conc;
        elmt_z = elmt_z_conc;
        elmt_x = elmt_x_conc;
        der(elmt_y_amount / elmt_Compartment) = (elmt_epsilon * ((((elmt_a2 + (elmt_a3 * elmt_x)) * elmt_y * elmt_z) / (elmt_k2 + Functions.pow(elmt_x, 2.0))) - (elmt_b2 * elmt_y)));
        der(elmt_z_amount / elmt_Compartment) = (elmt_epsilon * elmt_delta * ((elmt_a4 * elmt_x) - ((elmt_b3 * elmt_z) + ((elmt_a5 * elmt_x * elmt_z) / (elmt_k3 + elmt_x)))));
        der(elmt_x_amount / elmt_Compartment) = ((elmt_a1 / (elmt_k1 + elmt_y)) - (elmt_b1 * elmt_x));

    algorithm
        elmt_y_conc := elmt_y_amount / elmt_Compartment;
        elmt_z_conc := elmt_z_amount / elmt_Compartment;
        elmt_x_conc := elmt_x_amount / elmt_Compartment;
end Class_elmt_Compartment;
