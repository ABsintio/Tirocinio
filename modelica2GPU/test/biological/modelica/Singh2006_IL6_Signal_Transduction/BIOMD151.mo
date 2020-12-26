
model BIOMD151 "Singh2006_IL6_Signal_Transduction"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real IL6 = 0.38;
    parameter Real kf0 = 0.1;
    parameter Real kr0 = 0.05;
    parameter Real kf1 = 0.1;
    parameter Real kr1 = 0.05;
    parameter Real kf2 = 0.02;
    parameter Real kr2 = 0.02;
    parameter Real kf3 = 0.04;
    parameter Real kr3 = 0.2;
    parameter Real k4 = 0.005;
    parameter Real k10 = 0.003;
    parameter Real kf5 = 0.008;
    parameter Real kr5 = 0.8;
    parameter Real k6 = 0.4;
    parameter Real kf7 = 0.005;
    parameter Real kr7 = 0.5;
    parameter Real kf9 = 0.001;
    parameter Real kr9 = 0.2;
    parameter Real kf21 = 0.02;
    parameter Real kr21 = 0.1;
    parameter Real kf37 = 0.3;
    parameter Real kr37 = 0.0009;
    parameter Real kf39 = 0.3;
    parameter Real kr39 = 0.0009;
    parameter Real kf32 = 0.1;
    parameter Real kr32 = 0.000245;
    parameter Real k12 = 0.003;
    parameter Real kf13 = 2e-07;
    parameter Real kr13 = 0.2;
    parameter Real k17 = 0.05;
    parameter Real kf8 = 0.02;
    parameter Real kr8 = 0.1;
    parameter Real kf11 = 0.001;
    parameter Real kr11 = 0.2;
    parameter Real k14 = 0.005;
    parameter Real Vm = 1.7;
    parameter Real Km = 340.0;
    parameter Real kf34 = 6.0;
    parameter Real kr34 = 0.06;
    parameter Real kf60 = 0.5;
    parameter Real kr60 = 0.005;
    parameter Real kf15 = 0.001;
    parameter Real kr15 = 0.2;
    parameter Real kf61 = 0.2;
    parameter Real kr61 = 2e-07;
    parameter Real k16 = 0.005;
    parameter Real k18a = 0.01;
    parameter Real k18b = 400.0;
    parameter Real k19 = 0.001;
    parameter Real k22 = 0.0005;
    parameter Real k20 = 0.01;
    parameter Real k23 = 0.0005;
    parameter Real kf38 = 0.01;
    parameter Real kr38 = 0.55;
    parameter Real kf35 = 0.0015;
    parameter Real kr35 = 0.0045;
    parameter Real kf24 = 0.01;
    parameter Real kr24 = 0.55;
    parameter Real kf25 = 0.01;
    parameter Real kr25 = 0.0214;
    parameter Real kf40 = 0.03;
    parameter Real kr40 = 0.064;
    parameter Real kf26 = 0.015;
    parameter Real kr26 = 1.3;
    parameter Real kf31 = 0.023;
    parameter Real kr31 = 0.00022;
    parameter Real kf27 = 0.5;
    parameter Real kr27 = 0.0001;
    parameter Real kf28 = 0.001;
    parameter Real kr28 = 0.0053;
    parameter Real kf41 = 0.03;
    parameter Real kr41 = 0.0429;
    parameter Real kf33 = 0.3;
    parameter Real kr33 = 0.021;
    parameter Real kf30 = 0.0079;
    parameter Real kr30 = 0.4;
    parameter Real k43 = 1.0;
    parameter Real kf29 = 1.0;
    parameter Real kr29 = 0.0007;
    parameter Real kf42 = 0.0717;
    parameter Real kr42 = 0.2;
    parameter Real kf44 = 0.011;
    parameter Real kr44 = 0.001833;
    parameter Real k45 = 3.5;
    parameter Real kf46 = 0.011;
    parameter Real kr46 = 0.001833;
    parameter Real k51 = 0.058;
    parameter Real k49 = 0.058;
    parameter Real kf50 = 0.00025;
    parameter Real kr50 = 0.5;
    parameter Real k47 = 2.9;
    parameter Real kf48 = 0.0143;
    parameter Real kr48 = 0.8;
    parameter Real kf52 = 0.00011;
    parameter Real kr52 = 0.033;
    parameter Real k53 = 16.0;
    parameter Real kr54 = 0.033;
    parameter Real kf54 = 0.00011;
    parameter Real k55 = 6.7;
    parameter Real k59 = 0.3;
    parameter Real k57 = 0.27;
    parameter Real kf58 = 0.005;
    parameter Real kr58 = 0.5;
    parameter Real kf56 = 0.014;
    parameter Real kr56 = 0.6;
    parameter Real cytosol = 1.0;
    parameter Real nucleus = 1.0;



    Real x1;
    Real x2;
    Real x6;
    Real x5;
    Real x7;
    Real x8;
    Real x16;
    Real x15;
    Real x9;
    Real x11;
    Real x10;
    Real x12;
    Real x29;
    Real x30;
    Real x39;
    Real x46;
    Real x40;
    Real x45;
    Real x41;
    Real x44;
    Real x18;
    Real x17;
    Real x14;
    Real x22;
    Real x32;
    Real x13;
    Real x20;
    Real x21;
    Real x23;
    Real x27;
    Real x24;
    Real x25;
    Real x34;
    Real x36;
    Real x42;
    Real x37;
    Real x47;
    Real x48;
    Real x52;
    Real x51;
    Real x50;
    Real x53;
    Real x54;
    Real x55;
    Real x60;
    Real x59;
    Real x57;
    Real x61;
    Real x62;
    Real x63;
    Real x65;
    Real x68;
    Real x35;
    Real x28;
    Real x31;
    Real x56;
    Real x43;
    Real x3;
    Real x58;
    Real x4;
    Real x26;
    Real x49;
    Real x33;
    Real x64;
    Real x19;
    Real x38;
    Real x66;
    Real x67;

initial equation
    x1 = 8.0;
    x2 = 0.0;
    x6 = 0.0;
    x5 = 0.0;
    x7 = 0.0;
    x8 = 0.0;
    x16 = 0.0;
    x15 = 100.0;
    x9 = 1000.0;
    x11 = 0.0;
    x10 = 0.0;
    x12 = 0.0;
    x29 = 0.0;
    x30 = 0.0;
    x39 = 0.0;
    x46 = 0.0;
    x40 = 0.0;
    x45 = 0.0;
    x41 = 0.0;
    x44 = 0.0;
    x18 = 0.0;
    x17 = 50.0;
    x14 = 0.0;
    x22 = 0.0;
    x32 = 0.0;
    x13 = 0.0;
    x20 = 0.0;
    x21 = 0.0;
    x23 = 60.0;
    x27 = 0.0;
    x24 = 0.0;
    x25 = 0.0;
    x34 = 85.0;
    x36 = 19000.0;
    x42 = 0.0;
    x37 = 0.0;
    x47 = 67.0;
    x48 = 0.0;
    x52 = 0.0;
    x51 = 0.0;
    x50 = 67.0;
    x53 = 41667.0;
    x54 = 0.0;
    x55 = 0.0;
    x60 = 0.0;
    x59 = 67.0;
    x57 = 0.0;
    x61 = 35000.0;
    x62 = 0.0;
    x63 = 0.0;
    x65 = 0.0;
    x68 = 0.0;
    x35 = 34.0;
    x28 = 0.0;
    x31 = 0.0;
    x56 = 0.0;
    x43 = 0.0;
    x3 = 0.8;
    x58 = 0.0;
    x4 = 12.0;
    x26 = 0.0;
    x49 = 0.0;
    x33 = 0.0;
    x64 = 0.0;
    x19 = 0.0;
    x38 = 0.0;
    x66 = 16667.0;
    x67 = 0.0;

equation

    der(x1) = 0.0;
    der(x2) = (cytosol * kf0 * x1 * IL6) + (cytosol * (kr2 * x6 - kf2 * x2 * x5)) - (cytosol * kr0 * x2);
    der(x6) = (2.0 * cytosol * kr3 * x7) - (cytosol * (kr2 * x6 - kf2 * x2 * x5)) - (2.0 * cytosol * kf3 * x6^2);
    der(x5) = (cytosol * (kr2 * x6 - kf2 * x2 * x5)) + (cytosol * (kf1 * x3 * x4 - kr1 * x5)) ;
    der(x7) = (cytosol * kf3 * x6^2) + (cytosol * k10 * x16) + (cytosol * k10 * x32) - (cytosol * kr3 * x7) - (cytosol * k4 * x7);
    der(x8) = (cytosol * k4 * x7) + (cytosol * k6 * x11) + (cytosol * (kf37 * x39 - kr37 * x8 * x46)) + (cytosol * (kf39 * x40 - kr39 * x45 * x8)) + (cytosol * (kf32 * x41 - kr32 * x44 * x8)) - (cytosol * (kf5 * x8 * x9 - kr5 * x11)) - (cytosol * (kf7 * x8 * x10 - kr7 * x12)) - (cytosol * (kf9 * x8 * x15 - kr9 * x16)) - (cytosol * (kf21 * x29 * x8 - kr21 * x30));
    der(x16) = (cytosol * (kf9 * x8 * x15 - kr9 * x16)) - (cytosol * k10 * x16) - (cytosol * (kf34 * x16 - kr34 * x39));
    der(x15) = (cytosol * k10 * x16) + (cytosol * k10 * x32) + (cytosol * Vm * x46 / (Km + x46)) - (cytosol * (kf9 * x8 * x15 - kr9 * x16)) - (cytosol * (kf9 * x15 * x31 - kr9 * x32));
    der(x9) = (cytosol * k12 * x18) + (nucleus * k17 * x22) + (cytosol * k10 * x32) - (cytosol * (kf5 * x8 * x9 - kr5 * x11)) - (cytosol * (kf13 * x9 * x10 - kr13 * x14)) - (cytosol * (kf5 * x9 * x30 - kr5 * x31));
    der(x11) = (cytosol * (kf5 * x8 * x9 - kr5 * x11)) - (cytosol * k6 * x11);
    der(x10) = (cytosol * k6 * x11) - (cytosol * (kf7 * x8 * x10 - kr7 * x12)) - (cytosol * (kf13 * x9 * x10 - kr13 * x14)) - (cytosol * (2 * kf8 * x10^2 - 2 * kr8 * x13)) - (cytosol * (kf11 * x10 * x17 - kr11 * x18));
    der(x12) = (cytosol * (kf7 * x8 * x10 - kr7 * x12)) ;
    der(x29) = (cytosol * k10 * x32) + (nucleus * k20 * x26) + (cytosol * k23 * x32) - (cytosol * (kf21 * x29 * x8 - kr21 * x30)) - (cytosol * k23 * x29);
    der(x30) = (cytosol * (kf21 * x29 * x8 - kr21 * x30)) - (cytosol * (kf5 * x9 * x30 - kr5 * x31));
    der(x39) = (cytosol * (kf34 * x16 - kr34 * x39)) - (cytosol * (kf37 * x39 - kr37 * x8 * x46)) - (cytosol * (kf24 * x39 * x34 - kr24 * x40)) - (cytosol * (kf41 * x38 * x39 - kr41 * x41));
    der(x46) = (cytosol * (kf37 * x39 - kr37 * x8 * x46)) + (cytosol * (kf33 * x44 - kr33 * x38 * x46)) - (cytosol * Vm * x46 / (Km + x46)) - (cytosol * (kf38 * x34 * x46 - kr38 * x45));
    der(x40) = (cytosol * (kf24 * x39 * x34 - kr24 * x40)) - (cytosol * (kf39 * x40 - kr39 * x45 * x8)) - (cytosol * (kf25 * x35 * x40 - kr25 * x41));
    der(x45) = (cytosol * (kf39 * x40 - kr39 * x45 * x8)) + (cytosol * (kf38 * x34 * x46 - kr38 * x45)) - (cytosol * (kf40 * x35 * x45 - kr40 * x44));
    der(x41) = (cytosol * (kf25 * x35 * x40 - kr25 * x41)) + (cytosol * (kf31 * x43 - kr31 * x36 * x41)) + (cytosol * (kf27 * x42 - kr27 * x37 * x41)) + (cytosol * (kf41 * x38 * x39 - kr41 * x41)) - (cytosol * (kf32 * x41 - kr32 * x44 * x8)) - (cytosol * (kf26 * x36 * x41 - kr26 * x42)) - (cytosol * (kf30 * x49 * x41 - kr30 * x43));
    der(x44) = (cytosol * (kf32 * x41 - kr32 * x44 * x8)) + (cytosol * (kf40 * x35 * x45 - kr40 * x44)) - (cytosol * (kf33 * x44 - kr33 * x38 * x46));
    der(x18) = (cytosol * (kf11 * x10 * x17 - kr11 * x18)) - (cytosol * k12 * x18);
    der(x17) = (cytosol * k12 * x18) + (cytosol * k12 * x19) - (cytosol * (kf11 * x10 * x17 - kr11 * x18)) - (cytosol * (kf11 * x13 * x17 - kr11 * x19));
    der(x14) = (cytosol * (kf13 * x9 * x10 - kr13 * x14)) + (cytosol * k12 * x19) ;
    der(x22) = (nucleus * (kr13 * x24 - kf13 * x21 * x22)) + (nucleus * k16 * x28) - (nucleus * k17 * x22);
    der(x32) = (cytosol * (kf9 * x15 * x31 - kr9 * x32)) - (cytosol * k10 * x32) - (cytosol * k23 * x32);
    der(x13) = (0.5 * cytosol * (2 * kf8 * x10^2 - 2 * kr8 * x13)) - (cytosol * (kf11 * x13 * x17 - kr11 * x19)) - (cytosol * k14 * x13);
    der(x20) = (cytosol * k14 * x13) - (nucleus * (kr8 * x20 - kf8 * x21^2)) - (nucleus * (kf15 * x23 * x20 - kr15 * x27));
    der(x21) = (2.0 * nucleus * (kr8 * x20 - kf8 * x21^2)) + (nucleus * (kr13 * x24 - kf13 * x21 * x22)) - (nucleus * (kf15 * x23 * x21 - kr15 * x28));
    der(x23) = (nucleus * k16 * x28) + (nucleus * k16 * x27) - (nucleus * (kf15 * x23 * x20 - kr15 * x27)) - (nucleus * (kf15 * x23 * x21 - kr15 * x28));
    der(x27) = (nucleus * (kf15 * x23 * x20 - kr15 * x27)) - (nucleus * k16 * x27);
    der(x24) = (nucleus * k16 * x27) - (nucleus * (kr13 * x24 - kf13 * x21 * x22));
    der(x25) = (nucleus * (k18a * x20 / (k18b + x20))) - (nucleus * k19 * x25);
    der(x34) = (cytosol * (kf35 * x38 - kr35 * x34 * x35)) - (cytosol * (kf38 * x34 * x46 - kr38 * x45)) - (cytosol * (kf24 * x39 * x34 - kr24 * x40));
    der(x36) = (cytosol * (kf31 * x43 - kr31 * x36 * x41)) - (cytosol * (kf26 * x36 * x41 - kr26 * x42));
    der(x42) = (cytosol * (kf26 * x36 * x41 - kr26 * x42)) - (cytosol * (kf27 * x42 - kr27 * x37 * x41));
    der(x37) = (cytosol * (kf27 * x42 - kr27 * x37 * x41)) - (cytosol * (kf28 * x37 * x47 - kr28 * x48));
    der(x47) = (cytosol * k43 * x52) - (cytosol * (kf28 * x37 * x47 - kr28 * x48));
    der(x48) = (cytosol * (kf28 * x37 * x47 - kr28 * x48)) - (cytosol * (kf29 * x48 - kr29 * x49 * x51));
    der(x52) = (cytosol * (kf42 * x50 * x51 - kr42 * x52)) - (cytosol * k43 * x52);
    der(x51) = (cytosol * (kf29 * x48 - kr29 * x49 * x51)) + (cytosol * k45 * x54) + (cytosol * k47 * x56) - (cytosol * (kf42 * x50 * x51 - kr42 * x52)) - (cytosol * (kf44 * x51 * x53 - kr44 * x54)) - (cytosol * (kf46 * x55 * x51 - kr46 * x56));
    der(x50) = (cytosol * k43 * x52) - (cytosol * (kf42 * x50 * x51 - kr42 * x52));
    der(x53) = (cytosol * k51 * x60) - (cytosol * (kf44 * x51 * x53 - kr44 * x54));
    der(x54) = (cytosol * (kf44 * x51 * x53 - kr44 * x54)) - (cytosol * k45 * x54);
    der(x55) = (cytosol * k45 * x54) + (cytosol * k49 * x58) - (cytosol * (kf46 * x55 * x51 - kr46 * x56)) - (cytosol * (kf50 * x55 * x59 - kr50 * x60));
    der(x60) = (cytosol * (kf50 * x55 * x59 - kr50 * x60)) - (cytosol * k51 * x60);
    der(x59) = (cytosol * k51 * x60) + (cytosol * k49 * x58) - (cytosol * (kf50 * x55 * x59 - kr50 * x60)) - (cytosol * (kf48 * x57 * x59 - kr48 * x58));
    der(x57) = (cytosol * k47 * x56) + (cytosol * k53 * x62) + (cytosol * (kr54 * x64 - kf54 * x57 * x63)) + (cytosol * k55 * x64) - (cytosol * (kf48 * x57 * x59 - kr48 * x58)) - (cytosol * (kf52 * x57 * x61 - kr52 * x62));
    der(x61) = (cytosol * k59 * x68) - (cytosol * (kf52 * x57 * x61 - kr52 * x62));
    der(x62) = (cytosol * (kf52 * x57 * x61 - kr52 * x62)) - (cytosol * k53 * x62);
    der(x63) = (cytosol * k53 * x62) + (cytosol * (kr54 * x64 - kf54 * x57 * x63)) + (cytosol * k57 * x67) - (cytosol * (kf58 * x63 * x66 - kr58 * x68));
    der(x65) = (cytosol * k55 * x64) - (cytosol * (kf56 * x65 * x66 - kr56 * x67));
    der(x68) = (cytosol * (kf58 * x63 * x66 - kr58 * x68)) - (cytosol * k59 * x68);
    der(x35) = (cytosol * (kf35 * x38 - kr35 * x34 * x35)) - (cytosol * (kf25 * x35 * x40 - kr25 * x41)) - (cytosol * (kf40 * x35 * x45 - kr40 * x44));
    der(x28) = (nucleus * (kf15 * x23 * x21 - kr15 * x28)) - (nucleus * k16 * x28);
    der(x31) = (cytosol * (kf5 * x9 * x30 - kr5 * x31)) - (cytosol * (kf9 * x15 * x31 - kr9 * x32));
    der(x56) = (cytosol * (kf46 * x55 * x51 - kr46 * x56)) - (cytosol * k47 * x56);
    der(x43) = (cytosol * (kf30 * x49 * x41 - kr30 * x43)) - (cytosol * (kf31 * x43 - kr31 * x36 * x41));
    der(x3) = 0.0;
    der(x58) = (cytosol * (kf48 * x57 * x59 - kr48 * x58)) - (cytosol * k49 * x58);
    der(x4) =  - (cytosol * (kf1 * x3 * x4 - kr1 * x5));
    der(x26) = (nucleus * k19 * x25) - (nucleus * k22 * x26);
    der(x49) = (cytosol * (kf29 * x48 - kr29 * x49 * x51)) - (cytosol * (kf30 * x49 * x41 - kr30 * x43));
    der(x33) = (cytosol * k23 * x32) ;
    der(x64) =  - (cytosol * (kr54 * x64 - kf54 * x57 * x63)) - (cytosol * k55 * x64);
    der(x19) = (cytosol * (kf11 * x13 * x17 - kr11 * x19)) - (cytosol * k12 * x19);
    der(x38) = (cytosol * (kf33 * x44 - kr33 * x38 * x46)) - (cytosol * (kf35 * x38 - kr35 * x34 * x35)) - (cytosol * (kf41 * x38 * x39 - kr41 * x41));
    der(x66) = (cytosol * k59 * x68) + (cytosol * k57 * x67) - (cytosol * (kf58 * x63 * x66 - kr58 * x68)) - (cytosol * (kf56 * x65 * x66 - kr56 * x67));
    der(x67) = (cytosol * (kf56 * x65 * x66 - kr56 * x67)) - (cytosol * k57 * x67);




end BIOMD151;