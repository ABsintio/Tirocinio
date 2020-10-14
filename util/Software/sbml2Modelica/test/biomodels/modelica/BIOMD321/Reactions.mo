within BIOMD321;
class Reactions

    input Real elmt_CL_OMD;
    input Real elmt_CL_rest;
    input Real elmt_CL_AADC;
    input Real elmt_C_dopa;
    input Real elmt_CL_COMT;
    input Real elmt_A_dopa;
    input Real elmt_C_OMD;
    input Real elmt_ka_b;
    input Real elmt_F_b;

    Real elmt_l_dopa_absorption(unit = "") "L_Dopa absorption from gut";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_rest_clearance(unit = "") "rest clearance of L-Dopa";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant6 "";
    Real elmt_COMT_clearance(unit = "") "L-Dopa clearance via COMT";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_l_dopa_blood_hepa_clearance(unit = "") "hepatic and blood L-Dopa clearance";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt__3_OMD_clearance(unit = "") "3-OMD clearance";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant7 "";
    Real elmt_AADC_clearance(unit = "") "L-Dopa clearance via AADC ";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant3 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_l_dopa_absorption = (elmt_ka_b * elmt_A_dopa * elmt_F_b);
        elmt_rest_clearance = (elmt_CL_rest * elmt_C_dopa);
        elmt_COMT_clearance = (elmt_CL_COMT * elmt_C_dopa);
        elmt_l_dopa_blood_hepa_clearance = (elmt_ka_b * elmt_A_dopa * (1.0 - elmt_F_b));
        elmt__3_OMD_clearance = (elmt_CL_OMD * elmt_C_OMD);
        elmt_AADC_clearance = (elmt_CL_AADC * elmt_C_dopa);
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
