within BIOMD251;
class Reactions

    input Real elmt_K1;
    input Real elmt_compartment;
    input Real elmt_cFOSp;
    input Real elmt_L;
    input Real elmt_pcFOS;
    input Real elmt_k7;
    input Real elmt_DUSP;
    input Real elmt_ppERKc;
    input Real elmt_cFOSm;
    input Real elmt_K2;
    input Real elmt_tau2;
    input Real elmt_tau1;
    input Real elmt_cFOS;
    input Real elmt_ppERKn;
    input Real elmt_k13;
    input Real elmt_pRSKn;
    input Real elmt_x1;
    input Real elmt_k11;
    input Real elmt_x2;

    Real elmt_reaction_9(unit = "") "7 pcFOS";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_9_elmt_k12(unit "") = 0.001 "";
    Real elmt_product8 "";
    Real elmt_reaction_7(unit = "") "5 cFOSm";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_7_elmt_k8(unit "") = 0.08 "";
    Real elmt_product6 "";
    Real elmt_reaction_8(unit = "") "6 cFOS";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_8_elmt_k9(unit "") = 0.3 "";
    parameter Real elmt_reaction_8_elmt_k10(unit "") = 0.3 "";
    Real elmt_product7 "";
    Real elmt_reaction_5(unit = "") "3 pRSKn";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_5_elmt_k4(unit "") = 0.1 "";
    parameter Real elmt_reaction_5_elmt_k5(unit "") = 0.15 "";
    Real elmt_product4 "";
    Real elmt_reaction_6(unit = "") "4 cFOSp";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_6_elmt_n(unit "") = 1.1 "";
    parameter Real elmt_reaction_6_elmt_k6(unit "") = 0.13 "";
    Real elmt_product5 "";
    Real elmt_reaction_3(unit = "") "2a ppERKn";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_3_elmt_k1(unit "") = 15.0 "";
    parameter Real elmt_reaction_3_elmt_k2(unit "") = 50.0 "";
    parameter Real elmt_reaction_3_elmt_k3(unit "") = 14.0 "";
    Real elmt_product2 "";
    Real elmt_reaction_4(unit = "") "2b DUSP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_4_elmt_k(unit "") = 1.0 "";
    Real elmt_product3 "";
    Real elmt_reaction_1(unit = "") "1 PhIM 1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product0 "";
    Real elmt_reaction_2(unit = "") "1 PhIM 2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";


    initial equation
        elmt_product8 = 1.0;
        elmt_product7 = 1.0;
        elmt_product6 = 1.0;
        elmt_product1 = 1.0;
        elmt_product0 = 1.0;
        elmt_product5 = 1.0;
        elmt_product4 = 1.0;
        elmt_product3 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_reaction_9 = (elmt_compartment * (((elmt_k11 * elmt_cFOS * elmt_ppERKc) - (elmt_reaction_9_elmt_k12 * elmt_pcFOS)) - (elmt_k13 * elmt_pcFOS)));
        elmt_reaction_7 = (elmt_compartment * ((elmt_k7 * elmt_cFOSp) - (elmt_reaction_7_elmt_k8 * elmt_cFOSm)));
        elmt_reaction_8 = (elmt_compartment * ((((elmt_reaction_8_elmt_k9 * elmt_cFOSm) - (elmt_reaction_8_elmt_k10 * elmt_cFOS)) - (elmt_k11 * elmt_cFOS * elmt_ppERKc)) + (elmt_k13 * elmt_pcFOS)));
        elmt_reaction_5 = (elmt_compartment * ((elmt_reaction_5_elmt_k4 * elmt_ppERKn) - (elmt_reaction_5_elmt_k5 * elmt_pRSKn)));
        elmt_reaction_6 = (elmt_compartment * ((Functions.pow((elmt_ppERKn * elmt_pRSKn), elmt_reaction_6_elmt_n) / (Functions.pow(elmt_reaction_6_elmt_k6, elmt_reaction_6_elmt_n) + Functions.pow((elmt_ppERKn * elmt_pRSKn), elmt_reaction_6_elmt_n))) - (elmt_k7 * elmt_cFOSp)));
        elmt_reaction_3 = (elmt_compartment * (((elmt_reaction_3_elmt_k1 * elmt_ppERKc) - (elmt_reaction_3_elmt_k2 * elmt_ppERKn)) - (elmt_reaction_3_elmt_k3 * elmt_DUSP * elmt_ppERKn)));
        elmt_reaction_4 = (elmt_compartment * elmt_reaction_4_elmt_k * elmt_ppERKn);
        elmt_reaction_1 = (elmt_compartment * (((- elmt_x1) / elmt_tau1) + ((elmt_K1 * elmt_L) / elmt_tau1)));
        elmt_reaction_2 = (elmt_compartment * (((- elmt_x2) / elmt_tau2) + ((elmt_K2 * elmt_L) / elmt_tau2)));
        der(elmt_product8) = 0;
        der(elmt_product7) = 0;
        der(elmt_product6) = 0;
        der(elmt_product1) = 0;
        der(elmt_product0) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;

end Reactions;
