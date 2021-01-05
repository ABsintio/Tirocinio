
model BIOMD406 "Moriya2011_CellCycle_FissionYeast"

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



    parameter Real ksc18_dash = 0.075;
    parameter Real ksc18 = 0.005;
    parameter Real kdc18 = 0.001;
    parameter Real kdc18c13 = 0.45;
    parameter Real kdc18cig = 1.0;
    parameter Real kdc18cig_dash = 0.0;
    parameter Real krepl = 2.0;
    parameter Real kini_dash = 10.0;
    parameter Real kini_dash2 = 10.0;
    parameter Real kini_dash3 = 0.0;
    parameter Real ko18 = 100.0;
    parameter Real ko18r = 1.0;
    parameter Real kori = 125.0;
    parameter Real kipre = 1.0;
    parameter Real kipre_dash = 1.0;
    parameter Real Jipre = 0.01;
    parameter Real n = 4.0;
    parameter Real k = 0.1;
    parameter Real k_dash = 10.0;
    parameter Real kscyc = 0.03;
    parameter Real kdcyc = 0.018;
    parameter Real kdcycsrw = 1.0;
    parameter Real kdcycsrw_dash = 0.0001;
    parameter Real kdcycslp = 1.0;
    parameter Real kdcycslp_dash = 0.0003;
    parameter Real kasrw = 1.25;
    parameter Real kasrw_dash = 30.0;
    parameter Real kisrw = 1.5;
    parameter Real kisrw_dash = 40.0;
    parameter Real kisrw_dash2 = 1.0;
    parameter Real kisrw_dash3 = 4.0;
    parameter Real kisrw_dash4 = 4.0;
    parameter Real Jasrw = 0.01;
    parameter Real Jisrw = 0.01;
    parameter Real kaslp = 1.0;
    parameter Real kislp = 0.2;
    parameter Real Jaslp = 0.01;
    parameter Real Jislp = 0.01;
    parameter Real kaie = 0.0975;
    parameter Real kiie = 0.04;
    parameter Real Jaie = 0.01;
    parameter Real Jiie = 0.01;
    parameter Real ksrum = 1.0;
    parameter Real kdrum = 0.4;
    parameter Real kdrumpuc = 0.1;
    parameter Real kdrumci1 = 1.0;
    parameter Real kdrumcig = 15.0;
    parameter Real kdrumcig_dash = 10.0;
    parameter Real kdrumc13 = 50.0;
    parameter Real kdrumc13_dash = 5.0;
    parameter Real lp = 500.0;
    parameter Real lm = 100.0;
    parameter Real kscig_dash = 0.04;
    parameter Real kdcig = 0.02;
    parameter Real kdcig_dash = 1.0;
    parameter Real kac10 = 0.125;
    parameter Real kic10 = 0.01;
    parameter Real kic10_dash = 3.0;
    parameter Real Jac10 = 0.01;
    parameter Real Jic10 = 0.01;
    parameter Real kwee_dash = 0.01;
    parameter Real kwee_dash2 = 0.5;
    parameter Real Vawee_dash = 0.24;
    parameter Real Vawee_dash2 = 1.0;
    parameter Real Viwee_dash = 0.0;
    parameter Real Viwee_dash2 = 1.0;
    parameter Real Jawee = 0.04;
    parameter Real Jiwee = 0.03;
    parameter Real k25_dash = 0.01;
    parameter Real k25_dash2 = 1.0;
    parameter Real Va25_dash2 = 1.0;
    parameter Real Vi25_dash2 = 1.0;
    parameter Real Vi25_dash = 0.24;
    parameter Real Vi25 = 0.3;
    parameter Real Ja25 = 0.03;
    parameter Real Ji25 = 0.03;
    parameter Real lcp = 3.0;
    parameter Real lcm = 1.0;
    parameter Real kmik_dash = 0.01;
    parameter Real kmik_dash2 = 4.0;
    parameter Real Vamik = 0.25;
    parameter Real Vimik = 0.75;
    parameter Real Vimik_dash = 10.0;
    parameter Real Vimik_dash2 = 10.0;
    parameter Real Vimik_dash3 = 0.25;
    parameter Real kpyp = 0.6;
    parameter Real ksflp = 0.0015;
    parameter Real ksflp_dash = 0.015;
    parameter Real kdflp = 0.1;
    parameter Real ksci1 = 0.0015;
    parameter Real kdci1 = 0.1;
    parameter Real kdci1_dash = 5.0;
    parameter Real kdci1_dash2 = 0.2;
    parameter Real k255 = 0.1;
    parameter Real kpyp2 = 0.01;
    parameter Real kscig = 0.002;
    parameter Real oriT = 1.0;
    parameter Real Vamik_dash = 0.75;
    parameter Real Rad3 = 1.0;
    parameter Real beta = 10.0;
    parameter Real Puc1 = 1.0;
    parameter Real Srw1T = 1.0;
    parameter Real Slp1T = 1.0;
    parameter Real Cdc10T = 1.0;
    parameter Real Cdc25T = 1.0;
    parameter Real Wee1T = 1.0;
    parameter Real kaie_dash = 0.05;
    parameter Real default = 1.0;

    Real BB(start=0.0);
    Real chrom(start=0.0);
    Real UDNA(start=0.0);
    Real kmik(start=0.0);
    Real Vdrum(start=0.0);
    Real Vdcyc(start=0.0);
    Real Vdc18(start=0.0);
    Real k25(start=0.0);
    Real preRC(start=0.0);
    Real Cdc18(start=0.0);
    Real kwee(start=0.0);

    Real s4;
    Real s9;
    Real s46;
    Real s47;
    Real s48;
    Real s49;
    Real s50;
    Real s51;
    Real s52;
    Real s55;
    Real s56;
    Real s57;
    Real s60;
    Real s61;
    Real s63;
    Real s64;
    Real s65;
    Real s66;
    Real s67;
    Real s70;
    Real s71;
    Real s72;
    Real s73;
    Real s74;
    Real s75;
    Real s76;
    Real s77;
    Real s78;
    Real s79;
    Real s80;
    Real s81;
    Real s82;
    Real s83;
    Real s84;
    Real s85;
    Real s88;
    Real s89;
    Real s90;
    Real s91;
    Real s92;
    Real s93;
    Real s94;
    Real s130;
    Real s137;
    Real s149;
    Real s153;
    Real s157;
    Real s161;
    Real s166;

initial equation
    s4 = 0.0;
    s9 = 0.0;
    s46 = 0.0;
    s47 = 0.00239076;
    s48 = 6.33821e-05;
    s49 = 0.0;
    s50 = 0.00127807;
    s51 = 0.0;
    s52 = 0.0;
    s55 = 0.0;
    s56 = 0.0439902;
    s57 = 0.0;
    s60 = 0.1147007;
    s61 = 0.0;
    s63 = 0.0;
    s64 = 0.0;
    s65 = 0.0;
    s66 = 0.0;
    s67 = 0.0;
    s70 = 0.0;
    s71 = 0.0;
    s72 = 0.0;
    s73 = 0.0;
    s74 = 0.0;
    s75 = 0.0;
    s76 = 0.0;
    s77 = 0.0;
    s78 = 0.0;
    s79 = 0.0;
    s80 = 0.0;
    s81 = 0.0;
    s82 = 0.0;
    s83 = 0.0;
    s84 = 0.0;
    s85 = 0.0;
    s88 = 0.0;
    s89 = 0.0;
    s90 = 0.0;
    s91 = 0.0;
    s92 = 0.0;
    s93 = 0.0;
    s94 = 0.0;
    s130 = 0.0;
    s137 = 0.0432273;
    s149 = 0.0;
    s153 = 0.0;
    s157 = 0.0;
    s161 = 0.0165018;
    s166 = 0.0;

equation
    BB = oriT + s84 + (ko18r + Vdc18) / ko18;
    kwee = kwee_dash * Wee1T + (kwee_dash2 - kwee_dash) * s80;
    Vdrum = kdrum + kdrumpuc * Puc1 + kdrumci1 * s75 + kdrumcig * s67 + kdrumcig_dash * s63 + kdrumc13 * s56 + kdrumc13_dash * s60;
    Vdcyc = kdcyc + kdcycsrw * s47 + kdcycsrw_dash * Srw1T + kdcycslp * s48 + kdcycslp_dash * Slp1T;
    Vdc18 = kdc18 + kdc18c13 * s56 + kdc18cig * s67 + kdc18cig_dash * s63;
    k25 = k25_dash * Cdc25T + (k25_dash2 - k25_dash) * s83;
    chrom = 2 * oriT * s84 / (BB + sqrt(pow(BB, 2) - 4 * oriT * s84));
    preRC = (oriT - s90 - s91) * Cdc18 / ((ko18r + Vdc18) / ko18 + Cdc18);
    Cdc18 = s84 - chrom;
    UDNA = Rad3 * (k * s84 + k_dash * s90 * Cdc18 / ((ko18r + Vdc18) / ko18 + Cdc18));
    der(s4) = 0.0;
    der(s9) = 0.0;
    der(s46) = 0.0;
    der(s47) = ((kasrw + kasrw_dash * s48) * (Srw1T - s47) / (Jasrw + (Srw1T - s47))) - ((kisrw + kisrw_dash * s67 + kisrw_dash2 * s56 + kisrw_dash3 * Puc1 + kisrw_dash4 * s75) * s47 / (Jisrw + s47));
    der(s48) = (kaslp * s50 * (Slp1T - s48) / (Jaslp + (Slp1T - s48))) - (kislp * s48 / (Jislp + s48));
    der(s49) = 0.0;
    der(s50) = ((kaie * s56 + kaie_dash * s75) * (1 - s50) / (Jaie + (1 - s50))) - (kiie * s50 / (Jiie + s50));
    der(s51) = 0.0;
    der(s52) = 0.0;
    der(s55) = 0.0;
    der(s56) = (kscyc) + (Vdrum * s161) + ((kpyp2 + k25) * s60) - (Vdcyc * s56) - (lp * s56 * s166 - lm * s161) - ((kmik_dash * s72 + kwee) * s56);
    der(s57) = 0.0;
    der(s60) = (Vdrum * s137) + ((kmik_dash * s72 + kwee) * s56) - (Vdcyc * s60) - ((kpyp2 + k25) * s60) - (lp * s60 * s166 - lm * s137);
    der(s61) = 0.0;
    der(s63) = (kmik_dash2 * s72 * s67) + (Vdrum * s153) - (k25 * k255 * s63 + kpyp * s63 / (1 + beta * UDNA)) - (lcp * s63 * s166 - lcm * s153) - ((kdcig + kdcig_dash * s48) * s63);
    der(s64) = 0.0;
    der(s65) = 0.0;
    der(s66) = 0.0;
    der(s67) = (kscig * Cdc10T + kscig_dash * s71) + (k25 * k255 * s63 + kpyp * s63 / (1 + beta * UDNA)) + (Vdrum * s149) - (kmik_dash2 * s72 * s67) - (lcp * s67 * s166 - lcm * s149) - ((kdcig + kdcig_dash * s48) * s67);
    der(s70) = 0.0;
    der(s71) = (kac10 * (Cdc10T - s71) / (Jac10 + (Cdc10T - s71))) - ((kic10 + kic10_dash * s67) * s71 / (Jic10 + s71));
    der(s72) = (Vamik * Cdc10T + Vamik_dash * s71) - ((Vimik + Vimik_dash * s67 + Vimik_dash2 * s56 + Vimik_dash3 * s60) * s72);
    der(s73) = 0.0;
    der(s74) = 0.0;
    der(s75) = (ksci1) - ((kdci1 + kdci1_dash * s48 + kdci1_dash2 * s47) * s75);
    der(s76) = 0.0;
    der(s77) = 0.0;
    der(s78) = 0.0;
    der(s79) = 0.0;
    der(s80) = ((Vawee_dash + Vawee_dash2 * s81) * (Wee1T - s80) / (Jawee + (Wee1T - s80))) - ((Viwee_dash + Viwee_dash2 * s56) * s80 / (Jiwee + s80));
    der(s81) = (ksflp + ksflp_dash * s48) - (kdflp * s81);
    der(s82) = 0.0;
    der(s83) = (Va25_dash2 * s56 * (Cdc25T - s83) / (Ja25 + (Cdc25T - s83))) - ((Vi25_dash + Vi25_dash2 * s81 + Vi25 * UDNA) * s83 / (Ji25 + s83));
    der(s84) = (ksc18 * (Cdc10T - s71 + s71) + ksc18_dash * s71) - (Vdc18 * s84);
    der(s85) = 0.0;
    der(s88) = 0.0;
    der(s89) = 0.0;
    der(s90) = ((kini_dash * s56 + kini_dash2 * s67 + kini_dash3 * s63) * preRC) - (krepl * s90);
    der(s91) = (krepl * s90) - (kori / (1 + pow((kipre * s56 + kipre_dash * s67) / Jipre, n)) * s91);
    der(s92) = 0.0;
    der(s93) = 0.0;
    der(s94) = 0.0;
    der(s130) = 0.0;
    der(s137) = ((kmik_dash * s72 + kwee) * s161) + (lp * s60 * s166 - lm * s137) - (Vdrum * s137) - (Vdcyc * s137) - ((kpyp2 + k25) * s137);
    der(s149) = (lcp * s67 * s166 - lcm * s149) + (k25 * k255 * s153 + kpyp * s153 / (1 + beta * UDNA)) - ((kdcig + kdcig_dash * s48) * s149) - (Vdrum * s149) - (kmik_dash2 * s72 * s149);
    der(s153) = (lcp * s63 * s166 - lcm * s153) + (kmik_dash2 * s72 * s149) - ((kdcig + kdcig_dash * s48) * s153) - (k25 * k255 * s153 + kpyp * s153 / (1 + beta * UDNA)) - (Vdrum * s153);
    der(s157) = 0.0;
    der(s161) = ((kpyp2 + k25) * s137) + (lp * s56 * s166 - lm * s161) - (Vdcyc * s161) - (Vdrum * s161) - ((kmik_dash * s72 + kwee) * s161);
    der(s166) = (Vdcyc * s161) + (Vdcyc * s137) + ((kdcig + kdcig_dash * s48) * s149) + ((kdcig + kdcig_dash * s48) * s153) + (ksrum) - (lcp * s67 * s166 - lcm * s149) - (lcp * s63 * s166 - lcm * s153) - (lp * s56 * s166 - lm * s161) - (lp * s60 * s166 - lm * s137) - (Vdrum * s166);
    der(kmik)=0.0;



end BIOMD406;
