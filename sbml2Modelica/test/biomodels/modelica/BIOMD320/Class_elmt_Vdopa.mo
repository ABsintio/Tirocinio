within BIOMD320;
class Class_elmt_Vdopa

    input Real elmt_l_dopa_absorption;
    input Real elmt_rest_clearance;
    input Real elmt_reactant8;
    input Real elmt_COMT_clearance;
    input Real elmt_product1;
    input Real elmt_reactant9;
    input Real elmt_reactant11;
    input Real elmt_AADC_clearance;

    Real elmt_Vdopa(unit = "") "V_L_Dopa";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C_dopa_conc(unit = "");
    Real elmt_C_dopa_amount(unit = "");
    Real elmt_C_dopa(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Vdopa = 0.496;
        elmt_C_dopa_conc = 0.0;


    equation
        assert(elmt_Vdopa >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Vdopa) = 0;
        elmt_C_dopa = elmt_C_dopa_conc;
        der(elmt_C_dopa_amount) = ((- (elmt_rest_clearance * elmt_reactant11)) + (- (elmt_AADC_clearance * elmt_reactant8)) + (elmt_l_dopa_absorption * elmt_product1) + (- (elmt_COMT_clearance * elmt_reactant9)));

    algorithm
        elmt_C_dopa_conc := elmt_C_dopa_amount / elmt_Vdopa;
end Class_elmt_Vdopa;
