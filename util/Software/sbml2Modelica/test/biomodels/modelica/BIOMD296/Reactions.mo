within BIOMD296;
class Reactions

    input Real elmt_K1;
    input Real elmt_d1;
    input Real elmt_C1;
    input Real elmt_d2;
    input Real elmt_kA2;
    input Real elmt_Cm;
    input Real elmt_D;
    input Real elmt_kA1;
    input Real elmt_K2;
    input Real elmt_kc2;
    input Real elmt_kc1;
    input Real elmt_A2;
    input Real elmt_C2;
    input Real elmt_A1;
    input Real elmt_environment;
    input Real elmt_dAA2;
    input Real elmt_dAA1;

    Real elmt_J0(unit = "") "predator growth";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_J7(unit = "") "3OC6HSL removal";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_J5(unit = "") "3OC12HSL removal";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_J6(unit = "") "3OC6HSL synthesis";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_J3(unit = "") "prey death";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_J4(unit = "") "3OC12HSL synthesis";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_J1(unit = "") "predator death";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_J2(unit = "") "prey growth";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product3 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_J0 = (elmt_environment * elmt_kc1 * elmt_C1 * (1.0 - ((elmt_C1 + elmt_C2) / elmt_Cm)));
        elmt_J7 = (elmt_environment * (elmt_dAA2 + elmt_D) * elmt_A2);
        elmt_J5 = (elmt_environment * (elmt_dAA1 + elmt_D) * elmt_A1);
        elmt_J6 = (elmt_environment * elmt_kA2 * elmt_C2);
        elmt_J3 = (elmt_environment * (elmt_D + ((elmt_d2 * Functions.pow(elmt_A1, 2.0)) / (elmt_K2 + Functions.pow(elmt_A1, 2.0)))) * elmt_C2);
        elmt_J4 = (elmt_environment * elmt_kA1 * elmt_C1);
        elmt_J1 = (elmt_environment * (elmt_D + ((elmt_d1 * elmt_K1) / (elmt_K1 + Functions.pow(elmt_A2, 2.0)))) * elmt_C1);
        elmt_J2 = (elmt_environment * elmt_kc2 * elmt_C2 * (1.0 - ((elmt_C1 + elmt_C2) / elmt_Cm)));
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product3) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;

end Reactions;
