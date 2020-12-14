
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
    der(AA) = (1.0 * (k1_complex_r2 * WAA - k2_complex_r2 * W * AA)) + (1.0 * (k1_complex_r5 * TTWWAA - k2_complex_r5 * TTWW * AA)) + (1.0 * (k1_complex_r7 * TTAA - k2_complex_r7 * TT * AA)) + (1.0 * (k1_complex_r8 * TTWAA - k2_complex_r8 * TTW * AA)) + (1.0 * k1_phosphotransfer_r1 * B * AAp) + (1.0 * k1_phosphotransfer_r7 * Y * AAp) - (1.0 * k1_phosphorylation_r2 * AA);
    der(AAp) = (1.0 * k1_phosphorylation_r2 * AA) - (1.0 * k1_phosphotransfer_r1 * B * AAp) - (1.0 * k1_phosphotransfer_r7 * Y * AAp);
    der(W) = (1.0 * (k1_complex_r1 * TTW - k2_complex_r1 * TT * W)) + (1.0 * (k1_complex_r2 * WAA - k2_complex_r2 * W * AA)) + (1.0 * (k1_complex_r9 * TTWWAA - k2_complex_r9 * TTWAA * W)) + (1.0 * (k1_complex_r10 * TTWW - k2_complex_r10 * TTW * W)) + (1.0 * (k1_complex_r11 * WWAA - k2_complex_r11 * W * WAA)) + (1.0 * (k1_complex_r12 * TTWAA - k2_complex_r12 * TTAA * W)) ;
    der(WAA) = (1.0 * (k1_complex_r3 * TTWAA - k2_complex_r3 * TT * WAA)) + (1.0 * (k1_complex_r4 * TTWWAA - k2_complex_r4 * TTW * WAA)) + (1.0 * (k1_complex_r11 * WWAA - k2_complex_r11 * W * WAA)) + (1.0 * k1_phosphotransfer_r2 * B * WAAp) + (1.0 * k1_phosphotransfer_r8 * Y * WAAp) - (1.0 * (k1_complex_r2 * WAA - k2_complex_r2 * W * AA)) - (1.0 * k1_phosphorylation_r3 * WAA);
    der(WAAp) = (1.0 * k1_phosphorylation_r3 * WAA) - (1.0 * k1_phosphotransfer_r2 * B * WAAp) - (1.0 * k1_phosphotransfer_r8 * Y * WAAp);
    der(WWAA) = (1.0 * (k1_complex_r6 * TTWWAA - k2_complex_r6 * TT * WWAA)) + (1.0 * k1_phosphotransfer_r3 * B * WWAAp) + (1.0 * k1_phosphotransfer_r9 * Y * WWAAp) - (1.0 * (k1_complex_r11 * WWAA - k2_complex_r11 * W * WAA)) - (1.0 * k1_phosphorylation_r4 * WWAA);
    der(WWAAp) = (1.0 * k1_phosphorylation_r4 * WWAA) - (1.0 * k1_phosphotransfer_r3 * B * WWAAp) - (1.0 * k1_phosphotransfer_r9 * Y * WWAAp);
    der(TT) = (1.0 * (k1_complex_r1 * TTW - k2_complex_r1 * TT * W)) + (1.0 * (k1_complex_r3 * TTWAA - k2_complex_r3 * TT * WAA)) + (1.0 * (k1_complex_r6 * TTWWAA - k2_complex_r6 * TT * WWAA)) + (1.0 * (k1_complex_r7 * TTAA - k2_complex_r7 * TT * AA)) ;
    der(TTW) = (1.0 * (k1_complex_r4 * TTWWAA - k2_complex_r4 * TTW * WAA)) + (1.0 * (k1_complex_r8 * TTWAA - k2_complex_r8 * TTW * AA)) + (1.0 * (k1_complex_r10 * TTWW - k2_complex_r10 * TTW * W)) - (1.0 * (k1_complex_r1 * TTW - k2_complex_r1 * TT * W));
    der(TTWW) = (1.0 * (k1_complex_r5 * TTWWAA - k2_complex_r5 * TTWW * AA)) - (1.0 * (k1_complex_r10 * TTWW - k2_complex_r10 * TTW * W));
    der(TTWAA) = (1.0 * (k1_complex_r9 * TTWWAA - k2_complex_r9 * TTWAA * W)) + (1.0 * k1_phosphotransfer_r5 * B * TTWAAp) + (1.0 * k1_phosphotransfer_r11 * Y * TTWAAp) - (1.0 * (k1_complex_r3 * TTWAA - k2_complex_r3 * TT * WAA)) - (1.0 * (k1_complex_r8 * TTWAA - k2_complex_r8 * TTW * AA)) - (1.0 * (k1_complex_r12 * TTWAA - k2_complex_r12 * TTAA * W)) - (1.0 * k1_phosphorylation_r6 * TTWAA);
    der(TTWAAp) = (1.0 * k1_phosphorylation_r6 * TTWAA) - (1.0 * k1_phosphotransfer_r5 * B * TTWAAp) - (1.0 * k1_phosphotransfer_r11 * Y * TTWAAp);
    der(TTAA) = (1.0 * (k1_complex_r12 * TTWAA - k2_complex_r12 * TTAA * W)) + (1.0 * k1_phosphotransfer_r4 * B * TTAAp) + (1.0 * k1_phosphotransfer_r10 * Y * TTAAp) - (1.0 * (k1_complex_r7 * TTAA - k2_complex_r7 * TT * AA)) - (1.0 * k1_phosphorylation_r5 * TTAA);
    der(TTAAp) = (1.0 * k1_phosphorylation_r5 * TTAA) - (1.0 * k1_phosphotransfer_r4 * B * TTAAp) - (1.0 * k1_phosphotransfer_r10 * Y * TTAAp);
    der(TTWWAA) = (1.0 * k1_phosphotransfer_r6 * B * TTWWAAp) + (1.0 * k1_phosphotransfer_r12 * Y * TTWWAAp) - (1.0 * (k1_complex_r4 * TTWWAA - k2_complex_r4 * TTW * WAA)) - (1.0 * (k1_complex_r5 * TTWWAA - k2_complex_r5 * TTWW * AA)) - (1.0 * (k1_complex_r6 * TTWWAA - k2_complex_r6 * TT * WWAA)) - (1.0 * (k1_complex_r9 * TTWWAA - k2_complex_r9 * TTWAA * W)) - (1.0 * k1_phosphorylation_r1 * TTWWAA);
    der(TTWWAAp) = (1.0 * k1_phosphorylation_r1 * TTWWAA) - (1.0 * k1_phosphotransfer_r6 * B * TTWWAAp) - (1.0 * k1_phosphotransfer_r12 * Y * TTWWAAp);
    der(Y) = (1.0 * k1_phosphorylation_r8 * Yp) + (1.0 * k1_phosphorylation_r9 * Yp * Z) - (1.0 * k1_phosphorylation_r7 * Y) - (1.0 * k1_phosphotransfer_r7 * Y * AAp) - (1.0 * k1_phosphotransfer_r8 * Y * WAAp) - (1.0 * k1_phosphotransfer_r9 * Y * WWAAp) - (1.0 * k1_phosphotransfer_r10 * Y * TTAAp) - (1.0 * k1_phosphotransfer_r11 * Y * TTWAAp) - (1.0 * k1_phosphotransfer_r12 * Y * TTWWAAp);
    der(Yp) = (1.0 * k1_phosphorylation_r7 * Y) + (1.0 * k1_phosphotransfer_r7 * Y * AAp) + (1.0 * k1_phosphotransfer_r8 * Y * WAAp) + (1.0 * k1_phosphotransfer_r9 * Y * WWAAp) + (1.0 * k1_phosphotransfer_r10 * Y * TTAAp) + (1.0 * k1_phosphotransfer_r11 * Y * TTWAAp) + (1.0 * k1_phosphotransfer_r12 * Y * TTWWAAp) - (1.0 * k1_phosphorylation_r8 * Yp) - (1.0 * k1_phosphorylation_r9 * Yp * Z);
    der(Z) = (1.0 * k1_phosphorylation_r9 * Yp * Z) - (1.0 * k1_phosphorylation_r9 * Yp * Z);
    der(B) = (1.0 * k1_phosphorylation_r10 * Bp) - (1.0 * k1_phosphotransfer_r1 * B * AAp) - (1.0 * k1_phosphotransfer_r2 * B * WAAp) - (1.0 * k1_phosphotransfer_r3 * B * WWAAp) - (1.0 * k1_phosphotransfer_r4 * B * TTAAp) - (1.0 * k1_phosphotransfer_r5 * B * TTWAAp) - (1.0 * k1_phosphotransfer_r6 * B * TTWWAAp);
    der(Bp) = (1.0 * k1_phosphotransfer_r1 * B * AAp) + (1.0 * k1_phosphotransfer_r2 * B * WAAp) + (1.0 * k1_phosphotransfer_r3 * B * WWAAp) + (1.0 * k1_phosphotransfer_r4 * B * TTAAp) + (1.0 * k1_phosphotransfer_r5 * B * TTWAAp) + (1.0 * k1_phosphotransfer_r6 * B * TTWWAAp) - (1.0 * k1_phosphorylation_r10 * Bp);
    der(SetYp) = 0.0;



end BIOMD200;
