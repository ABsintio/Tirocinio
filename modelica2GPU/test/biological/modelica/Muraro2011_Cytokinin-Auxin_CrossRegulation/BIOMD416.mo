
model BIOMD416 "Muraro2011_Cytokinin-Auxin_CrossRegulation"

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



    parameter Real eps = 0.01;
    parameter Real lambda1 = 0.1;
    parameter Real lambda3 = 0.02;
    parameter Real alphaAux = 1.0;
    parameter Real alphaTIR1 = 1.0;
    parameter Real alphaARF = 1.0;
    parameter Real phiIAAp = 100.0;
    parameter Real phiARp = 2.0;
    parameter Real phiPINp = 100.0;
    parameter Real deltaIAAp = 1.0;
    parameter Real deltaARp = 1.0;
    parameter Real deltaPINp = 1.0;
    parameter Real muAux = 0.1;
    parameter Real muIAAs = 1.0;
    parameter Real etaAuxTIR1 = 10.0;
    parameter Real etaARFIAA = 1.0;
    parameter Real la = 0.5;
    parameter Real ld = 0.1;
    parameter Real pa = 10.0;
    parameter Real pd = 10.0;
    parameter Real ka = 100.0;
    parameter Real kd = 1.0;
    parameter Real qa = 1.0;
    parameter Real qd = 1.0;
    parameter Real thetaARF = 0.1;
    parameter Real thetaARF2 = 0.01;
    parameter Real thARFIAA = 0.1;
    parameter Real thetaIAAp = 0.1;
    parameter Real thetaARp = 0.1;
    parameter Real psiARFIAA = 0.1;
    parameter Real psiARF = 0.1;
    parameter Real alphaCk = 1.0;
    parameter Real alphaARRB = 2.0;
    parameter Real alphaAHK = 1.0;
    parameter Real alphaPH = 1.0;
    parameter Real phiCRp = 2.0;
    parameter Real phiARRAp = 100.0;
    parameter Real deltaCRp = 1.0;
    parameter Real deltaARRAp = 1.0;
    parameter Real muCk = 0.1;
    parameter Real etaAHKph = 1.0;
    parameter Real etaCkPh = 1.0;
    parameter Real ra = 1.0;
    parameter Real rd = 1.0;
    parameter Real ua = 1.0;
    parameter Real ud = 1.0;
    parameter Real sa = 1.0;
    parameter Real sd = 1.0;
    parameter Real thARRAph = 0.1;
    parameter Real thARRBph = 0.1;
    parameter Real cell = 1.0;



    Real IAAm;
    Real IAAp;
    Real AuxTIR1;
    Real AuxTIAA;
    Real IAAs;
    Real ARFIAA;
    Real ARF2;
    Real Aux;
    Real PINm;
    Real PINp;
    Real ARm;
    Real ARp;
    Real TIR1;
    Real ARF;
    Real CRm;
    Real CRp;
    Real AHKph;
    Real Ck;
    Real ARRBph;
    Real ARRAph;
    Real ARRAm;
    Real ARRAp;
    Real ARRBp;
    Real CkAHKph;
    Real CkAHK;
    Real F1;
    Real F2;
    Real F3;
    Real F4;
    Real F5a;
    Real F5b;
    Real F6;

initial equation
    IAAm = 0.0;
    IAAp = 0.0;
    AuxTIR1 = 0.0;
    AuxTIAA = 0.0;
    IAAs = 0.0;
    ARFIAA = 0.0;
    ARF2 = 0.0;
    Aux = 1.0;
    PINm = 0.0;
    PINp = 0.0;
    ARm = 0.0;
    ARp = 0.0;
    CRm = 0.0;
    CRp = 0.0;
    AHKph = 1.0;
    Ck = 1.0;
    ARRBph = 0.0;
    ARRAph = 0.0;
    ARRAm = 0.0;
    ARRAp = 0.0;

equation
    TIR1 = alphaTIR1 - AuxTIR1 - AuxTIAA;
    ARF = alphaARF - 2 * ARF2 - ARFIAA;
    ARRBp = alphaARRB - etaAHKph * ARRBph;
    CkAHKph = alphaPH - AHKph - ARRAph - ARRBph;
    CkAHK = alphaAHK - etaAHKph * (AHKph + CkAHKph);
    F1 = ARF / thetaARF / (1 + ARF / thetaARF + ARF2 / thetaARF2 + ARFIAA / thARFIAA + ARF * IAAp / psiARFIAA + pow(ARF, 2) / psiARF + ARRBph / thARRBph);
    F2 = (ARF2 / thetaARF2 + pow(ARF, 2) / psiARF) / (1 + ARF / thetaARF + ARF2 / thetaARF2 + ARFIAA / thARFIAA + ARF * IAAp / psiARFIAA + pow(ARF, 2) / psiARF + ARRBph / thARRBph);
    F3 = ARRBph / thARRBph / (1 + ARF / thetaARF + ARF2 / thetaARF2 + ARFIAA / thARFIAA + ARF * IAAp / psiARFIAA + pow(ARF, 2) / psiARF + ARRBph / thARRBph);
    F4 = ARRBph / thARRBph / (1 + ARRAph / thARRAph + ARRBph / thARRBph);
    F5a = ARF / thetaARF / (1 + ARF / thetaARF + ARF2 / thetaARF2 + ARFIAA / thARFIAA + ARF * IAAp / psiARFIAA + pow(ARF, 2) / psiARF);
    F5b = (ARF2 / thetaARF2 + pow(ARF, 2) / psiARF) / (1 + ARF / thetaARF + ARF2 / thetaARF2 + ARFIAA / thARFIAA + ARF * IAAp / psiARFIAA + pow(ARF, 2) / psiARF);
    F6 = ARp / thetaARp / (1 + ARp / thetaARp);
    der(IAAm) = (phiIAAp * (lambda1 * F1 + F2 + lambda3 * F3) - IAAm) ;
    der(IAAp) = (1 / eps * (deltaIAAp * IAAm - la * IAAp * AuxTIR1 + ld * AuxTIAA) + etaARFIAA * (pd * ARFIAA - pa * IAAp * ARF)) ;
    der(AuxTIR1) = (1 / eps * (ka * Aux * TIR1 - kd * AuxTIR1 + (ld + 1) * AuxTIAA - la * AuxTIR1 * IAAp)) ;
    der(AuxTIAA) = (1 / eps * (la * IAAp * AuxTIR1 - (ld + 1) * AuxTIAA)) ;
    der(IAAs) = (1 / eps * (AuxTIAA - muIAAs * IAAs)) ;
    der(ARFIAA) = (pa * ARF * IAAp - pd * ARFIAA) ;
    der(ARF2) = (qa * pow(ARF, 2) - qd * ARF2) ;
    der(Aux) = (muAux * (alphaAux - Aux) - 1 / eps * etaAuxTIR1 * (ka * Aux * TIR1 - kd * AuxTIR1)) ;
    der(PINm) = (phiPINp * (lambda1 * F5a + F5b) - PINm) ;
    der(PINp) = (1 / eps * (deltaPINp * PINm - PINp)) ;
    der(ARm) = (phiARp * (lambda1 * F5a + F5b) - ARm) ;
    der(ARp) = (1 / eps * (deltaARp * ARm - ARp)) ;
    der(CRm) = (phiCRp * F4 - CRm) ;
    der(CRp) = (1 / eps * (deltaCRp * CRm - CRp)) ;
    der(AHKph) = (1 / eps * (rd * CkAHKph - ra * AHKph * Ck)) ;
    der(Ck) = (muCk * (alphaCk - Ck) - etaCkPh / eps * (ra * AHKph * Ck - rd * CkAHKph)) ;
    der(ARRBph) = (1 / eps * (ua * CkAHKph * ARRBp - ud * CkAHK * ARRBph)) ;
    der(ARRAph) = (1 / eps * (sa * CkAHKph * ARRAp - sd * CkAHK * ARRAph)) ;
    der(ARRAm) = (phiARRAp * F6 - ARRAm) ;
    der(ARRAp) = (1 / eps * (deltaARRAp * ARRAm - ARRAp + etaAHKph * (sd * CkAHK * ARRAph - sa * CkAHKph * ARRAp))) ;




end BIOMD416;
