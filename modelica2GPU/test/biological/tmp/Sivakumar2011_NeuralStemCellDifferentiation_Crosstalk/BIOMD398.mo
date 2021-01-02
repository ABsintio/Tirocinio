
model BIOMD398 "Sivakumar2011_NeuralStemCellDifferentiation_Crosstalk"

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



    parameter Real kV_re29_s60 = 1.0;
    parameter Real kM_re29_s60_s57 = 1.0;
    parameter Real kG_s57 = 1.0;
    parameter Real kM_re29_s60_s53 = 1.0;
    parameter Real kG_s53 = 1.0;
    parameter Real kM_re29_s60_s58 = 1.0;
    parameter Real kG_s58 = 1.0;
    parameter Real kI_re29_s61 = 1.0;
    parameter Real kass_re31 = 1.0;
    parameter Real kdiss_re31 = 1.0;
    parameter Real kass_re32 = 1.0;
    parameter Real kdiss_re32 = 1.0;
    parameter Real kass_re33 = 1.0;
    parameter Real kdiss_re33 = 1.0;
    parameter Real kass_re36 = 1.0;
    parameter Real kdiss_re36 = 1.0;
    parameter Real kI_re36_s101 = 1.0;
    parameter Real kass_re37 = 1.0;
    parameter Real kdiss_re37 = 1.0;
    parameter Real kass_re38 = 1.0;
    parameter Real kdiss_re38 = 1.0;
    parameter Real kcatp_re40 = 1.0;
    parameter Real kcatn_re40 = 1.0;
    parameter Real kM_re40_s124 = 1.0;
    parameter Real ki_re40_s124 = 1.0;
    parameter Real kass_re42 = 1.0;
    parameter Real kdiss_re42 = 1.0;
    parameter Real kI_re42_s147 = 1.0;
    parameter Real kI_re42_s135 = 1.0;
    parameter Real kass_re43 = 1.0;
    parameter Real kdiss_re43 = 1.0;
    parameter Real kass_re34_s85 = 1.0;
    parameter Real kdiss_re34_s85 = 1.0;
    parameter Real kass_re34_s89 = 1.0;
    parameter Real kdiss_re34_s89 = 1.0;
    parameter Real kass_re35_s89 = 1.0;
    parameter Real kdiss_re35_s89 = 1.0;
    parameter Real default = 1.0;
    parameter Real c1 = 1.0;



    Real s53;
    Real s57;
    Real s58;
    Real s60;
    Real s61;
    Real s68;
    Real s72;
    Real s73;
    Real s81;
    Real s83;
    Real s85;
    Real s88;
    Real s89;
    Real s96;
    Real s98;
    Real s100;
    Real s101;
    Real s107;
    Real s109;
    Real s111;
    Real s122;
    Real s124;
    Real s135;
    Real s142;
    Real s144;
    Real s146;
    Real s147;

initial equation
    s53 = 0.0;
    s57 = 5.0;
    s58 = 0.0;
    s60 = 5.0;
    s61 = 100.0;
    s68 = 5.0;
    s72 = 0.0;
    s73 = 0.0;
    s81 = 5.0;
    s83 = 5.0;
    s85 = 0.0;
    s88 = 5.0;
    s89 = 0.0;
    s96 = 5.0;
    s98 = 5.0;
    s100 = 0.0;
    s101 = 100.0;
    s107 = 5.0;
    s109 = 5.0;
    s111 = 0.0;
    s122 = 5.0;
    s124 = 5.0;
    s135 = 0.0;
    s142 = 5.0;
    s144 = 5.0;
    s146 = 0.0;
    s147 = 100.0;

equation

    der(s53) = (kI_re29_s61 / (kI_re29_s61 + s61) * s60 * kV_re29_s60 * ((s57 / kM_re29_s60_s57 * sqrt(kG_s57 * kM_re29_s60_s57 / (kG_s53 * kM_re29_s60_s53 * kG_s58 * kM_re29_s60_s58)) - s53 / kM_re29_s60_s53 * (s58 / kM_re29_s60_s58) * sqrt(kG_s53 * kM_re29_s60_s53 * kG_s58 * kM_re29_s60_s58 / (kG_s57 * kM_re29_s60_s57))) / (s57 / kM_re29_s60_s57 + (1 + s53 / kM_re29_s60_s53) * (1 + s58 / kM_re29_s60_s58)))) - (kass_re31 * s53 * s68 - kdiss_re31 * s72);
    der(s57) =  - (kI_re29_s61 / (kI_re29_s61 + s61) * s60 * kV_re29_s60 * ((s57 / kM_re29_s60_s57 * sqrt(kG_s57 * kM_re29_s60_s57 / (kG_s53 * kM_re29_s60_s53 * kG_s58 * kM_re29_s60_s58)) - s53 / kM_re29_s60_s53 * (s58 / kM_re29_s60_s58) * sqrt(kG_s53 * kM_re29_s60_s53 * kG_s58 * kM_re29_s60_s58 / (kG_s57 * kM_re29_s60_s57))) / (s57 / kM_re29_s60_s57 + (1 + s53 / kM_re29_s60_s53) * (1 + s58 / kM_re29_s60_s58))));
    der(s58) = (kI_re29_s61 / (kI_re29_s61 + s61) * s60 * kV_re29_s60 * ((s57 / kM_re29_s60_s57 * sqrt(kG_s57 * kM_re29_s60_s57 / (kG_s53 * kM_re29_s60_s53 * kG_s58 * kM_re29_s60_s58)) - s53 / kM_re29_s60_s53 * (s58 / kM_re29_s60_s58) * sqrt(kG_s53 * kM_re29_s60_s53 * kG_s58 * kM_re29_s60_s58 / (kG_s57 * kM_re29_s60_s57))) / (s57 / kM_re29_s60_s57 + (1 + s53 / kM_re29_s60_s53) * (1 + s58 / kM_re29_s60_s58)))) ;
    der(s60) = 0.0;
    der(s61) = 0.0;
    der(s68) =  - (kass_re31 * s53 * s68 - kdiss_re31 * s72);
    der(s72) = (kass_re31 * s53 * s68 - kdiss_re31 * s72) - (kass_re32 * s72 - kdiss_re32 * s73);
    der(s73) = (kass_re32 * s72 - kdiss_re32 * s73) + (kass_re37 * s100 - kdiss_re37 * s73) + (kass_re43 * s144 - kdiss_re43 * s73) + (s89 * (kass_re35_s89 * s88 - kdiss_re35_s89 * s73)) ;
    der(s81) =  - (kass_re33 * s81 * s83 - kdiss_re33 * s85);
    der(s83) =  - (kass_re33 * s81 * s83 - kdiss_re33 * s85);
    der(s85) = (kass_re33 * s81 * s83 - kdiss_re33 * s85) ;
    der(s88) = (s85 * (kass_re34_s85 * s88 - kdiss_re34_s85 * s88) + s89 * (kass_re34_s89 * s88 - kdiss_re34_s89 * s88)) - (s85 * (kass_re34_s85 * s88 - kdiss_re34_s85 * s88) + s89 * (kass_re34_s89 * s88 - kdiss_re34_s89 * s88)) - (s89 * (kass_re35_s89 * s88 - kdiss_re35_s89 * s73));
    der(s89) = 0.0;
    der(s96) =  - (kI_re36_s101 / (kI_re36_s101 + s101) * (kass_re36 * s96 * s98 - kdiss_re36 * s100));
    der(s98) =  - (kI_re36_s101 / (kI_re36_s101 + s101) * (kass_re36 * s96 * s98 - kdiss_re36 * s100));
    der(s100) = (kI_re36_s101 / (kI_re36_s101 + s101) * (kass_re36 * s96 * s98 - kdiss_re36 * s100)) - (kass_re37 * s100 - kdiss_re37 * s73);
    der(s101) = 0.0;
    der(s107) =  - (kass_re38 * s107 * s109 - kdiss_re38 * s111);
    der(s109) =  - (kass_re38 * s107 * s109 - kdiss_re38 * s111);
    der(s111) = (kass_re38 * s107 * s109 - kdiss_re38 * s111) ;
    der(s122) =  - ((kcatp_re40 / (ki_re40_s124 * kM_re40_s124) * s111 * s122 * s124 - kcatn_re40 / kM_re40_s124 * s111 * s135) / (1 + s122 / ki_re40_s124 + s124 / ki_re40_s124 + s122 * s124 / (ki_re40_s124 * kM_re40_s124) + s135 / kM_re40_s124));
    der(s124) =  - ((kcatp_re40 / (ki_re40_s124 * kM_re40_s124) * s111 * s122 * s124 - kcatn_re40 / kM_re40_s124 * s111 * s135) / (1 + s122 / ki_re40_s124 + s124 / ki_re40_s124 + s122 * s124 / (ki_re40_s124 * kM_re40_s124) + s135 / kM_re40_s124));
    der(s135) = ((kcatp_re40 / (ki_re40_s124 * kM_re40_s124) * s111 * s122 * s124 - kcatn_re40 / kM_re40_s124 * s111 * s135) / (1 + s122 / ki_re40_s124 + s124 / ki_re40_s124 + s122 * s124 / (ki_re40_s124 * kM_re40_s124) + s135 / kM_re40_s124)) ;
    der(s142) =  - (kI_re42_s147 / (kI_re42_s147 + s147) * (kI_re42_s135 / (kI_re42_s135 + s135)) * (kass_re42 * s142 * s144 - kdiss_re42 * s146));
    der(s144) =  - (kI_re42_s147 / (kI_re42_s147 + s147) * (kI_re42_s135 / (kI_re42_s135 + s135)) * (kass_re42 * s142 * s144 - kdiss_re42 * s146)) - (kass_re43 * s144 - kdiss_re43 * s73);
    der(s146) = (kI_re42_s147 / (kI_re42_s147 + s147) * (kI_re42_s135 / (kI_re42_s135 + s135)) * (kass_re42 * s142 * s144 - kdiss_re42 * s146)) ;
    der(s147) = 0.0;




end BIOMD398;
