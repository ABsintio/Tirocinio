
model BIOMD542 "Yuraszeck2010 - Vulnerabilities in the Tau Network in Tau Pathophysiology"

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


    function Constant_flux__irreversible
        	input Real v;
        output Real y;
    algorithm
        y :=  v;
    end Constant_flux__irreversible;


    function Henri_Michaelis_Menten__irreversible
        	input Real substrate;
	input Real Km;
	input Real V;
        output Real y;
    algorithm
        y :=  V * substrate / (Km + substrate);
    end Henri_Michaelis_Menten__irreversible;


    function Mass_Action
        	input Real k1;
	input Real x1;
	input Real x2;
        output Real y;
    algorithm
        y :=  k1 * x1 * x2;
    end Mass_Action;


    function Michaelis_Menten
        	input Real k1;
	input Real x1;
	input Real x2;
	input Real k2;
        output Real y;
    algorithm
        y :=  k1 * x1 * x2 / (k2 + x1);
    end Michaelis_Menten;


    function Mass_Action_
        	input Real K1;
	input Real x1;
	input Real x2;
	input Real x3;
        output Real y;
    algorithm
        y :=  K1 * x1 * x2 * x3;
    end Mass_Action_;


    function Nucleation
        	input Real k1;
	input Real x1;
        output Real y;
    algorithm
        y :=  k1 * x1^2;
    end Nucleation;


    parameter Real k1 = 0.03725;
    parameter Real k2 = 0.391818;
    parameter Real k3 = 27.5668;
    parameter Real k4 = 6.065997;
    parameter Real k5 = 7.99621;
    parameter Real k6 = 0.142099;
    parameter Real k7 = 21.91138;
    parameter Real k8 = 0.608448;
    parameter Real k9 = 5.760257;
    parameter Real k10 = 7.118684;
    parameter Real k11 = 15.0;
    parameter Real k12 = 9.633772;
    parameter Real k13 = 0.163388;
    parameter Real k14 = 1.540886;
    parameter Real k15 = 9.220426;
    parameter Real k16 = 50.66157;
    parameter Real k17 = 0.202066;
    parameter Real k18 = 3.940468;
    parameter Real k19 = 8.052152;
    parameter Real k20 = 19.76984;
    parameter Real k21 = 7.248652;
    parameter Real k22 = 0.173127;
    parameter Real k23 = 0.075176;
    parameter Real k24 = 0.039141;
    parameter Real k25 = 0.066012;
    parameter Real k26 = 0.1452;
    parameter Real k27 = 0.473124;
    parameter Real k28 = 12.62955;
    parameter Real k29 = 0.006017;
    parameter Real k30 = 16.56551;
    parameter Real k31 = 3.991539;
    parameter Real k32 = 7.130081;
    parameter Real k33 = 0.009267;
    parameter Real k34 = 0.000111;
    parameter Real k35 = 0.146177;
    parameter Real k36 = 0.006298;
    parameter Real k37 = 1.07;
    parameter Real k38 = 0.029266;
    parameter Real k39 = 1.163756;
    parameter Real k40 = 0.050949;
    parameter Real k41 = 0.279;
    parameter Real k42 = 0.025365;
    parameter Real k43 = 3.68998;
    parameter Real k44 = 27.5668;
    parameter Real k45 = 0.216599;
    parameter Real k46 = 7.99621;
    parameter Real k47 = 2.801964;
    parameter Real k48 = 21.91138;
    parameter Real k49 = 0.003379;
    parameter Real k50 = 5.760257;
    parameter Real k51 = 7.118684;
    parameter Real k52 = 15.0;
    parameter Real k53 = 9.633772;
    parameter Real k54 = 0.054463;
    parameter Real k55 = 1.540886;
    parameter Real k56 = 9.220426;
    parameter Real k57 = 50.66157;
    parameter Real k58 = 0.067355;
    parameter Real k59 = 3.940468;
    parameter Real k60 = 8.052152;
    parameter Real k61 = 19.76984;
    parameter Real k62 = 2.416217;
    parameter Real k63 = 0.211664;
    parameter Real k64 = 0.074306;
    parameter Real k65 = 0.001334;
    parameter Real k66 = 0.028914;
    parameter Real k67 = 0.1452;
    parameter Real k68 = 0.004313;
    parameter Real k69 = 12.62955;
    parameter Real k70 = 0.073055;
    parameter Real k71 = 16.56551;
    parameter Real k72 = 0.014352;
    parameter Real k73 = 7.130081;
    parameter Real k74 = 0.000161;
    parameter Real k75 = 8.57e-05;
    parameter Real k76 = 0.283991;
    parameter Real k77 = 1.185806;
    parameter Real k78 = 0.004562;
    parameter Real k79 = 0.346673;
    parameter Real k80 = 0.551509;
    parameter Real k81 = 5.59e-05;
    parameter Real k82 = 0.644848;
    parameter Real k83 = 0.006502;
    parameter Real k84 = 0.68;
    parameter Real k85 = 0.015317;
    parameter Real k86 = 5e-06;
    parameter Real k87 = 0.0012;
    parameter Real k88 = 5e-06;
    parameter Real k89 = 0.06;
    parameter Real k90 = 0.095;
    parameter Real k91 = 0.005429;
    parameter Real k92 = 0.095;
    parameter Real k93 = 0.019;
    parameter Real Brain = 1.0;



    Real ADP;
    Real ATP;
    Real MT;
    Real _20S;
    Real Hsc70;
    Real Hsp90;
    Real CHIP;
    Real Bag2;
    Real _26S;
    Real TauH3RUb;
    Real TauH4RUb;
    Real Nucleus3;
    Real Nucleus4;
    Real Agg33;
    Real Ap;
    Real Agg43;
    Real Bp;
    Real Tau03R;
    Real TauN3R;
    Real TauH3R;
    Real Tau0_3R;
    Real Tau03RMT;
    Real TauN_3R;
    Real TauN3RMT;
    Real TauH_3R;
    Real TauH3RMT;
    Real TauH3R_Hsc70;
    Real TauH3R_Hsp90;
    Real Tau03R_Hsp90;
    Real TauH3R_CHIP_Hsc70;
    Real TauH3R_CHIP_Hsc70_Bag2;
    Real Tau04R;
    Real TauN4R;
    Real TauH4R;
    Real Tau0_4R;
    Real Tau04RMT;
    Real TauN_4R;
    Real TauN4RMT;
    Real TauH_4R;
    Real TauH4RMT;
    Real TauH4R_Hsc70;
    Real TauH4R_Hsp90;
    Real Tau04R_Hsp90;
    Real TauH4R_CHIP_Hsc70;
    Real TauH4R_CHIP_Hsc70_Bag2;

initial equation
    ADP = 1.0;
    ATP = 0.0;
    MT = 15.0;
    _20S = 1.0;
    Hsc70 = 0.1;
    Hsp90 = 0.1;
    CHIP = 0.1;
    Bag2 = 0.1;
    _26S = 1.0;
    TauH3RUb = 0.0;
    TauH4RUb = 0.0;
    Nucleus3 = 0.0;
    Nucleus4 = 0.0;
    Agg33 = 0.0;
    Ap = 0.0;
    Agg43 = 0.0;
    Bp = 0.0;
    Tau03R = 0.0;
    TauN3R = 0.0;
    TauH3R = 0.0;
    Tau0_3R = 0.0;
    Tau03RMT = 0.0;
    TauN_3R = 0.0;
    TauN3RMT = 0.0;
    TauH_3R = 0.0;
    TauH3RMT = 0.0;
    TauH3R_Hsc70 = 0.0;
    TauH3R_Hsp90 = 0.0;
    Tau03R_Hsp90 = 0.0;
    TauH3R_CHIP_Hsc70 = 0.0;
    TauH3R_CHIP_Hsc70_Bag2 = 0.0;
    Tau04R = 0.0;
    TauN4R = 0.0;
    TauH4R = 0.0;
    Tau0_4R = 0.0;
    Tau04RMT = 0.0;
    TauN_4R = 0.0;
    TauN4RMT = 0.0;
    TauH_4R = 0.0;
    TauH4RMT = 0.0;
    TauH4R_Hsc70 = 0.0;
    TauH4R_Hsp90 = 0.0;
    Tau04R_Hsp90 = 0.0;
    TauH4R_CHIP_Hsc70 = 0.0;
    TauH4R_CHIP_Hsc70_Bag2 = 0.0;

equation

    der(_20S) = 0;
    der(_26S) = 0;
    der(Ap) = Mass_Action(k90, TauH3RUb, Agg33);
    der(Bp) = Mass_Action(k92, TauH4RUb, Agg43);
    der(ADP) = (Brain * Michaelis_Menten(k2, Tau03R, ATP, k3)) + (Brain * Michaelis_Menten(k6, TauN3R, ATP, k7)) + (Brain * Mass_Action_(k22, Tau03R, _20S, ATP)) + (Brain * Mass_Action_(k23, TauN3R, _20S, ATP)) + (Brain * Mass_Action_(k24, TauH3R, _20S, ATP)) + (Brain * Michaelis_Menten(k25, Tau03RMT, ATP, k26)) + (Brain * Michaelis_Menten(k29, TauN3RMT, ATP, k30)) + (Brain * Mass_Action_(k41, TauH3RUb, _26S, ATP)) + (Brain * Michaelis_Menten(k43, Tau04R, ATP, k44)) + (Brain * Michaelis_Menten(k47, TauN4R, ATP, k48)) + (Brain * Mass_Action_(k63, Tau04R, _20S, ATP)) + (Brain * Mass_Action_(k64, TauN4R, _20S, ATP)) + (Brain * Mass_Action_(k65, TauH4R, _20S, ATP)) + (Brain * Michaelis_Menten(k66, Tau04RMT, ATP, k67)) + (Brain * Michaelis_Menten(k70, TauN4RMT, ATP, k71)) + (Brain * Mass_Action_(k83, TauH4RUb, _26S, ATP)) + (Brain * k85 * ATP) - (Brain * k84 * ADP);
    der(ATP) = (Brain * k84 * ADP) - (Brain * Michaelis_Menten(k2, Tau03R, ATP, k3)) - (Brain * Michaelis_Menten(k6, TauN3R, ATP, k7)) - (Brain * Mass_Action_(k22, Tau03R, _20S, ATP)) - (Brain * Mass_Action_(k23, TauN3R, _20S, ATP)) - (Brain * Mass_Action_(k24, TauH3R, _20S, ATP)) - (Brain * Michaelis_Menten(k25, Tau03RMT, ATP, k26)) - (Brain * Michaelis_Menten(k29, TauN3RMT, ATP, k30)) - (Brain * Mass_Action_(k41, TauH3RUb, _26S, ATP)) - (Brain * Michaelis_Menten(k43, Tau04R, ATP, k44)) - (Brain * Michaelis_Menten(k47, TauN4R, ATP, k48)) - (Brain * Mass_Action_(k63, Tau04R, _20S, ATP)) - (Brain * Mass_Action_(k64, TauN4R, _20S, ATP)) - (Brain * Mass_Action_(k65, TauH4R, _20S, ATP)) - (Brain * Michaelis_Menten(k66, Tau04RMT, ATP, k67)) - (Brain * Michaelis_Menten(k70, TauN4RMT, ATP, k71)) - (Brain * Mass_Action_(k83, TauH4RUb, _26S, ATP)) - (Brain * k85 * ATP);
    der(MT) = (Brain * k13 * Tau03RMT) + (Brain * k17 * TauN3RMT) + (Brain * k21 * TauH3RMT) + (Brain * k54 * Tau04RMT) + (Brain * k58 * TauN4RMT) + (Brain * k62 * TauH4RMT) - (Brain * Mass_Action(k12, Tau0_3R, MT)) - (Brain * Mass_Action(k16, TauN_3R, MT)) - (Brain * Mass_Action(k20, TauH_3R, MT)) - (Brain * Mass_Action(k53, Tau0_4R, MT)) - (Brain * Mass_Action(k57, TauN_4R, MT)) - (Brain * Mass_Action(k61, TauH_4R, MT));
    der(Hsc70) = (Brain * k34 * TauH3R_Hsc70) + (Brain * Mass_Action(k35, TauH3R_Hsc70, Hsp90)) + (Brain * k38 * TauH3R_CHIP_Hsc70) + (Brain * k75 * TauH4R_Hsc70) + (Brain * Mass_Action(k76, TauH4R_Hsc70, Hsp90)) + (Brain * k80 * TauH4R_CHIP_Hsc70) - (Brain * Mass_Action(k33, TauH3R, Hsc70)) - (Brain * Mass_Action(k74, TauH4R, Hsc70));
    der(Hsp90) = (Brain * k36 * Tau03R_Hsp90) + (Brain * k78 * Tau04R_Hsp90) - (Brain * Mass_Action(k35, TauH3R_Hsc70, Hsp90)) - (Brain * Mass_Action(k76, TauH4R_Hsc70, Hsp90));
    der(CHIP) = (Brain * k38 * TauH3R_CHIP_Hsc70) + (Brain * k40 * TauH3R_CHIP_Hsc70_Bag2) + (Brain * k80 * TauH4R_CHIP_Hsc70) + (Brain * k82 * TauH4R_CHIP_Hsc70_Bag2) - (Brain * Mass_Action(k37, TauH3R_Hsc70, CHIP)) - (Brain * Mass_Action(k79, TauH4R_Hsc70, CHIP));
    der(Bag2) = (Brain * k40 * TauH3R_CHIP_Hsc70_Bag2) + (Brain * k82 * TauH4R_CHIP_Hsc70_Bag2) - (Brain * Mass_Action(k39, TauH3R_CHIP_Hsc70, Bag2)) - (Brain * Mass_Action(k81, TauH4R_CHIP_Hsc70, Bag2));
    der(TauH3RUb) = (Brain * k38 * TauH3R_CHIP_Hsc70) + (2.0 * Brain * k87 * Nucleus3) + (Brain * k91 * Agg33) + (Brain * k91 * Ap) - (Brain * Mass_Action_(k41, TauH3RUb, _26S, ATP)) - (2.0 * Brain * Nucleation(k86, TauH3RUb)) - (Brain * Mass_Action(k90, Nucleus3, TauH3RUb)) - (Brain * Mass_Action(k90, TauH3RUb, Agg33)) - (Brain * Mass_Action(k90, TauH3RUb, Ap));
    der(TauH4RUb) = (Brain * k80 * TauH4R_CHIP_Hsc70) + (2.0 * Brain * k89 * Nucleus4) + (Brain * k93 * Agg43) + (Brain * k93 * Bp) - (Brain * Mass_Action_(k83, TauH4RUb, _26S, ATP)) - (2.0 * Brain * Nucleation(k88, TauH4RUb)) - (Brain * Mass_Action(k92, Nucleus4, TauH4RUb)) - (Brain * Mass_Action(k92, TauH4RUb, Agg43)) - (Brain * Mass_Action(k92, TauH4RUb, Bp));
    der(Nucleus3) = (Brain * Nucleation(k86, TauH3RUb)) + (Brain * k91 * Agg33) - (Brain * k87 * Nucleus3) - (Brain * Mass_Action(k90, Nucleus3, TauH3RUb));
    der(Nucleus4) = (Brain * Nucleation(k88, TauH4RUb)) + (Brain * k93 * Agg43) - (Brain * k89 * Nucleus4) - (Brain * Mass_Action(k92, Nucleus4, TauH4RUb));
    der(Agg33) = (Brain * Mass_Action(k90, Nucleus3, TauH3RUb)) - (Brain * k91 * Agg33) - (Brain * Mass_Action(k90, TauH3RUb, Agg33));
    der(Agg43) = (Brain * Mass_Action(k92, Nucleus4, TauH4RUb)) - (Brain * k93 * Agg43) - (Brain * Mass_Action(k92, TauH4RUb, Agg43));
    der(Tau03R) = (Brain * Constant_flux__irreversible(k1)) + (Brain * Henri_Michaelis_Menten__irreversible(TauN3R, k5, k4)) + (Brain * k11 * Tau0_3R) + (Brain * k36 * Tau03R_Hsp90) - (Brain * Michaelis_Menten(k2, Tau03R, ATP, k3)) - (Brain * k10 * Tau03R) - (Brain * Mass_Action_(k22, Tau03R, _20S, ATP));
    der(TauN3R) = (Brain * Michaelis_Menten(k2, Tau03R, ATP, k3)) + (Brain * Henri_Michaelis_Menten__irreversible(TauH3R, k9, k8)) + (Brain * k15 * TauN_3R) - (Brain * Henri_Michaelis_Menten__irreversible(TauN3R, k5, k4)) - (Brain * Michaelis_Menten(k6, TauN3R, ATP, k7)) - (Brain * k14 * TauN3R) - (Brain * Mass_Action_(k23, TauN3R, _20S, ATP));
    der(TauH3R) = (Brain * Michaelis_Menten(k6, TauN3R, ATP, k7)) + (Brain * k19 * TauH_3R) + (Brain * k34 * TauH3R_Hsc70) - (Brain * Henri_Michaelis_Menten__irreversible(TauH3R, k9, k8)) - (Brain * k18 * TauH3R) - (Brain * Mass_Action_(k24, TauH3R, _20S, ATP)) - (Brain * Mass_Action(k33, TauH3R, Hsc70));
    der(Tau0_3R) = (Brain * k10 * Tau03R) + (Brain * k13 * Tau03RMT) - (Brain * k11 * Tau0_3R) - (Brain * Mass_Action(k12, Tau0_3R, MT));
    der(Tau03RMT) = (Brain * Mass_Action(k12, Tau0_3R, MT)) + (Brain * Henri_Michaelis_Menten__irreversible(TauN3RMT, k28, k27)) - (Brain * k13 * Tau03RMT) - (Brain * Michaelis_Menten(k25, Tau03RMT, ATP, k26));
    der(TauN_3R) = (Brain * k14 * TauN3R) + (Brain * k17 * TauN3RMT) - (Brain * k15 * TauN_3R) - (Brain * Mass_Action(k16, TauN_3R, MT));
    der(TauN3RMT) = (Brain * Mass_Action(k16, TauN_3R, MT)) + (Brain * Michaelis_Menten(k25, Tau03RMT, ATP, k26)) + (Brain * Henri_Michaelis_Menten__irreversible(TauH3RMT, k32, k31)) - (Brain * k17 * TauN3RMT) - (Brain * Henri_Michaelis_Menten__irreversible(TauN3RMT, k28, k27)) - (Brain * Michaelis_Menten(k29, TauN3RMT, ATP, k30));
    der(TauH_3R) = (Brain * k18 * TauH3R) + (Brain * k21 * TauH3RMT) - (Brain * k19 * TauH_3R) - (Brain * Mass_Action(k20, TauH_3R, MT));
    der(TauH3RMT) = (Brain * Mass_Action(k20, TauH_3R, MT)) + (Brain * Michaelis_Menten(k29, TauN3RMT, ATP, k30)) - (Brain * k21 * TauH3RMT) - (Brain * Henri_Michaelis_Menten__irreversible(TauH3RMT, k32, k31));
    der(TauH3R_Hsc70) = (Brain * Mass_Action(k33, TauH3R, Hsc70)) + (Brain * k40 * TauH3R_CHIP_Hsc70_Bag2) - (Brain * k34 * TauH3R_Hsc70) - (Brain * Mass_Action(k35, TauH3R_Hsc70, Hsp90)) - (Brain * Mass_Action(k37, TauH3R_Hsc70, CHIP));
    der(TauH3R_Hsp90) = (Brain * Mass_Action(k35, TauH3R_Hsc70, Hsp90)) - (Brain * Henri_Michaelis_Menten__irreversible(TauH3R_Hsp90, k9, k8));
    der(Tau03R_Hsp90) = (Brain * Henri_Michaelis_Menten__irreversible(TauH3R_Hsp90, k9, k8)) - (Brain * k36 * Tau03R_Hsp90);
    der(TauH3R_CHIP_Hsc70) = (Brain * Mass_Action(k37, TauH3R_Hsc70, CHIP)) - (Brain * k38 * TauH3R_CHIP_Hsc70) - (Brain * Mass_Action(k39, TauH3R_CHIP_Hsc70, Bag2));
    der(TauH3R_CHIP_Hsc70_Bag2) = (Brain * Mass_Action(k39, TauH3R_CHIP_Hsc70, Bag2)) - (Brain * k40 * TauH3R_CHIP_Hsc70_Bag2);
    der(Tau04R) = (Brain * Constant_flux__irreversible(k42)) + (Brain * Henri_Michaelis_Menten__irreversible(TauN4R, k46, k45)) + (Brain * k52 * Tau0_4R) + (Brain * k78 * Tau04R_Hsp90) - (Brain * Michaelis_Menten(k43, Tau04R, ATP, k44)) - (Brain * k51 * Tau04R) - (Brain * Mass_Action_(k63, Tau04R, _20S, ATP));
    der(TauN4R) = (Brain * Michaelis_Menten(k43, Tau04R, ATP, k44)) + (Brain * Henri_Michaelis_Menten__irreversible(TauH4R, k50, k49)) + (Brain * k56 * TauN_4R) - (Brain * Henri_Michaelis_Menten__irreversible(TauN4R, k46, k45)) - (Brain * Michaelis_Menten(k47, TauN4R, ATP, k48)) - (Brain * k55 * TauN4R) - (Brain * Mass_Action_(k64, TauN4R, _20S, ATP));
    der(TauH4R) = (Brain * Michaelis_Menten(k47, TauN4R, ATP, k48)) + (Brain * k60 * TauH_4R) + (Brain * k75 * TauH4R_Hsc70) - (Brain * Henri_Michaelis_Menten__irreversible(TauH4R, k50, k49)) - (Brain * k59 * TauH4R) - (Brain * Mass_Action_(k65, TauH4R, _20S, ATP)) - (Brain * Mass_Action(k74, TauH4R, Hsc70));
    der(Tau0_4R) = (Brain * k51 * Tau04R) + (Brain * k54 * Tau04RMT) - (Brain * k52 * Tau0_4R) - (Brain * Mass_Action(k53, Tau0_4R, MT));
    der(Tau04RMT) = (Brain * Mass_Action(k53, Tau0_4R, MT)) + (Brain * Henri_Michaelis_Menten__irreversible(TauN4RMT, k69, k68)) - (Brain * k54 * Tau04RMT) - (Brain * Michaelis_Menten(k66, Tau04RMT, ATP, k67));
    der(TauN_4R) = (Brain * k55 * TauN4R) + (Brain * k58 * TauN4RMT) - (Brain * k56 * TauN_4R) - (Brain * Mass_Action(k57, TauN_4R, MT));
    der(TauN4RMT) = (Brain * Mass_Action(k57, TauN_4R, MT)) + (Brain * Michaelis_Menten(k66, Tau04RMT, ATP, k67)) + (Brain * Henri_Michaelis_Menten__irreversible(TauH4RMT, k73, k72)) - (Brain * k58 * TauN4RMT) - (Brain * Henri_Michaelis_Menten__irreversible(TauN4RMT, k69, k68)) - (Brain * Michaelis_Menten(k70, TauN4RMT, ATP, k71));
    der(TauH_4R) = (Brain * k59 * TauH4R) + (Brain * k62 * TauH4RMT) - (Brain * k60 * TauH_4R) - (Brain * Mass_Action(k61, TauH_4R, MT));
    der(TauH4RMT) = (Brain * Mass_Action(k61, TauH_4R, MT)) + (Brain * Michaelis_Menten(k70, TauN4RMT, ATP, k71)) - (Brain * k62 * TauH4RMT) - (Brain * Henri_Michaelis_Menten__irreversible(TauH4RMT, k73, k72));
    der(TauH4R_Hsc70) = (Brain * Mass_Action(k74, TauH4R, Hsc70)) + (Brain * k82 * TauH4R_CHIP_Hsc70_Bag2) - (Brain * k75 * TauH4R_Hsc70) - (Brain * Mass_Action(k76, TauH4R_Hsc70, Hsp90)) - (Brain * Mass_Action(k79, TauH4R_Hsc70, CHIP));
    der(TauH4R_Hsp90) = (Brain * Mass_Action(k76, TauH4R_Hsc70, Hsp90)) - (Brain * Henri_Michaelis_Menten__irreversible(TauH4R_Hsp90, k9, k77));
    der(Tau04R_Hsp90) = (Brain * Henri_Michaelis_Menten__irreversible(TauH4R_Hsp90, k9, k77)) - (Brain * k78 * Tau04R_Hsp90);
    der(TauH4R_CHIP_Hsc70) = (Brain * Mass_Action(k79, TauH4R_Hsc70, CHIP)) - (Brain * k80 * TauH4R_CHIP_Hsc70) - (Brain * Mass_Action(k81, TauH4R_CHIP_Hsc70, Bag2));
    der(TauH4R_CHIP_Hsc70_Bag2) = (Brain * Mass_Action(k81, TauH4R_CHIP_Hsc70, Bag2)) - (Brain * k82 * TauH4R_CHIP_Hsc70_Bag2);




end BIOMD542;
