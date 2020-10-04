within BIOMD403;
class Class_elmt_Compartment

    input Real elmt_k1;
    input Real elmt_gammaT;
    input Real elmt_r12;
    input Real elmt_r11;
    input Real elmt_r22;
    input Real elmt_r21;
    input Real elmt_beta1;
    input Real elmt_beta2;
    input Real elmt_k2;
    input Real elmt_LT;
    input Real elmt_g12;
    input Real elmt_g11;
    input Real elmt_g22;
    input Real elmt_g21;
    input Real elmt_alpha1;
    input Real elmt_V1;
    input Real elmt_V2;
    input Real elmt_alpha2;
    input Real elmt_y2;
    input Real elmt_y1;

    Real elmt_Compartment(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_z_conc(unit = "");
    Real elmt_z_amount(unit = "");
    Real elmt_z(unit = "") "BoneMass";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C_conc(unit = "");
    Real elmt_C_amount(unit = "");
    Real elmt_C(unit = "") "Osteoclasts";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Tumour_conc(unit = "");
    Real elmt_Tumour_amount(unit = "");
    Real elmt_Tumour(unit = "") "Tumour";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_B_conc(unit = "");
    Real elmt_B_amount(unit = "");
    Real elmt_B(unit = "") "Osteoblasts";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Compartment = 1.0;
        elmt_z_conc = 100.0;
        elmt_C_conc = 13.0;
        elmt_Tumour_conc = 1.0;
        elmt_B_conc = 300.0;


    equation
        assert(elmt_Compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Compartment) = 0;
        elmt_z = elmt_z_conc;
        elmt_C = elmt_C_conc;
        elmt_Tumour = elmt_Tumour_conc;
        elmt_B = elmt_B_conc;
        der(elmt_z_amount / elmt_Compartment) = ((elmt_k2 * elmt_y2) - (elmt_k1 * elmt_y1));
        der(elmt_C_amount / elmt_Compartment) = ((elmt_alpha1 * Functions.pow(elmt_C, (elmt_g11 * (1.0 + ((elmt_r11 * elmt_Tumour) / elmt_LT)))) * Functions.pow(elmt_B, (elmt_g21 * (1.0 + ((elmt_r21 * elmt_Tumour) / elmt_LT))))) - (elmt_beta1 * elmt_C));
        der(elmt_Tumour_amount / elmt_Compartment) = ((elmt_gammaT - elmt_V2) * elmt_Tumour * log((elmt_LT / elmt_Tumour)));
        der(elmt_B_amount / elmt_Compartment) = ((elmt_alpha2 * Functions.pow(elmt_C, (elmt_g12 / (1.0 + ((elmt_r12 * elmt_Tumour) / elmt_LT)))) * Functions.pow(elmt_B, (elmt_g22 - ((elmt_r22 * elmt_Tumour) / elmt_LT)))) - ((elmt_beta2 - elmt_V1) * elmt_B));

    algorithm
        elmt_z_conc := elmt_z_amount / elmt_Compartment;
        elmt_C_conc := elmt_C_amount / elmt_Compartment;
        elmt_Tumour_conc := elmt_Tumour_amount / elmt_Compartment;
        elmt_B_conc := elmt_B_amount / elmt_Compartment;
end Class_elmt_Compartment;
