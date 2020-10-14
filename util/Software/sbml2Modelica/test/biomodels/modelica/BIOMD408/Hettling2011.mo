within BIOMD408;
model Hettling2011 "Hettling2011_CreatineKinase" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_IMS elmt_IMS;
    Class_elmt_CYT elmt_CYT;
    Class_elmt_event2 elmt_event2;
    Class_elmt_event1 elmt_event1;
    Class_elmt_event0 elmt_event0;

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
    equation
        Params.elmt_PCri = elmt_IMS.elmt_PCri;
        Params.elmt_Cr = elmt_CYT.elmt_Cr;
        Params.elmt_PCr = elmt_CYT.elmt_PCr;
        Params.elmt_P_ii = elmt_IMS.elmt_P_ii;
        Params.elmt_ATP = elmt_CYT.elmt_ATP;
        Params.elmt_ADP = elmt_CYT.elmt_ADP;
        Params.elmt_ATPi = elmt_IMS.elmt_ATPi;
        Params.elmt_ADPi = elmt_IMS.elmt_ADPi;
        Params.elmt_P_i = elmt_CYT.elmt_P_i;
        Params.elmt_Cri = elmt_IMS.elmt_Cri;
        Params.elmt_event2 = elmt_event2.execution;
        Params.elmt_event1 = elmt_event1.execution;
        Params.elmt_event0 = elmt_event0.execution;
        Reacs.elmt_Kadp = Params.elmt_Kadp;
        Reacs.elmt_j_diff_adp = Params.elmt_j_diff_adp;
        Reacs.elmt_Jhyd = Params.elmt_Jhyd;
        Reacs.elmt_j_ck_mm = Params.elmt_j_ck_mm;
        Reacs.elmt_j_ck_mi = Params.elmt_j_ck_mi;
        Reacs.elmt_Kpi = Params.elmt_Kpi;
        Reacs.elmt_j_diff_pi = Params.elmt_j_diff_pi;
        Reacs.elmt_P_ii = elmt_IMS.elmt_P_ii;
        Reacs.elmt_j_diff_cr = Params.elmt_j_diff_cr;
        Reacs.elmt_j_diff_pcr = Params.elmt_j_diff_pcr;
        Reacs.elmt_Vmaxsyn = Params.elmt_Vmaxsyn;
        Reacs.elmt_j_diff_atp = Params.elmt_j_diff_atp;
        Reacs.elmt_ADPi = elmt_IMS.elmt_ADPi;
        elmt_CYT.elmt_product9 = Reacs.elmt_product9;
        elmt_CYT.elmt_J_diff_Pi = Reacs.elmt_J_diff_Pi;
        elmt_CYT.elmt_product12 = Reacs.elmt_product12;
        elmt_CYT.elmt_product23 = Reacs.elmt_product23;
        elmt_CYT.elmt_product21 = Reacs.elmt_product21;
        elmt_CYT.elmt_product10 = Reacs.elmt_product10;
        elmt_CYT.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_CYT.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_CYT.elmt_J_diff_ATP = Reacs.elmt_J_diff_ATP;
        elmt_CYT.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_CYT.elmt_J_diff_Cr = Reacs.elmt_J_diff_Cr;
        elmt_CYT.elmt_J_diff_PCr = Reacs.elmt_J_diff_PCr;
        elmt_CYT.elmt_J_CK_MM = Reacs.elmt_J_CK_MM;
        elmt_CYT.elmt_product15 = Reacs.elmt_product15;
        elmt_CYT.elmt_product13 = Reacs.elmt_product13;
        elmt_CYT.elmt_J_diff_ADP = Reacs.elmt_J_diff_ADP;
        elmt_CYT.elmt_product19 = Reacs.elmt_product19;
        elmt_CYT.elmt_product17 = Reacs.elmt_product17;
        elmt_CYT.elmt_Jhyd_reaction = Reacs.elmt_Jhyd_reaction;
        elmt_IMS.elmt_J_diff_Pi = Reacs.elmt_J_diff_Pi;
        elmt_IMS.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_IMS.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_IMS.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_IMS.elmt_product6 = Reacs.elmt_product6;
        elmt_IMS.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_IMS.elmt_J_CK_Mi = Reacs.elmt_J_CK_Mi;
        elmt_IMS.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_IMS.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_IMS.elmt_product5 = Reacs.elmt_product5;
        elmt_IMS.elmt_J_diff_ATP = Reacs.elmt_J_diff_ATP;
        elmt_IMS.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_IMS.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_IMS.elmt_J_diff_Cr = Reacs.elmt_J_diff_Cr;
        elmt_IMS.elmt_J_diff_PCr = Reacs.elmt_J_diff_PCr;
        elmt_IMS.elmt_product2 = Reacs.elmt_product2;
        elmt_IMS.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_IMS.elmt_Jsyn = Reacs.elmt_Jsyn;
        elmt_IMS.elmt_J_diff_ADP = Reacs.elmt_J_diff_ADP;
        elmt_event1.elmt_fracSysDown = Params.elmt_fracSysDown;
        elmt_event1.elmt_time_Jhyd_step = Params.elmt_time_Jhyd_step;
        elmt_event1.elmt_fracSysUp = Params.elmt_fracSysUp;
        elmt_event1.elmt_phase = Params.elmt_phase;
        elmt_event1.elmt_last_time_fired = Params.elmt_last_time_fired;
        elmt_event1.elmt_VhydAmp_basis = Params.elmt_VhydAmp_basis;
        elmt_event1.elmt_fracDia = Params.elmt_fracDia;
        elmt_event1.elmt_Jhyd = Params.elmt_Jhyd;
        elmt_event1.elmt_stepsize = Params.elmt_stepsize;
        elmt_event1.elmt_pulsatility = Params.elmt_pulsatility;
        elmt_event0.elmt_fracSysDown = Params.elmt_fracSysDown;
        elmt_event0.elmt_time_Jhyd_step = Params.elmt_time_Jhyd_step;
        elmt_event0.elmt_fracSysUp = Params.elmt_fracSysUp;
        elmt_event0.elmt_phase = Params.elmt_phase;
        elmt_event0.elmt_last_time_fired = Params.elmt_last_time_fired;
        elmt_event0.elmt_fracDia = Params.elmt_fracDia;
        elmt_event0.elmt_Jhyd = Params.elmt_Jhyd;
        elmt_event0.elmt_stepsize = Params.elmt_stepsize;
        elmt_event0.elmt_pulsatility = Params.elmt_pulsatility;
        elmt_event0.elmt_VhydAmp_test = Params.elmt_VhydAmp_test;
        elmt_event2.elmt_Jhyd_test = Params.elmt_Jhyd_test;
        elmt_event2.elmt_heartrate_test = Params.elmt_heartrate_test;
        elmt_event2.elmt_time_Jhyd_step = Params.elmt_time_Jhyd_step;
        elmt_event2.elmt_Jhyd = Params.elmt_Jhyd;
        elmt_event2.elmt_pulsatility = Params.elmt_pulsatility;

        Params.assign_elmt_tmito_factor = elmt_event2.value_elmt_tmito_factor;
        Params.assign_elmt_heartrate_bpm = elmt_event2.value_elmt_heartrate_bpm;
        Params.assign_elmt_last_time_fired = prioritize_between_2({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event1.value_elmt_last_time_fired, elmt_event0.value_elmt_last_time_fired}, {edge(elmt_event1.execution), edge(elmt_event0.execution)});
        Params.assign_elmt_Jhyd = prioritize_between_3({Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY, Constants.NEGATIVE_INFINITY}, {elmt_event2.value_elmt_Jhyd, elmt_event1.value_elmt_Jhyd, elmt_event0.value_elmt_Jhyd}, {edge(elmt_event2.execution), edge(elmt_event1.execution), edge(elmt_event0.execution)});
end Hettling2011;
