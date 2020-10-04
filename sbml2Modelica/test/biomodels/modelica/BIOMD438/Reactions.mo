within BIOMD438;
class Reactions

    input Real elmt_s16;
    input Real elmt_s4;
    input Real elmt_s45;
    input Real elmt_s2;
    input Real elmt_s42;
    input Real elmt_s1;
    input Real elmt_s19;
    input Real elmt_s17;

    Real elmt_re8(unit = "") "";
    parameter Real elmt_re8_elmt_Y3(unit "") = 2.832E-4 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_re5(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_re5_elmt_k6(unit "") = 10.2 "";
    parameter Real elmt_re5_elmt_k5(unit "") = 1960000.0 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_reactant7 "";
    Real elmt_re4(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_re4_elmt_k4(unit "") = 0.0 "";
    parameter Real elmt_re4_elmt_k3(unit "") = 9600000.0 "";
    Real elmt_reactant4 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_re3(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_re3_elmt_Y2(unit "") = 0.0696 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_re2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_re2_elmt_k2(unit "") = 35.7 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_re1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_re1_elmt_k1(unit "") = 3.734 "";
    parameter Real elmt_re1_elmt_Y1(unit "") = 0.348 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_re14(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_re14_elmt_n1(unit "") = 2.0 "";
    parameter Real elmt_re14_elmt_n2(unit "") = 2.0 "";
    parameter Real elmt_re14_elmt_K8(unit "") = 0.009567 "";
    parameter Real elmt_re14_elmt_K9(unit "") = 9.742E-8 "";
    parameter Real elmt_re14_elmt_K7(unit "") = 0.004051 "";
    parameter Real elmt_re14_elmt_K11(unit "") = 1.0E-14 "";
    parameter Real elmt_re14_elmt_K12(unit "") = 2.4E-7 "";
    parameter Real elmt_re14_elmt_k10(unit "") = 6.5E-16 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_re8 = (elmt_re8_elmt_Y3 * elmt_s4);
        elmt_re5 = ((elmt_s16 * elmt_s42 * elmt_re5_elmt_k5) - (elmt_re5_elmt_k6 * elmt_s17));
        elmt_re4 = ((elmt_s19 * elmt_s4 * elmt_re4_elmt_k3) - (elmt_re4_elmt_k4 * elmt_s42));
        elmt_re3 = (elmt_re3_elmt_Y2 * elmt_s19);
        elmt_re2 = (elmt_re2_elmt_k2 * elmt_s2);
        elmt_re1 = ((elmt_re1_elmt_k1 * elmt_s1) - (elmt_re1_elmt_Y1 * elmt_s2));
        elmt_re14 = ((elmt_re14_elmt_K7 + ((elmt_re14_elmt_K8 * Functions.pow(elmt_s17, elmt_re14_elmt_n1)) / (Functions.pow(elmt_re14_elmt_K9, elmt_re14_elmt_n1) + Functions.pow(elmt_s17, elmt_re14_elmt_n1)))) * ((elmt_re14_elmt_k10 + ((elmt_re14_elmt_K11 * Functions.pow(elmt_s17, elmt_re14_elmt_n2)) / (Functions.pow(elmt_re14_elmt_K12, elmt_re14_elmt_n2) + Functions.pow(elmt_s17, elmt_re14_elmt_n2)))) - elmt_s45));
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;

end Reactions;
