
model BIOMD509 "Barrack2014 - Calcium_cell cycle coupling - Rs dependent ATP release"

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



    parameter Real addash = 0.41;
    parameter Real vatp_s = 50.0;
    parameter Real smoothness = 0.01;
    parameter Real vdeg = 2.0;
    parameter Real alpha = 0.083;
    parameter Real gamma = 1.0;
    parameter Real ae = 0.16;
    parameter Real ax = 0.08;
    parameter Real k = 0.05;
    parameter Real qd = 0.6;
    parameter Real qe = 0.6;
    parameter Real qx = 0.8;
    parameter Real f = 0.2;
    parameter Real g = 0.528;
    parameter Real ps = 0.6;
    parameter Real pd = 0.48;
    parameter Real pe = 0.096;
    parameter Real px = 0.48;
    parameter Real ddd = 0.4;
    parameter Real dee = 0.2;
    parameter Real dxx = 1.04;
    parameter Real af = 0.9;
    parameter Real rt = 2.5;
    parameter Real yo = 1.5;
    parameter Real gf = 6.3;
    parameter Real kdeg = 0.0625;
    parameter Real kkdeg = 50.0;
    parameter Real ka = 0.017;
    parameter Real kd = 0.15;
    parameter Real rhstar = 0.6;
    parameter Real dip = 280.0;
    parameter Real krel = 10.0;
    parameter Real ip3min = 0.012;
    parameter Real datpp = 300.0;
    parameter Real kr = 25.0;
    parameter Real scale = 3600.0;
    parameter Real rscrit = 1.0;
    parameter Real ymax = 500.0;
    parameter Real cabasil = 0.02055236;
    parameter Real p1 = 0.0159835;
    parameter Real p2 = 0.514987;
    parameter Real p3 = 1.31319;
    parameter Real p4 = 0.332195;
    parameter Real p5 = 0.787902;
    parameter Real m = 24.1946;
    parameter Real n = 9.79183;
    parameter Real dist = 50.0;
    parameter Real ip30 = 0.013;
    parameter Real cell = 1.0;



    Real d;
    Real ad;
    Real e;
    Real r;
    Real rs;
    Real x;
    Real ip3;
    Real kg;
    Real gstar;
    Real ro;
    Real ip3con;
    Real rscon;
    Real atp;
    Real y;
    Real delta;
    Real ca;

initial equation
    d = 0.0;
    e = 1.0;
    r = 0.0;
    rs = 1.1;
    x = 0.0;
    ip3 = 0.0;
    atp = 0.0;
    y = 0.0;

equation
    ad = addash + gamma * (ca - p1);
    kg = kd / ka;
    gstar = (ro + delta) / (kg + delta + ro);
    ro = atp / (kr + atp);
    ip3con = (tanh((ip3 - ip3min) / 0.01) + 1) / 2;
    rscon = (tanh((rscrit - rs) / 0.01) + 1) / 2;
    delta = kg * kdeg * ip30 / (rhstar - kdeg * ip30);
    ca = p1 + p2 * pow(ip3, m) / (pow(p3, m) + pow(ip3, m)) + p4 * pow(ip3, n) / (pow(p5, n) + pow(ip3, n));
    der(d) = ad * (k * gf / (1 + k * gf)) - ddd * e * d;
    der(e) = ae * (1 + af * (yo - rs)) - dee * x * e;
    der(r) = px * (rt - rs - r) * x / (qx + (rt - rs - r) + x) - ps * (yo - rs) * r;
    der(rs) = ps * (yo - rs) * r - pd * rs * d / (qd + rs + d) - pe * rs * e / (qe + rs + e);
    der(x) = ax * e + f * (yo - rs) + g * pow(x, 2) * e - dxx * x;
    der(ip3) = scale * (rhstar * gstar - kdeg * ip3);
    der(atp) = scale * (vatp_s * (y - atp) * rscon * ip3con * ((ip3 - ip3min) / (krel + ip3)) - vdeg * atp / (kkdeg + atp));
    der(y) = scale * (alpha * (ymax - y) - rscon * ip3con * vatp_s * (y - atp) * ((ip3 - ip3min) / (krel + ip3)));




end BIOMD509;
