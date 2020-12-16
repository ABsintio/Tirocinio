
model BIOMD139 "Hoffmann2002_KnockOut_IkBNFkB_Signaling"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real a4 = 30.0;
    parameter Real d4 = 0.03;
    parameter Real a5 = 30.0;
    parameter Real d5 = 0.03;
    parameter Real a6 = 30.0;
    parameter Real d6 = 0.03;
    parameter Real r4 = 1.224;
    parameter Real r5 = 0.45;
    parameter Real r6 = 0.66;
    parameter Real deg4 = 0.00135;
    parameter Real k1 = 5.4;
    parameter Real k01 = 0.0048;
    parameter Real tr2a = 9.25e-05;
    parameter Real tr2 = 0.99;
    parameter Real tr3 = 0.0168;
    parameter Real tr2b = 0.0;
    parameter Real tr2e = 0.0;
    parameter Real a1 = 1.35;
    parameter Real d1 = 0.075;
    parameter Real tr1 = 0.2448;
    parameter Real deg1 = 0.00678;
    parameter Real tp1 = 0.018;
    parameter Real tp2 = 0.012;
    parameter Real a2 = 0.36;
    parameter Real d2 = 0.105;
    parameter Real a3 = 0.54;
    parameter Real d3 = 0.105;
    parameter Real a7 = 11.1;
    parameter Real k2 = 0.828;
    parameter Real a8 = 2.88;
    parameter Real k2_beta = 0.624;
    parameter Real a9 = 4.2;
    parameter Real k2_eps = 0.624;
    parameter Real r1 = 0.2442;
    parameter Real r2 = 0.09;
    parameter Real r3 = 0.132;
    parameter Real k02 = 0.0072;
    parameter Real k2_IkBbeta_nuc_NFkB_nuc_v39 = 0.0069;
    parameter Real cytoplasm = 1.0;
    parameter Real nucleus = 1.0;

    Real trigger_value(start=0.0);
    Real fr(start=1.0);
    Real fr_after_trigger(start=0.5);
    Real Total_IkBbeta(start=0.0);
    Real Total_IkBeps(start=0.0);
    Real Total_IkBalpha(start=0.0);
    Real Total_NFkBn(start=0.0);
    Real flag_for_after_trigger(start=0.5);

    Real IkBalpha;
    Real NFkB;
    Real IkBalpha_NFkB;
    Real IkBbeta;
    Real IkBbeta_NFkB;
    Real IkBeps;
    Real IkBeps_NFkB;
    Real IKK_IkBalpha;
    Real IKK_IkBalpha_NFkB;
    Real IKK;
    Real IKK_IkBbeta;
    Real IKK_IkBbeta_NFkB;
    Real IKK_IkBeps;
    Real IKK_IkBeps_NFkB;
    Real NFkB_nuc;
    Real IkBalpha_nuc;
    Real IkBalpha_nuc_NFkB_nuc;
    Real IkBbeta_nuc;
    Real IkBbeta_nuc_NFkB_nuc;
    Real IkBeps_nuc;
    Real IkBalpha_transcript;
    Real IkBbeta_transcript;
    Real IkBeps_transcript;
    Real IkBeps_nuc_NFkB_nuc;

initial equation
    IkBalpha = 0.1;
    NFkB = 0.1;
    IkBalpha_NFkB = 0.0;
    IkBbeta = 0.0;
    IkBbeta_NFkB = 0.0;
    IkBeps = 0.0;
    IkBeps_NFkB = 0.0;
    IKK_IkBalpha = 0.0;
    IKK_IkBalpha_NFkB = 0.0;
    IKK = 0.0;
    IKK_IkBbeta = 0.0;
    IKK_IkBbeta_NFkB = 0.0;
    IKK_IkBeps = 0.0;
    IKK_IkBeps_NFkB = 0.0;
    NFkB_nuc = 0.001;
    IkBalpha_nuc = 0.0;
    IkBalpha_nuc_NFkB_nuc = 0.0;
    IkBbeta_nuc = 0.0;
    IkBbeta_nuc_NFkB_nuc = 0.0;
    IkBeps_nuc = 0.0;
    IkBalpha_transcript = 0.0;
    IkBbeta_transcript = 0.0;
    IkBeps_transcript = 0.0;
    IkBeps_nuc_NFkB_nuc = 0.0;

equation
    Total_IkBbeta = IkBbeta + IkBbeta_NFkB + IKK_IkBbeta + IKK_IkBbeta_NFkB;
    Total_IkBeps = IkBeps + IkBeps_NFkB + IKK_IkBeps + IKK_IkBeps_NFkB;
    Total_IkBalpha = IkBalpha + IkBalpha_NFkB + IKK_IkBalpha + IKK_IkBalpha_NFkB;
    Total_NFkBn = IkBbeta_nuc_NFkB_nuc + NFkB_nuc;
    der(fr_after_trigger) = trigger_value * (-0.5 / pow(1 + (time - 2000), 2));
    der(IkBalpha) = (nucleus * tr1 * IkBalpha_transcript) - (cytoplasm * (a4 * IkBalpha * NFkB - d4 * IkBalpha_NFkB)) - (cytoplasm * (a1 * IkBalpha * IKK - d1 * IKK_IkBalpha)) - (cytoplasm * deg1 * IkBalpha) - (cytoplasm * tp1 * IkBalpha - nucleus * tp2 * IkBalpha_nuc);
    der(NFkB) = (cytoplasm * r4 * IKK_IkBalpha_NFkB) + (cytoplasm * r5 * IKK_IkBbeta_NFkB) + (cytoplasm * r6 * IKK_IkBeps_NFkB) + (cytoplasm * deg4 * IkBalpha_NFkB) + (cytoplasm * deg4 * IkBbeta_NFkB) + (cytoplasm * deg4 * IkBeps_NFkB) - (cytoplasm * (a4 * IkBalpha * NFkB - d4 * IkBalpha_NFkB)) - (cytoplasm * (a5 * IkBbeta * NFkB - d5 * IkBbeta_NFkB)) - (cytoplasm * (a6 * IkBeps * NFkB - d6 * IkBeps_NFkB)) - (cytoplasm * (a4 * IKK_IkBalpha * NFkB - d4 * IKK_IkBalpha_NFkB)) - (cytoplasm * (a5 * IKK_IkBbeta * NFkB - d5 * IKK_IkBbeta_NFkB)) - (cytoplasm * (a6 * IKK_IkBeps * NFkB - d6 * IKK_IkBeps_NFkB)) - (cytoplasm * k1 * NFkB - nucleus * k01 * NFkB_nuc);
    der(IkBalpha_NFkB) = (cytoplasm * (a4 * IkBalpha * NFkB - d4 * IkBalpha_NFkB)) + (nucleus * k2 * IkBalpha_nuc_NFkB_nuc) - (cytoplasm * deg4 * IkBalpha_NFkB) - (cytoplasm * (a7 * IKK * IkBalpha_NFkB - d1 * IKK_IkBalpha_NFkB));
    der(IkBbeta) = (nucleus * tr1 * IkBbeta_transcript) - (cytoplasm * (a5 * IkBbeta * NFkB - d5 * IkBbeta_NFkB)) - (cytoplasm * (a2 * IkBbeta * IKK - d2 * IKK_IkBbeta)) - (cytoplasm * deg1 * IkBbeta) - (cytoplasm * 0.5 * tp1 * IkBbeta - nucleus * 0.5 * tp2 * IkBbeta_nuc);
    der(IkBbeta_NFkB) = (cytoplasm * (a5 * IkBbeta * NFkB - d5 * IkBbeta_NFkB)) + (nucleus * k2_IkBbeta_nuc_NFkB_nuc_v39 * (fr_after_trigger + flag_for_after_trigger) * IkBbeta_nuc_NFkB_nuc) - (cytoplasm * deg4 * IkBbeta_NFkB) - (cytoplasm * (a8 * IKK * IkBbeta_NFkB - d2 * IKK_IkBbeta_NFkB));
    der(IkBeps) = (nucleus * tr1 * IkBeps_transcript) - (cytoplasm * (a6 * IkBeps * NFkB - d6 * IkBeps_NFkB)) - (cytoplasm * (a3 * IkBeps * IKK - d3 * IKK_IkBeps)) - (cytoplasm * deg1 * IkBeps) - (cytoplasm * 0.5 * tp1 * IkBeps - nucleus * 0.5 * tp2 * IkBeps_nuc);
    der(IkBeps_NFkB) = (cytoplasm * (a6 * IkBeps * NFkB - d6 * IkBeps_NFkB)) + (nucleus * 0.5 * k2_eps * IkBeps_nuc_NFkB_nuc) - (cytoplasm * deg4 * IkBeps_NFkB) - (cytoplasm * (a9 * IKK * IkBeps_NFkB - d3 * IKK_IkBeps_NFkB));
    der(IKK_IkBalpha) = (cytoplasm * (a1 * IkBalpha * IKK - d1 * IKK_IkBalpha)) - (cytoplasm * (a4 * IKK_IkBalpha * NFkB - d4 * IKK_IkBalpha_NFkB)) - (cytoplasm * r1 * IKK_IkBalpha);
    der(IKK_IkBalpha_NFkB) = (cytoplasm * (a4 * IKK_IkBalpha * NFkB - d4 * IKK_IkBalpha_NFkB)) + (cytoplasm * (a7 * IKK * IkBalpha_NFkB - d1 * IKK_IkBalpha_NFkB)) - (cytoplasm * r4 * IKK_IkBalpha_NFkB);
    der(IKK) = (cytoplasm * r4 * IKK_IkBalpha_NFkB) + (cytoplasm * r5 * IKK_IkBbeta_NFkB) + (cytoplasm * r6 * IKK_IkBeps_NFkB) + (cytoplasm * r1 * IKK_IkBalpha) + (cytoplasm * r2 * IKK_IkBbeta) + (cytoplasm * r3 * IKK_IkBeps) - (cytoplasm * (a1 * IkBalpha * IKK - d1 * IKK_IkBalpha)) - (cytoplasm * (a2 * IkBbeta * IKK - d2 * IKK_IkBbeta)) - (cytoplasm * (a3 * IkBeps * IKK - d3 * IKK_IkBeps)) - (cytoplasm * (a7 * IKK * IkBalpha_NFkB - d1 * IKK_IkBalpha_NFkB)) - (cytoplasm * (a8 * IKK * IkBbeta_NFkB - d2 * IKK_IkBbeta_NFkB)) - (cytoplasm * (a9 * IKK * IkBeps_NFkB - d3 * IKK_IkBeps_NFkB)) - (cytoplasm * k02 * IKK);
    der(IKK_IkBbeta) = (cytoplasm * (a2 * IkBbeta * IKK - d2 * IKK_IkBbeta)) - (cytoplasm * (a5 * IKK_IkBbeta * NFkB - d5 * IKK_IkBbeta_NFkB)) - (cytoplasm * r2 * IKK_IkBbeta);
    der(IKK_IkBbeta_NFkB) = (cytoplasm * (a5 * IKK_IkBbeta * NFkB - d5 * IKK_IkBbeta_NFkB)) + (cytoplasm * (a8 * IKK * IkBbeta_NFkB - d2 * IKK_IkBbeta_NFkB)) - (cytoplasm * r5 * IKK_IkBbeta_NFkB);
    der(IKK_IkBeps) = (cytoplasm * (a3 * IkBeps * IKK - d3 * IKK_IkBeps)) - (cytoplasm * (a6 * IKK_IkBeps * NFkB - d6 * IKK_IkBeps_NFkB)) - (cytoplasm * r3 * IKK_IkBeps);
    der(IKK_IkBeps_NFkB) = (cytoplasm * (a6 * IKK_IkBeps * NFkB - d6 * IKK_IkBeps_NFkB)) + (cytoplasm * (a9 * IKK * IkBeps_NFkB - d3 * IKK_IkBeps_NFkB)) - (cytoplasm * r6 * IKK_IkBeps_NFkB);
    der(NFkB_nuc) = (cytoplasm * k1 * NFkB - nucleus * k01 * NFkB_nuc) - (nucleus * (a4 * IkBalpha_nuc * NFkB_nuc - d4 * IkBalpha_nuc_NFkB_nuc)) - (nucleus * (a5 * IkBbeta_nuc * NFkB_nuc - d5 * IkBbeta_nuc_NFkB_nuc)) - (nucleus * (a6 * IkBeps_nuc * NFkB_nuc - d6 * IkBeps_nuc_NFkB_nuc));
    der(IkBalpha_nuc) = (cytoplasm * tp1 * IkBalpha - nucleus * tp2 * IkBalpha_nuc) - (nucleus * (a4 * IkBalpha_nuc * NFkB_nuc - d4 * IkBalpha_nuc_NFkB_nuc));
    der(IkBalpha_nuc_NFkB_nuc) = (nucleus * (a4 * IkBalpha_nuc * NFkB_nuc - d4 * IkBalpha_nuc_NFkB_nuc)) - (nucleus * k2 * IkBalpha_nuc_NFkB_nuc);
    der(IkBbeta_nuc) = (cytoplasm * 0.5 * tp1 * IkBbeta - nucleus * 0.5 * tp2 * IkBbeta_nuc) - (nucleus * (a5 * IkBbeta_nuc * NFkB_nuc - d5 * IkBbeta_nuc_NFkB_nuc));
    der(IkBbeta_nuc_NFkB_nuc) = (nucleus * (a5 * IkBbeta_nuc * NFkB_nuc - d5 * IkBbeta_nuc_NFkB_nuc)) - (nucleus * k2_IkBbeta_nuc_NFkB_nuc_v39 * (fr_after_trigger + flag_for_after_trigger) * IkBbeta_nuc_NFkB_nuc);
    der(IkBeps_nuc) = (cytoplasm * 0.5 * tp1 * IkBeps - nucleus * 0.5 * tp2 * IkBeps_nuc) - (nucleus * (a6 * IkBeps_nuc * NFkB_nuc - d6 * IkBeps_nuc_NFkB_nuc));
    der(IkBalpha_transcript) = (nucleus * tr2a) + (nucleus * tr2 * NFkB_nuc^2) - (nucleus * tr3 * IkBalpha_transcript);
    der(IkBbeta_transcript) = (nucleus * tr2b) - (nucleus * tr3 * IkBbeta_transcript);
    der(IkBeps_transcript) = (nucleus * tr2e) - (nucleus * tr3 * IkBeps_transcript);
    der(IkBeps_nuc_NFkB_nuc) = (nucleus * (a6 * IkBeps_nuc * NFkB_nuc - d6 * IkBeps_nuc_NFkB_nuc)) - (nucleus * 0.5 * k2_eps * IkBeps_nuc_NFkB_nuc);
    der(trigger_value)=0.0;
    der(fr)=0.0;
    der(flag_for_after_trigger)=0.0;

    when (time >= 2000) and (trigger_value == 0) then
        reinit(IKK,0.1);
        reinit(trigger_value,1);
        reinit(flag_for_after_trigger,0);
    end when;

end BIOMD139;
