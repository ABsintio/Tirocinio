within BIOMD601;
class Reactions

    input Real elmt_parameter_9;
    input Real elmt_parameter_8;
    input Real elmt_parameter_7;
    input Real elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6;
    input Real elmt_parameter_23;
    input Real elmt_parameter_6;
    input Real elmt_parameter_5;
    input Real elmt_mw447078ee_8bc8_4358_abcd_ade10dba93b0;
    input Real elmt_parameter_4;
    input Real elmt_parameter_3;
    input Real elmt_parameter_2;
    input Real elmt_parameter_1;
    input Real elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431;

    Real elmt_mw18c30692_65ff_4c7a_b820_079f8ddd9b33(unit = "") "J2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product9 "";
    Real elmt_product8 "";
    Real elmt_reactant4 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reactant5 "";
    Real elmt_mwf3ceaa7c_ebe4_4e1b_842a_b4446b0aa527(unit = "") "J1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product12 "";
    Real elmt_reactant10 "";
    Real elmt_reactant11 "";
    Real elmt_mw97ca2b6b_8c30_48ef_80cb_5ce4ebaa420f(unit = "") "J3";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product12 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_mw18c30692_65ff_4c7a_b820_079f8ddd9b33 = (elmt_parameter_2 * Functions.pow(elmt_parameter_5, elmt_parameter_6) * elmt_parameter_23 * (elmt_mw447078ee_8bc8_4358_abcd_ade10dba93b0 - elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6));
        elmt_mwf3ceaa7c_ebe4_4e1b_842a_b4446b0aa527 = (elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431 * ((elmt_parameter_1 * (elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6 - (elmt_parameter_4 / elmt_parameter_9))) / elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431));
        elmt_mw97ca2b6b_8c30_48ef_80cb_5ce4ebaa420f = ((elmt_parameter_3 * Functions.pow(elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6, elmt_parameter_8)) / (Functions.pow(elmt_parameter_7, elmt_parameter_8) + Functions.pow(elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6, elmt_parameter_8)));
        der(elmt_product9) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product12) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;

end Reactions;
