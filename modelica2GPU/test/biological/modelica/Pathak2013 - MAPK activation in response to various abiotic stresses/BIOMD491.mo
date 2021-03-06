
model BIOMD491 "Pathak2013 - MAPK activation in response to various abiotic stresses"

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



    parameter Real kdiss_re1 = 1.0;
    parameter Real kass_re1 = 1.0;
    parameter Real kdiss_re2 = 1.0;
    parameter Real kass_re2 = 1.0;
    parameter Real kdiss_re3 = 1.0;
    parameter Real kass_re3 = 1.0;
    parameter Real kdiss_re4 = 1.0;
    parameter Real kass_re4 = 1.0;
    parameter Real kdiss_re5 = 1.0;
    parameter Real kass_re5 = 1.0;
    parameter Real kdiss_re6 = 1.0;
    parameter Real kass_re6 = 1.0;
    parameter Real kdiss_re7 = 1.0;
    parameter Real kass_re7 = 1.0;
    parameter Real kdiss_re8 = 1.0;
    parameter Real kass_re8 = 1.0;
    parameter Real kdiss_re9 = 1.0;
    parameter Real kass_re9 = 1.0;
    parameter Real kdiss_re10 = 1.0;
    parameter Real kass_re10 = 1.0;
    parameter Real kdiss_re11 = 1.0;
    parameter Real kass_re11 = 1.0;
    parameter Real kdiss_re12 = 1.0;
    parameter Real kass_re12 = 1.0;
    parameter Real kdiss_re13 = 1.0;
    parameter Real kass_re13 = 1.0;
    parameter Real kdiss_re14 = 1.0;
    parameter Real kass_re14 = 1.0;
    parameter Real kdiss_re15 = 1.0;
    parameter Real kass_re15 = 1.0;
    parameter Real kdiss_re16 = 1.0;
    parameter Real kass_re16 = 1.0;
    parameter Real kdiss_re17 = 1.0;
    parameter Real kass_re17 = 1.0;
    parameter Real kdiss_re18 = 1.0;
    parameter Real kass_re18 = 1.0;
    parameter Real kdiss_re19 = 1.0;
    parameter Real kass_re19 = 1.0;
    parameter Real kdiss_re20 = 1.0;
    parameter Real kass_re20 = 1.0;
    parameter Real kdiss_re21 = 1.0;
    parameter Real kass_re21 = 1.0;
    parameter Real kdiss_re22 = 1.0;
    parameter Real kass_re22 = 1.0;
    parameter Real kdiss_re23 = 1.0;
    parameter Real kass_re23 = 1.0;
    parameter Real kdiss_re24 = 1.0;
    parameter Real kass_re24 = 1.0;
    parameter Real kdiss_re25 = 1.0;
    parameter Real kass_re25 = 1.0;
    parameter Real kdiss_re26 = 1.0;
    parameter Real kass_re26 = 1.0;
    parameter Real kdiss_re27 = 1.0;
    parameter Real kass_re27 = 1.0;
    parameter Real kdiss_re28 = 1.0;
    parameter Real kass_re28 = 1.0;
    parameter Real kdiss_re29 = 1.0;
    parameter Real kass_re29 = 1.0;
    parameter Real kdiss_re30 = 1.0;
    parameter Real kass_re30 = 1.0;
    parameter Real kdiss_re31 = 1.0;
    parameter Real kass_re31 = 1.0;
    parameter Real kdiss_re32 = 1.0;
    parameter Real kass_re32 = 1.0;
    parameter Real kdiss_re33 = 1.0;
    parameter Real kass_re33 = 1.0;
    parameter Real kdiss_re34 = 1.0;
    parameter Real kass_re34 = 1.0;
    parameter Real kdiss_re35 = 1.0;
    parameter Real kass_re35 = 1.0;
    parameter Real kdiss_re36 = 1.0;
    parameter Real kass_re36 = 1.0;
    parameter Real kdiss_re37 = 1.0;
    parameter Real kass_re37 = 1.0;
    parameter Real kdiss_re38 = 1.0;
    parameter Real kass_re38 = 1.0;
    parameter Real kdiss_re39 = 1.0;
    parameter Real kass_re39 = 1.0;
    parameter Real kdiss_re40 = 1.0;
    parameter Real kass_re40 = 1.0;
    parameter Real kdiss_re41 = 1.0;
    parameter Real kass_re41 = 1.0;
    parameter Real kdiss_re42 = 1.0;
    parameter Real kass_re42 = 1.0;
    parameter Real kdiss_re43 = 1.0;
    parameter Real kass_re43 = 1.0;
    parameter Real kdiss_re44 = 1.0;
    parameter Real kass_re44 = 1.0;
    parameter Real kdiss_re45 = 1.0;
    parameter Real kass_re45 = 1.0;
    parameter Real kdiss_re46 = 1.0;
    parameter Real kass_re46 = 1.0;
    parameter Real kdiss_re47 = 1.0;
    parameter Real kass_re47 = 1.0;
    parameter Real kdiss_re48 = 1.0;
    parameter Real kass_re48 = 1.0;
    parameter Real kdiss_re49 = 1.0;
    parameter Real kass_re49 = 1.0;
    parameter Real kdiss_re50 = 1.0;
    parameter Real kass_re50 = 1.0;
    parameter Real kdiss_re51 = 1.0;
    parameter Real kass_re51 = 1.0;
    parameter Real kdiss_re52 = 1.0;
    parameter Real kass_re52 = 1.0;
    parameter Real kdiss_re53 = 1.0;
    parameter Real kass_re53 = 1.0;
    parameter Real kdiss_re54 = 1.0;
    parameter Real kass_re54 = 1.0;
    parameter Real kdiss_re55 = 1.0;
    parameter Real kass_re55 = 1.0;
    parameter Real kdiss_re56 = 1.0;
    parameter Real kass_re56 = 1.0;
    parameter Real kdiss_re57 = 1.0;
    parameter Real kass_re57 = 1.0;
    parameter Real kdiss_re58 = 1.0;
    parameter Real kass_re58 = 1.0;
    parameter Real kdiss_re59 = 1.0;
    parameter Real kass_re59 = 1.0;
    parameter Real kdiss_re60 = 1.0;
    parameter Real kass_re60 = 1.0;
    parameter Real kdiss_re61 = 1.0;
    parameter Real kass_re61 = 1.0;
    parameter Real kdiss_re62 = 1.0;
    parameter Real kass_re62 = 1.0;
    parameter Real kdiss_re63 = 1.0;
    parameter Real kass_re63 = 1.0;
    parameter Real kdiss_re64 = 1.0;
    parameter Real kass_re64 = 1.0;
    parameter Real kdiss_re65 = 1.0;
    parameter Real kass_re65 = 1.0;
    parameter Real kdiss_re66 = 1.0;
    parameter Real kass_re66 = 1.0;
    parameter Real kdiss_re67 = 1.0;
    parameter Real kass_re67 = 1.0;
    parameter Real kdiss_re68 = 1.0;
    parameter Real kass_re68 = 1.0;
    parameter Real kdiss_re69 = 1.0;
    parameter Real kass_re69 = 1.0;
    parameter Real kdiss_re70 = 1.0;
    parameter Real kass_re70 = 1.0;
    parameter Real kdiss_re71 = 1.0;
    parameter Real kass_re71 = 1.0;
    parameter Real kdiss_re72 = 1.0;
    parameter Real kass_re72 = 1.0;
    parameter Real kdiss_re73 = 1.0;
    parameter Real kass_re73 = 1.0;
    parameter Real kdiss_re74 = 1.0;
    parameter Real kass_re74 = 1.0;
    parameter Real kdiss_re75 = 1.0;
    parameter Real kass_re75 = 1.0;
    parameter Real kdiss_re76 = 1.0;
    parameter Real kass_re76 = 1.0;
    parameter Real kdiss_re77 = 1.0;
    parameter Real kass_re77 = 1.0;
    parameter Real kdiss_re78 = 1.0;
    parameter Real kass_re78 = 1.0;
    parameter Real kdiss_re79 = 1.0;
    parameter Real kass_re79 = 1.0;
    parameter Real kdiss_re80 = 1.0;
    parameter Real kass_re80 = 1.0;
    parameter Real kdiss_re81 = 1.0;
    parameter Real kass_re81 = 1.0;
    parameter Real kdiss_re82 = 1.0;
    parameter Real kass_re82 = 1.0;
    parameter Real kdiss_re83 = 1.0;
    parameter Real kass_re83 = 1.0;
    parameter Real kdiss_re84 = 1.0;
    parameter Real kass_re84 = 1.0;
    parameter Real kdiss_re85 = 1.0;
    parameter Real kass_re85 = 1.0;
    parameter Real kdiss_re86 = 1.0;
    parameter Real kass_re86 = 1.0;
    parameter Real default = 1.0;
    parameter Real c1 = 1.0;
    parameter Real c2 = 1.0;



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
    Real s27;
    Real s28;
    Real s19;
    Real s20;
    Real s21;
    Real s22;
    Real s23;
    Real s24;
    Real s25;
    Real s26;
    Real s29;
    Real s30;
    Real s31;
    Real s32;
    Real s33;
    Real s34;
    Real s35;
    Real s36;
    Real s37;
    Real s38;
    Real s39;
    Real s40;
    Real s41;
    Real s42;
    Real s43;
    Real s44;
    Real s45;
    Real s46;
    Real s47;
    Real s48;
    Real s49;
    Real s50;
    Real s51;
    Real s52;
    Real s53;
    Real s54;
    Real s55;
    Real s56;
    Real s57;

initial equation
    s1 = 0.5;
    s2 = 0.5;
    s3 = 0.5;
    s4 = 0.5;
    s5 = 0.5;
    s6 = 0.5;
    s7 = 0.8;
    s8 = 0.8;
    s9 = 0.8;
    s10 = 0.8;
    s11 = 0.8;
    s12 = 0.8;
    s13 = 1.0;
    s14 = 1.0;
    s15 = 1.0;
    s16 = 1.0;
    s17 = 1.0;
    s18 = 1.0;
    s27 = 1.0;
    s28 = 1.0;
    s19 = 1.0;
    s20 = 1.0;
    s21 = 1.0;
    s22 = 1.0;
    s23 = 1.0;
    s24 = 1.0;
    s25 = 1.0;
    s26 = 1.0;
    s29 = 1.0;
    s30 = 1.0;
    s31 = 1.0;
    s32 = 1.0;
    s33 = 1.2;
    s34 = 1.2;
    s35 = 1.2;
    s36 = 1.2;
    s37 = 1.2;
    s38 = 1.2;
    s39 = 1.2;
    s40 = 1.2;
    s41 = 1.2;
    s42 = 1.2;
    s43 = 1.2;
    s44 = 1.2;
    s45 = 1.2;
    s46 = 1.2;
    s47 = 1.2;
    s48 = 1.2;
    s49 = 1.5;
    s50 = 1.5;
    s51 = 1.5;
    s52 = 1.5;
    s53 = 1.5;
    s54 = 1.8;
    s55 = 2.0;
    s56 = 2.2;
    s57 = 2.5;

equation

    der(s1) =  - (kass_re1 * s1 - kdiss_re1 * s7);
    der(s2) =  - (kass_re2 * s2 - kdiss_re2 * s7) - (kass_re3 * s2 - kdiss_re3 * s8) - (kass_re4 * s2 - kdiss_re4 * s9);
    der(s3) =  - (kass_re8 * s3 - kdiss_re8 * s9) - (kass_re9 * s3 - kdiss_re9 * s7);
    der(s4) =  - (kass_re10 * s4 - kdiss_re10 * s7);
    der(s5) =  - (kass_re11 * s5 - kdiss_re11 * s7);
    der(s6) =  - (kass_re5 * s6 - kdiss_re5 * s12) - (kass_re6 * s6 - kdiss_re6 * s11) - (kass_re7 * s6 - kdiss_re7 * s10);
    der(s7) = (kass_re1 * s1 - kdiss_re1 * s7) + (kass_re2 * s2 - kdiss_re2 * s7) + (kass_re9 * s3 - kdiss_re9 * s7) + (kass_re10 * s4 - kdiss_re10 * s7) + (kass_re11 * s5 - kdiss_re11 * s7) - (kass_re13 * s7 - kdiss_re13 * s13) - (kass_re18 * s7 - kdiss_re18 * s15);
    der(s8) = (kass_re3 * s2 - kdiss_re3 * s8) - (kass_re14 * s8 - kdiss_re14 * s13);
    der(s9) = (kass_re4 * s2 - kdiss_re4 * s9) + (kass_re8 * s3 - kdiss_re8 * s9) - (kass_re15 * s9 - kdiss_re15 * s13);
    der(s10) = (kass_re7 * s6 - kdiss_re7 * s10) - (kass_re16 * s10 - kdiss_re16 * s13);
    der(s11) = (kass_re6 * s6 - kdiss_re6 * s11) - (kass_re20 * s11 - kdiss_re20 * s16);
    der(s12) = (kass_re5 * s6 - kdiss_re5 * s12) - (kass_re21 * s12 - kdiss_re21 * s16);
    der(s13) = (kass_re13 * s7 - kdiss_re13 * s13) + (kass_re14 * s8 - kdiss_re14 * s13) + (kass_re15 * s9 - kdiss_re15 * s13) + (kass_re16 * s10 - kdiss_re16 * s13) - (kass_re12 * s13 - kdiss_re12 * s14);
    der(s14) = (kass_re12 * s13 - kdiss_re12 * s14) - (kass_re17 * s14 - kdiss_re17 * s15) - (kass_re19 * s14 - kdiss_re19 * s16) - (kass_re23 * s14 - kdiss_re23 * s17);
    der(s15) = (kass_re17 * s14 - kdiss_re17 * s15) + (kass_re18 * s7 - kdiss_re18 * s15) - (kass_re34 * s15 - kdiss_re34 * s19) - (kass_re35 * s15 - kdiss_re35 * s20);
    der(s16) = (kass_re19 * s14 - kdiss_re19 * s16) + (kass_re20 * s11 - kdiss_re20 * s16) + (kass_re21 * s12 - kdiss_re21 * s16) - (kass_re36 * s16 - kdiss_re36 * s26);
    der(s17) = (kass_re23 * s14 - kdiss_re23 * s17) - (kass_re22 * s17 - kdiss_re22 * s18);
    der(s18) = (kass_re22 * s17 - kdiss_re22 * s18) - (kass_re24 * s18 - kdiss_re24 * s19) - (kass_re25 * s18 - kdiss_re25 * s20) - (kass_re26 * s18 - kdiss_re26 * s21) - (kass_re27 * s18 - kdiss_re27 * s22) - (kass_re28 * s18 - kdiss_re28 * s23) - (kass_re29 * s18 - kdiss_re29 * s24) - (kass_re30 * s18 - kdiss_re30 * s25) - (kass_re31 * s18 - kdiss_re31 * s26) - (kass_re33 * s18 - kdiss_re33 * s27);
    der(s27) = (kass_re33 * s18 - kdiss_re33 * s27) - (kass_re32 * s27 - kdiss_re32 * s28);
    der(s28) = (kass_re32 * s27 - kdiss_re32 * s28) - (kass_re37 * s28 - kdiss_re37 * s29) - (kass_re38 * s28 - kdiss_re38 * s30) - (kass_re39 * s28 - kdiss_re39 * s31) - (kass_re40 * s28 - kdiss_re40 * s32) - (kass_re66 * s28 - kdiss_re66 * s56) - (kass_re67 * s28 - kdiss_re67 * s49) - (kass_re68 * s28 - kdiss_re68 * s51) - (kass_re69 * s28 - kdiss_re69 * s53) - (kass_re70 * s28 - kdiss_re70 * s54) - (kass_re71 * s28 - kdiss_re71 * s55);
    der(s19) = (kass_re24 * s18 - kdiss_re24 * s19) + (kass_re34 * s15 - kdiss_re34 * s19) ;
    der(s20) = (kass_re25 * s18 - kdiss_re25 * s20) + (kass_re35 * s15 - kdiss_re35 * s20) - (kass_re41 * s20 - kdiss_re41 * s30) - (kass_re42 * s20 - kdiss_re42 * s31) - (kass_re43 * s20 - kdiss_re43 * s32);
    der(s21) = (kass_re26 * s18 - kdiss_re26 * s21) ;
    der(s22) = (kass_re27 * s18 - kdiss_re27 * s22) ;
    der(s23) = (kass_re28 * s18 - kdiss_re28 * s23) ;
    der(s24) = (kass_re29 * s18 - kdiss_re29 * s24) ;
    der(s25) = (kass_re30 * s18 - kdiss_re30 * s25) ;
    der(s26) = (kass_re31 * s18 - kdiss_re31 * s26) + (kass_re36 * s16 - kdiss_re36 * s26) - (kass_re44 * s26 - kdiss_re44 * s30);
    der(s29) = (kass_re37 * s28 - kdiss_re37 * s29) - (kass_re55 * s29 - kdiss_re55 * s37) - (kass_re56 * s29 - kdiss_re56 * s33);
    der(s30) = (kass_re38 * s28 - kdiss_re38 * s30) + (kass_re41 * s20 - kdiss_re41 * s30) + (kass_re44 * s26 - kdiss_re44 * s30) - (kass_re57 * s30 - kdiss_re57 * s35) - (kass_re58 * s30 - kdiss_re58 * s41) - (kass_re59 * s30 - kdiss_re59 * s47) - (kass_re79 * s30 - kdiss_re79 * s43);
    der(s31) = (kass_re39 * s28 - kdiss_re39 * s31) + (kass_re42 * s20 - kdiss_re42 * s31) - (kass_re60 * s31 - kdiss_re60 * s33) - (kass_re61 * s31 - kdiss_re61 * s45) - (kass_re62 * s31 - kdiss_re62 * s39);
    der(s32) = (kass_re40 * s28 - kdiss_re40 * s32) + (kass_re43 * s20 - kdiss_re43 * s32) - (kass_re63 * s32 - kdiss_re63 * s47) - (kass_re64 * s32 - kdiss_re64 * s45) - (kass_re65 * s32 - kdiss_re65 * s35);
    der(s33) = (kass_re56 * s29 - kdiss_re56 * s33) + (kass_re60 * s31 - kdiss_re60 * s33) - (kass_re45 * s33 - kdiss_re45 * s34);
    der(s34) = (kass_re45 * s33 - kdiss_re45 * s34) - (kass_re85 * s34 - kdiss_re85 * s57);
    der(s35) = (kass_re57 * s30 - kdiss_re57 * s35) + (kass_re65 * s32 - kdiss_re65 * s35) - (kass_re46 * s35 - kdiss_re46 * s36);
    der(s36) = (kass_re46 * s35 - kdiss_re46 * s36) - (kass_re84 * s36 - kdiss_re84 * s57);
    der(s37) = (kass_re55 * s29 - kdiss_re55 * s37) - (kass_re47 * s37 - kdiss_re47 * s38);
    der(s38) = (kass_re47 * s37 - kdiss_re47 * s38) - (kass_re83 * s38 - kdiss_re83 * s57);
    der(s39) = (kass_re62 * s31 - kdiss_re62 * s39) - (kass_re48 * s39 - kdiss_re48 * s40);
    der(s40) = (kass_re48 * s39 - kdiss_re48 * s40) - (kass_re72 * s40 - kdiss_re72 * s57);
    der(s41) = (kass_re58 * s30 - kdiss_re58 * s41) - (kass_re49 * s41 - kdiss_re49 * s42);
    der(s42) = (kass_re49 * s41 - kdiss_re49 * s42) - (kass_re81 * s42 - kdiss_re81 * s57);
    der(s43) = (kass_re79 * s30 - kdiss_re79 * s43) - (kass_re50 * s43 - kdiss_re50 * s44);
    der(s44) = (kass_re50 * s43 - kdiss_re50 * s44) - (kass_re82 * s44 - kdiss_re82 * s57);
    der(s45) = (kass_re61 * s31 - kdiss_re61 * s45) + (kass_re64 * s32 - kdiss_re64 * s45) - (kass_re51 * s45 - kdiss_re51 * s46);
    der(s46) = (kass_re51 * s45 - kdiss_re51 * s46) - (kass_re86 * s46 - kdiss_re86 * s57);
    der(s47) = (kass_re59 * s30 - kdiss_re59 * s47) + (kass_re63 * s32 - kdiss_re63 * s47) - (kass_re52 * s47 - kdiss_re52 * s48);
    der(s48) = (kass_re52 * s47 - kdiss_re52 * s48) - (kass_re78 * s48 - kdiss_re78 * s57);
    der(s49) = (kass_re67 * s28 - kdiss_re67 * s49) - (kass_re53 * s49 - kdiss_re53 * s50);
    der(s50) = (kass_re53 * s49 - kdiss_re53 * s50) - (kass_re76 * s50 - kdiss_re76 * s57);
    der(s51) = (kass_re68 * s28 - kdiss_re68 * s51) - (kass_re54 * s51 - kdiss_re54 * s52);
    der(s52) = (kass_re54 * s51 - kdiss_re54 * s52) - (kass_re75 * s52 - kdiss_re75 * s57);
    der(s53) = (kass_re69 * s28 - kdiss_re69 * s53) - (kass_re73 * s53 - kdiss_re73 * s57);
    der(s54) = (kass_re70 * s28 - kdiss_re70 * s54) - (kass_re74 * s54 - kdiss_re74 * s57);
    der(s55) = (kass_re71 * s28 - kdiss_re71 * s55) - (kass_re80 * s55 - kdiss_re80 * s57);
    der(s56) = (kass_re66 * s28 - kdiss_re66 * s56) - (kass_re77 * s56 - kdiss_re77 * s57);
    der(s57) = (kass_re72 * s40 - kdiss_re72 * s57) + (kass_re73 * s53 - kdiss_re73 * s57) + (kass_re74 * s54 - kdiss_re74 * s57) + (kass_re75 * s52 - kdiss_re75 * s57) + (kass_re76 * s50 - kdiss_re76 * s57) + (kass_re77 * s56 - kdiss_re77 * s57) + (kass_re78 * s48 - kdiss_re78 * s57) + (kass_re80 * s55 - kdiss_re80 * s57) + (kass_re81 * s42 - kdiss_re81 * s57) + (kass_re82 * s44 - kdiss_re82 * s57) + (kass_re83 * s38 - kdiss_re83 * s57) + (kass_re84 * s36 - kdiss_re84 * s57) + (kass_re85 * s34 - kdiss_re85 * s57) + (kass_re86 * s46 - kdiss_re86 * s57) ;




end BIOMD491;
