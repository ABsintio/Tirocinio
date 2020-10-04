within BIOMD105;
class Parameters

    Real elmt_k1(unit = "") "";
    Real elmt_k2(unit = "") "";
    Real elmt_k3(unit = "") "";
    Real elmt_k63(unit = "") "";
    Real elmt_k74(unit = "") "";
    Real elmt_k62(unit = "") "";
    Real elmt_k73(unit = "") "";
    Real elmt_k61(unit = "") "";
    Real elmt_k72(unit = "") "";
    Real elmt_k71(unit = "") "";
    Real elmt_k61r(unit = "") "";
    Real elmt_k69(unit = "") "";
    Real elmt_k68(unit = "") "";
    Real elmt_k67(unit = "") "";
    Real elmt_k66(unit = "") "";
    Real elmt_k65(unit = "") "";
    Real elmt_k64(unit = "") "";


    initial equation
        elmt_k1 = 0.01;
        elmt_k2 = 2.0E-6;
        elmt_k3 = 4.0E-6;
        elmt_k63 = 0.001;
        elmt_k74 = 1.0E-5;
        elmt_k62 = 2.0E-4;
        elmt_k73 = 0.001;
        elmt_k61 = 1.7E-5;
        elmt_k72 = 1.0E-8;
        elmt_k71 = 1.0E-8;
        elmt_k61r = 2.0E-4;
        elmt_k69 = 0.0;
        elmt_k68 = 1.0E-5;
        elmt_k67 = 1.0E-5;
        elmt_k66 = 1.0E-5;
        elmt_k65 = 0.01;
        elmt_k64 = 0.001;


    equation
        der(elmt_k1) = 0;
        der(elmt_k2) = 0;
        der(elmt_k3) = 0;
        der(elmt_k63) = 0;
        der(elmt_k74) = 0;
        der(elmt_k62) = 0;
        der(elmt_k73) = 0;
        der(elmt_k61) = 0;
        der(elmt_k72) = 0;
        der(elmt_k71) = 0;
        der(elmt_k61r) = 0;
        der(elmt_k69) = 0;
        der(elmt_k68) = 0;
        der(elmt_k67) = 0;
        der(elmt_k66) = 0;
        der(elmt_k65) = 0;
        der(elmt_k64) = 0;

end Parameters;
