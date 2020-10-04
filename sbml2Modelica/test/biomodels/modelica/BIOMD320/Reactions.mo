within BIOMD320;
class Reactions

    input Real elmt_CL_OMD;
    input Real elmt_CL_COMT;
    input Real elmt_A_dopa;
    input Real elmt_ka_B;
    input Real elmt_fm;
    input Real elmt_ka_c;
    input Real elmt_CL_B;
    input Real elmt_C1_B;
    input Real elmt_C2_B;
    input Real elmt_ka_M;
    input Real elmt_CL_rest;
    input Real elmt_A_B;
    input Real elmt_CL_dM;
    input Real elmt_CL_AADC;
    input Real elmt_CL_dB;
    input Real elmt_A_M;
    input Real elmt_C_dopa;
    input Real elmt_CL_M;
    input Real elmt_C2_M;
    input Real elmt_C_OMD;
    input Real elmt_F_B;
    input Real elmt_F_c;
    input Real elmt_C1_M;

    Real elmt_rest_clearance(unit = "") "rest clearance of L-Dopa";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant11 "";
    Real elmt_bens_distribution(unit = "") "benserazide distribution";
    Real elmt_reactant17 "";
    Real elmt_product18 "";
    Real elmt_benserazide_absorption(unit = "") "benserazide absorption from gut";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_benserazide_gut_clearance(unit = "") "benserazide clearance from gut";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant7 "";
    Real elmt_l_dopa_blood_hepa_clearance(unit = "") "hepatic and blood L-Dopa clearance";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_ro_distribution(unit = "") "ro 04-5127 distribution";
    Real elmt_reactant19 "";
    Real elmt_product20 "";
    Real elmt_ro_04_5127_absorption(unit = "") "ro 04-5127 absorption from gut";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_AADC_clearance(unit = "") "L-Dopa clearance via AADC ";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant8 "";
    Real elmt_ro_clearance(unit = "") "ro 04-5127 clearance";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant16 "";
    Real elmt_l_dopa_absorption(unit = "") "L_Dopa absorption from gut";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_bens_metabolism(unit = "") "benserazide metabolism to ro 04-5127";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_COMT_clearance(unit = "") "L-Dopa clearance via COMT";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_bens_clearance(unit = "") "benserazide clearance";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant13 "";
    Real elmt__3_OMD_clearance(unit = "") "3-OMD clearance";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant12 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product20 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product15 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_rest_clearance = (elmt_CL_rest * elmt_C_dopa);
        elmt_bens_distribution = (elmt_CL_dB * (elmt_C1_B - elmt_C2_B));
        elmt_benserazide_absorption = (elmt_ka_B * elmt_A_B * elmt_F_B);
        elmt_benserazide_gut_clearance = (elmt_ka_B * elmt_A_B * (1.0 - elmt_F_B));
        elmt_l_dopa_blood_hepa_clearance = (elmt_ka_c * elmt_A_dopa * (1.0 - elmt_F_c));
        elmt_ro_distribution = (elmt_CL_dM * (elmt_C1_M - elmt_C2_M));
        elmt_ro_04_5127_absorption = (elmt_ka_M * elmt_A_M);
        elmt_AADC_clearance = (elmt_CL_AADC * elmt_C_dopa);
        elmt_ro_clearance = (elmt_CL_M * elmt_C1_M);
        elmt_l_dopa_absorption = (elmt_ka_c * elmt_A_dopa * elmt_F_c);
        elmt_bens_metabolism = ((elmt_fm / (1.0 - elmt_fm)) * elmt_CL_B * elmt_C1_B);
        elmt_COMT_clearance = (elmt_CL_COMT * elmt_C_dopa);
        elmt_bens_clearance = (elmt_CL_B * elmt_C1_B);
        elmt__3_OMD_clearance = (elmt_CL_OMD * elmt_C_OMD);
        der(elmt_reactant2) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product20) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product15) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product18) = 0;

end Reactions;
