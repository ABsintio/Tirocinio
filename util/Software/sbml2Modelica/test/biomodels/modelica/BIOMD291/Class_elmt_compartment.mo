within BIOMD291;
class Class_elmt_compartment

    input Real elmt_n;
    input Real elmt_K_AlB;
    input Real elmt_K_AlB2;
    input Real elmt_k8;
    input Real elmt_k9;
    input Real elmt_k6;
    input Real elmt_k7;
    input Real elmt_k4;
    input Real elmt_k5;
    input Real elmt_k10;
    input Real elmt_k3;

    Real elmt_compartment(unit = "") "compartment";
    Real elmt_x7_conc(unit = "");
    Real elmt_x7_amount(unit = "");
    Real elmt_x7(unit = "") "C";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_A0_conc(unit = "");
    Real elmt_A0_amount(unit = "");
    Real elmt_A0(unit = "") "A0";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x5_conc(unit = "");
    Real elmt_x5_amount(unit = "");
    Real elmt_x5(unit = "") "Al";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C0_conc(unit = "");
    Real elmt_C0_amount(unit = "");
    Real elmt_C0(unit = "") "C0";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x6_conc(unit = "");
    Real elmt_x6_amount(unit = "");
    Real elmt_x6(unit = "") "B";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_B0_conc(unit = "");
    Real elmt_B0_amount(unit = "");
    Real elmt_B0(unit = "") "B0";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x3_conc(unit = "");
    Real elmt_x3_amount(unit = "");
    Real elmt_x3(unit = "") "AlCn";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x4_conc(unit = "");
    Real elmt_x4_amount(unit = "");
    Real elmt_x4(unit = "") "AlB2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x1_conc(unit = "");
    Real elmt_x1_amount(unit = "");
    Real elmt_x1(unit = "") "AlB";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x2_conc(unit = "");
    Real elmt_x2_amount(unit = "");
    Real elmt_x2(unit = "") "BC";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_A0_conc = 0.4615385;
        elmt_C0_conc = 1.174;
        elmt_B0_conc = 0.1754386;
        elmt_x3_conc = 0.0;
        elmt_x4_conc = 0.0;
        elmt_x1_conc = 0.0;
        elmt_x2_conc = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_x7 = elmt_x7_conc;
        elmt_A0 = elmt_A0_conc;
        elmt_x5 = elmt_x5_conc;
        elmt_C0 = elmt_C0_conc;
        elmt_x6 = elmt_x6_conc;
        elmt_B0 = elmt_B0_conc;
        elmt_x3 = elmt_x3_conc;
        elmt_x4 = elmt_x4_conc;
        elmt_x1 = elmt_x1_conc;
        elmt_x2 = elmt_x2_conc;
        elmt_x7_amount = ((elmt_C0 - elmt_x2) - (elmt_n * elmt_x3)) * elmt_compartment;
        der(elmt_A0_amount) = 0;
        elmt_x5_amount = (((elmt_A0 - elmt_x1) - elmt_x3) - elmt_x4) * elmt_compartment;
        der(elmt_C0_amount) = 0;
        elmt_x6_amount = (((elmt_B0 - elmt_x1) - elmt_x2) - (2.0 * elmt_x4)) * elmt_compartment;
        der(elmt_B0_amount) = 0;
        der(elmt_x3_amount / elmt_compartment) = (((elmt_k5 * Functions.pow(elmt_x7, elmt_n) * elmt_x5) - (elmt_k7 * elmt_x3)) + (elmt_k9 * elmt_x1 * Functions.pow(elmt_x7, (elmt_n + 1.0))));
        der(elmt_x4_amount / elmt_compartment) = (((elmt_K_AlB2 * elmt_k4 * elmt_x1 * elmt_x6) - (elmt_k4 * elmt_x4)) - (elmt_k10 * elmt_x4 * elmt_x7));
        der(elmt_x1_amount / elmt_compartment) = (((((elmt_K_AlB * elmt_k3 * elmt_x5 * elmt_x6) - (elmt_K_AlB2 * elmt_k4 * elmt_x1 * elmt_x6)) - (elmt_k3 * elmt_x1)) - (elmt_k9 * elmt_x1 * Functions.pow(elmt_x7, (elmt_n + 1.0)))) + (elmt_k4 * elmt_x4) + (elmt_k10 * elmt_x4 * elmt_x7));
        der(elmt_x2_amount / elmt_compartment) = (((elmt_k6 * elmt_x7 * elmt_x6) - (elmt_k8 * elmt_x2)) + (elmt_k9 * elmt_x1 * Functions.pow(elmt_x7, (elmt_n + 1.0))) + (elmt_k10 * elmt_x4 * elmt_x7));

    algorithm
        elmt_x7_conc := elmt_x7_amount / elmt_compartment;
        elmt_A0_conc := elmt_A0_amount / elmt_compartment;
        elmt_x5_conc := elmt_x5_amount / elmt_compartment;
        elmt_C0_conc := elmt_C0_amount / elmt_compartment;
        elmt_x6_conc := elmt_x6_amount / elmt_compartment;
        elmt_B0_conc := elmt_B0_amount / elmt_compartment;
        elmt_x3_conc := elmt_x3_amount / elmt_compartment;
        elmt_x4_conc := elmt_x4_amount / elmt_compartment;
        elmt_x1_conc := elmt_x1_amount / elmt_compartment;
        elmt_x2_conc := elmt_x2_amount / elmt_compartment;
end Class_elmt_compartment;
