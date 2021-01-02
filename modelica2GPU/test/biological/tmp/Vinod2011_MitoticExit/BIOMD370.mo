
model BIOMD370 "Vinod2011_MitoticExit"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;



    parameter Real PPT_1 = 1.0;
    parameter Real kpp_1 = 0.1;
    parameter Real ki_1 = 40.0;
    parameter Real kdclb2_1 = 0.02;
    parameter Real kdclb2_2 = 0.1;
    parameter Real kdclb2_3 = 0.4;
    parameter Real kdclb5_1 = 0.01;
    parameter Real kdclb5_2 = 1.0;
    parameter Real kdsic_1 = 2.0;
    parameter Real kdsic_2 = 2.0;
    parameter Real kdsic_3 = 0.04;
    parameter Real kdsic_4 = 1.5;
    parameter Real kdcdh_1 = 0.03;
    parameter Real kdcdh_2 = 0.3;
    parameter Real kpcdh_1 = 0.001;
    parameter Real kpcdh_2 = 0.04;
    parameter Real kpcdh_3 = 0.75;
    parameter Real kaswi_1 = 0.2;
    parameter Real kaswi_2 = 1.0;
    parameter Real kiswi_1 = 0.01;
    parameter Real kiswi_2 = 0.5;
    parameter Real kiswi_3 = 0.75;
    parameter Real kd_1 = 0.1;
    parameter Real kd_2 = 0.45;
    parameter Real Jnet_1 = 0.05;
    parameter Real Net1T_1 = 1.0;
    parameter Real kp_3 = 0.2;
    parameter Real kp_4 = 3.0;
    parameter Real kexp_1 = 0.01;
    parameter Real kexp_2 = 20.0;
    parameter Real ksclb2_1 = 0.015;
    parameter Real ksclb2_2 = 0.005;
    parameter Real ksclb5_1 = 0.01;
    parameter Real ksclb5_2 = 0.002;
    parameter Real kscln_1 = 0.1;
    parameter Real kscln_2 = 0.01;
    parameter Real kdcln_1 = 0.25;
    parameter Real ks20_1 = 0.05;
    parameter Real ks20_2 = 0.001;
    parameter Real kd20_1 = 0.1;
    parameter Real kd20_2 = 1.0;
    parameter Real Jcdh_1 = 0.01;
    parameter Real kssic_1 = 0.2;
    parameter Real kssic_2 = 0.004;
    parameter Real kasic2_1 = 40.0;
    parameter Real kdsic2_1 = 0.1;
    parameter Real kasic5_1 = 10.0;
    parameter Real kdsic5_1 = 0.1;
    parameter Real Jswi_1 = 0.1;
    parameter Real ksmcm_1 = 1.0;
    parameter Real ksmcm_3 = 0.01;
    parameter Real kdmcm_1 = 0.25;
    parameter Real Jmcm_1 = 0.01;
    parameter Real Jmbf_1 = 0.01;
    parameter Real kambf_1 = 0.1;
    parameter Real kimbf_1 = 0.5;
    parameter Real kimbf_2 = 0.0;
    parameter Real kimbf_3 = 0.5;
    parameter Real kspds_1 = 0.01;
    parameter Real kspds_2 = 0.006;
    parameter Real kdpds_1 = 0.01;
    parameter Real kdpds_2 = 2.0;
    parameter Real ksesp_1 = 0.001;
    parameter Real kdesp_1 = 0.004;
    parameter Real lapds_1 = 500.0;
    parameter Real ldpds_1 = 1.0;
    parameter Real kspolo_1 = 0.05;
    parameter Real kspolo_2 = 0.001;
    parameter Real kdpolo_1 = 0.05;
    parameter Real kdpolo_2 = 0.5;
    parameter Real Jpolo_1 = 0.1;
    parameter Real kapolo_1 = 0.0;
    parameter Real kapolo_2 = 1.0;
    parameter Real kipolo_1 = 0.1;
    parameter Real kp_1 = 2.0;
    parameter Real lanet_1 = 500.0;
    parameter Real ldnet_1 = 1.0;
    parameter Real kimp_1 = 1.0;
    parameter Real Jtem1_1 = 0.005;
    parameter Real katem_1 = 0.0;
    parameter Real katem_2 = 0.6;
    parameter Real kitem_1 = 20.0;
    parameter Real kitem_2 = 1.0;
    parameter Real kitem_3 = 0.1;
    parameter Real Jcdc15_1 = 1.0;
    parameter Real kac15_1 = 0.03;
    parameter Real kac15_2 = 0.5;
    parameter Real kic15_1 = 0.03;
    parameter Real kic15_2 = 0.2;
    parameter Real ldmen_1 = 0.1;
    parameter Real Cdc14T_1 = 0.5;
    parameter Real Clb2nd_1 = 0.0;
    parameter Real Swi5T_1 = 1.0;
    parameter Real cell_1 = 1.0;

    Real PP_1(start=0.0);
    Real V2_1(start=0.0);
    Real V6_1(start=0.0);
    Real Vdsic_1(start=0.0);
    Real Vacdh_1(start=0.0);
    Real Vicdh_1(start=0.0);
    Real Vaswi_1(start=0.0);
    Real Viswi_1(start=0.0);
    Real Vd_1(start=0.0);
    Real Vp_1(start=0.0);
    Real Vexp_1(start=0.0);
    Real lamen_1(start=100.0);

    Real Clb2T_1;
    Real Clb5T_1;
    Real Cln_1;
    Real Cdc20_1;
    Real Cdh1_1;
    Real Sic1T_1;
    Real Trim2_1;
    Real Trim5_1;
    Real Swi5_1;
    Real Mcm_1;
    Real MBF_1;
    Real Pds1T_1;
    Real Esp1T_1;
    Real PoloT_1;
    Real Polo_1;
    Real Net1dep_1;
    Real Net1pp_1;
    Real RENT_1;
    Real RENTp_1;
    Real Cdc14n_1;
    Real Tem1_1;
    Real Cdc15_1;
    Real MEN_1;
    Real Clb2_2;
    Real Clb5_1;
    Real Sic1_1;
    Real Pds1_1;
    Real Esp1b_1;
    Real Esp1_1;
    Real Net1p_1;
    Real Net1_2;
    Real Cdc14c_1;

initial equation
    Clb2T_1 = 0.999107;
    Clb5T_1 = 0.201977;
    Cln_1 = 0.04079;
    Cdc20_1 = 0.0;
    Cdh1_1 = 0.0;
    Sic1T_1 = 0.001683;
    Trim2_1 = 0.00145;
    Trim5_1 = 0.0;
    Swi5_1 = 0.0;
    Mcm_1 = 0.996743;
    MBF_1 = 0.001977;
    Pds1T_1 = 0.601977;
    Esp1T_1 = 0.25;
    PoloT_1 = 1.0;
    Polo_1 = 1.0;
    Net1dep_1 = 0.0119;
    Net1pp_1 = 0.0119;
    RENT_1 = 0.483;
    RENTp_1 = 0.014;
    Cdc14n_1 = 0.00214;
    Tem1_1 = 1.0;
    Cdc15_1 = 0.933;
    MEN_1 = 0.0;
    Esp1b_1 = 0.24857;
    Net1p_1 = 0.013;

equation
    Clb2_2 = Clb2T_1 + Clb2nd_1 - Trim2_1;
    Clb5_1 = Clb5T_1 - Trim5_1;
    Sic1_1 = Sic1T_1 - Trim2_1 - Trim5_1;
    Pds1_1 = Pds1T_1 - Esp1b_1;
    Esp1_1 = Esp1T_1 - Esp1b_1;
    Net1_2 = Net1T_1 - Net1p_1 - RENT_1 - Net1pp_1;
    Cdc14c_1 = Cdc14T_1 - Cdc14n_1 - RENT_1;
    PP_1 = PPT_1 * ((1 + kpp_1 * ki_1 * Esp1_1) / (1 + ki_1 + Esp1_1));
    V2_1 = kdclb2_1 + kdclb2_2 * Cdc20_1 + kdclb2_3 * Cdh1_1;
    V6_1 = kdclb5_1 + kdclb5_2 * Cdc20_1;
    Vdsic_1 = kdsic_3 + kdsic_1 * Clb5_1 + kdsic_2 * Clb2_2 + kdsic_4 * Cln_1;
    Vacdh_1 = kdcdh_1 * Cdc14n_1 + kdcdh_2 * Cdc14c_1;
    Vicdh_1 = kpcdh_1 + kpcdh_2 * Clb2_2 + kpcdh_3 * Clb5_1;
    Vaswi_1 = kaswi_1 * Cdc14n_1 + kaswi_2 * Cdc14c_1;
    Viswi_1 = kiswi_1 + kiswi_2 * Clb2_2 + kiswi_3 * Clb5_1;
    Vd_1 = (kd_2 * PP_1 + kd_1 * Cdc14n_1) / (Jnet_1 + Net1T_1 - Net1dep_1);
    Vp_1 = (kp_3 * Clb2_2 + kp_4 * MEN_1) / (Jnet_1 + Net1dep_1);
    Vexp_1 = kexp_1 + kexp_2 * MEN_1;
    der(Clb2T_1) = ksclb2_1 + ksclb2_2 * Mcm_1 - V2_1 * Clb2T_1;
    der(Clb5T_1) = ksclb5_2 + ksclb5_1 * MBF_1 - V6_1 * Clb5T_1;
    der(Cln_1) = kscln_2 + kscln_1 * MBF_1 - kdcln_1 * Cln_1;
    der(Cdc20_1) = ks20_2 + ks20_1 * Mcm_1 - (kd20_1 + kd20_2 * Cdh1_1) * Cdc20_1;
    der(Cdh1_1) = Vacdh_1 * (1 - Cdh1_1) / (Jcdh_1 + 1 - Cdh1_1) - Vicdh_1 * Cdh1_1 / (Jcdh_1 + Cdh1_1);
    der(Sic1T_1) = kssic_2 + kssic_1 * Swi5_1 - Vdsic_1 * Sic1T_1;
    der(Trim2_1) = kasic2_1 * Clb2_2 * Sic1_1 - (kdsic2_1 + V2_1 + Vdsic_1) * Trim2_1;
    der(Trim5_1) = kasic5_1 * Clb5_1 * Sic1_1 - (kdsic5_1 + V6_1 + Vdsic_1) * Trim5_1;
    der(Swi5_1) = Vaswi_1 * (Swi5T_1 - Swi5_1) / (Jswi_1 + Swi5T_1 - Swi5_1) - Viswi_1 * Swi5_1 / (Jswi_1 + Swi5_1);
    der(Mcm_1) = (ksmcm_3 + ksmcm_1 * Clb2_2) * (1 - Mcm_1) / (Jmcm_1 + 1 - Mcm_1) - kdmcm_1 * Mcm_1 / (Jmcm_1 + Mcm_1);
    der(MBF_1) = kambf_1 * (1 - MBF_1) / (Jmbf_1 + 1 - MBF_1) - (kimbf_1 * Clb2_2 + kimbf_3 * Clb5_1) * MBF_1 / (Jmbf_1 + MBF_1);
    der(Pds1T_1) = kspds_2 + kspds_1 * MBF_1 - (kdpds_1 + kdpds_2 * Cdc20_1) * Pds1T_1;
    der(Esp1T_1) = ksesp_1 - kdesp_1 * Esp1T_1;
    der(Esp1b_1) = lapds_1 * Pds1_1 * Esp1_1 - (ldpds_1 + kdesp_1 + kdpds_1 + kdpds_2 * Cdc20_1) * Esp1b_1;
    der(PoloT_1) = kspolo_2 + kspolo_1 * Mcm_1 - (kdpolo_1 + kdpolo_2 * Cdh1_1) * PoloT_1;
    der(Polo_1) = (kapolo_1 + kapolo_2 * Clb2_2) * (PoloT_1 - Polo_1) / (Jpolo_1 + PoloT_1 - Polo_1) - kipolo_1 * Polo_1 / (Jpolo_1 + Polo_1) - (kdpolo_1 + kdpolo_2 * Cdh1_1) * Polo_1;
    der(Net1dep_1) = Vd_1 * (Net1T_1 - Net1dep_1) - Vp_1 * Net1dep_1;
    der(Net1pp_1) = kp_1 * Polo_1 * (Net1T_1 - Net1dep_1 - Net1pp_1) - Vd_1 * Net1pp_1;
    der(RENT_1) = lanet_1 * (Net1T_1 - Net1pp_1 - RENT_1) * Cdc14n_1 - ldnet_1 * RENT_1 - kp_1 * Polo_1 * RENTp_1;
    der(RENTp_1) = Vp_1 * (RENT_1 - RENTp_1) - Vd_1 * RENTp_1 + lanet_1 * (Net1T_1 - Net1dep_1 - Net1pp_1 - RENTp_1) * Cdc14n_1 - ldnet_1 * RENTp_1 - kp_1 * Polo_1 * RENTp_1;
    der(Cdc14n_1) = kp_1 * Polo_1 * RENTp_1 - lanet_1 * (Net1T_1 - Net1pp_1 - RENT_1) * Cdc14n_1 + ldnet_1 * RENT_1 - Vexp_1 * Cdc14n_1 + kimp_1 * Cdc14c_1;
    der(Tem1_1) = (katem_1 + katem_2 * Polo_1) * (1 - Tem1_1) / (Jtem1_1 + 1 - Tem1_1) - (kitem_3 + kitem_2 / (1 + kitem_1 * Esp1_1)) / (Jtem1_1 + Tem1_1) * Tem1_1;
    der(Cdc15_1) = (kac15_1 + kac15_2 * Cdc14c_1) * (1 - Cdc15_1) / (Jcdc15_1 + 1 - Cdc15_1) - (kic15_1 + kic15_2 * Clb2_2) * Cdc15_1 / (Jcdc15_1 + Cdc15_1);
    der(MEN_1) = lamen_1 * (Tem1_1 - MEN_1) * (Cdc15_1 - MEN_1) - ldmen_1 * MEN_1 - (kitem_3 + kitem_2 / (1 + kitem_3 * Esp1_1)) / (Jtem1_1 + Tem1_1) * MEN_1 - (kic15_1 + kic15_2 * Clb2_2) / (Jcdc15_1 + Cdc15_1) * MEN_1;
    der(Net1p_1) = 0.0;
    der(lamen_1)=0.0;



end BIOMD370;
