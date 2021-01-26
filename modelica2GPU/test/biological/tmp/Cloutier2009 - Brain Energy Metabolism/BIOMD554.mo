
model BIOMD554 "Cloutier2009 - Brain Energy Metabolism"

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



    parameter Real gn_NA = 0.0039;
    parameter Real Km_en_GLC = 5.32;
    parameter Real Vm_en_GLC = 0.50417;
    parameter Real Vmax_n_hk = 0.0513;
    parameter Real Vmaxf_n_pgi = 0.5;
    parameter Real Vmaxr_n_pgi = 0.45;
    parameter Real kn_pfk = 0.55783;
    parameter Real kn_pgk = 0.4287;
    parameter Real kn_pk = 28.6;
    parameter Real kfn_ldh = 5.3;
    parameter Real krn_ldh = 0.1046;
    parameter Real Vmax_n_mito = 0.05557;
    parameter Real Vmax_ne_LAC = 0.1978;
    parameter Real Km_ne_LAC = 0.09314;
    parameter Real Vmax_n_ATPase = 0.04889;
    parameter Real krn_ck = 0.015;
    parameter Real kfn_ck = 0.0524681;
    parameter Real nh_O2_Vcn_O2 = 2.7;
    parameter Real PScapn = 0.2202;
    parameter Real gg_NA = 0.00325;
    parameter Real Km_eg_GLC = 3.53;
    parameter Real Vm_eg_GLC = 0.038089;
    parameter Real Km_cg_GLC = 9.92;
    parameter Real Vm_cg_GLC = 0.0098394;
    parameter Real Vmax_g_hk = 0.050461;
    parameter Real Vmaxf_g_pgi = 0.5;
    parameter Real Vmaxr_g_pgi = 0.45;
    parameter Real kg_pfk = 0.403;
    parameter Real kg_pgk = 0.2514;
    parameter Real kg_pk = 2.73;
    parameter Real kfg_ldh = 6.2613;
    parameter Real krg_ldh = 0.54682;
    parameter Real Vmax_g_mito = 0.008454;
    parameter Real Vmax_ge_LAC = 0.086124;
    parameter Real Km_ge_LAC = 0.22163;
    parameter Real Vmax_gc_LAC = 0.00021856;
    parameter Real Km_gc_LAC = 0.12862;
    parameter Real Vmax_g_ATPase = 0.035657;
    parameter Real krg_ck = 0.02073;
    parameter Real kfg_ck = 0.0243;
    parameter Real PScapg = 0.2457;
    parameter Real Km_ce_GLC = 8.4568;
    parameter Real Vm_ce_GLC = 0.0489;
    parameter Real Km_ec_LAC = 0.764818;
    parameter Real Vm_ec_LAC = 0.0325;
    parameter Real Vmax_g_gs = 0.3;
    parameter Real Vmax_eg_GLU = 0.0208;
    parameter Real Vmax_glys = 0.0001528;
    parameter Real Km_G6P_glys = 0.5;
    parameter Real Vmax_glyp = 4.922e-05;
    parameter Real Km_GLY = 1.0;
    parameter Real CBF0_Fin_t = 0.012;
    parameter Real Km_PYR = 0.0632;
    parameter Real Km_ATP = 0.01532;
    parameter Real Ki_ATP = 0.7595;
    parameter Real Km_ADP = 0.00107;
    parameter Real Km_O2 = 0.0029658;
    parameter Real Km_GLC = 0.105;
    parameter Real Km_GLU = 0.05;
    parameter Real Km_G6P = 0.5;
    parameter Real Km_F6P_pgi = 0.06;
    parameter Real Km_F6P_pfk = 0.18;
    parameter Real Km_pump = 0.4243;
    parameter Real nh_O2_model_parameters = 2.7;
    parameter Real Ko2 = 0.089733;
    parameter Real kpump = 3.17e-07;
    parameter Real ATPtot = 2.379;
    parameter Real nH = 4.0;
    parameter Real nOP = 15.0;
    parameter Real NAero = 3.0;
    parameter Real Rng = 1.8;
    parameter Real Reg = 0.8;
    parameter Real Ren = 0.444444444444444;
    parameter Real Rcn = 0.01222;
    parameter Real Rcg = 0.022;
    parameter Real Rce = 0.0275;
    parameter Real Sm_n = 40500.0;
    parameter Real Vm = -70.0;
    parameter Real RT = 2577340.0;
    parameter Real F = 96500.0;
    parameter Real Vn = 0.45;
    parameter Real G6P_inh_hk = 0.6;
    parameter Real aG6P_inh_hk = 20.0;
    parameter Real rATP_mito = 20.0;
    parameter Real aATP_mito = 5.0;
    parameter Real HbOP = 8.6;
    parameter Real Sm_g = 10500.0;
    parameter Real Vg = 0.25;
    parameter Real KO1 = 1.0;
    parameter Real Vc = 0.0055;
    parameter Real R_GLU_NA = 0.075;
    parameter Real KO2 = 1.0;
    parameter Real KO3 = 1.0;
    parameter Real GLY_inh = 4.2;
    parameter Real aGLY_inh = 20.0;
    parameter Real CBF0_model_parameters = 0.012;
    parameter Real Vv0 = 0.0236;
    parameter Real tv = 35.0;
    parameter Real qak = 0.92;
    parameter Real k1 = 2.22;
    parameter Real k2 = 0.46;
    parameter Real k3 = 0.43;
    parameter Real dHb0 = 0.064;
    parameter Real stim = 1.0;
    parameter Real to = 200.0;
    parameter Real tend = 300.0;
    parameter Real v1_n = 0.041;
    parameter Real v2_n = 2.55;
    parameter Real t_n_stim = 2.0;
    parameter Real sr = 4.59186;
    parameter Real t1 = 2.0;
    parameter Real delta_GLY = 62.0;
    parameter Real deltaf = 0.42;
    parameter Real tend_GLY = 440.0;
    parameter Real to_GLY = 83.0;
    parameter Real sr_GLY = 4.0;
    parameter Real Astrocytes = 1.0;
    parameter Real Capillaries = 1.0;
    parameter Real Extracellular_space = 1.0;
    parameter Real Neurons = 1.0;

    Real u_n(start=1.04154164305949);
    Real u_g(start=1.07475714285714);
    Real dAMP_dATPn(start=-0.101010798503538);
    Real dAMP_dATPg(start=-0.115857415908852);
    Real Vv(start=0.0237);
    Real dHb(start=0.0218);
    Real Vn_leak_Na(start=0.474905958264092);
    Real Vn_pump(start=0.158300842198194);
    Real Vn_stim(start=0.0);
    Real V_en_GLC(start=0.00599865999248041);
    Real Vn_hk(start=0.00600093047858717);
    Real Vn_pgi(start=0.00600284722882977);
    Real Vn_pfk(start=0.00599809710207478);
    Real Vn_pgk(start=0.012002606302138);
    Real Vn_pk(start=0.0120203036981555);
    Real Vn_ldh(start=-0.001026864256);
    Real Vn_mito(start=0.0129174754920542);
    Real Vne_LAC(start=-0.00101735054205471);
    Real Vn_ATPase(start=0.0488683691708698);
    Real Vn_ck(start=2.93701651940294e-05);
    Real Vcn_O2(start=0.0390504186958046);
    Real Vg_leak_Na(start=0.190378997692294);
    Real Vg_pump(start=0.0634531133946177);
    Real Veg_GLC(start=0.00158470181577655);
    Real Vcg_GLC(start=0.00297412147754264);
    Real Vg_hk(start=0.00455613617326311);
    Real Vg_pgi(start=0.00451935700191414);
    Real Vg_pfk(start=0.00450657384340637);
    Real Vg_pgk(start=0.0090457605321121);
    Real Vg_pk(start=0.00906366080685179);
    Real Vg_ldh(start=0.003039015294);
    Real Vg_mito(start=0.0060112916441682);
    Real Vge_LAC(start=0.00298013264659761);
    Real Vgc_LAC(start=1.46095762940601e-05);
    Real Vg_ATPase(start=0.035641088799643);
    Real Vg_ck(start=8.98869880248884e-05);
    Real Vcg_O2(start=0.0180867710645166);
    Real Vc_O2(start=4.01410909090909);
    Real Vc_GLC(start=0.69774545454546);
    Real Vce_GLC(start=0.0154673938740423);
    Real Vc_LAC(start=-0.0528);
    Real Vec_LAC(start=0.0014407850610198);
    Real Vnc_CO2(start=0.0387524264761627);
    Real Vgc_CO2(start=0.0180338749325046);
    Real Vn_stim_GLU(start=0.0);
    Real Vg_gs(start=0.0);
    Real Veg_GLU(start=0.0);
    Real Vc_CO2(start=4.01454545454546);
    Real Vg_glys(start=9.08171994158688e-05);
    Real Vg_glyp(start=3.51571428571429e-05);
    Real deltaVt_GLY(start=1.0);
    Real Fin_t(start=0.012);
    Real Fout_t(start=0.0120054326049026);
    Real BOLD(start=0.04179315);
    Real v_stim(start=0.0);
    Real unitpulseSB(start=0.0);
    Real unitstepSB(start=0.0);
    Real unitstepSB2(start=0.0);

    Real NAg;
    Real GLCg;
    Real G6Pg;
    Real F6Pg;
    Real GAPg;
    Real PEPg;
    Real PYRg;
    Real LACg;
    Real NADHg;
    Real ATPg;
    Real PCrg;
    Real O2g;
    Real GLYg;
    Real GLUg;
    Real NADg;
    Real ADPg;
    Real CRg;
    Real NADH_g_tot;
    Real PCrg_tot;
    Real AMPg;
    Real O2c;
    Real GLCc;
    Real LACc;
    Real CO2c;
    Real GLCe;
    Real LACe;
    Real GLUe;
    Real NAe;
    Real O2a;
    Real CO2a;
    Real GLCa;
    Real LACa;
    Real NAn;
    Real GLCn;
    Real G6Pn;
    Real F6Pn;
    Real GAPn;
    Real PEPn;
    Real PYRn;
    Real LACn;
    Real NADHn;
    Real ATPn;
    Real PCrn;
    Real O2n;
    Real GLUn;
    Real ADPn;
    Real CRn;
    Real NADn;
    Real NADH_n_tot;
    Real PCrn_tot;
    Real AMPn;

initial equation
    NAg = 13.36;
    GLCg = 0.1656;
    G6Pg = 0.7326;
    F6Pg = 0.1116;
    GAPg = 0.0698;
    PEPg = 0.0254;
    PYRg = 0.1711;
    LACg = 0.4651;
    NADHg = 0.0445;
    ATPg = 2.24;
    PCrg = 4.6817;
    O2g = 0.1589;
    GLYg = 2.5;
    GLUg = 0.0;
    NADH_g_tot = 0.22;
    PCrg_tot = 5.0;
    O2c = 7.4201;
    GLCc = 4.6401;
    LACc = 0.3251;
    CO2c = 2.12;
    GLCe = 0.3339;
    LACe = 0.3986;
    GLUe = 0.0;
    NAe = 150.0;
    O2a = 8.34;
    CO2a = 1.2;
    GLCa = 4.8;
    LACa = 0.313;
    NAn = 15.533;
    GLCn = 0.2633;
    G6Pn = 0.7275;
    F6Pn = 0.1091;
    GAPn = 0.0418;
    PEPn = 0.0037;
    PYRn = 0.0388;
    LACn = 0.3856;
    NADHn = 0.0319;
    ATPn = 2.2592;
    PCrn = 4.2529;
    O2n = 0.0975;
    GLUn = 3.0;
    NADH_n_tot = 0.22;
    PCrn_tot = 5.0;

equation
    V_en_GLC = Vm_en_GLC * (GLCe / (GLCe + Km_en_GLC) - GLCn / (GLCn + Km_en_GLC));
    Vn_hk = Vmax_n_hk * ATPn * (GLCn / (GLCn + Km_GLC)) * (1 - 1 / (1 + exp(-aG6P_inh_hk * 1 * (G6Pn - G6P_inh_hk))));
    Vn_pgi = Vmaxf_n_pgi * (G6Pn / (G6Pn + Km_G6P)) - Vmaxr_n_pgi * (F6Pn / (F6Pn + Km_F6P_pgi));
    NADg = NADH_g_tot - NADHg;
    ADPg = ATPg / 2 * (-qak + pow(pow(qak, 2) + 4 * qak * (ATPtot / ATPg - 1), 1 / 2));
    CRg = PCrg_tot - PCrg;
    AMPg = ATPtot - (ATPg + ADPg);
    Vg_ck = kfg_ck * PCrg * ADPg - krg_ck * CRg * ATPg;
    ADPn = ATPn / 2 * (-qak + pow(pow(qak, 2) + 4 * qak * (ATPtot / ATPn - 1), 1 / 2));
    CRn = PCrn_tot - PCrn;
    NADn = NADH_n_tot - NADHn;
    AMPn = ATPtot - (ATPn + ADPn);
    u_n = pow(qak, 2) + 4 * qak * (ATPtot / ATPn - 1);
    u_g = pow(qak, 2) + 4 * qak * (ATPtot / ATPg - 1);
    dAMP_dATPn = qak / 2 + qak * (ATPtot / (ATPn * pow(u_n, 1 / 2))) - (1 + 0.5 * pow(u_n, 1 / 2));
    dAMP_dATPg = qak / 2 + qak * (ATPtot / (ATPg * pow(u_g, 1 / 2))) - (1 + 0.5 * pow(u_g, 1 / 2));
    Vn_leak_Na = Sm_n / Vn * (gn_NA / F) * (RT / F * log(NAe / NAn) - Vm);
    Vn_pump = Sm_n / Vn * kpump * ATPn * NAn * pow(1 + ATPn / Km_pump, -1);
    Vn_pfk = kn_pfk * ATPn * (F6Pn / (F6Pn + Km_F6P_pfk)) * pow(1 + pow(ATPn / Ki_ATP, nH), -1);
    Vn_pgk = kn_pgk * GAPn * ADPn * (NADn / NADHn);
    Vn_pk = kn_pk * PEPn * ADPn;
    Vn_ldh = kfn_ldh * PYRn * NADHn - krn_ldh * LACn * NADn;
    Vn_mito = Vmax_n_mito * (O2n / (O2n + Km_O2)) * (ADPn / (ADPn + Km_ADP)) * (PYRn / (PYRn + Km_PYR)) * (1 - 1 / (1 + exp(-aATP_mito * 1 * (ATPn / ADPn - 1 * rATP_mito))));
    Vne_LAC = Vmax_ne_LAC * (LACn / (LACn + Km_ne_LAC) - LACe / (LACe + Km_ne_LAC));
    Vn_ATPase = Vmax_n_ATPase * (ATPn / (ATPn + 0.001));
    Vge_LAC = Vmax_ge_LAC * (LACg / (LACg + Km_ge_LAC) - LACe / (LACe + Km_ge_LAC));
    Vn_ck = kfn_ck * PCrn * ADPn - krn_ck * CRn * ATPn;
    Vcn_O2 = PScapn / Vn * (Ko2 * pow(HbOP / O2c - 1, -1 / nh_O2_Vcn_O2) - O2n);
    Vg_leak_Na = Sm_g / Vg * (gg_NA / F) * (RT / F * log(NAe / NAg) - Vm);
    Vg_pump = Sm_g / Vg * kpump * ATPg * NAg * pow(1 + ATPg / Km_pump, -1);
    Veg_GLC = KO1 * Vm_eg_GLC * (GLCe / (GLCe + Km_eg_GLC) - GLCg / (GLCg + Km_eg_GLC));
    Vcg_GLC = Vm_cg_GLC * (GLCc / (GLCc + Km_cg_GLC) - GLCg / (GLCg + Km_cg_GLC));
    Vg_hk = Vmax_g_hk * ATPg * (GLCg / (GLCg + Km_GLC)) * (1 - 1 / (1 + exp(-aG6P_inh_hk * 1 * (G6Pg - G6P_inh_hk))));
    Vg_pgi = Vmaxf_g_pgi * (G6Pg / (G6Pg + Km_G6P)) - Vmaxr_g_pgi * (F6Pg / (F6Pg + Km_F6P_pgi));
    Vg_pfk = kg_pfk * ATPg * (F6Pg / (F6Pg + Km_F6P_pfk)) * pow(1 + pow(ATPg / Ki_ATP, nH), -1);
    Vg_pgk = kg_pgk * GAPg * ADPg * (NADg / NADHg);
    Vg_pk = kg_pk * PEPg * ADPg;
    Vg_ldh = kfg_ldh * PYRg * NADHg - krg_ldh * LACg * NADg;
    Vg_mito = Vmax_g_mito * (O2g / (O2g + Km_O2)) * (ADPg / (ADPg + Km_ADP)) * (PYRg / (PYRg + Km_PYR)) * (1 - 1 / (1 + exp(1 * -aATP_mito * (ATPg / ADPg - 1 * rATP_mito))));
    Vgc_LAC = Vmax_gc_LAC * (LACg / (LACg + Km_gc_LAC) - LACc / (LACc + Km_gc_LAC));
    Vg_ATPase = Vmax_g_ATPase * (ATPg / (ATPg + 0.001));
    Vcg_O2 = PScapg / Vg * (Ko2 * pow(HbOP / O2c - 1, -1 / nh_O2_model_parameters) - O2g);
    Vce_GLC = Vm_ce_GLC * (GLCc / (GLCc + Km_ce_GLC) - GLCe / (GLCe + Km_ce_GLC));
    Vec_LAC = Vm_ec_LAC * (LACe / (LACe + Km_ec_LAC) - LACc / (LACc + Km_ec_LAC));
    Vnc_CO2 = 3 * Vn_mito;
    Vgc_CO2 = 3 * Vg_mito;
    Vg_gs = Vmax_g_gs * (GLUg / (GLUg + Km_GLU)) * (ATPg / (ATPg + Km_ATP));
    Veg_GLU = Vmax_eg_GLU * (GLUe / (GLUe + Km_GLU));
    Vg_glys = Vmax_glys * (G6Pg / (G6Pg + Km_G6P_glys)) * (1 - 1 / (1 + exp(-aGLY_inh * 1 * (GLYg - GLY_inh))));
    Fin_t = CBF0_Fin_t + (stim * CBF0_Fin_t * deltaf * (1 / (1 + exp(1 * -sr * (time - (to + t1 - 3))))) - stim * CBF0_Fin_t * deltaf * (1 / (1 + exp(1 * -sr * (time - (to + tend + t1 + 3))))));
    Vc_O2 = 2 * (Fin_t / Vc) * (O2a - O2c);
    Vc_GLC = 2 * (Fin_t / Vc) * (GLCa - GLCc);
    Vc_LAC = 2 * (Fin_t / Vc) * (LACa - LACc);
    Vc_CO2 = 2 * (Fin_t / Vc) * (CO2c - CO2a);
    Fout_t = CBF0_model_parameters * ((pow(Vv / Vv0, 2) + tv * pow(Vv / Vv0, -0.5) * (Fin_t / Vv0)) / (1 + CBF0_model_parameters * tv * pow(Vv / Vv0, -0.5) * (1 / Vv0)));
    BOLD = Vv0 * ((k1 + k2) * (1 - dHb / dHb0) - (k2 + k3) * (1 - Vv / Vv0));
    unitpulseSB = piecewise(1, and(geq(time, to), leq(time, to + tend)), 0);
    v_stim = stim * (v1_n + v2_n * ((time - to) / t_n_stim) * exp(-((time - to) * (unitpulseSB / t_n_stim)))) * unitpulseSB;
    Vn_stim = v_stim;
    Vn_stim_GLU = Vn_stim * R_GLU_NA * KO2 * (GLUn / (GLUn + Km_GLU));
    unitstepSB = piecewise(1, geq(time - (tend + to), 0), 0);
    unitstepSB2 = piecewise(1, geq(time - (tend_GLY + to + to_GLY), 0), 0);
    deltaVt_GLY = 1 + stim * delta_GLY * KO3 * (1 / (1 + exp(1 * -sr_GLY * (time - (to + to_GLY))))) * (1 - unitstepSB2);
    Vg_glyp = Vmax_glyp * (GLYg / (GLYg + Km_GLY)) * deltaVt_GLY;
    der(NAg) = Vg_leak_Na + 3 * Veg_GLU - 3 * Vg_pump;
    der(GLCg) = Vcg_GLC + Veg_GLC - Vg_hk;
    der(G6Pg) = Vg_hk + Vg_glyp - (Vg_pgi + Vg_glys);
    der(F6Pg) = Vg_pgi - Vg_pfk;
    der(GAPg) = 2 * Vg_pfk - Vg_pgk;
    der(PEPg) = Vg_pgk - Vg_pk;
    der(PYRg) = Vg_pk - (Vg_ldh + Vg_mito);
    der(LACg) = Vg_ldh - (Vge_LAC + Vgc_LAC);
    der(NADHg) = Vg_pgk - (Vg_ldh + Vg_mito);
    der(ATPg) = (Vg_pgk + Vg_pk + nOP * Vg_mito + Vg_ck - (Vg_hk + Vg_pfk + Vg_ATPase + Vg_pump + Vg_gs)) * pow(1 - dAMP_dATPg, -1);
    der(PCrg) = -Vg_ck;
    der(O2g) = Vcg_O2 - NAero * Vg_mito;
    der(GLYg) = Vg_glys - Vg_glyp;
    der(GLUg) = Veg_GLU - Vg_gs;
    der(O2c) = Vc_O2 - (Vcn_O2 * (1 / Rcn) + Vcg_O2 * (1 / Rcg));
    der(GLCc) = Vc_GLC - (Vce_GLC * (1 / Rce) + Vcg_GLC * (1 / Rcg));
    der(LACc) = Vc_LAC + Vec_LAC * (1 / Rce) + Vgc_LAC * (1 / Rcg);
    der(CO2c) = Vnc_CO2 * (1 / Rcn) + Vgc_CO2 * (1 / Rcg) - Vc_CO2;
    der(GLCe) = Vce_GLC - (Veg_GLC * (1 / Reg) + V_en_GLC * (1 / Ren));
    der(LACe) = Vne_LAC * (1 / Ren) + Vge_LAC * (1 / Reg) - Vec_LAC;
    der(GLUe) = Vn_stim_GLU * (1 / Ren) - Veg_GLU * (1 / Reg);
    der(NAn) = Vn_leak_Na + Vn_stim - 3 * Vn_pump;
    der(GLCn) = V_en_GLC - Vn_hk;
    der(G6Pn) = Vn_hk - Vn_pgi;
    der(F6Pn) = Vn_pgi - Vn_pfk;
    der(GAPn) = 2 * Vn_pfk - Vn_pgk;
    der(PEPn) = Vn_pgk - Vn_pk;
    der(PYRn) = Vn_pk - (Vn_ldh + Vn_mito);
    der(LACn) = Vn_ldh - Vne_LAC;
    der(NADHn) = Vn_pgk - (Vn_ldh + Vn_mito);
    der(ATPn) = (Vn_pgk + Vn_pk + nOP * Vn_mito + Vn_ck - (Vn_hk + Vn_pfk + Vn_ATPase + Vn_pump)) * pow(1 - dAMP_dATPn, -1);
    der(PCrn) = -Vn_ck;
    der(O2n) = Vcn_O2 - NAero * Vn_mito;
    der(GLUn) = Vg_gs * (1 / Rng) - Vn_stim_GLU;
    der(Vv) = Fin_t - Fout_t;
    der(dHb) = Fin_t * (O2a - O2c) - Fout_t * (dHb / Vv);
    der(NADH_g_tot) = 0.0;
    der(PCrg_tot) = 0.0;
    der(NAe) = 0.0;
    der(O2a) = 0.0;
    der(CO2a) = 0.0;
    der(GLCa) = 0.0;
    der(LACa) = 0.0;
    der(NADH_n_tot) = 0.0;
    der(PCrn_tot) = 0.0;




end BIOMD554;
