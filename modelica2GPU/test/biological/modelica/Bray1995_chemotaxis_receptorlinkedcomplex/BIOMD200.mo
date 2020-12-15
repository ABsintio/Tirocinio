
model BIOMD200 "Bray1995_chemotaxis_receptorlinkedcomplex"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real Hill = 4.0;
    parameter Real k1_complex_r1 = 0.00365;
    parameter Real k2_complex_r1 = 1000000.0;
    parameter Real k1_complex_r2 = 0.00894;
    parameter Real k2_complex_r2 = 1000000.0;
    parameter Real k1_complex_r3 = 297.0;
    parameter Real k2_complex_r3 = 1000000.0;
    parameter Real k1_complex_r4 = 0.64;
    parameter Real k2_complex_r4 = 1000000.0;
    parameter Real k1_complex_r5 = 0.112;
    parameter Real k2_complex_r5 = 1000000.0;
    parameter Real k1_complex_r6 = 0.0229;
    parameter Real k2_complex_r6 = 1000000.0;
    parameter Real k1_complex_r7 = 39.3;
    parameter Real k2_complex_r7 = 1000000.0;
    parameter Real k1_complex_r8 = 727.0;
    parameter Real k2_complex_r8 = 1000000.0;
    parameter Real k1_complex_r9 = 7.87e-06;
    parameter Real k2_complex_r9 = 1000000.0;
    parameter Real k1_complex_r10 = 0.0511;
    parameter Real k2_complex_r10 = 1000000.0;
    parameter Real k1_complex_r11 = 0.102;
    parameter Real k2_complex_r11 = 1000000.0;
    parameter Real k1_complex_r12 = 0.0676;
    parameter Real k2_complex_r12 = 1000000.0;
    parameter Real k1_phosphorylation_r1 = 15.5;
    parameter Real k1_phosphorylation_r2 = 0.0227;
    parameter Real k1_phosphorylation_r3 = 0.0227;
    parameter Real k1_phosphorylation_r4 = 0.0227;
    parameter Real k1_phosphorylation_r5 = 0.0227;
    parameter Real k1_phosphorylation_r6 = 0.0227;
    parameter Real k1_phosphorylation_r7 = 0.00124;
    parameter Real k1_phosphorylation_r8 = 0.037;
    parameter Real k1_phosphorylation_r9 = 500000.0;
    parameter Real k1_phosphorylation_r10 = 0.35;
    parameter Real k1_phosphotransfer_r1 = 6000000.0;
    parameter Real k1_phosphotransfer_r2 = 6000000.0;
    parameter Real k1_phosphotransfer_r3 = 6000000.0;
    parameter Real k1_phosphotransfer_r4 = 6000000.0;
    parameter Real k1_phosphotransfer_r5 = 6000000.0;
    parameter Real k1_phosphotransfer_r6 = 6000000.0;
    parameter Real k1_phosphotransfer_r7 = 30000000.0;
    parameter Real k1_phosphotransfer_r8 = 30000000.0;
    parameter Real k1_phosphotransfer_r9 = 30000000.0;
    parameter Real k1_phosphotransfer_r10 = 30000000.0;
    parameter Real k1_phosphotransfer_r11 = 30000000.0;
    parameter Real k1_phosphotransfer_r12 = 30000000.0;
    parameter Real cell = 1.0;

    Real Bias(start=0.0);

    Real AA;
    Real AAp;
    Real W;
    Real WAA;
    Real WAAp;
    Real WWAA;
    Real WWAAp;
    Real TT;
    Real TTW;
    Real TTWW;
    Real TTWAA;
    Real TTWAAp;
    Real TTAA;
    Real TTAAp;
    Real TTWWAA;
    Real TTWWAAp;
    Real Y;
    Real Yp;
    Real Z;
    Real B;
    Real Bp;
    Real SetYp;

initial equation
    AA = 2.5e-06;
    AAp = 0.0;
    W = 5e-06;
    WAA = 0.0;
    WAAp = 0.0;
    WWAA = 0.0;
    WWAAp = 0.0;
    TT = 2.5e-06;
    TTW = 0.0;
    TTWW = 0.0;
    TTWAA = 0.0;
    TTWAAp = 0.0;
    TTAA = 0.0;
    TTAAp = 0.0;
    TTWWAA = 0.0;
    TTWWAAp = 0.0;
    Y = 1e-05;
    Yp = 0.0;
    Z = 2e-05;
    B = 2e-06;
    Bp = 0.0;
    SetYp = 1.63e-06;

equation
    Bias = 1 - pow(Yp, Hill) / (2.333 * pow(SetYp, Hill) + pow(Yp, Hill));
    der(AA) = (cell * (k1_complex_r2 * WAA - k2_complex_r2 * W * AA)) + (cell * (k1_complex_r5 * TTWWAA - k2_complex_r5 * TTWW * AA)) + (cell * (k1_complex_r7 * TTAA - k2_complex_r7 * TT * AA)) + (cell * (k1_complex_r8 * TTWAA - k2_complex_r8 * TTW * AA)) + (cell * k1_phosphotransfer_r1 * B * AAp) + (cell * k1_phosphotransfer_r7 * Y * AAp) - (cell * k1_phosphorylation_r2 * AA);
    der(AAp) = (cell * k1_phosphorylation_r2 * AA) - (cell * k1_phosphotransfer_r1 * B * AAp) - (cell * k1_phosphotransfer_r7 * Y * AAp);
    der(W) = (cell * (k1_complex_r1 * TTW - k2_complex_r1 * TT * W)) + (cell * (k1_complex_r2 * WAA - k2_complex_r2 * W * AA)) + (cell * (k1_complex_r9 * TTWWAA - k2_complex_r9 * TTWAA * W)) + (cell * (k1_complex_r10 * TTWW - k2_complex_r10 * TTW * W)) + (cell * (k1_complex_r11 * WWAA - k2_complex_r11 * W * WAA)) + (cell * (k1_complex_r12 * TTWAA - k2_complex_r12 * TTAA * W)) ;
    der(WAA) = (cell * (k1_complex_r3 * TTWAA - k2_complex_r3 * TT * WAA)) + (cell * (k1_complex_r4 * TTWWAA - k2_complex_r4 * TTW * WAA)) + (cell * (k1_complex_r11 * WWAA - k2_complex_r11 * W * WAA)) + (cell * k1_phosphotransfer_r2 * B * WAAp) + (cell * k1_phosphotransfer_r8 * Y * WAAp) - (cell * (k1_complex_r2 * WAA - k2_complex_r2 * W * AA)) - (cell * k1_phosphorylation_r3 * WAA);
    der(WAAp) = (cell * k1_phosphorylation_r3 * WAA) - (cell * k1_phosphotransfer_r2 * B * WAAp) - (cell * k1_phosphotransfer_r8 * Y * WAAp);
    der(WWAA) = (cell * (k1_complex_r6 * TTWWAA - k2_complex_r6 * TT * WWAA)) + (cell * k1_phosphotransfer_r3 * B * WWAAp) + (cell * k1_phosphotransfer_r9 * Y * WWAAp) - (cell * (k1_complex_r11 * WWAA - k2_complex_r11 * W * WAA)) - (cell * k1_phosphorylation_r4 * WWAA);
    der(WWAAp) = (cell * k1_phosphorylation_r4 * WWAA) - (cell * k1_phosphotransfer_r3 * B * WWAAp) - (cell * k1_phosphotransfer_r9 * Y * WWAAp);
    der(TT) = (cell * (k1_complex_r1 * TTW - k2_complex_r1 * TT * W)) + (cell * (k1_complex_r3 * TTWAA - k2_complex_r3 * TT * WAA)) + (cell * (k1_complex_r6 * TTWWAA - k2_complex_r6 * TT * WWAA)) + (cell * (k1_complex_r7 * TTAA - k2_complex_r7 * TT * AA)) ;
    der(TTW) = (cell * (k1_complex_r4 * TTWWAA - k2_complex_r4 * TTW * WAA)) + (cell * (k1_complex_r8 * TTWAA - k2_complex_r8 * TTW * AA)) + (cell * (k1_complex_r10 * TTWW - k2_complex_r10 * TTW * W)) - (cell * (k1_complex_r1 * TTW - k2_complex_r1 * TT * W));
    der(TTWW) = (cell * (k1_complex_r5 * TTWWAA - k2_complex_r5 * TTWW * AA)) - (cell * (k1_complex_r10 * TTWW - k2_complex_r10 * TTW * W));
    der(TTWAA) = (cell * (k1_complex_r9 * TTWWAA - k2_complex_r9 * TTWAA * W)) + (cell * k1_phosphotransfer_r5 * B * TTWAAp) + (cell * k1_phosphotransfer_r11 * Y * TTWAAp) - (cell * (k1_complex_r3 * TTWAA - k2_complex_r3 * TT * WAA)) - (cell * (k1_complex_r8 * TTWAA - k2_complex_r8 * TTW * AA)) - (cell * (k1_complex_r12 * TTWAA - k2_complex_r12 * TTAA * W)) - (cell * k1_phosphorylation_r6 * TTWAA);
    der(TTWAAp) = (cell * k1_phosphorylation_r6 * TTWAA) - (cell * k1_phosphotransfer_r5 * B * TTWAAp) - (cell * k1_phosphotransfer_r11 * Y * TTWAAp);
    der(TTAA) = (cell * (k1_complex_r12 * TTWAA - k2_complex_r12 * TTAA * W)) + (cell * k1_phosphotransfer_r4 * B * TTAAp) + (cell * k1_phosphotransfer_r10 * Y * TTAAp) - (cell * (k1_complex_r7 * TTAA - k2_complex_r7 * TT * AA)) - (cell * k1_phosphorylation_r5 * TTAA);
    der(TTAAp) = (cell * k1_phosphorylation_r5 * TTAA) - (cell * k1_phosphotransfer_r4 * B * TTAAp) - (cell * k1_phosphotransfer_r10 * Y * TTAAp);
    der(TTWWAA) = (cell * k1_phosphotransfer_r6 * B * TTWWAAp) + (cell * k1_phosphotransfer_r12 * Y * TTWWAAp) - (cell * (k1_complex_r4 * TTWWAA - k2_complex_r4 * TTW * WAA)) - (cell * (k1_complex_r5 * TTWWAA - k2_complex_r5 * TTWW * AA)) - (cell * (k1_complex_r6 * TTWWAA - k2_complex_r6 * TT * WWAA)) - (cell * (k1_complex_r9 * TTWWAA - k2_complex_r9 * TTWAA * W)) - (cell * k1_phosphorylation_r1 * TTWWAA);
    der(TTWWAAp) = (cell * k1_phosphorylation_r1 * TTWWAA) - (cell * k1_phosphotransfer_r6 * B * TTWWAAp) - (cell * k1_phosphotransfer_r12 * Y * TTWWAAp);
    der(Y) = (cell * k1_phosphorylation_r8 * Yp) + (cell * k1_phosphorylation_r9 * Yp * Z) - (cell * k1_phosphorylation_r7 * Y) - (cell * k1_phosphotransfer_r7 * Y * AAp) - (cell * k1_phosphotransfer_r8 * Y * WAAp) - (cell * k1_phosphotransfer_r9 * Y * WWAAp) - (cell * k1_phosphotransfer_r10 * Y * TTAAp) - (cell * k1_phosphotransfer_r11 * Y * TTWAAp) - (cell * k1_phosphotransfer_r12 * Y * TTWWAAp);
    der(Yp) = (cell * k1_phosphorylation_r7 * Y) + (cell * k1_phosphotransfer_r7 * Y * AAp) + (cell * k1_phosphotransfer_r8 * Y * WAAp) + (cell * k1_phosphotransfer_r9 * Y * WWAAp) + (cell * k1_phosphotransfer_r10 * Y * TTAAp) + (cell * k1_phosphotransfer_r11 * Y * TTWAAp) + (cell * k1_phosphotransfer_r12 * Y * TTWWAAp) - (cell * k1_phosphorylation_r8 * Yp) - (cell * k1_phosphorylation_r9 * Yp * Z);
    der(Z) = (cell * k1_phosphorylation_r9 * Yp * Z) - (cell * k1_phosphorylation_r9 * Yp * Z);
    der(B) = (cell * k1_phosphorylation_r10 * Bp) - (cell * k1_phosphotransfer_r1 * B * AAp) - (cell * k1_phosphotransfer_r2 * B * WAAp) - (cell * k1_phosphotransfer_r3 * B * WWAAp) - (cell * k1_phosphotransfer_r4 * B * TTAAp) - (cell * k1_phosphotransfer_r5 * B * TTWAAp) - (cell * k1_phosphotransfer_r6 * B * TTWWAAp);
    der(Bp) = (cell * k1_phosphotransfer_r1 * B * AAp) + (cell * k1_phosphotransfer_r2 * B * WAAp) + (cell * k1_phosphotransfer_r3 * B * WWAAp) + (cell * k1_phosphotransfer_r4 * B * TTAAp) + (cell * k1_phosphotransfer_r5 * B * TTWAAp) + (cell * k1_phosphotransfer_r6 * B * TTWWAAp) - (cell * k1_phosphorylation_r10 * Bp);
    der(SetYp) = 0.0;




end BIOMD200;
