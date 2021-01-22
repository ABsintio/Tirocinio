
model BIOMD476 "Adams2012 - Locke2006 Circadian Rhythm model refined with Input Signal Light Function"

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


    function function_1
        	input Real V;
	input Real substrate;
	input Real Km;
        output Real y;
    algorithm
        y :=  V * substrate / (Km + substrate);
    end function_1;


    function LightFunction
        	input Real t;
	input Real lightOffset;
	input Real lightAmplitude;
	input Real phase;
	input Real photoPeriod;
	input Real cyclePeriod;
	input Real twilightPeriod;
        output Real y;
    algorithm
        y :=  (lightOffset + 0.5 * lightAmplitude * (1 + tanh(cyclePeriod * ((t + phase) / cyclePeriod - floor(floor(t + phase) / cyclePeriod)) / twilightPeriod)) - 0.5 * lightAmplitude * (1 + tanh((cyclePeriod * ((t + phase) / cyclePeriod - floor(floor(t + phase) / cyclePeriod)) - photoPeriod) / twilightPeriod))) + 0.5 * lightAmplitude * (1 + tanh((cyclePeriod * ((t + phase) / cyclePeriod - floor(floor(t + phase) / cyclePeriod)) - cyclePeriod) / twilightPeriod));
    end LightFunction;


    parameter Real q1 = 4.1954;
    parameter Real n0 = 0.05;
    parameter Real g0 = 1.0;
    parameter Real alpha = 4.0;
    parameter Real n1 = 7.8142;
    parameter Real a = 1.2479;
    parameter Real g1 = 3.1383;
    parameter Real m1 = 1.999;
    parameter Real k1 = 2.392;
    parameter Real p1 = 0.8295;
    parameter Real r1 = 16.8363;
    parameter Real r2 = 0.1687;
    parameter Real m2 = 20.44;
    parameter Real k2 = 1.5644;
    parameter Real m3 = 3.6888;
    parameter Real k3 = 1.2765;
    parameter Real n2 = 3.0087;
    parameter Real b = 1.0258;
    parameter Real g2 = 0.0368;
    parameter Real g3 = 0.2658;
    parameter Real c = 1.0258;
    parameter Real m4 = 3.8231;
    parameter Real k4 = 2.5734;
    parameter Real p2 = 4.324;
    parameter Real r3 = 0.3166;
    parameter Real r4 = 2.1509;
    parameter Real m5 = 0.0013;
    parameter Real m6 = 3.1741;
    parameter Real k5 = 2.7454;
    parameter Real m7 = 0.0492;
    parameter Real m8 = 4.0424;
    parameter Real k6 = 0.4033;
    parameter Real n3 = 0.2431;
    parameter Real d = 1.4422;
    parameter Real g4 = 0.5388;
    parameter Real m9 = 10.1132;
    parameter Real k7 = 6.5585;
    parameter Real p3 = 2.147;
    parameter Real r5 = 1.0352;
    parameter Real r6 = 3.3017;
    parameter Real m10 = 0.2179;
    parameter Real k8 = 0.6632;
    parameter Real m11 = 3.3442;
    parameter Real k9 = 17.1111;
    parameter Real q2 = 2.4017;
    parameter Real n4 = 0.0857;
    parameter Real n5 = 0.1649;
    parameter Real g5 = 1.178;
    parameter Real g6 = 0.0645;
    parameter Real e = 3.6064;
    parameter Real f = 1.0237;
    parameter Real m12 = 4.297;
    parameter Real k10 = 1.7303;
    parameter Real p4 = 0.2485;
    parameter Real r7 = 2.2123;
    parameter Real r8 = 0.2002;
    parameter Real m13 = 0.1347;
    parameter Real k11 = 1.8258;
    parameter Real m14 = 0.6114;
    parameter Real k12 = 1.8066;
    parameter Real p5 = 0.5;
    parameter Real k13 = 1.2;
    parameter Real m15 = 1.2;
    parameter Real q3 = 1.0;
    parameter Real q4 = 2.4514;
    parameter Real g = 1.0258;
    parameter Real n6 = 8.0706;
    parameter Real g7 = 0.0004;
    parameter Real m16 = 12.2398;
    parameter Real k14 = 10.3617;
    parameter Real p6 = 0.2907;
    parameter Real r9 = 0.2528;
    parameter Real r10 = 0.2212;
    parameter Real m17 = 4.4505;
    parameter Real k15 = 0.0703;
    parameter Real m18 = 0.0156;
    parameter Real k16 = 0.6104;
    parameter Real lightAmplitude = 1.0;
    parameter Real lightOffset = 0.0;
    parameter Real cyclePeriod = 24.0;
    parameter Real photoPeriod = 12.0;
    parameter Real phase = 0.0;
    parameter Real twilightPeriod = 0.0416666667;
    parameter Real compartment = 1.0;



    Real cLm;
    Real cLc;
    Real cLn;
    Real cTm;
    Real cTc;
    Real cTn;
    Real cXm;
    Real cXc;
    Real cXn;
    Real cYm;
    Real cYc;
    Real cYn;
    Real cPn;
    Real cAm;
    Real cAc;
    Real cAn;

initial equation
    cLm = 0.4625;
    cLc = 0.0132;
    cLn = 0.0699;
    cTm = 0.4303;
    cTc = 10.2965;
    cTn = 0.5402;
    cXm = 0.0957;
    cXc = 1.5413;
    cXn = 0.4585;
    cYm = 0.0303;
    cYc = 0.0041;
    cYn = 0.0122;
    cPn = 0.8476;
    cAm = 14.6921;
    cAc = 0.7027;
    cAn = 0.8648;

equation

    der(cLm) = (compartment * pow(g0, alpha) / (pow(g0, alpha) + pow(cAn, alpha)) * (LightFunction(time, lightOffset, lightAmplitude, phase, photoPeriod, cyclePeriod, twilightPeriod) * (q1 * cPn + n0) + n1 * pow(cXn, a) / (pow(g1, a) + pow(cXn, a)))) - (compartment * function_1(m1, cLm, k1));
    der(cLc) = (compartment * p1 * cLm) - (compartment * (r1 * cLc - r2 * cLn)) - (compartment * function_1(m2, cLc, k2));
    der(cLn) = (compartment * (r1 * cLc - r2 * cLn)) - (compartment * function_1(m3, cLn, k3));
    der(cTm) = (compartment * n2 * pow(cYn, b) / (pow(g2, b) + pow(cYn, b)) * (pow(g3, c) / (pow(g3, c) + pow(cLn, c)))) - (compartment * function_1(m4, cTm, k4));
    der(cTc) = (p2 * compartment * cTm) - (compartment * (-r4 * cTn + r3 * cTc)) - (compartment * (1 - LightFunction(time, lightOffset, lightAmplitude, phase, photoPeriod, cyclePeriod, twilightPeriod)) * m5 * cTc / (k5 + cTc)) - (m6 * compartment * cTc / (k5 + cTc));
    der(cTn) = (compartment * (-r4 * cTn + r3 * cTc)) - (compartment * (1 - LightFunction(time, lightOffset, lightAmplitude, phase, photoPeriod, cyclePeriod, twilightPeriod)) * m7 * cTn / (k6 + cTn)) - (m8 * compartment * cTn / (k6 + cTn));
    der(cXm) = (compartment * n3 * pow(cTn, d) / (pow(g4, d) + pow(cTn, d))) - (compartment * m9 * cXm / (k7 + cXm));
    der(cXc) = (compartment * p3 * cXm) - (compartment * (r5 * cXc - r6 * cXn)) - (compartment * function_1(m10, cXc, k8));
    der(cXn) = (compartment * (r5 * cXc - r6 * cXn)) - (compartment * function_1(m11, cXn, k9));
    der(cYm) = (compartment * (LightFunction(time, lightOffset, lightAmplitude, phase, photoPeriod, cyclePeriod, twilightPeriod) * q2 * cPn + (LightFunction(time, lightOffset, lightAmplitude, phase, photoPeriod, cyclePeriod, twilightPeriod) * n4 + n5) * pow(g5, e) / (pow(g5, e) + pow(cTn, e))) * (pow(g6, f) / (pow(g6, f) + pow(cLn, f)))) - (compartment * m12 * cYm / (k10 + cYm));
    der(cYc) = (compartment * p4 * cYm) - (compartment * (r7 * cYc - r8 * cYn)) - (compartment * function_1(m13, cYc, k11));
    der(cYn) = (compartment * (r7 * cYc - r8 * cYn)) - (compartment * function_1(m14, cYn, k12));
    der(cPn) = ((1 - LightFunction(time, lightOffset, lightAmplitude, phase, photoPeriod, cyclePeriod, twilightPeriod)) * p5 * compartment) - (LightFunction(time, lightOffset, lightAmplitude, phase, photoPeriod, cyclePeriod, twilightPeriod) * q3 * cPn * compartment) - (compartment * m15 * cPn / (k13 + cPn));
    der(cAm) = (LightFunction(time, lightOffset, lightAmplitude, phase, photoPeriod, cyclePeriod, twilightPeriod) * q4 * cPn * compartment) + (compartment * n6 * pow(cLn, g) / (pow(g7, g) + pow(cLn, g))) - (compartment * m16 * cAm / (k14 + cAm));
    der(cAc) = (compartment * p6 * cAm) - (compartment * (r9 * cAc - r10 * cAn)) - (compartment * function_1(m17, cAc, k15));
    der(cAn) = (compartment * (r9 * cAc - r10 * cAn)) - (compartment * function_1(m18, cAn, k16));




end BIOMD476;
