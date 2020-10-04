within BIOMD278;
class Class_elmt_Compartment

    input Real elmt_D_R;
    input Real elmt_D_B;
    input Real elmt_D_C;
    input Real elmt_D_A;
    input Real elmt_Phi_C;
    input Real elmt_k_B;
    input Real elmt_Phi_L;

    Real elmt_Compartment(unit = "") "Compartment";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C_conc(unit = "");
    Real elmt_C_amount(unit = "");
    Real elmt_C(unit = "") "Active_Osteoclasts";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_R_conc(unit = "");
    Real elmt_R_amount(unit = "");
    Real elmt_R(unit = "") "Responding_Osteoblasts";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_B_conc(unit = "");
    Real elmt_B_amount(unit = "");
    Real elmt_B(unit = "") "Active_Osteoblasts";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Compartment = 1.0;
        elmt_C_conc = 9.127E-4;
        elmt_R_conc = 7.734E-4;
        elmt_B_conc = 7.282E-4;


    equation
        assert(elmt_Compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Compartment) = 0;
        elmt_C = elmt_C_conc;
        elmt_R = elmt_R_conc;
        elmt_B = elmt_B_conc;
        der(elmt_C_amount / elmt_Compartment) = ((elmt_D_C * elmt_Phi_L) - (elmt_D_A * elmt_Phi_C * elmt_C));
        der(elmt_R_amount / elmt_Compartment) = ((elmt_D_R * elmt_Phi_C) - ((elmt_D_B * elmt_R) / elmt_Phi_C));
        der(elmt_B_amount / elmt_Compartment) = (((elmt_D_B * elmt_R) / elmt_Phi_C) - (elmt_k_B * elmt_B));

    algorithm
        elmt_C_conc := elmt_C_amount / elmt_Compartment;
        elmt_R_conc := elmt_R_amount / elmt_Compartment;
        elmt_B_conc := elmt_B_amount / elmt_Compartment;
end Class_elmt_Compartment;
