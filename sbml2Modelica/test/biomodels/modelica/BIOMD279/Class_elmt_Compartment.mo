within BIOMD279;
class Class_elmt_Compartment

    input Real elmt_g12;
    input Real elmt_k1;
    input Real elmt_g11;
    input Real elmt_g22;
    input Real elmt_g21;
    input Real elmt_alpha1;
    input Real elmt_alpha2;
    input Real elmt_beta1;
    input Real elmt_y2;
    input Real elmt_beta2;
    input Real elmt_k2;
    input Real elmt_y1;

    Real elmt_Compartment(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_z_conc(unit = "");
    Real elmt_z_amount(unit = "");
    Real elmt_z(unit = "") "BoneMass";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x1_conc(unit = "");
    Real elmt_x1_amount(unit = "");
    Real elmt_x1(unit = "") "Osteoclasts";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x2_conc(unit = "");
    Real elmt_x2_amount(unit = "");
    Real elmt_x2(unit = "") "Osteoblasts";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Compartment = 1.0;
        elmt_z_conc = 100.0;
        elmt_x1_conc = 1.06066;
        elmt_x2_conc = 212.132;


    equation
        assert(elmt_Compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Compartment) = 0;
        elmt_z = elmt_z_conc;
        elmt_x1 = elmt_x1_conc;
        elmt_x2 = elmt_x2_conc;
        der(elmt_z_amount / elmt_Compartment) = ((elmt_k2 * elmt_y2) - (elmt_k1 * elmt_y1));
        der(elmt_x1_amount / elmt_Compartment) = ((elmt_alpha1 * Functions.pow(elmt_x1, elmt_g11) * Functions.pow(elmt_x2, elmt_g21)) - (elmt_beta1 * elmt_x1));
        der(elmt_x2_amount / elmt_Compartment) = ((elmt_alpha2 * Functions.pow(elmt_x1, elmt_g12) * Functions.pow(elmt_x2, elmt_g22)) - (elmt_beta2 * elmt_x2));

    algorithm
        elmt_z_conc := elmt_z_amount / elmt_Compartment;
        elmt_x1_conc := elmt_x1_amount / elmt_Compartment;
        elmt_x2_conc := elmt_x2_amount / elmt_Compartment;
end Class_elmt_Compartment;
