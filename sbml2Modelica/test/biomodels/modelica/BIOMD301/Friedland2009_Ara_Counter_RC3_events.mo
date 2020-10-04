within BIOMD301;
model Friedland2009_Ara_Counter_RC3_events "Friedland2009_Ara_RTC3_counter" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_pulse_start2 elmt_pulse_start2;
    Class_elmt_pulse_start1 elmt_pulse_start1;
    Class_elmt_pulse_start3 elmt_pulse_start3;
    Class_elmt_pulse_end1 elmt_pulse_end1;
    Class_elmt_pulse_end2 elmt_pulse_end2;
    Class_elmt_pulse_end3 elmt_pulse_end3;

    function prioritize_between_3
        input Real[3] prios;
        input Real[3] values;
        input Boolean[3] trigs;
        output Real value;
        protected Real min_prio;
        algorithm
            value := 0;
            min_prio := Constants.INFINITY;
            for i in 1:3 loop
                if trigs[i] and prios[i] < min_prio then
                    value := values[i];
                    min_prio := prios[i];
                end if;
            end for;
    end prioritize_between_3;
    function prioritize_between_6
        input Real[6] prios;
        input Real[6] values;
        input Boolean[6] trigs;
        output Real value;
        protected Real min_prio;
        algorithm
            value := 0;
            min_prio := Constants.INFINITY;
            for i in 1:6 loop
                if trigs[i] and prios[i] < min_prio then
                    value := values[i];
                    min_prio := prios[i];
                end if;
            end for;
    end prioritize_between_6;
    equation
        Params.elmt_pulse_start2 = elmt_pulse_start2.trigger;
        Params.elmt_pulse_start1 = elmt_pulse_start1.trigger;
        Params.elmt_pulse_start3 = elmt_pulse_start3.trigger;
        Params.elmt_pulse_end1 = elmt_pulse_end1.trigger;
        Params.elmt_pulse_end2 = elmt_pulse_end2.trigger;
        Params.elmt_pulse_end3 = elmt_pulse_end3.trigger;
        Reacs.elmt_mT7cr = elmt_cell.elmt_mT7cr;
        Reacs.elmt_n3 = Params.elmt_n3;
        Reacs.elmt_pulse_flag = Params.elmt_pulse_flag;
        Reacs.elmt_mT3cr = elmt_cell.elmt_mT3cr;
        Reacs.elmt_sT = Params.elmt_sT;
        Reacs.elmt_d_pGFP = Params.elmt_d_pGFP;
        Reacs.elmt_s0_taRNA = Params.elmt_s0_taRNA;
        Reacs.elmt_n7 = Params.elmt_n7;
        Reacs.elmt_s_pGFPk = Params.elmt_s_pGFPk;
        Reacs.elmt_d_mT7 = Params.elmt_d_mT7;
        Reacs.elmt_cell = elmt_cell.elmt_cell;
        Reacs.elmt_d_pT7 = Params.elmt_d_pT7;
        Reacs.elmt_pGFP = elmt_cell.elmt_pGFP;
        Reacs.elmt_d_mT3 = Params.elmt_d_mT3;
        Reacs.elmt_d_pT3 = Params.elmt_d_pT3;
        Reacs.elmt_s0_mGFPcr = Params.elmt_s0_mGFPcr;
        Reacs.elmt_ara = elmt_cell.elmt_ara;
        Reacs.elmt_pT3 = elmt_cell.elmt_pT3;
        Reacs.elmt_s0_pT3 = Params.elmt_s0_pT3;
        Reacs.elmt_cAra = Params.elmt_cAra;
        Reacs.elmt_mGFPcr = elmt_cell.elmt_mGFPcr;
        Reacs.elmt_s0_pT7 = Params.elmt_s0_pT7;
        Reacs.elmt_km7 = Params.elmt_km7;
        Reacs.elmt_pT7 = elmt_cell.elmt_pT7;
        Reacs.elmt_s_pT3k = Params.elmt_s_pT3k;
        Reacs.elmt_km3 = Params.elmt_km3;
        Reacs.elmt_d_taRNA = Params.elmt_d_taRNA;
        Reacs.elmt_s_pT7k = Params.elmt_s_pT7k;
        Reacs.elmt_s0_mT7cr = Params.elmt_s0_mT7cr;
        Reacs.elmt_s0_mT3cr = Params.elmt_s0_mT3cr;
        Reacs.elmt_taRNA = elmt_cell.elmt_taRNA;
        Reacs.elmt_k_pT3 = Params.elmt_k_pT3;
        Reacs.elmt_k_ara = Params.elmt_k_ara;
        Reacs.elmt_d_mGFP = Params.elmt_d_mGFP;
        Reacs.elmt_k_pT7 = Params.elmt_k_pT7;
        Reacs.elmt_dAra = Params.elmt_dAra;
        Reacs.elmt_s0_pGFP = Params.elmt_s0_pGFP;
        elmt_cell.elmt_r7 = Reacs.elmt_r7;
        elmt_cell.elmt_r8 = Reacs.elmt_r8;
        elmt_cell.elmt_r6 = Reacs.elmt_r6;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_r3a = Reacs.elmt_r3a;
        elmt_cell.elmt_r9 = Reacs.elmt_r9;
        elmt_cell.elmt_r1b = Reacs.elmt_r1b;
        elmt_cell.elmt_r1a = Reacs.elmt_r1a;
        elmt_cell.elmt_r3b = Reacs.elmt_r3b;
        elmt_cell.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_cell.elmt_r0 = Reacs.elmt_r0;
        elmt_cell.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cell.elmt_product8 = Reacs.elmt_product8;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_r10b = Reacs.elmt_r10b;
        elmt_cell.elmt_r12 = Reacs.elmt_r12;
        elmt_cell.elmt_r10a = Reacs.elmt_r10a;
        elmt_cell.elmt_r11 = Reacs.elmt_r11;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cell.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_cell.elmt_r2b = Reacs.elmt_r2b;
        elmt_cell.elmt_r2a = Reacs.elmt_r2a;
        elmt_cell.elmt_product13 = Reacs.elmt_product13;
        elmt_cell.elmt_pulse_start2 = elmt_pulse_start2.trigger;
        elmt_cell.elmt_pulse_start1 = elmt_pulse_start1.trigger;
        elmt_cell.elmt_pulse_start3 = elmt_pulse_start3.trigger;
        elmt_pulse_end2.elmt_pulse3_start = Params.elmt_pulse3_start;
        elmt_pulse_end2.elmt_pulse2_length = Params.elmt_pulse2_length;
        elmt_pulse_end2.elmt_pulse2_start = Params.elmt_pulse2_start;
        elmt_pulse_end1.elmt_pulse2_start = Params.elmt_pulse2_start;
        elmt_pulse_end1.elmt_pulse1_start = Params.elmt_pulse1_start;
        elmt_pulse_end1.elmt_pulse1_length = Params.elmt_pulse1_length;
        elmt_pulse_end3.elmt_pulse3_start = Params.elmt_pulse3_start;
        elmt_pulse_end3.elmt_pulse3_length = Params.elmt_pulse3_length;
        elmt_pulse_start2.elmt_pulse_conc = Params.elmt_pulse_conc;
        elmt_pulse_start2.elmt_pulse2_length = Params.elmt_pulse2_length;
        elmt_pulse_start2.elmt_pulse2_start = Params.elmt_pulse2_start;
        elmt_pulse_start1.elmt_pulse_conc = Params.elmt_pulse_conc;
        elmt_pulse_start1.elmt_pulse1_start = Params.elmt_pulse1_start;
        elmt_pulse_start1.elmt_pulse1_length = Params.elmt_pulse1_length;
        elmt_pulse_start3.elmt_pulse3_start = Params.elmt_pulse3_start;
        elmt_pulse_start3.elmt_pulse_conc = Params.elmt_pulse_conc;
        elmt_pulse_start3.elmt_pulse3_length = Params.elmt_pulse3_length;

        Params.assign_elmt_pulse_flag = prioritize_between_6({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_pulse_start2.value_elmt_pulse_flag, elmt_pulse_start1.value_elmt_pulse_flag, elmt_pulse_start3.value_elmt_pulse_flag, elmt_pulse_end1.value_elmt_pulse_flag, elmt_pulse_end2.value_elmt_pulse_flag, elmt_pulse_end3.value_elmt_pulse_flag}, {edge(elmt_pulse_start2.trigger), edge(elmt_pulse_start1.trigger), edge(elmt_pulse_start3.trigger), edge(elmt_pulse_end1.trigger), edge(elmt_pulse_end2.trigger), edge(elmt_pulse_end3.trigger)});
        elmt_cell.assign_elmt_ara = prioritize_between_3({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_pulse_start2.value_elmt_ara, elmt_pulse_start1.value_elmt_ara, elmt_pulse_start3.value_elmt_ara}, {edge(elmt_pulse_start2.trigger), edge(elmt_pulse_start1.trigger), edge(elmt_pulse_start3.trigger)});
end Friedland2009_Ara_Counter_RC3_events;
