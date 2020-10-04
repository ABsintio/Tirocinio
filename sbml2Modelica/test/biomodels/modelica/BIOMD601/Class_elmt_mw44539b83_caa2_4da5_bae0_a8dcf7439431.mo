within BIOMD601;
class Class_elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431

    input Real elmt_product7;
    input Real elmt_mw18c30692_65ff_4c7a_b820_079f8ddd9b33;
    input Real elmt_parameter_9;
    input Real elmt_mwf3ceaa7c_ebe4_4e1b_842a_b4446b0aa527;
    input Real elmt_mw97ca2b6b_8c30_48ef_80cb_5ce4ebaa420f;
    input Real elmt_reactant10;
    input Real elmt_reactant0;

    input Boolean elmt_Caff_ON;
    input Boolean elmt_Caff_OFF;

    input Real assign_elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381;

    Real elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431(unit = "") "cytoplasm";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_mw40a96ef6_32da_46d1_9712_4f53f60bad43_conc(unit = "");
    Real elmt_mw40a96ef6_32da_46d1_9712_4f53f60bad43_amount(unit = "");
    Real elmt_mw40a96ef6_32da_46d1_9712_4f53f60bad43(unit = "") "Ca_i_Total";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6_conc(unit = "");
    Real elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6_amount(unit = "");
    Real elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6(unit = "") "Ca_i";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381_conc(unit = "");
    Real elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381_amount(unit = "");
    Real elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381(unit = "") "caff";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431 = 1.0;
        elmt_mw40a96ef6_32da_46d1_9712_4f53f60bad43_conc = (7.5E-6 / elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431);
        elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381_conc = (0.0 / elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431);


    equation
        assert(elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431) = 0;
        elmt_mw40a96ef6_32da_46d1_9712_4f53f60bad43 = elmt_mw40a96ef6_32da_46d1_9712_4f53f60bad43_conc;
        elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6 = elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6_conc;
        elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381 = elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381_conc;
        elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6_amount = (elmt_mw40a96ef6_32da_46d1_9712_4f53f60bad43 / elmt_parameter_9) * elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431;
        der(elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381_amount / elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431) = 0.0;
        der(elmt_mw40a96ef6_32da_46d1_9712_4f53f60bad43_amount) = ((elmt_mw18c30692_65ff_4c7a_b820_079f8ddd9b33 * elmt_product7) + (- (elmt_mwf3ceaa7c_ebe4_4e1b_842a_b4446b0aa527 * elmt_reactant10)) + (- (elmt_mw97ca2b6b_8c30_48ef_80cb_5ce4ebaa420f * elmt_reactant0)));

        when elmt_Caff_ON then
            reinit(elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381_amount, assign_elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381 * pre(elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431));
        end when;
        when elmt_Caff_OFF then
            reinit(elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381_amount, assign_elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381 * pre(elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431));
        end when;
    algorithm
        elmt_mw40a96ef6_32da_46d1_9712_4f53f60bad43_conc := elmt_mw40a96ef6_32da_46d1_9712_4f53f60bad43_amount / elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431;
        elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6_conc := elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6_amount / elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431;
        elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381_conc := elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381_amount / elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431;
end Class_elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431;
