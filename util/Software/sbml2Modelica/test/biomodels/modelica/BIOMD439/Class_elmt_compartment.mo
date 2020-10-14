within BIOMD439;
class Class_elmt_compartment

    input Real elmt_reactant41;
    input Real elmt_product32;
    input Real elmt_product31;
    input Real elmt_reactant47;
    input Real elmt_reactant49;
    input Real elmt_reactant44;
    input Real elmt_reactant45;
    input Real elmt_reactant9;
    input Real elmt_product26;
    input Real elmt_product24;
    input Real elmt_product29;
    input Real elmt_R7;
    input Real elmt_R8;
    input Real elmt_product40;
    input Real elmt_reactant51;
    input Real elmt_R5;
    input Real elmt_R6;
    input Real elmt_reactant53;
    input Real elmt_R3;
    input Real elmt_R4;
    input Real elmt_product43;
    input Real elmt_R1;
    input Real elmt_R2;
    input Real elmt_product42;
    input Real elmt_reactant16;
    input Real elmt_reactant10;
    input Real elmt_R9;
    input Real elmt_reactant12;
    input Real elmt_product38;
    input Real elmt_product37;
    input Real elmt_product35;
    input Real elmt_R16;
    input Real elmt_product52;
    input Real elmt_R17;
    input Real elmt_R14;
    input Real elmt_product50;
    input Real elmt_R15;
    input Real elmt_reactant20;
    input Real elmt_R12;
    input Real elmt_R13;
    input Real elmt_product11;
    input Real elmt_R10;
    input Real elmt_R11;
    input Real elmt_reactant25;
    input Real elmt_reactant27;
    input Real elmt_reactant28;
    input Real elmt_reactant22;
    input Real elmt_R18;
    input Real elmt_R19;
    input Real elmt_reactant19;
    input Real elmt_R20;
    input Real elmt_product48;
    input Real elmt_product46;
    input Real elmt_reactant1;
    input Real elmt_product8;
    input Real elmt_reactant4;
    input Real elmt_reactant30;
    input Real elmt_reactant3;
    input Real elmt_product23;
    input Real elmt_reactant6;
    input Real elmt_R21;
    input Real elmt_product21;
    input Real elmt_reactant7;
    input Real elmt_reactant36;
    input Real elmt_reactant39;
    input Real elmt_product5;
    input Real elmt_reactant33;
    input Real elmt_reactant34;
    input Real elmt_reactant0;
    input Real elmt_product2;
    input Real elmt_product15;
    input Real elmt_product14;
    input Real elmt_product13;
    input Real elmt_product18;
    input Real elmt_product17;

    input Boolean elmt_Ligand_addition;

    input Real assign_elmt_L;

    Real elmt_compartment(unit = "") "cell";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P_conc(unit = "");
    Real elmt_P_amount(unit = "");
    Real elmt_P(unit = "") "P";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Gabg_conc(unit = "");
    Real elmt_Gabg_amount(unit = "");
    Real elmt_Gabg(unit = "") "Gabg";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_L_conc(unit = "");
    Real elmt_L_amount(unit = "");
    Real elmt_L(unit = "") "L";
    Real elmt_GaGTP_conc(unit = "");
    Real elmt_GaGTP_amount(unit = "");
    Real elmt_GaGTP(unit = "") "GaGTP";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RGSinertGaGTP_conc(unit = "");
    Real elmt_RGSinertGaGTP_amount(unit = "");
    Real elmt_RGSinertGaGTP(unit = "") "RGSinertGaGTP";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RGS_conc(unit = "");
    Real elmt_RGS_amount(unit = "");
    Real elmt_RGS(unit = "") "RGS";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RGabg_conc(unit = "");
    Real elmt_RGabg_amount(unit = "");
    Real elmt_RGabg(unit = "") "RGabg";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Effector_conc(unit = "");
    Real elmt_Effector_amount(unit = "");
    Real elmt_Effector(unit = "") "Effector";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_inertGaGTP_conc(unit = "");
    Real elmt_inertGaGTP_amount(unit = "");
    Real elmt_inertGaGTP(unit = "") "inertGaGTP";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GaGDP_conc(unit = "");
    Real elmt_GaGDP_amount(unit = "");
    Real elmt_GaGDP(unit = "") "GaGDP";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RGabgL_conc(unit = "");
    Real elmt_RGabgL_amount(unit = "");
    Real elmt_RGabgL(unit = "") "RGabgL";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GaGDPP_conc(unit = "");
    Real elmt_GaGDPP_amount(unit = "");
    Real elmt_GaGDPP(unit = "") "GaGDPP";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GaGTPEffector_conc(unit = "");
    Real elmt_GaGTPEffector_amount(unit = "");
    Real elmt_GaGTPEffector(unit = "") "GaGTPEffector";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_z3_conc(unit = "");
    Real elmt_z3_amount(unit = "");
    Real elmt_z3(unit = "") "z3";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RL_conc(unit = "");
    Real elmt_RL_amount(unit = "");
    Real elmt_RL(unit = "") "RL";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Gbg_conc(unit = "");
    Real elmt_Gbg_amount(unit = "");
    Real elmt_Gbg(unit = "") "Gbg";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RGSGaGTP_conc(unit = "");
    Real elmt_RGSGaGTP_amount(unit = "");
    Real elmt_RGSGaGTP(unit = "") "RGSGaGTP";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_z1_conc(unit = "");
    Real elmt_z1_amount(unit = "");
    Real elmt_z1(unit = "") "z1";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_R_conc(unit = "");
    Real elmt_R_amount(unit = "");
    Real elmt_R(unit = "") "R";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_z2_conc(unit = "");
    Real elmt_z2_amount(unit = "");
    Real elmt_z2(unit = "") "z2";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_P_conc = 0.0;
        elmt_Gabg_conc = 0.0;
        elmt_L_conc = 0.0;
        elmt_GaGTP_conc = 0.0;
        elmt_RGSinertGaGTP_conc = 0.0;
        elmt_RGS_conc = 60.0;
        elmt_RGabg_conc = 0.0;
        elmt_Effector_conc = 205.0;
        elmt_inertGaGTP_conc = 0.0;
        elmt_GaGDP_conc = 205.0;
        elmt_RGabgL_conc = 0.0;
        elmt_GaGDPP_conc = 0.0;
        elmt_GaGTPEffector_conc = 0.0;
        elmt_z3_conc = 0.0;
        elmt_RL_conc = 0.0;
        elmt_Gbg_conc = 205.0;
        elmt_RGSGaGTP_conc = 0.0;
        elmt_z1_conc = 0.0;
        elmt_R_conc = 205.0;
        elmt_z2_conc = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_P = elmt_P_conc;
        elmt_Gabg = elmt_Gabg_conc;
        elmt_L = elmt_L_conc;
        elmt_GaGTP = elmt_GaGTP_conc;
        elmt_RGSinertGaGTP = elmt_RGSinertGaGTP_conc;
        elmt_RGS = elmt_RGS_conc;
        elmt_RGabg = elmt_RGabg_conc;
        elmt_Effector = elmt_Effector_conc;
        elmt_inertGaGTP = elmt_inertGaGTP_conc;
        elmt_GaGDP = elmt_GaGDP_conc;
        elmt_RGabgL = elmt_RGabgL_conc;
        elmt_GaGDPP = elmt_GaGDPP_conc;
        elmt_GaGTPEffector = elmt_GaGTPEffector_conc;
        elmt_z3 = elmt_z3_conc;
        elmt_RL = elmt_RL_conc;
        elmt_Gbg = elmt_Gbg_conc;
        elmt_RGSGaGTP = elmt_RGSGaGTP_conc;
        elmt_z1 = elmt_z1_conc;
        elmt_R = elmt_R_conc;
        elmt_z2 = elmt_z2_conc;
        der(elmt_P_amount) = ((- (elmt_R17 * elmt_reactant47)) + (elmt_R15 * elmt_product43));
        der(elmt_Gabg_amount) = ((elmt_R16 * elmt_product46) + (- (elmt_R6 * elmt_reactant16)) + (- (elmt_R3 * elmt_reactant7)) + (- (elmt_R2 * elmt_reactant4)));
        der(elmt_L_amount) = ((- (elmt_R4 * elmt_reactant10)) + (- (elmt_R1 * elmt_reactant1)));
        der(elmt_GaGTP_amount) = ((- (elmt_R7 * elmt_reactant19)) + (elmt_R5 * elmt_product14) + (elmt_R6 * elmt_product17) + (- (elmt_R10 * elmt_reactant28)) + (- (elmt_R9 * elmt_reactant25)));
        der(elmt_RGSinertGaGTP_amount) = ((elmt_R12 * elmt_product35) + (- (elmt_R13 * elmt_reactant36)));
        der(elmt_RGS_amount) = ((- (elmt_R7 * elmt_reactant20)) + (elmt_R8 * elmt_product24) + (- (elmt_R12 * elmt_reactant34)) + (elmt_R13 * elmt_product38));
        der(elmt_RGabg_amount) = ((- (elmt_R4 * elmt_reactant9)) + (elmt_R2 * elmt_product5));
        der(elmt_Effector_amount) = ((- (elmt_R10 * elmt_reactant27)) + (elmt_R11 * elmt_product32));
        der(elmt_inertGaGTP_amount) = ((- (elmt_R14 * elmt_reactant39)) + (- (elmt_R12 * elmt_reactant33)) + (elmt_R11 * elmt_product31));
        der(elmt_GaGDP_amount) = ((- (elmt_R16 * elmt_reactant44)) + (elmt_R15 * elmt_product42));
        der(elmt_RGabgL_amount) = ((- (elmt_R5 * elmt_reactant12)) + (elmt_R3 * elmt_product8) + (elmt_R4 * elmt_product11));
        der(elmt_GaGDPP_amount) = ((elmt_R8 * elmt_product23) + (elmt_R14 * elmt_product40) + (- (elmt_R15 * elmt_reactant41)) + (elmt_R13 * elmt_product37) + (elmt_R9 * elmt_product26));
        der(elmt_GaGTPEffector_amount) = ((elmt_R10 * elmt_product29) + (- (elmt_R11 * elmt_reactant30)));
        der(elmt_z3_amount) = ((- (elmt_R21 * elmt_reactant53)) + (elmt_R20 * elmt_product52));
        der(elmt_RL_amount) = ((elmt_R5 * elmt_product13) + (- (elmt_R3 * elmt_reactant6)) + (elmt_R1 * elmt_product2));
        der(elmt_Gbg_amount) = ((- (elmt_R16 * elmt_reactant45)) + (elmt_R5 * elmt_product15) + (elmt_R6 * elmt_product18));
        der(elmt_RGSGaGTP_amount) = ((elmt_R7 * elmt_product21) + (- (elmt_R8 * elmt_reactant22)));
        der(elmt_z1_amount) = ((elmt_R18 * elmt_product48) + (- (elmt_R19 * elmt_reactant49)));
        der(elmt_R_amount) = ((- (elmt_R1 * elmt_reactant0)) + (- (elmt_R2 * elmt_reactant3)));
        der(elmt_z2_amount) = ((elmt_R19 * elmt_product50) + (- (elmt_R20 * elmt_reactant51)));

        when elmt_Ligand_addition then
            reinit(elmt_L_amount, assign_elmt_L * pre(elmt_compartment));
        end when;
    algorithm
        elmt_P_conc := elmt_P_amount / elmt_compartment;
        elmt_Gabg_conc := elmt_Gabg_amount / elmt_compartment;
        elmt_L_conc := elmt_L_amount / elmt_compartment;
        elmt_GaGTP_conc := elmt_GaGTP_amount / elmt_compartment;
        elmt_RGSinertGaGTP_conc := elmt_RGSinertGaGTP_amount / elmt_compartment;
        elmt_RGS_conc := elmt_RGS_amount / elmt_compartment;
        elmt_RGabg_conc := elmt_RGabg_amount / elmt_compartment;
        elmt_Effector_conc := elmt_Effector_amount / elmt_compartment;
        elmt_inertGaGTP_conc := elmt_inertGaGTP_amount / elmt_compartment;
        elmt_GaGDP_conc := elmt_GaGDP_amount / elmt_compartment;
        elmt_RGabgL_conc := elmt_RGabgL_amount / elmt_compartment;
        elmt_GaGDPP_conc := elmt_GaGDPP_amount / elmt_compartment;
        elmt_GaGTPEffector_conc := elmt_GaGTPEffector_amount / elmt_compartment;
        elmt_z3_conc := elmt_z3_amount / elmt_compartment;
        elmt_RL_conc := elmt_RL_amount / elmt_compartment;
        elmt_Gbg_conc := elmt_Gbg_amount / elmt_compartment;
        elmt_RGSGaGTP_conc := elmt_RGSGaGTP_amount / elmt_compartment;
        elmt_z1_conc := elmt_z1_amount / elmt_compartment;
        elmt_R_conc := elmt_R_amount / elmt_compartment;
        elmt_z2_conc := elmt_z2_amount / elmt_compartment;
end Class_elmt_compartment;
