model BIOMD012 "Synthetic oscillatory network of transcriptional regulators"

    parameter Real eff = 20.000;
    parameter Real n = 2.000;
    parameter Real KM = 40.000;
    parameter Real tau_mRNA = 2.000;
    parameter Real tau_prot = 10.000;
    parameter Real ps_a = 0.500;
    parameter Real ps_0 = 5.000e-4

    Real beta(start=0.200);
    Real alpha0(start=0.216);
    Real alpha(start=216.404);
    Real t_ave(start=0.000);
    Real kd_mRNA(start=0.000);
    Real kd_prot(star=0.000);
    Real k_tl(start=0.000);
    Real a_tr(start=0.000);
    Real a0_tr(start=0.000);
    
    Real PX "LacI Protein";
    Real PY "TetR Protein";
    Real PZ "cI Protein";
    Real X "LacI mRNA";
    Real Y "TetR mRNA";
    Real Z "cI mRNA";

initial equation
    PX = 0.000;
    PY = 0.000;
    PZ = 0.000;
    X = 0.000;
    Y = 20.000;
    Z = 0.000;

equation
    t_ave = tau_mRNA / log(2);
    beta = tau_mRNA / tau_prot;
    k_tl = eff / t_ave;
    a_tr = 60 * (ps_a - ps_0);
    a0_tr = 60 * ps_0;
    kd_prot = log(2) / tau_prot;
    kd_mRNA = log(2) / tau_mRNA;
    alpha = (a_tr * eff * tau_prot) / (log(2) * KM);
    alpha0 = (a0_tr * eff * tau_prot) / (log(2) * KM);

end BIOMD012;