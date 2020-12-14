
model BIOMD167 "Mayya2005_STATmodule"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real Kf_PstatDimerisation_PstatDimerisation = 0.6;
    parameter Real Kr_PstatDimerisation_PstatDimerisation = 0.03;
    parameter Real Kcat_dephos_statDephosphorylation = 1.0;
    parameter Real Km_dephos_statDephosphorylation = 2.0;
    parameter Real Kcat_phos_statPhosphorylation = 1.0;
    parameter Real Km_phos_statPhosphorylation = 4.0;
    parameter Real Kf_PstatDimerisation_PstatDimerisationNuc = 0.6;
    parameter Real Kr_PstatDimerisation_PstatDimerisationNuc = 0.03;
    parameter Real PstatDimer_impMax_PstatDimer__import = 0.045;
    parameter Real Kpsd_imp_PstatDimer__import = 0.3;
    parameter Real stat_expMax_stat_export = -0.06;
    parameter Real Ks_exp_stat_export = 0.6;
    parameter Real stat_impMax_stat_import = 0.003;
    parameter Real Ks_imp_stat_import = 3.0;



    Real stat_sol;
    Real Pstat_sol;
    Real statKinase_sol;
    Real PstatDimer_sol;
    Real PstatDimer_nuc;
    Real stat_nuc;
    Real Pstat_nuc;
    Real statPhosphatase_nuc;
    Real species_test;

initial equation
    stat_sol = 1.0;
    Pstat_sol = 0.0;
    statKinase_sol = 0.0;
    PstatDimer_sol = 0.0;
    PstatDimer_nuc = 0.0;
    stat_nuc = 0.0;
    Pstat_nuc = 0.0;
    statPhosphatase_nuc = 0.05;
    species_test = 0.0;

equation
    statKinase_sol = piecewise(0.01 * sin(0.001571 * (-500 + t)), and(gt(t, 500), lt(t, 2502.54614894971)), 0);
    der(stat_sol) =  - (Kcat_phos_statPhosphorylation * statKinase_1.0 * stat_1.0 * (1 / (Km_phos_statPhosphorylation + stat_1.0)) * 1.0) - (1.0 * stat_expMax_stat_export * stat_1.0 * (1 / (Ks_exp_stat_export + stat_1.0)) * 1.0) - (1.0 * stat_impMax_stat_import * stat_1.0 * (1 / (Ks_imp_stat_import + stat_1.0)) * 1.0);
    der(Pstat_sol) = (Kcat_phos_statPhosphorylation * statKinase_1.0 * stat_1.0 * (1 / (Km_phos_statPhosphorylation + stat_1.0)) * 1.0) - (2.0 * (Kf_PstatDimerisation_PstatDimerisation * Pstat_1.0^2 + -(Kr_PstatDimerisation_PstatDimerisation * PstatDimer_1.0)) * 1.0);
    der(PstatDimer_sol) = ((Kf_PstatDimerisation_PstatDimerisation * Pstat_1.0^2 + -(Kr_PstatDimerisation_PstatDimerisation * PstatDimer_1.0)) * 1.0) - (PstatDimer_impMax_PstatDimer__import * PstatDimer_1.0 * (1 / (Kpsd_imp_PstatDimer__import + PstatDimer_1.0)) * 1.0);
    der(PstatDimer_nuc) = ((Kf_PstatDimerisation_PstatDimerisationNuc * Pstat_1.0^2 + -(Kr_PstatDimerisation_PstatDimerisationNuc * PstatDimer_1.0)) * 1.0) + (PstatDimer_impMax_PstatDimer__import * PstatDimer_1.0 * (1 / (Kpsd_imp_PstatDimer__import + PstatDimer_1.0)) * 1.0) ;
    der(stat_nuc) = (Kcat_dephos_statDephosphorylation * statPhosphatase_1.0 * Pstat_1.0 * (1 / (Km_dephos_statDephosphorylation + Pstat_1.0)) * 1.0) + (1.0 * stat_expMax_stat_export * stat_1.0 * (1 / (Ks_exp_stat_export + stat_1.0)) * 1.0) + (1.0 * stat_impMax_stat_import * stat_1.0 * (1 / (Ks_imp_stat_import + stat_1.0)) * 1.0) ;
    der(Pstat_nuc) =  - (Kcat_dephos_statDephosphorylation * statPhosphatase_1.0 * Pstat_1.0 * (1 / (Km_dephos_statDephosphorylation + Pstat_1.0)) * 1.0) - (2.0 * (Kf_PstatDimerisation_PstatDimerisationNuc * Pstat_1.0^2 + -(Kr_PstatDimerisation_PstatDimerisationNuc * PstatDimer_1.0)) * 1.0);
    der(statPhosphatase_nuc) = 0.0;
    der(species_test) = (Kcat_phos_statPhosphorylation * statKinase_1.0 * stat_1.0 * (1 / (Km_phos_statPhosphorylation + stat_1.0)) * 1.0) ;




end BIOMD167;
