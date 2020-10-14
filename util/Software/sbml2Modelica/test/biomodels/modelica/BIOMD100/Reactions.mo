within BIOMD100;
class Reactions

    input Real elmt_K1;
    input Real elmt_p;
    input Real elmt_m;
    input Real elmt_n;
    input Real elmt_Ka5;
    input Real elmt_Ka6;
    input Real elmt_intravesicular;
    input Real elmt_Ky;
    input Real elmt_Vm5;
    input Real elmt_Vpm2;
    input Real elmt_cytosol;
    input Real elmt_Ka1;
    input Real elmt_Vm3;
    input Real elmt_Ka2;
    input Real elmt_K5;
    input Real elmt_Vm2;
    input Real elmt_K2;
    input Real elmt_Ka;
    input Real elmt_Vpm1;
    input Real elmt_Y;
    input Real elmt_Z;
    input Real elmt_Kp2;
    input Real elmt_Kf;
    input Real elmt_v1;
    input Real elmt_epsilon;
    input Real elmt_alpha;
    input Real elmt_Kd;
    input Real elmt_v0;
    input Real elmt_beta;
    input Real elmt_K;
    input Real elmt_G;
    input Real elmt_GP;
    input Real elmt_extracellular;
    input Real elmt_A;
    input Real elmt_Kz;
    input Real elmt_gamma;
    input Real elmt_V4;

    Real elmt_R7(unit = "") "Phosphorylase kinase activity";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product13 "";
    Real elmt_R8(unit = "") "Phosphatase activity";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant14 "";
    Real elmt_R5(unit = "") "Ca-dependant IP3 degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant11 "";
    Real elmt_R6(unit = "") "Ca independent IP3 degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant12 "";
    Real elmt_R3(unit = "") "Calcium transport to cytosol";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_R4(unit = "") "Agonist stimulated production of IP3";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product10 "";
    Real elmt_R2(unit = "") "Calcium transport to internal store";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_Rkz(unit = "") "Calcium efflux";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_Rkf(unit = "") "Calcium leak";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_vin(unit = "") "Calcium Influx";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_R7 = (elmt_cytosol * ((elmt_Vpm1 * (1.0 + ((elmt_gamma * Functions.pow(elmt_Z, 4.0)) / (Functions.pow(elmt_Ka5, 4.0) + Functions.pow(elmt_Z, 4.0)))) * (1.0 - elmt_GP)) / (((elmt_K1 / (1.0 + (Functions.pow(elmt_Z, 4.0) / Functions.pow(elmt_Ka6, 4.0)))) + 1.0) - elmt_GP)));
        elmt_R8 = (elmt_cytosol * ((elmt_Vpm2 * (1.0 + ((elmt_alpha * elmt_G) / (elmt_Ka1 + elmt_G))) * elmt_GP) / ((elmt_Kp2 / (1.0 + (elmt_G / elmt_Ka2))) + elmt_GP)));
        elmt_R5 = ((elmt_cytosol * elmt_Vm5 * Functions.pow(elmt_A, elmt_p) * Functions.pow(elmt_Z, elmt_n)) / ((Functions.pow(elmt_K5, elmt_p) + Functions.pow(elmt_A, elmt_p)) * (Functions.pow(elmt_Kd, elmt_n) + Functions.pow(elmt_Z, elmt_n))));
        elmt_R6 = (elmt_cytosol * elmt_epsilon * elmt_A);
        elmt_R3 = ((elmt_intravesicular * elmt_Vm3 * Functions.pow(elmt_A, 4.0) * Functions.pow(elmt_Y, 2.0) * Functions.pow(elmt_Z, elmt_m)) / ((Functions.pow(elmt_Ka, 4.0) + Functions.pow(elmt_A, 4.0)) * (Functions.pow(elmt_Ky, 2.0) + Functions.pow(elmt_Y, 2.0)) * (Functions.pow(elmt_Kz, elmt_m) + Functions.pow(elmt_Z, elmt_m))));
        elmt_R4 = (elmt_cytosol * elmt_beta * elmt_V4);
        elmt_R2 = (elmt_cytosol * ((elmt_Vm2 * Functions.pow(elmt_Z, 2.0)) / (Functions.pow(elmt_K2, 2.0) + Functions.pow(elmt_Z, 2.0))));
        elmt_Rkz = (elmt_cytosol * elmt_K * elmt_Z);
        elmt_Rkf = (elmt_intravesicular * elmt_Kf * elmt_Y);
        elmt_vin = (elmt_extracellular * (elmt_v0 + (elmt_v1 * elmt_beta)));
        der(elmt_reactant2) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product13) = 0;

end Reactions;
