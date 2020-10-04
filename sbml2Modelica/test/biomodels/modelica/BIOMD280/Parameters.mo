within BIOMD280;
class Parameters

    Real elmt_lambdaN_bar(unit = "s-1.0") "";
    Real elmt_gL(unit = "A2.0.kg-1.0.m-4.0.s3.0") "";
    Real elmt_gK(unit = "A2.0.kg-1.0.m-4.0.s3.0") "";
    Real elmt_N(unit = "") "";
    Real elmt_VCa(unit = "A-1.0..m2.0.s-3.0") "";
    Real elmt_lambdaN(unit = "s-1.0") "";
    Real elmt_C(unit = "A2.0.kg-1.0.m-4.0.s4.0") "";
    Real elmt_VK(unit = "A-1.0..m2.0.s-3.0") "";
    Real elmt_VL(unit = "A-1.0..m2.0.s-3.0") "";
    Real elmt_Minf(unit = "") "";
    Real elmt_Ninf(unit = "") "";
    Real elmt_gCa(unit = "A2.0.kg-1.0.m-4.0.s3.0") "";
    Real elmt_V3(unit = "A-1.0..m2.0.s-3.0") "";
    Real elmt_V4(unit = "A-1.0..m2.0.s-3.0") "";
    Real elmt_V1(unit = "A-1.0..m2.0.s-3.0") "";
    Real elmt_V(unit = "A-1.0..m2.0.s-3.0") "";
    Real elmt_V2(unit = "A-1.0..m2.0.s-3.0") "";
    Real elmt_Iapp(unit = ".m-2.0") "";


    initial equation
        elmt_lambdaN_bar = 0.066666666667;
        elmt_gL = 2.0;
        elmt_gK = 8.0;
        elmt_N = ((1.0 + tanh(((elmt_V - elmt_V3) / elmt_V4))) / 2.0);
        elmt_VCa = 100.0;
        elmt_C = 20.0;
        elmt_VK = (-70.0);
        elmt_VL = (-50.0);
        elmt_gCa = 4.0;
        elmt_V3 = (-1.0);
        elmt_V4 = 14.5;
        elmt_V1 = 10.0;
        elmt_V = (-50.0);
        elmt_V2 = 15.0;
        elmt_Iapp = 300.0;


    equation
        der(elmt_lambdaN_bar) = 0;
        der(elmt_gL) = 0;
        der(elmt_gK) = 0;
        der(elmt_N) = (elmt_lambdaN * (elmt_Ninf - elmt_N));
        der(elmt_VCa) = 0;
        elmt_lambdaN = (elmt_lambdaN_bar * cosh(((elmt_V - elmt_V3) / (2.0 * elmt_V4))));
        der(elmt_C) = 0;
        der(elmt_VK) = 0;
        der(elmt_VL) = 0;
        elmt_Minf = ((1.0 + tanh(((elmt_V - elmt_V1) / elmt_V2))) / 2.0);
        elmt_Ninf = ((1.0 + tanh(((elmt_V - elmt_V3) / elmt_V4))) / 2.0);
        der(elmt_gCa) = 0;
        der(elmt_V3) = 0;
        der(elmt_V4) = 0;
        der(elmt_V1) = 0;
        der(elmt_V) = ((((elmt_Iapp - (elmt_gL * (elmt_V - elmt_VL))) - (elmt_gCa * elmt_Minf * (elmt_V - elmt_VCa))) - (elmt_gK * elmt_N * (elmt_V - elmt_VK))) / elmt_C);
        der(elmt_V2) = 0;
        der(elmt_Iapp) = 0;

end Parameters;
