within BIOMD298;
class Class_elmt_Compartment

    input Real elmt_KdP;
    input Real elmt_V2T;
    input Real elmt_vsT;
    input Real elmt_V4T;
    input Real elmt_n;
    input Real elmt_KIT;
    input Real elmt_V2P;
    input Real elmt_vsP;
    input Real elmt_V4P;
    input Real elmt_KIP;
    input Real elmt_vmT;
    input Real elmt_KdT;
    input Real elmt_vmP;
    input Real elmt_K3P;
    input Real elmt_KmP;
    input Real elmt_K1T;
    input Real elmt_K3T;
    input Real elmt_kdC;
    input Real elmt_K1P;
    input Real elmt_V3T;
    input Real elmt_k1;
    input Real elmt_V1P;
    input Real elmt_kdN;
    input Real elmt_V3P;
    input Real elmt_KmT;
    input Real elmt_k4;
    input Real elmt_k2;
    input Real elmt_k3;
    input Real elmt_V1T;
    input Real elmt_K4P;
    input Real elmt_ksP;
    input Real elmt_vdT;
    input Real elmt_vdP;
    input Real elmt_K2T;
    input Real elmt_kd;
    input Real elmt_K4T;
    input Real elmt_ksT;
    input Real elmt_K2P;

    Real elmt_Compartment(unit = "") "";
    Real elmt_MP_conc(unit = "");
    Real elmt_MP_amount(unit = "");
    Real elmt_MP(unit = "") "MP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P1_conc(unit = "");
    Real elmt_P1_amount(unit = "");
    Real elmt_P1(unit = "") "P1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P2_conc(unit = "");
    Real elmt_P2_amount(unit = "");
    Real elmt_P2(unit = "") "P2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P0_conc(unit = "");
    Real elmt_P0_amount(unit = "");
    Real elmt_P0(unit = "") "P0";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_T1_conc(unit = "");
    Real elmt_T1_amount(unit = "");
    Real elmt_T1(unit = "") "T1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_T2_conc(unit = "");
    Real elmt_T2_amount(unit = "");
    Real elmt_T2(unit = "") "T2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CN_conc(unit = "");
    Real elmt_CN_amount(unit = "");
    Real elmt_CN(unit = "") "CN";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_T0_conc(unit = "");
    Real elmt_T0_amount(unit = "");
    Real elmt_T0(unit = "") "T0";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C_conc(unit = "");
    Real elmt_C_amount(unit = "");
    Real elmt_C(unit = "") "C";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_MT_conc(unit = "");
    Real elmt_MT_amount(unit = "");
    Real elmt_MT(unit = "") "MT";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Compartment = 1.0;
        elmt_MP_conc = 0.0614368;
        elmt_P1_conc = 0.0141356;
        elmt_P2_conc = 0.0614368;
        elmt_P0_conc = 0.0169928;
        elmt_T1_conc = 0.0213384;
        elmt_T2_conc = 0.0145428;
        elmt_CN_conc = 1.34728;
        elmt_T0_conc = 0.0217261;
        elmt_C_conc = 0.207614;
        elmt_MT_conc = 0.0860342;


    equation
        assert(elmt_Compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Compartment) = 0;
        elmt_MP = elmt_MP_conc;
        elmt_P1 = elmt_P1_conc;
        elmt_P2 = elmt_P2_conc;
        elmt_P0 = elmt_P0_conc;
        elmt_T1 = elmt_T1_conc;
        elmt_T2 = elmt_T2_conc;
        elmt_CN = elmt_CN_conc;
        elmt_T0 = elmt_T0_conc;
        elmt_C = elmt_C_conc;
        elmt_MT = elmt_MT_conc;
        der(elmt_MP_amount / elmt_Compartment) = ((elmt_vsP * (Functions.pow(elmt_KIP, elmt_n) / (Functions.pow(elmt_KIP, elmt_n) + Functions.pow(elmt_CN, elmt_n)))) - ((elmt_vmP * (elmt_MP / (elmt_KmP + elmt_MP))) + (elmt_kd * elmt_MP)));
        der(elmt_P1_amount / elmt_Compartment) = (((elmt_V1P * (elmt_P0 / (elmt_K1P + elmt_P0))) + (elmt_V4P * (elmt_P2 / (elmt_K4P + elmt_P2)))) - ((elmt_V2P * (elmt_P1 / (elmt_K2P + elmt_P1))) + (elmt_V3P * (elmt_P1 / (elmt_K3P + elmt_P1))) + (elmt_kd * elmt_P1)));
        der(elmt_P2_amount / elmt_Compartment) = (((elmt_V3P * (elmt_P1 / (elmt_K3P + elmt_P1))) + (elmt_k4 * elmt_C)) - ((elmt_V4P * (elmt_P2 / (elmt_K4P + elmt_P2))) + (elmt_k3 * elmt_P2 * elmt_T2) + (elmt_vdP * (elmt_P2 / (elmt_KdP + elmt_P2))) + (elmt_kd * elmt_P2)));
        der(elmt_P0_amount / elmt_Compartment) = (((elmt_ksP * elmt_MP) + (elmt_V2P * (elmt_P1 / (elmt_K2P + elmt_P1)))) - ((elmt_V1P * (elmt_P0 / (elmt_K1P + elmt_P0))) + (elmt_kd * elmt_P0)));
        der(elmt_T1_amount / elmt_Compartment) = (((elmt_V1T * (elmt_T0 / (elmt_K1T + elmt_T0))) + (elmt_V4T * (elmt_T2 / (elmt_K4T + elmt_T2)))) - ((elmt_V2T * (elmt_T1 / (elmt_K2T + elmt_T1))) + (elmt_V3T * (elmt_T1 / (elmt_K3T + elmt_T1))) + (elmt_kd * elmt_T1)));
        der(elmt_T2_amount / elmt_Compartment) = (((elmt_V3T * (elmt_T1 / (elmt_K3T + elmt_T1))) + (elmt_k4 * elmt_C)) - ((elmt_V4T * (elmt_T2 / (elmt_K4T + elmt_T2))) + (elmt_k3 * elmt_P2 * elmt_T2) + (elmt_vdT * (elmt_T2 / (elmt_KdT + elmt_T2))) + (elmt_kd * elmt_T2)));
        der(elmt_CN_amount / elmt_Compartment) = ((elmt_k1 * elmt_C) - ((elmt_k2 * elmt_CN) + (elmt_kdN * elmt_CN)));
        der(elmt_T0_amount / elmt_Compartment) = (((elmt_ksT * elmt_MT) + (elmt_V2T * (elmt_T1 / (elmt_K2T + elmt_T1)))) - ((elmt_V1T * (elmt_T0 / (elmt_K1T + elmt_T0))) + (elmt_kd * elmt_T0)));
        der(elmt_C_amount / elmt_Compartment) = (((elmt_k3 * elmt_P2 * elmt_T2) + (elmt_k2 * elmt_CN)) - ((elmt_k4 * elmt_C) + (elmt_k1 * elmt_C) + (elmt_kdC * elmt_C)));
        der(elmt_MT_amount / elmt_Compartment) = ((elmt_vsT * (Functions.pow(elmt_KIT, elmt_n) / (Functions.pow(elmt_KIT, elmt_n) + Functions.pow(elmt_CN, elmt_n)))) - ((elmt_vmT * (elmt_MT / (elmt_KmT + elmt_MT))) + (elmt_kd * elmt_MT)));

    algorithm
        elmt_MP_conc := elmt_MP_amount / elmt_Compartment;
        elmt_P1_conc := elmt_P1_amount / elmt_Compartment;
        elmt_P2_conc := elmt_P2_amount / elmt_Compartment;
        elmt_P0_conc := elmt_P0_amount / elmt_Compartment;
        elmt_T1_conc := elmt_T1_amount / elmt_Compartment;
        elmt_T2_conc := elmt_T2_amount / elmt_Compartment;
        elmt_CN_conc := elmt_CN_amount / elmt_Compartment;
        elmt_T0_conc := elmt_T0_amount / elmt_Compartment;
        elmt_C_conc := elmt_C_amount / elmt_Compartment;
        elmt_MT_conc := elmt_MT_amount / elmt_Compartment;
end Class_elmt_Compartment;
