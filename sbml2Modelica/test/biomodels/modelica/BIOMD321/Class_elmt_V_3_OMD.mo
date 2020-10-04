within BIOMD321;
class Class_elmt_V_3_OMD

    input Real elmt_COMT_clearance;
    input Real elmt_reactant7;
    input Real elmt_product5;
    input Real elmt__3_OMD_clearance;

    Real elmt_V_3_OMD(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_C_OMD_conc(unit = "");
    Real elmt_C_OMD_amount(unit = "");
    Real elmt_C_OMD(unit = "") "C_3-OMD";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_V_3_OMD = 0.196;
        elmt_C_OMD_conc = 0.0;


    equation
        assert(elmt_V_3_OMD >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_V_3_OMD) = 0;
        elmt_C_OMD = elmt_C_OMD_conc;
        der(elmt_C_OMD_amount) = ((elmt_COMT_clearance * elmt_product5) + (- (elmt__3_OMD_clearance * elmt_reactant7)));

    algorithm
        elmt_C_OMD_conc := elmt_C_OMD_amount / elmt_V_3_OMD;
end Class_elmt_V_3_OMD;
