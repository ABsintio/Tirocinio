within BIOMD601;
model MODEL1406180001 "Rosas2015 - Caffeine-induced luminal SR calcium changes" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c;
    Class_elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431 elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431;
    Class_elmt_Caff_ON elmt_Caff_ON;
    Class_elmt_Caff_OFF elmt_Caff_OFF;

    function prioritize_between_2
        input Real[2] prios;
        input Real[2] values;
        input Boolean[2] trigs;
        output Real value;
        protected Real min_prio;
        algorithm
            value := 0;
            min_prio := Constants.INFINITY;
            for i in 1:2 loop
                if trigs[i] and prios[i] < min_prio then
                    value := values[i];
                    min_prio := prios[i];
                end if;
            end for;
    end prioritize_between_2;
    equation
        Params.elmt_mwd805cc43_4a96_472f_a894_c119a6aa895f = elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c.elmt_mwd805cc43_4a96_472f_a894_c119a6aa895f;
        Params.elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6 = elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431.elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6;
        Params.elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381 = elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431.elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381;
        Reacs.elmt_parameter_9 = Params.elmt_parameter_9;
        Reacs.elmt_parameter_8 = Params.elmt_parameter_8;
        Reacs.elmt_parameter_7 = Params.elmt_parameter_7;
        Reacs.elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6 = elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431.elmt_mwe1a0a651_d2d5_4f75_8d45_9336c60eb9a6;
        Reacs.elmt_parameter_23 = Params.elmt_parameter_23;
        Reacs.elmt_parameter_6 = Params.elmt_parameter_6;
        Reacs.elmt_parameter_5 = Params.elmt_parameter_5;
        Reacs.elmt_mw447078ee_8bc8_4358_abcd_ade10dba93b0 = elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c.elmt_mw447078ee_8bc8_4358_abcd_ade10dba93b0;
        Reacs.elmt_parameter_4 = Params.elmt_parameter_4;
        Reacs.elmt_parameter_3 = Params.elmt_parameter_3;
        Reacs.elmt_parameter_2 = Params.elmt_parameter_2;
        Reacs.elmt_parameter_1 = Params.elmt_parameter_1;
        Reacs.elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431 = elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431.elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431;
        elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431.elmt_product7 = Reacs.elmt_product7;
        elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431.elmt_mw18c30692_65ff_4c7a_b820_079f8ddd9b33 = Reacs.elmt_mw18c30692_65ff_4c7a_b820_079f8ddd9b33;
        elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431.elmt_parameter_9 = Params.elmt_parameter_9;
        elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431.elmt_mwf3ceaa7c_ebe4_4e1b_842a_b4446b0aa527 = Reacs.elmt_mwf3ceaa7c_ebe4_4e1b_842a_b4446b0aa527;
        elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431.elmt_mw97ca2b6b_8c30_48ef_80cb_5ce4ebaa420f = Reacs.elmt_mw97ca2b6b_8c30_48ef_80cb_5ce4ebaa420f;
        elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431.elmt_Caff_ON = elmt_Caff_ON.trigger;
        elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431.elmt_Caff_OFF = elmt_Caff_OFF.trigger;
        elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c.elmt_mw18c30692_65ff_4c7a_b820_079f8ddd9b33 = Reacs.elmt_mw18c30692_65ff_4c7a_b820_079f8ddd9b33;
        elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c.elmt_mw97ca2b6b_8c30_48ef_80cb_5ce4ebaa420f = Reacs.elmt_mw97ca2b6b_8c30_48ef_80cb_5ce4ebaa420f;
        elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c.elmt_parameter_26 = Params.elmt_parameter_26;
        elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c.elmt_parameter_14 = Params.elmt_parameter_14;
        elmt_mw0dac359a_a4cd_40bf_97a0_45006cef2a7c.elmt_product2 = Reacs.elmt_product2;

        elmt_mw44539b83_caa2_4da5_bae0_a8dcf7439431.assign_elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381 = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_Caff_ON.value_elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381, elmt_Caff_OFF.value_elmt_mw168e0d8a_b9f7_4d4c_b437_a81206c5d381}, {edge(elmt_Caff_ON.trigger), edge(elmt_Caff_OFF.trigger)});
end MODEL1406180001;
