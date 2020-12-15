
model BIOMD202 "ChenXF2008_CICR"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real L = 0.00093;
    parameter Real P_IP3R = 66.6;
    parameter Real Ki = 1.0;
    parameter Real k_i = 6.0;
    parameter Real Ka = 0.4;
    parameter Real V_SERCA = 1.0;
    parameter Real p = 2.0;
    parameter Real K_SERCA = 0.15;
    parameter Real k_soc = 2.3;
    parameter Real V_PMleak = 5e-07;
    parameter Real Ca_ec = 1500.0;
    parameter Real V_PMCA = 1.0;
    parameter Real q = 2.0;
    parameter Real K_PMCA = 0.45;
    parameter Real V_PLC = 0.5;
    parameter Real K_PLC = 0.12;
    parameter Real kdeg = 0.5;
    parameter Real K_deg = 0.1;
    parameter Real A = 0.5;
    parameter Real Kd = 0.4;
    parameter Real K1 = 5.0;
    parameter Real St = 0.6;
    parameter Real k_a = 4.0;
    parameter Real Vs4 = 0.25;
    parameter Real K2 = 0.14;
    parameter Real kd_oligo = 0.8;
    parameter Real Vcp = 0.00018;
    parameter Real n_hill = 3.0;
    parameter Real Kc = 2e-05;
    parameter Real kdc = 0.5;
    parameter Real kop = 0.5;
    parameter Real l_hill = 1.0;
    parameter Real Ko = 0.2;
    parameter Real kod = 1.0;
    parameter Real kdo = 0.6;
    parameter Real r_hill = 4.0;
    parameter Real Orai1_t = 0.001;
    parameter Real Cytoplasm = 1.0;
    parameter Real ER = 1.0;
    parameter Real PM = 1.0;

    Real h(start=0.0);

    Real Ca_Cyt;
    Real IP3_Cyt;
    Real Ca_ER;
    Real S2;
    Real S2a;
    Real S4;
    Real Oc;
    Real O_o;
    Real Orai1;

initial equation
    Ca_Cyt = 0.0;
    IP3_Cyt = 0.0;
    Ca_ER = 0.0;
    S2a = 0.06;
    S4 = 0.0;
    Oc = 0.0;
    O_o = 0.0;

equation
    Orai1 = Orai1_t - (r_hill * Oc + r_hill * O_o);
    S2 = pow(K1, 2) / (pow(Ca_ER, 2) + pow(K1, 2)) * (St - S2a);
    der(h) = A * (Kd - (Ca_Cyt + Kd) * h);
    der(Ca_Cyt) = (Cytoplasm * (L + P_IP3R * IP3_Cyt^3 * Ca_Cyt^3 * h^3 / ((IP3_Cyt + Ki)^3 * (Ca_Cyt + Ka)^3)) * (Ca_ER - Ca_Cyt)) + (Cytoplasm * (k_soc * O_o + V_PMleak) * (Ca_ec - Ca_Cyt)) - (Cytoplasm * (V_SERCA * Ca_Cyt^p / (K_SERCA^p + Ca_Cyt^p))) - (Cytoplasm * (V_PMCA * Ca_Cyt^q / (K_PMCA^q + Ca_Cyt^q)));
    der(IP3_Cyt) = (Cytoplasm * (V_PLC * Ca_Cyt^2 / (K_PLC^2 + Ca_Cyt^2))) - (Cytoplasm * (kdeg * Ca_Cyt^2 / (K_deg^2 + Ca_Cyt^2)) * IP3_Cyt);
    der(Ca_ER) = (Cytoplasm * (V_SERCA * Ca_Cyt^p / (K_SERCA^p + Ca_Cyt^p))) - (Cytoplasm * (L + P_IP3R * IP3_Cyt^3 * Ca_Cyt^3 * h^3 / ((IP3_Cyt + Ki)^3 * (Ca_Cyt + Ka)^3)) * (Ca_ER - Ca_Cyt));
    der(S2a) = (ER * k_a * S2) - (ER * k_i * S2a);
    der(S4) = (ER * (Vs4 * S2^2 / (S2^2 + K2^2))) - (ER * kd_oligo * S4);
    der(Oc) = (PM * (Vcp * Orai1^n_hill / (Kc^n_hill + Orai1^n_hill))) + (PM * kod * O_o) - (PM * kdc * Oc) - (PM * (kop * S2a^l_hill * Oc / (Ko^l_hill + S2a^l_hill)));
    der(O_o) = (PM * (kop * S2a^l_hill * Oc / (Ko^l_hill + S2a^l_hill))) - (PM * kod * O_o) - (PM * kdo * O_o);




end BIOMD202;
