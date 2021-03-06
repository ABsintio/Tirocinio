within BIOMD109;
class Parameters

    input Real elmt_E2F;

    input Boolean elmt_event0;
    input Real assign_elmt_kYact;


    Real elmt_kbYE2YYpRb(unit = "") "";
    Real elmt_kbYEmi1YYAPCC(unit = "") "";
    Real elmt_kudYAPCCYYCyclinA(unit = "") "";
    Real elmt_kuYD4YYpRb(unit = "") "";
    Real elmt_kbYAPCCYYCyclinA(unit = "") "";
    Real elmt_kuYE2YYpRb(unit = "") "";
    Real elmt_ks0YCyclinA(unit = "") "";
    Real elmt_kbYA2YYpRb(unit = "") "";
    Real elmt_kuYE2FYYpRb(unit = "") "";
    Real elmt_kuYp27YYCdk2(unit = "") "";
    Real elmt_ksYp27(unit = "") "";
    Real elmt_kuYA2YYpRb(unit = "") "";
    Real elmt_ks0YCyclinE(unit = "") "";
    Real elmt_ksYEmi1(unit = "") "";
    Real elmt_kdYE2F(unit = "") "";
    Real elmt_kbYE2FYYpRb(unit = "") "";
    Real elmt_kuYCyclinDYYCdk4(unit = "") "";
    Real elmt_timeYModifier(unit = "") "";
    Real elmt_kYact(unit = "") "";
    Real elmt_kbYA1YYpRb(unit = "") "";
    Real elmt_kd1Yp27(unit = "") "";
    Real elmt_kbYCyclinAYYCdk2(unit = "") "";
    Real elmt_ks1YCyclinE(unit = "") "";
    Real elmt_ks1YEmi1(unit = "") "";
    Real elmt_kbYCyclinAYYCdk1(unit = "") "";
    Real elmt_kd0YE2F(unit = "") "";
    Real elmt_ksMYCyclinA(unit = "") "";
    Real elmt_kbYD4YYpRb(unit = "") "";
    Real elmt_ksMYCyclinE(unit = "") "";
    Real elmt_kbYCyclinDYYCdk4(unit = "") "";
    Real elmt_ksYCyclinE(unit = "") "";
    Real elmt_ksYCyclinD(unit = "") "";
    Real elmt_ks1YE2F(unit = "") "";
    Real elmt_kupYA2YYpRb(unit = "") "";
    Real elmt_ktYpRbYYDephos(unit = "") "";
    Real elmt_kbYCyclinEYYCdk2(unit = "") "";
    Real elmt_kdYEmi1(unit = "") "";
    Real elmt_ks1YCyclinA(unit = "") "";
    Real elmt_ksMYE2F(unit = "") "";
    Real elmt_k1Yact(unit = "") "";
    Real elmt_ks0YE2F(unit = "") "";
    Real elmt_kbYp27YYCdk2(unit = "") "";
    Real elmt_kbYp27YYCdk4(unit = "") "";
    Real elmt_kuYEmi1YYAPCC(unit = "") "";
    Real elmt_kupYD4YYpRb(unit = "") "";
    Real elmt_kuYCyclinAYYCdk2(unit = "") "";
    Real elmt_kuYCyclinAYYCdk1(unit = "") "";
    Real elmt_kupYE2YYpRb(unit = "") "";
    Real elmt_kuYAPCCYYCyclinA(unit = "") "";
    Real elmt_kdYCyclinA(unit = "") "";
    Real elmt_kuYp27YYCdk4(unit = "") "";
    Real elmt_kdYCyclinD(unit = "") "";
    Real elmt_kdYCyclinE(unit = "") "";
    Real elmt_ksMYEmi1(unit = "") "";
    Real elmt_kdYp27(unit = "") "";
    Real elmt_kuYCyclinEYYCdk2(unit = "") "";
    Real elmt_kupYA1YYpRb(unit = "") "";
    Real elmt_ks0YEmi1(unit = "") "";
    Real elmt_ksYCyclinA(unit = "") "";
    Real elmt_ksYE2F(unit = "") "";
    Real elmt_kuYA1YYpRb(unit = "") "";


    initial equation
        elmt_kbYE2YYpRb = 5.74E-5;
        elmt_kbYEmi1YYAPCC = 1.0E-4;
        elmt_kudYAPCCYYCyclinA = 4.999555;
        elmt_kuYD4YYpRb = 0.1;
        elmt_kbYAPCCYYCyclinA = 1.61E-5;
        elmt_kuYE2YYpRb = 0.1;
        elmt_ks0YCyclinA = 499.9437;
        elmt_kbYA2YYpRb = 6.25E-5;
        elmt_kuYE2FYYpRb = 0.1;
        elmt_kuYp27YYCdk2 = 0.1;
        elmt_ksYp27 = 195.4716;
        elmt_kuYA2YYpRb = 0.1;
        elmt_ks0YCyclinE = 254.0742;
        elmt_kdYE2F = 0.006465;
        elmt_kbYE2FYYpRb = 9.66E-6;
        elmt_kuYCyclinDYYCdk4 = 0.1;
        elmt_timeYModifier = 240.0637;
        elmt_kYact = 0.0;
        elmt_kbYA1YYpRb = 6.73E-5;
        elmt_kd1Yp27 = 0.071149;
        elmt_kbYCyclinAYYCdk2 = 9.52E-5;
        elmt_ks1YCyclinE = 980.611;
        elmt_ks1YEmi1 = 1788.517;
        elmt_kbYCyclinAYYCdk1 = 6.48E-5;
        elmt_kd0YE2F = 0.002229;
        elmt_ksMYCyclinA = 4064.384;
        elmt_kbYD4YYpRb = 3.15E-5;
        elmt_ksMYCyclinE = 9992.647;
        elmt_kbYCyclinDYYCdk4 = 1.43E-6;
        elmt_ksYCyclinD = 1354.231;
        elmt_ks1YE2F = 65.44282;
        elmt_kupYA2YYpRb = 0.200091;
        elmt_ktYpRbYYDephos = 0.023194;
        elmt_kbYCyclinEYYCdk2 = 5.01E-5;
        elmt_kdYEmi1 = 0.018158;
        elmt_ks1YCyclinA = 7999.996;
        elmt_ksMYE2F = 9818.78;
        elmt_k1Yact = 0.01075;
        elmt_ks0YE2F = 6.927086;
        elmt_kbYp27YYCdk2 = 1.23E-5;
        elmt_kbYp27YYCdk4 = 6.34E-6;
        elmt_kuYEmi1YYAPCC = 0.1;
        elmt_kupYD4YYpRb = 1.694662;
        elmt_kuYCyclinAYYCdk2 = 0.1;
        elmt_kuYCyclinAYYCdk1 = 0.1;
        elmt_kupYE2YYpRb = 4.78271;
        elmt_kuYAPCCYYCyclinA = 0.1;
        elmt_kdYCyclinA = 0.05;
        elmt_kuYp27YYCdk4 = 0.1;
        elmt_kdYCyclinD = 0.05;
        elmt_kdYCyclinE = 0.05;
        elmt_ksMYEmi1 = 9608.162;
        elmt_kdYp27 = 0.001575;
        elmt_kuYCyclinEYYCdk2 = 0.1;
        elmt_kupYA1YYpRb = 0.202132;
        elmt_ks0YEmi1 = 2.004744;
        elmt_kuYA1YYpRb = 0.1;


    equation
        der(elmt_kbYE2YYpRb) = 0;
        der(elmt_kbYEmi1YYAPCC) = 0;
        der(elmt_kudYAPCCYYCyclinA) = 0;
        der(elmt_kuYD4YYpRb) = 0;
        der(elmt_kbYAPCCYYCyclinA) = 0;
        der(elmt_kuYE2YYpRb) = 0;
        der(elmt_ks0YCyclinA) = 0;
        der(elmt_kbYA2YYpRb) = 0;
        der(elmt_kuYE2FYYpRb) = 0;
        der(elmt_kuYp27YYCdk2) = 0;
        der(elmt_ksYp27) = 0;
        der(elmt_kuYA2YYpRb) = 0;
        der(elmt_ks0YCyclinE) = 0;
        elmt_ksYEmi1 = (elmt_ks0YEmi1 + ((elmt_ks1YEmi1 * elmt_E2F) / (elmt_ksMYEmi1 + elmt_E2F)));
        der(elmt_kdYE2F) = 0;
        der(elmt_kbYE2FYYpRb) = 0;
        der(elmt_kuYCyclinDYYCdk4) = 0;
        der(elmt_timeYModifier) = 0;
        der(elmt_kYact) = 0.0;
        der(elmt_kbYA1YYpRb) = 0;
        der(elmt_kd1Yp27) = 0;
        der(elmt_kbYCyclinAYYCdk2) = 0;
        der(elmt_ks1YCyclinE) = 0;
        der(elmt_ks1YEmi1) = 0;
        der(elmt_kbYCyclinAYYCdk1) = 0;
        der(elmt_kd0YE2F) = 0;
        der(elmt_ksMYCyclinA) = 0;
        der(elmt_kbYD4YYpRb) = 0;
        der(elmt_ksMYCyclinE) = 0;
        der(elmt_kbYCyclinDYYCdk4) = 0;
        elmt_ksYCyclinE = (elmt_ks0YCyclinE + ((elmt_ks1YCyclinE * elmt_E2F) / (elmt_ksMYCyclinE + elmt_E2F)));
        der(elmt_ksYCyclinD) = 0;
        der(elmt_ks1YE2F) = 0;
        der(elmt_kupYA2YYpRb) = 0;
        der(elmt_ktYpRbYYDephos) = 0;
        der(elmt_kbYCyclinEYYCdk2) = 0;
        der(elmt_kdYEmi1) = 0;
        der(elmt_ks1YCyclinA) = 0;
        der(elmt_ksMYE2F) = 0;
        der(elmt_k1Yact) = 0;
        der(elmt_ks0YE2F) = 0;
        der(elmt_kbYp27YYCdk2) = 0;
        der(elmt_kbYp27YYCdk4) = 0;
        der(elmt_kuYEmi1YYAPCC) = 0;
        der(elmt_kupYD4YYpRb) = 0;
        der(elmt_kuYCyclinAYYCdk2) = 0;
        der(elmt_kuYCyclinAYYCdk1) = 0;
        der(elmt_kupYE2YYpRb) = 0;
        der(elmt_kuYAPCCYYCyclinA) = 0;
        der(elmt_kdYCyclinA) = 0;
        der(elmt_kuYp27YYCdk4) = 0;
        der(elmt_kdYCyclinD) = 0;
        der(elmt_kdYCyclinE) = 0;
        der(elmt_ksMYEmi1) = 0;
        der(elmt_kdYp27) = 0;
        der(elmt_kuYCyclinEYYCdk2) = 0;
        der(elmt_kupYA1YYpRb) = 0;
        der(elmt_ks0YEmi1) = 0;
        elmt_ksYCyclinA = (elmt_ks0YCyclinA + ((elmt_ks1YCyclinA * elmt_E2F) / (elmt_ksMYCyclinA + elmt_E2F)));
        elmt_ksYE2F = (elmt_ks0YE2F + ((elmt_ks1YE2F * elmt_E2F) / (elmt_ksMYE2F + elmt_E2F)));
        der(elmt_kuYA1YYpRb) = 0;

        when elmt_event0 then
            reinit(elmt_kYact, assign_elmt_kYact);
        end when;
end Parameters;
