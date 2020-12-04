model BIOMD059 "Modeling of Ca2+ flux in pancreatic beta-cells: role of the plasma membrane and intracellular stores"

    parameter Real TV = 26.730;
    parameter Real Ca_ec = 2600.000;
    parameter Real K_ec = 8000.000;
    parameter Real K_cyt = 132400.000;
    parameter Real Na_ec = 140000.000;
    parameter Real Vcah = -19.000;
    parameter Real Kcah = 9.500;
    parameter Real gm_CRAN = 0.700;
    parameter Real Kcar = 200.000;
    parameter Real V_CRAN = 0.000;
    parameter Real f5_ast = 0.002;
    parameter Real b5_ast = 0.030;
    parameter Real f_1 = 2.5e-10;
    parameter Real f_4 = 1.5e-8;
    parameter Real b_2 = 1.0e-4;
    parameter Real b_3 = 1.72e-17;
    parameter Real b_4 = 2.0e-4;
    parameter Real P = 4950.000;
    parameter Real b_6 = 6.0e-7;
    parameter Real Ksup = 150400.000;
    parameter Real f_2 = 10.000;
    parameter Real f_3 = 0.172;
    parameter Real f_6 = 11.500;
    parameter Real b_1 = 100.000;
    parameter Real Kkca = 0.100;
    parameter Real Kdd = 17.000;
    parameter Real Ktd = 26.000;
    parameter Real Ktt = 1.000;
    parameter Real Vn = -14.000;
    parameter Real Sn = 7.000;
    parameter Real c = 20.000;
    parameter Real Vtau = -75.000;
    parameter Real a = 65.000;
    parameter Real b = 20.000;
    parameter Real gmvca = 770.000;
    parameter Real Pmcap = 2000.000;
    parameter Real Kcap = 0.100;
    parameter Real gnaca = 271.000;
    parameter Real Knaca = 0.750;
    parameter Real gmna = 1200.000;
    parameter Real Pnak = 600.000;
    parameter Real gmKDr = 3000.000;
    parameter Real gmkca = 130.000;
    parameter Real gmkatp = 24000.000;
    parameter Real Kcarp = 0.500;
    parameter Real Krca = 0.077;
    parameter Real Kip3 = 3.200;
    parameter Real Pleak = 1.0e-16;
    parameter Real Pip3 = 1.2e-15;
    parameter Real Cm = 6158.000;
    parameter Real fi = 0.010;
    parameter Real F = 9.6485e-16;
    parameter Real ksg = 1.0e-4;
    parameter Real fer = 0.030;
    parameter Real kip = 3.0e-4;
    parameter Real Kipca = 0.400;
    parameter Real kdip = 4.0e-5;
    parameter Real kadp = 3.7e-4;
    parameter Real katpca = 5.0e-5;
    parameter Real katp = 5.0e-5;

    Real n(start=0.001);
    Real V(start=-60.900);
    Real Vca(start=0.000);
    Real Vk(start=0.000);
    Real Vna(start=0.000);
    Real Vnaca(start=0.000);
    Real pvca(start=0.000);
    Real f_CRAN(start=0.000);
    Real p_CRAN(start=0.000);
    Real pna(start=0.000);
    Real f_5(start=0.000);
    Real b_5(start=0.000);
    Real F1(start=0.000);
    Real F4(start=0.000);
    Real B2(start=0.000);
    Real B3(start=0.000);
    Real B4(start=0.000);
    Real B6(start=0.000);
    Real D(start=0.000);
    Real f_Ca(start=0.000);
    Real Okatp(start=0.000);
    Real n_infinity(start=0.000);
    Real tau_n(start=0.000);
    Real I_Vca(start=0.000);
    Real I_CaPump(start=0.000);
    Real I_NaCa(start=0.000);
    Real I_CRAN(start=0.000);
    Real I_Na(start=0.000);
    Real I_NaK(start=0.000);
    Real I_KDr(start=0.000);
    Real I_KCa(start=0.000);
    Real I_KATP(start=0.000);
    Real Jerp(start=0.000);
    Real Pcaer(start=0.105);
    Real O_infinity(start=0.000);
    Real Jout(start=0.000);

    Real Ca_cyt "Cytosolic Calcium";
    Real Ca_er "ER Calcium";
    Real IP3_cyt "Cytosolic IP3";
    Real Na_cyt "Cytosolic Sodium";
    Real ATP_cyt "Cytosolic ATP";
    Real ADP_cyt "Cytosolic ADP";

initial equation
    Ca_cyt = 0.085;
    Ca_er = 22.8;
    IP3_cyt = 0.33;
    Na_cyt = 9858.00;
    ATP_cyt = 932.1;
    ADP_cyt = 3067.9;

equation
    ADP_cyt = 4000 - ATP_cyt;
    Vca = TV/2*(Ca_ec/Ca_cyt);
    Vk = TV*(K_ec/K_cyt);
    Vna = TV*(Na_ec/Na_cyt);
    Vnaca = TV*(3*(Na_ec/Na_cyt)-(Ca_ec/Ca_cyt));
    pvca = 1/(1+exp((Vcah-V)/Kcah));
    f_CRAN = gm_CRAN/(1+exp((Ca_er-Kcar)/3));
    p_CRAN = V - V_CRAN;
    pna = 1/(1+exp((104+V)/8));
    f_5 = f5_ast*exp(V/(2*TV));
    b_5 = b5_ast*exp(V/(2*TV));
    F1 = f_1*Na_cyt^3;
    F4 = f_4*K_ec^2;
    F5 = f_5*ATP_cyt;
    B2 = b_2*ADP_cyt;
    B3 = b_3*Na_ec^3;
    B4 = b_4*P;
    B6 = b_6*Ksup^2;
    D = f_2*f_3*F4*F5*f_6 + b_1*f_3*F4*F5*f_6 + b_1*B2*F4*F5*f_6 + b_1*B2*B3*F5*f_6 + b_1*B2*B3*B4*f_6 + b_1*B2*B3*B4*b_5;
    f_Ca = Ca_cyt^4/(Ca_cyt^4+Kkca^4);
    Okatp = (0.08*(1+0.33*ADP_cyt/Kdd)+0.89*(0.165*ADP_cyt/Kdd)^2)/((1+0.165*ADP_cyt/Kdd)^2*(1+0.135*ADP_cyt/Ktd+0.05*ATP_cyt/Ktt));
    n_infinity = 1/(1+exp((Vn-V)/Sn));
    tau_n = c/(exp((V-Vtau)/a)+exp((Vtau-V)/b));
    I_Vca = gmvca*pvca*(V-Vca);
    I_CaPump = Pmcap*Ca_cyt^2/(Kcap^2+Ca_cyt^2);
    I_NaCa = gnaca*Ca_cyt^5*(V-Vnaca)/(Ca_cyt^5+Knaca^5);
    I_CRAN = f_CRAN*p_CRAN*(V-Vna);
    I_Na = gmna*pna*(V-Vna);
    I_NaK = Pnak*(F1*f_2*f_3*F4*F5*f_6 - b_1*B2*B3*B4*b_5*B6)/(D);
    I_KDr = gmKDr*n*(V-Vk);
    I_KCa = gmkca*f_Ca*(V-Vk);
    I_KATP = gmkatp*Okatp*(V-Vk);
    Jerp = Pcaer*Ca_cyt^2/(Ca_cyt^2+Kcarp^2);
    O_infinity = Ca_cyt*IP3_cyt^3/((Ca_cyt+Krca)*(IP3_cyt^3+Kip3^3));
    Jout = (Pleak+Pip3*O_infinity)*(Ca_er-Ca_cyt);
    der(n) = (n_infinity - n)/tau_n;
    der(V) = -(I_Vca+I_CaPump+I_NaCa+I_CRAN+I_Na+I_NaK+I_KDr+I_KCa+I_KATP)/Cm;
    der(Ca_cyt) = fi*(-I_Vca)/(2*F) + fi*2*I_NaCa/(2*F) + 0.01*Jout - fi*2*I_CaPump/(2*F) - 0.01*Jerp - ksg*Ca_cyt;
    der(Ca_er) = 0.03*Jerp - 0.03*Jout;
    der(IP3_cyt) = kip*Ca_cyt^2/(Ca_cyt^2+Kipca^2) - kdip*IP3_cyt;
    der(Na_cyt) = I_Na/F + I_CRAN/F - 3*I_NaCa/F - 3*I_NaK/F;
    der(ATP_cyt) = kadp*ADP_cyt - I_NaK/F - I_CaPump/F - Jerp/2 - katpca*Ca_cyt*ATP_cyt - katp*ATP_cyt;
    
end BIOMD059;