within BIOMD301;
class Parameters

    input Boolean elmt_pulse_start2;    input Boolean elmt_pulse_start1;    input Boolean elmt_pulse_start3;    input Boolean elmt_pulse_end1;    input Boolean elmt_pulse_end2;    input Boolean elmt_pulse_end3;
    input Real assign_elmt_pulse_flag;


    Real elmt_n3(unit = "") "";
    Real elmt_pulse3_start(unit = "") "";
    Real elmt_pulse_flag(unit = "") "";
    Real elmt_sT(unit = "") "";
    Real elmt_pulse_conc(unit = "") "";
    Real elmt_d_pGFP(unit = "") "";
    Real elmt_s0_taRNA(unit = "") "";
    Real elmt_n7(unit = "") "";
    Real elmt_pulse1_start(unit = "") "";
    Real elmt_s_pGFPk(unit = "") "";
    Real elmt_d_mT7(unit = "") "";
    Real elmt_d_pT7(unit = "") "";
    Real elmt_d_mT3(unit = "") "";
    Real elmt_d_pT3(unit = "") "";
    Real elmt_s0_mGFPcr(unit = "") "";
    Real elmt_cAra(unit = "") "";
    Real elmt_s0_pT3(unit = "") "";
    Real elmt_s0_pT7(unit = "") "";
    Real elmt_km7(unit = "") "";
    Real elmt_km3(unit = "") "";
    Real elmt_s_pT3k(unit = "") "";
    Real elmt_d_taRNA(unit = "") "";
    Real elmt_s0_mT7cr(unit = "") "";
    Real elmt_s_pT7k(unit = "") "";
    Real elmt_pulse2_start(unit = "") "";
    Real elmt_s0_mT3cr(unit = "") "";
    Real elmt_pulse_interval(unit = "") "";
    Real elmt_k_pT3(unit = "") "";
    Real elmt_k_ara(unit = "") "";
    Real elmt_d_mGFP(unit = "") "";
    Real elmt_k_pT7(unit = "") "";
    Real elmt_pulse2_length(unit = "") "";
    Real elmt_pulse3_length(unit = "") "";
    Real elmt_dAra(unit = "") "";
    Real elmt_pulse1_length(unit = "") "";
    Real elmt_s0_pGFP(unit = "") "";


    initial equation
        elmt_n3 = 0.8892;
        elmt_pulse_flag = 0.0;
        elmt_sT = 0.8467;
        elmt_pulse_conc = 0.01;
        elmt_d_pGFP = 0.003;
        elmt_s0_taRNA = 8.0E-4;
        elmt_n7 = 2.602;
        elmt_pulse1_start = 0.01;
        elmt_s_pGFPk = 0.9923;
        elmt_d_mT7 = 0.0706;
        elmt_d_pT7 = 0.0056;
        elmt_d_mT3 = 0.0701;
        elmt_d_pT3 = 0.0069;
        elmt_s0_mGFPcr = 0.0123;
        elmt_cAra = 3.0E-4;
        elmt_s0_pT3 = 0.0;
        elmt_s0_pT7 = 3.0E-4;
        elmt_km7 = 3.0455;
        elmt_km3 = 7.9075;
        elmt_s_pT3k = 0.0115;
        elmt_d_taRNA = 0.1177;
        elmt_s0_mT7cr = 0.0252;
        elmt_s_pT7k = 0.0766;
        elmt_s0_mT3cr = 3.0E-4;
        elmt_pulse_interval = 20.0;
        elmt_k_pT3 = 3.006;
        elmt_k_ara = 0.0571;
        elmt_d_mGFP = 0.07;
        elmt_k_pT7 = 3.8009;
        elmt_pulse2_length = 11.0;
        elmt_pulse3_length = 22.0;
        elmt_dAra = 0.1201;
        elmt_pulse1_length = 11.0;
        elmt_s0_pGFP = 0.1007;


    equation
        der(elmt_n3) = 0;
        elmt_pulse3_start = (elmt_pulse2_start + elmt_pulse2_length + elmt_pulse_interval);
        der(elmt_pulse_flag) = 0.0;
        der(elmt_sT) = 0;
        der(elmt_pulse_conc) = 0;
        der(elmt_d_pGFP) = 0;
        der(elmt_s0_taRNA) = 0;
        der(elmt_n7) = 0;
        der(elmt_pulse1_start) = 0;
        der(elmt_s_pGFPk) = 0;
        der(elmt_d_mT7) = 0;
        der(elmt_d_pT7) = 0;
        der(elmt_d_mT3) = 0;
        der(elmt_d_pT3) = 0;
        der(elmt_s0_mGFPcr) = 0;
        der(elmt_cAra) = 0;
        der(elmt_s0_pT3) = 0;
        der(elmt_s0_pT7) = 0;
        der(elmt_km7) = 0;
        der(elmt_km3) = 0;
        der(elmt_s_pT3k) = 0;
        der(elmt_d_taRNA) = 0;
        der(elmt_s0_mT7cr) = 0;
        der(elmt_s_pT7k) = 0;
        elmt_pulse2_start = (elmt_pulse1_start + elmt_pulse1_length + elmt_pulse_interval);
        der(elmt_s0_mT3cr) = 0;
        der(elmt_pulse_interval) = 0;
        der(elmt_k_pT3) = 0;
        der(elmt_k_ara) = 0;
        der(elmt_d_mGFP) = 0;
        der(elmt_k_pT7) = 0;
        der(elmt_pulse2_length) = 0;
        der(elmt_pulse3_length) = 0;
        der(elmt_dAra) = 0;
        der(elmt_pulse1_length) = 0;
        der(elmt_s0_pGFP) = 0;

        when elmt_pulse_start2 then
            reinit(elmt_pulse_flag, assign_elmt_pulse_flag);
        end when;
        when elmt_pulse_start1 then
            reinit(elmt_pulse_flag, assign_elmt_pulse_flag);
        end when;
        when elmt_pulse_start3 then
            reinit(elmt_pulse_flag, assign_elmt_pulse_flag);
        end when;
        when elmt_pulse_end1 then
            reinit(elmt_pulse_flag, assign_elmt_pulse_flag);
        end when;
        when elmt_pulse_end2 then
            reinit(elmt_pulse_flag, assign_elmt_pulse_flag);
        end when;
        when elmt_pulse_end3 then
            reinit(elmt_pulse_flag, assign_elmt_pulse_flag);
        end when;
end Parameters;
