
model BIOMD379 "DallaMan2007_MealModel_GlucoseInsulinSystem"

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



    parameter Real V_G = 1.88;
    parameter Real k_1 = 0.065;
    parameter Real k_2 = 0.079;
    parameter Real G_b = 95.0;
    parameter Real V_I = 0.05;
    parameter Real m_1 = 0.19;
    parameter Real m_2 = 0.484;
    parameter Real m_4 = 0.194;
    parameter Real m_5 = 0.0304;
    parameter Real m_6 = 0.6471;
    parameter Real HE_b = 0.6;
    parameter Real I_b = 25.0;
    parameter Real S_b = 1.8;
    parameter Real S_b_minus = -1.8;
    parameter Real k_max = 0.0558;
    parameter Real k_min = 0.008;
    parameter Real k_abs = 0.057;
    parameter Real k_gri = 0.0558;
    parameter Real f = 0.9;
    parameter Real b = 0.82;
    parameter Real d = 0.01;
    parameter Real BW = 78.0;
    parameter Real k_p1 = 2.7;
    parameter Real k_p2 = 0.0021;
    parameter Real k_p3 = 0.009;
    parameter Real k_p4 = 0.0618;
    parameter Real k_i = 0.0079;
    parameter Real U_ii = 1.0;
    parameter Real V_m0 = 2.5;
    parameter Real V_mX = 0.047;
    parameter Real K_m0 = 225.59;
    parameter Real p_2U = 0.0331;
    parameter Real part = 0.2;
    parameter Real K = 2.3;
    parameter Real alpha = 0.05;
    parameter Real beta = 0.11;
    parameter Real gamma = 0.5;
    parameter Real k_e1 = 0.0005;
    parameter Real k_e2 = 339.0;
    parameter Real D = 78000.0;
    parameter Real Compartment1 = 1.0;

    Real aa(start=0.000178062678062678);
    Real cc(start=0.00320512820512821);
    Real EGP(start=1.87872);
    Real V_mmax(start=2.0);
    Real E(start=0.0);
    Real S(start=1.8);
    Real I(start=25.0);
    Real G(start=94.6808510638298);
    Real HE(start=0.59238);
    Real m_3(start=0.276120406260733);
    Real Q_sto(start=78000.0);
    Real Ra(start=0.0);
    Real k_empt(start=0.0554800817258192);
    Real U_idm(start=0.748772844504839);
    Real U_id(start=0.748772844504839);
    Real U(start=1.74877284450484);
    Real S_po(start=1.76784893617021);

    Real G_p;
    Real G_t;
    Real I_l;
    Real I_p;
    Real Q_sto1;
    Real Q_gut;
    Real I_1;
    Real I_d;
    Real X;
    Real I_po;
    Real Y;
    Real Q_sto2;

initial equation
    G_p = 178.0;
    G_t = 135.0;
    I_l = 4.5;
    I_p = 1.25;
    Q_sto1 = 78000.0;
    Q_gut = 0.0;
    I_1 = 25.0;
    I_d = 25.0;
    X = 0.0;
    I_po = 3.6;
    Y = 0.0;
    Q_sto2 = 0.0;

equation
    aa = 5 / 2 / (1 - b) / D;
    cc = 5 / 2 / d / D;
    EGP = k_p1 - k_p2 * G_p - k_p3 * I_d - k_p4 * I_po;
    V_mmax = (1 - part) * (V_m0 + V_mX * X);
    U_idm = V_mmax * G_t / (K_m0 + G_t);
    E = 0;
    S = gamma * I_po;
    I = I_p / V_I;
    G = G_p / V_G;
    HE = -m_5 * S + m_6;
    m_3 = HE * m_1 / (1 - HE);
    Q_sto = Q_sto1 + Q_sto2;
    Ra = f * k_abs * Q_gut / BW;
    k_empt = k_min + (k_max - k_min) / 2 * (tanh(aa * (Q_sto - b * D)) - tanh(cc * (Q_sto - d * D)) + 2);
    U_id = U_idm;
    U = U_ii + U_id;
    S_po = Y + K * (EGP + Ra - E - U_ii - k_1 * G_p + k_2 * G_t) / V_G + S_b;
    der(G_p) = EGP + Ra - E - U_ii - k_1 * G_p + k_2 * G_t;
    der(G_t) = -U_id + k_1 * G_p - k_2 * G_t;
    der(I_l) = -m_1 * I_l - m_3 * I_l + m_2 * I_p + S;
    der(I_p) = -m_2 * I_p - m_4 * I_p + m_1 * I_l;
    der(Q_sto1) = -k_gri * Q_sto1;
    der(Q_sto2) = -k_empt * Q_sto2 + k_gri * Q_sto1;
    der(Q_gut) = -k_abs * Q_gut + k_empt * Q_sto2;
    der(I_1) = -k_i * (I_1 - I);
    der(I_d) = -k_i * (I_d - I_1);
    der(X) = -p_2U * X + p_2U * (I - I_b);
    der(I_po) = -gamma * I_po + S_po;
    der(Y) = -alpha * (Y - beta * (G - G_b));




end BIOMD379;
