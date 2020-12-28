
model BIOMD342 "Zi2011_TGF-beta_Pathway"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    
    function compareReal
        input Real a, b;
        input Real absTol = 1e-10;
        input Real relTol = 1e-5;
        output Boolean equal;
        protected 
            Real diff;
        algorithm
            diff := abs(a - b);
            equal := diff < absTol or diff <= max(abs(b), abs(a)) * relTol;
    end compareReal;



    parameter Real stimulation_type = 1.0;
    parameter Real single_pulse_duration = 0.5;
    parameter Real ki = 0.333;
    parameter Real kr = 0.0333;
    parameter Real k_T1R = 0.0167;
    parameter Real k_T2R = 0.0190076;
    parameter Real kdeg_T1R = 0.00256;
    parameter Real kdeg_T2R = 0.0132;
    parameter Real kdeg_LRC = 0.00256;
    parameter Real kdeg_TGF_beta = 0.347;
    parameter Real klid = 0.0233678;
    parameter Real ka_LRC = 117.897;
    parameter Real kdiss_LRC = 0.0438111;
    parameter Real kimp_Smad2 = 0.156;
    parameter Real kexp_Smad2 = 0.763;
    parameter Real kimp_Smad4 = 0.156;
    parameter Real kexp_Smad4 = 0.359;
    parameter Real kpho_Smad2 = 0.0488268;
    parameter Real kon_Smads = 0.198472;
    parameter Real koff_Smads = 1.0;
    parameter Real kimp_Smads = 0.889;
    parameter Real kdepho_Smad2 = 0.394;
    parameter Real kon_ns = 0.0505413;
    parameter Real KD_ns = 40.2257;
    parameter Real default = 1.0;
    parameter Real Vmed = 1.0;
    parameter Real Vcyt = 1.0;
    parameter Real Vnuc = 1.0;

    Real totalNumT1R(start=10005.0);
    Real totalNumT2R(start=2272.0);
    Real totalNumLRC(start=0.0);
    Real totalNumPSmad2(start=0.0);
    Real totalNuclearPSmad2(start=0.0);
    Real totalSmad2c(start=60.6);
    Real totalSmad2n(start=28.5);
    Real medium_TGF_beta_amount(start=0.0);
    Real TGF_beta_dose_mol_per_cell(start=30040000000000.0);
    Real koff_ns(start=2.03306);

    Real TGF_beta_ex;
    Real T1R_surf;
    Real T1R_endo;
    Real T2R_surf;
    Real T2R_endo;
    Real LRC_surf;
    Real LRC_endo;
    Real Smad2c;
    Real Smad2n;
    Real Smad4c;
    Real Smad4n;
    Real PSmad2c;
    Real PSmad2_PSmad2_c;
    Real PSmad2_Smad4_c;
    Real PSmad2n;
    Real PSmad2_PSmad2_n;
    Real PSmad2_Smad4_n;
    Real TGF_beta_endo;
    Real TGF_beta_ns;
    Real AA;
    Real empty_degraded;

initial equation
    TGF_beta_ex = 0.05;
    T1R_surf = (k_T1R * kdeg_T1R + k_T1R * kr) / (kdeg_T1R * ki);
    T1R_endo = k_T1R / kdeg_T1R;
    T2R_surf = (k_T2R * kdeg_T2R + k_T2R * kr) / (kdeg_T2R * ki);
    T2R_endo = k_T2R / kdeg_T2R;
    LRC_surf = 0.0;
    LRC_endo = 0.0;
    Smad2c = 60.6;
    Smad2n = 28.5;
    Smad4c = 50.8;
    Smad4n = 50.8;
    PSmad2c = 0.0;
    PSmad2_PSmad2_c = 0.0;
    PSmad2_Smad4_c = 0.0;
    PSmad2n = 0.0;
    PSmad2_PSmad2_n = 0.0;
    PSmad2_Smad4_n = 0.0;
    TGF_beta_endo = 0.0;
    TGF_beta_ns = 0.0;
    AA = 0.0;
    empty_degraded = 0.0;

equation
    //Vmed = 2e-3 / (1e6 * exp(log(1.45) * time / 1440));
    totalNumPSmad2 = (PSmad2c + PSmad2_PSmad2_c * 2 + PSmad2_Smad4_c) * 2.3 * 602 + (PSmad2n + PSmad2_PSmad2_n * 2 + PSmad2_Smad4_n) * 602;
    totalNuclearPSmad2 = PSmad2n + 2 * PSmad2_PSmad2_n + PSmad2_Smad4_n;
    totalNumT1R = (T1R_surf + T1R_endo + LRC_surf + LRC_endo) * 2.3 * 602;
    totalNumT2R = (T2R_surf + T2R_endo + LRC_surf + LRC_endo) * 2.3 * 602;
    totalNumLRC = (LRC_surf + LRC_endo) * 2.3 * 602;
    totalSmad2c = Smad2c + PSmad2c + 2 * PSmad2_PSmad2_c + PSmad2_Smad4_c;
    totalSmad2n = Smad2n + PSmad2n + 2 * PSmad2_PSmad2_n + PSmad2_Smad4_n;
    koff_ns = kon_ns * KD_ns;
    medium_TGF_beta_amount = TGF_beta_ex * 1e-9 * Vmed * 6e23;
    der(TGF_beta_ex) =  - (Vcyt * ka_LRC * TGF_beta_ex * T2R_surf * T1R_surf) - (Vmed * (kon_ns * TGF_beta_ex - koff_ns * TGF_beta_ns));
    der(T1R_surf) = (Vcyt * k_T1R) + (Vcyt * kr * T1R_endo) - (Vcyt * ki * T1R_surf) - (Vcyt * ka_LRC * TGF_beta_ex * T2R_surf * T1R_surf);
    der(T1R_endo) = (Vcyt * ki * T1R_surf) + (Vcyt * kdiss_LRC * LRC_endo) - (Vcyt * kr * T1R_endo) - (Vcyt * kdeg_T1R * T1R_endo);
    der(T2R_surf) = (Vcyt * k_T2R) + (Vcyt * kr * T2R_endo) - (Vcyt * ki * T2R_surf) - (Vcyt * ka_LRC * TGF_beta_ex * T2R_surf * T1R_surf);
    der(T2R_endo) = (Vcyt * ki * T2R_surf) + (Vcyt * kdiss_LRC * LRC_endo) - (Vcyt * kr * T2R_endo) - (Vcyt * kdeg_T2R * T2R_endo);
    der(LRC_surf) = (Vcyt * ka_LRC * TGF_beta_ex * T2R_surf * T1R_surf) - (Vcyt * ki * LRC_surf) - (Vcyt * klid * LRC_surf * totalNuclearPSmad2);
    der(LRC_endo) = (Vcyt * ki * LRC_surf) - (Vcyt * kdeg_LRC * LRC_endo) - (Vcyt * kdiss_LRC * LRC_endo);
    der(Smad2c) = (Vnuc * kexp_Smad2 * Smad2n) - (Vcyt * kimp_Smad2 * Smad2c) - (Vcyt * kpho_Smad2 * Smad2c * LRC_endo);
    der(Smad2n) = (Vcyt * kimp_Smad2 * Smad2c) + (Vnuc * kdepho_Smad2 * PSmad2n) - (Vnuc * kexp_Smad2 * Smad2n);
    der(Smad4c) = (Vnuc * kexp_Smad4 * Smad4n) - (Vcyt * kimp_Smad4 * Smad4c) - (Vcyt * (kon_Smads * PSmad2c * Smad4c - koff_Smads * PSmad2_Smad4_c));
    der(Smad4n) = (Vcyt * kimp_Smad4 * Smad4c) + (Vnuc * (koff_Smads * PSmad2_Smad4_n - kon_Smads * PSmad2n * Smad4n)) - (Vnuc * kexp_Smad4 * Smad4n);
    der(PSmad2c) = (Vcyt * kpho_Smad2 * Smad2c * LRC_endo) + (Vnuc * kexp_Smad2 * PSmad2n) - (Vcyt * kimp_Smad2 * PSmad2c) - (Vcyt * (kon_Smads * PSmad2c * Smad4c - koff_Smads * PSmad2_Smad4_c)) - (2.0 * Vcyt * (kon_Smads * pow(PSmad2c, 2) - koff_Smads * PSmad2_PSmad2_c));
    der(PSmad2_PSmad2_c) = (Vcyt * (kon_Smads * pow(PSmad2c, 2) - koff_Smads * PSmad2_PSmad2_c)) - (Vcyt * kimp_Smads * PSmad2_PSmad2_c);
    der(PSmad2_Smad4_c) = (Vcyt * (kon_Smads * PSmad2c * Smad4c - koff_Smads * PSmad2_Smad4_c)) - (Vcyt * kimp_Smads * PSmad2_Smad4_c);
    der(PSmad2n) = (Vcyt * kimp_Smad2 * PSmad2c) + (Vnuc * (koff_Smads * PSmad2_Smad4_n - kon_Smads * PSmad2n * Smad4n)) + (2.0 * Vnuc * (koff_Smads * PSmad2_PSmad2_n - kon_Smads * pow(PSmad2n, 2))) - (Vnuc * kexp_Smad2 * PSmad2n) - (Vnuc * kdepho_Smad2 * PSmad2n);
    der(PSmad2_PSmad2_n) = (Vcyt * kimp_Smads * PSmad2_PSmad2_c) - (Vnuc * (koff_Smads * PSmad2_PSmad2_n - kon_Smads * pow(PSmad2n, 2)));
    der(PSmad2_Smad4_n) = (Vcyt * kimp_Smads * PSmad2_Smad4_c) - (Vnuc * (koff_Smads * PSmad2_Smad4_n - kon_Smads * PSmad2n * Smad4n));
    der(TGF_beta_endo) = (Vcyt * kdiss_LRC * LRC_endo) - (Vcyt * kdeg_TGF_beta * TGF_beta_endo);
    der(TGF_beta_ns) = (Vmed * (kon_ns * TGF_beta_ex - koff_ns * TGF_beta_ns)) ;
    der(AA) = 0.0;
    der(empty_degraded) = 0.0;
    der(TGF_beta_dose_mol_per_cell)=0.0;

    when (stimulation_type == 2) and compareReal(time, single_pulse_duration) then
        reinit(TGF_beta_ex,0);
    end when;

end BIOMD342;
