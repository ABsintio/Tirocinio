
model BIOMD540 "Yugi2014 - Insulin induced signalling (PFKL phosphorylation) - model 1"

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



    parameter Real K_FBPase_cit = 0.0211646;
    parameter Real K_FBPase_f16bp = 0.104089638;
    parameter Real K_FBPase_f26bp = 17.51744342;
    parameter Real K_PFKL_PHOS_S775 = 6.283705757;
    parameter Real K_PFKL_akg = 24661.01154;
    parameter Real K_PFKL_cit = 41.30426029;
    parameter Real K_PFKL_f26bp = 1.282443082;
    parameter Real K_PFKL_f6p = 0.014114844;
    parameter Real K_PFKL_icit = 1784.508205;
    parameter Real K_PFKL_mal = 9.544729149;
    parameter Real K_PFKL_pep = 0.633518366;
    parameter Real Vf_FBPase = 9.932861302;
    parameter Real Vf_PFKL = 695063.7194;
    parameter Real k_ALDO = 0.008187906;
    parameter Real default = 1.0;

    Real k_mal(start=1.005530417);
    Real k_akg(start=-3.544494721);
    Real k_pep(start=43.99195576);
    Real k_icit(start=-0.038210156);
    Real k_f26bp(start=-0.083430336);
    Real k_cit(start=-0.351935646);
    Real k_pfkl_s775(start=-0.011384308);
    Real k_f6p(start=-0.930115636);

    Real s1;
    Real s2;
    Real s3;
    Real s4;
    Real s5;
    Real s6;
    Real s7;
    Real s8;
    Real s9;
    Real s10;
    Real s11;
    Real s12;
    Real s13;
    Real s14;
    Real s15;
    Real s16;
    Real s17;
    Real s18;
    Real s20;
    Real s21;
    Real s19;
    Real s22;

initial equation
    s1 = 1.0;
    s2 = 1.0;
    s3 = 14.0774258421;
    s4 = 104.07239819;
    s5 = 108.094519859;
    s6 = 1.79487179487;
    s7 = 25.1885369533;
    s8 = 68.8788335846;
    s9 = 1.0;
    s10 = 17.7476118652;
    s11 = 0.0;
    s12 = 1.0;
    s13 = 0.768939345;
    s14 = 0.0;
    s15 = 0.0;
    s16 = 0.0;
    s17 = 0.0;
    s18 = 0.0;
    s20 = 0.0;
    s21 = 0.0;
    s19 = 0.0;

equation
    s22 = s3;
    der(s1) = 0.0;
    der(s2) = 0.0;
    der(s3) =  - (-k_f6p);
    der(s4) = (s9 / (K_PFKL_f26bp + s9) * (K_PFKL_akg / (K_PFKL_akg + s7)) * (K_PFKL_pep / (K_PFKL_pep + s5)) * (K_PFKL_cit / (K_PFKL_cit + s10)) * (K_PFKL_icit / (K_PFKL_icit + s6)) * (K_PFKL_mal / (K_PFKL_mal + s8)) * (s13 / (K_PFKL_PHOS_S775 + s13)) * (Vf_PFKL * s22 / (K_PFKL_f6p + s22))) - (K_FBPase_f26bp / (K_FBPase_f26bp + s9) * (s10 / (K_FBPase_cit + s10)) * (Vf_FBPase * s4 / (K_FBPase_f16bp + s4))) - (k_ALDO * s4);
    der(s5) =  - (-k_pep);
    der(s6) =  - (-k_icit);
    der(s7) =  - (-k_akg);
    der(s8) =  - (-k_mal);
    der(s9) =  - (-k_f26bp);
    der(s10) =  - (-k_cit);
    der(s11) = (k_ALDO * s4) ;
    der(s12) = 0.0;
    der(s13) =  - (-k_pfkl_s775);
    der(s14) = ((-k_mal)) ;
    der(s15) = ((-k_akg)) ;
    der(s16) = ((-k_pep)) ;
    der(s17) = ((-k_icit)) ;
    der(s18) = ((-k_f26bp)) ;
    der(s20) = ((-k_pfkl_s775)) ;
    der(s21) = ((-k_f6p)) ;
    der(s19) = ((-k_cit)) ;
    der(k_mal)=0.0;
    der(k_akg)=0.0;
    der(k_pep)=0.0;
    der(k_icit)=0.0;
    der(k_f26bp)=0.0;
    der(k_cit)=0.0;
    der(k_pfkl_s775)=0.0;
    der(k_f6p)=0.0;

    when time > 2 then
        reinit(k_akg,-1.357466063);
        reinit(k_cit,0.351935646);
        reinit(k_f6p,1.357466063);
        reinit(k_icit,-0.038210156);
        reinit(k_f26bp,0.028924455);
        reinit(k_mal,-1.508295626);
        reinit(k_pep,7.54147813);
        reinit(k_pfkl_s775,-0.011384308);
    end when;
    when time > 5 then
        reinit(k_akg,0);
        reinit(k_cit,-0.211161388);
        reinit(k_f6p,0.271493213);
        reinit(k_icit,-0.038210156);
        reinit(k_f26bp,0.119075279);
        reinit(k_mal,-0.904977376);
        reinit(k_pep,-6.334841629);
        reinit(k_pfkl_s775,0.057596439);
    end when;
    when time > 10 then
        reinit(k_akg,0.36199095);
        reinit(k_cit,1.085972851);
        reinit(k_f6p,-1.055806938);
        reinit(k_icit,-0.038210156);
        reinit(k_f26bp,-0.050207413);
        reinit(k_mal,3.921568627);
        reinit(k_pep,9.049773756);
        reinit(k_pfkl_s775,0.006730598);
    end when;
    when time > 15 then
        reinit(k_akg,1.085972851);
        reinit(k_cit,0.452488688);
        reinit(k_f6p,-0.12066365);
        reinit(k_icit,-0.018099548);
        reinit(k_f26bp,0.100115778);
        reinit(k_mal,1.809954751);
        reinit(k_pep,-4.826546003);
        reinit(k_pfkl_s775,0.006730598);
    end when;
    when time > 20 then
        reinit(k_akg,0.226244344);
        reinit(k_cit,0.377073906);
        reinit(k_f6p,-0.165912519);
        reinit(k_icit,0.031674208);
        reinit(k_f26bp,-0.032601514);
        reinit(k_mal,1.206636501);
        reinit(k_pep,-3.619909502);
        reinit(k_pfkl_s775,0.006730598);
    end when;
    when time > 30 then
        reinit(k_akg,0.369532428);
        reinit(k_cit,0.306686777);
        reinit(k_f6p,0.070387129);
        reinit(k_icit,0.031674208);
        reinit(k_f26bp,-0.003055632);
        reinit(k_mal,0.502765209);
        reinit(k_pep,-0.301659125);
        reinit(k_pfkl_s775,0.006730598);
    end when;
    when time > 45 then
        reinit(k_akg,0.369532428);
        reinit(k_cit,0.306686777);
        reinit(k_f6p,0.070387129);
        reinit(k_icit,0.031674208);
        reinit(k_f26bp,-0.003055632);
        reinit(k_mal,0.502765209);
        reinit(k_pep,-0.301659125);
        reinit(k_pfkl_s775,0.00673059831429);
    end when;

end BIOMD540;
