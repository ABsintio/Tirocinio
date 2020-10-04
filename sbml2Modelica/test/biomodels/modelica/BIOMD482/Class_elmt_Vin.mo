within BIOMD482;
class Class_elmt_Vin

    input Real elmt_v9;
    input Real elmt_v7;
    input Real elmt_v8;
    input Real elmt_product11;
    input Real elmt_v5;
    input Real elmt_v6;
    input Real elmt_reactant27;
    input Real elmt_reactant23;
    input Real elmt_reactant19;
    input Real elmt_v3;
    input Real elmt_v4;
    input Real elmt_product25;
    input Real elmt_v1;
    input Real elmt_metabolicENZ;
    input Real elmt_v2;
    input Real elmt_product29;
    input Real elmt_product9;
    input Real elmt_product7;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_product21;
    input Real elmt_reactant8;
    input Real elmt_product1;
    input Real elmt_reactant15;
    input Real elmt_product5;
    input Real elmt_reactant12;
    input Real elmt_product13;
    input Real elmt_product17;

    Real elmt_Vin(unit = "m3.0") "Vin";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_G1P_conc(unit = "");
    Real elmt_G1P_amount(unit = "");
    Real elmt_G1P(unit = "") "G1P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_F16P_conc(unit = "");
    Real elmt_F16P_amount(unit = "");
    Real elmt_F16P(unit = "") "F16P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PYRin_conc(unit = "");
    Real elmt_PYRin_amount(unit = "");
    Real elmt_PYRin(unit = "") "PYRin";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GLY_conc(unit = "");
    Real elmt_GLY_amount(unit = "");
    Real elmt_GLY(unit = "") "GLY";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_G6P_conc(unit = "");
    Real elmt_G6P_amount(unit = "");
    Real elmt_G6P(unit = "") "G6P";
    Real elmt_OAA_conc(unit = "");
    Real elmt_OAA_amount(unit = "");
    Real elmt_OAA(unit = "") "OAA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_LAC_conc(unit = "");
    Real elmt_LAC_amount(unit = "");
    Real elmt_LAC(unit = "") "LAC";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Vin = 2.64E-5;
        elmt_G1P_conc = (5.303 / elmt_Vin);
        elmt_F16P_conc = (9.571 / elmt_Vin);
        elmt_PYRin_conc = (0.9872 / elmt_Vin);
        elmt_GLY_conc = (4.8248 / elmt_Vin);
        elmt_G6P_conc = (0.5188 / elmt_Vin);
        elmt_OAA_conc = (0.0022 / elmt_Vin);
        elmt_LAC_conc = (1001.0 / elmt_Vin);


    equation
        assert(elmt_Vin >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Vin) = 0;
        elmt_G1P = elmt_G1P_conc;
        elmt_F16P = elmt_F16P_conc;
        elmt_PYRin = elmt_PYRin_conc;
        elmt_GLY = elmt_GLY_conc;
        elmt_G6P = elmt_G6P_conc;
        elmt_OAA = elmt_OAA_conc;
        elmt_LAC = elmt_LAC_conc;
        der(elmt_G1P_amount) = ((- (elmt_v9 * elmt_reactant23)) + (elmt_v8 * elmt_product21));
        der(elmt_F16P_amount) = ((elmt_v7 * elmt_product17) + (- (elmt_v3 * elmt_reactant6)) + (elmt_v2 * elmt_product5));
        der(elmt_PYRin_amount) = ((elmt_v5 * elmt_product11) + (- (elmt_v6 * elmt_reactant12)) + (elmt_v3 * elmt_product7) + (- (elmt_v4 * elmt_reactant8)));
        der(elmt_GLY_amount) = (elmt_v9 * elmt_product25);
        der(elmt_G6P_amount) = ((- (elmt_v8 * elmt_reactant19)) + (elmt_v1 * elmt_product1) + (- (elmt_metabolicENZ * elmt_reactant27)) + (elmt_metabolicENZ * elmt_product29) + (- (elmt_v2 * elmt_reactant3)));
        der(elmt_OAA_amount) = ((- (elmt_v7 * elmt_reactant15)) + (elmt_v6 * elmt_product13));
        der(elmt_LAC_amount) = (elmt_v4 * elmt_product9);

    algorithm
        elmt_G1P_conc := elmt_G1P_amount / elmt_Vin;
        elmt_F16P_conc := elmt_F16P_amount / elmt_Vin;
        elmt_PYRin_conc := elmt_PYRin_amount / elmt_Vin;
        elmt_GLY_conc := elmt_GLY_amount / elmt_Vin;
        elmt_G6P_conc := elmt_G6P_amount / elmt_Vin;
        elmt_OAA_conc := elmt_OAA_amount / elmt_Vin;
        elmt_LAC_conc := elmt_LAC_amount / elmt_Vin;
end Class_elmt_Vin;
