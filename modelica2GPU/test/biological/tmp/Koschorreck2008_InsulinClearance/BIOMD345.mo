
model BIOMD345 "Koschorreck2008_InsulinClearance"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real kins = 0.001;
    parameter Real kins1d = 0.0004;
    parameter Real kins2d = 0.04;
    parameter Real kins1den = 0.001925;
    parameter Real kins2den = 0.00385;
    parameter Real kyd = 0.00385;
    parameter Real kyden = 0.00722;
    parameter Real kyp = 0.0231;
    parameter Real intk1 = 0.00055;
    parameter Real intk2 = 0.0002;
    parameter Real reck1 = 0.001533;
    parameter Real Rtotal = 40.0;
    parameter Real k1ub = 0.35;
    parameter Real k2ub = 0.2;
    parameter Real pansec = 0.0016976;
    parameter Real Kpan = 0.5;
    parameter Real rholiver = 1051.0;
    parameter Real bw = 200.0;
    parameter Real compartment1 = 1.0;

    Real mliver(start=10.0);
    Real vp(start=0.00675);
    Real vhep(start=0.00742150333016175);
    Real vd(start=0.0021216);
    Real mkidney(start=1.47826086956522);
    Real Kkidney(start=3.32608695652174e-05);
    Real r1(start=3.53837);
    Real r2(start=0.0);
    Real r3(start=0.0);
    Real r4(start=0.0);
    Real r5(start=0.0);
    Real r6(start=0.0);
    Real r7(start=0.0);
    Real i1(start=0.0);
    Real i2(start=0.0);
    Real i3(start=0.0);
    Real i4(start=-1.70974345792274e-17);
    Real i5(start=0.0);
    Real i6(start=0.0);
    Real i7(start=3.20632409511745e-17);
    Real f1(start=-4.78999999985533e-08);
    Real f2(start=0.0);
    Real f3(start=0.0);
    Real f4(start=0.0);
    Real f5(start=0.0);
    Real f6(start=0.0);
    Real parameter_1(start=3.89037403531029);
    Real parameter_2(start=0.492753623188406);
    Real parameter_3(start=4.38312765849869);
    Real parameter_4(start=88.757944974909);
    Real parameter_5(start=11.242055025091);
    Real parameter_6(start=1.57560148430067);
    Real parameter_7(start=0.199565217391304);
    Real parameter_8(start=1.77516670169197);
    Real parameter_9(start=-1.11022302462516e-16);
    Real parameter_10(start=-1.11022302462516e-16);
    Real parameter_11(start=0.0);
    Real parameter_12(start=0.0);
    Real parameter_13(start=-1.11022302462516e-16);
    Real parameter_14(start=-1.11022302462516e-16);

    Real R;
    Real ins;
    Real IR;
    Real I2R;
    Real Rp;
    Real IRp;
    Real I2Rp;
    Real Ren;
    Real IRen;
    Real I2Ren;
    Real RPen;
    Real IRPen;
    Real I2RPen;

initial equation
    R = 35.3837;
    ins = 100.0;
    IR = 0.0;
    I2R = 0.0;
    Rp = 0.0;
    IRp = 0.0;
    I2Rp = 0.0;
    Ren = 4.6163;
    IRen = 0.0;
    I2Ren = 0.0;
    RPen = 0.0;
    IRPen = 0.0;

equation
    mkidney = 2 * 0.85 * bw / 230;
    mliver = 0.05 * bw;
    vp = 0.03375 * pow(10, -3) * bw;
    vhep = mliver / rholiver * 0.78;
    vd = 0.272 * pow(10, -3) * vhep * rholiver;
    I2RPen = Rtotal - R - IR - I2R - Rp - IRp - I2Rp - Ren - IRen - I2Ren - RPen - IRPen;
    Kkidney = 0.0225 * pow(10, -3) * mkidney;
    r1 = kins * R * ins - kins1d * IR;
    r2 = kins * Rp * ins - kins1d * IRp;
    r3 = kins * IR * ins - kins2d * I2R;
    r4 = kins * IRp * ins - kins2d * I2Rp;
    r5 = kyd * Rp;
    r6 = kyp * IR - kyd * IRp;
    r7 = kyp * I2R - kyd * I2Rp;
    i1 = kins1den * IRen;
    i2 = kins1den * IRPen;
    i3 = kins2den * I2Ren;
    i4 = kins2den * I2RPen;
    i5 = kyden * RPen;
    i6 = kyp * IRen - kyden * IRPen;
    i7 = kyp * I2Ren - kyden * I2RPen;
    f1 = intk2 * R - reck1 * Ren;
    f2 = intk2 * IR;
    f3 = intk2 * I2R;
    f4 = intk1 * Rp - reck1 * RPen;
    f5 = intk1 * IRp;
    f6 = intk1 * I2Rp;
    parameter_1 = -(-r1 - r2 - r3 - r4) * vhep / vp;
    parameter_2 = Kkidney * ins / vp;
    parameter_3 = parameter_2 + parameter_1;
    parameter_4 = parameter_1 / (parameter_1 + parameter_2) * 100;
    parameter_5 = parameter_2 / (parameter_2 + parameter_1) * 100;
    parameter_6 = parameter_1 * vp * 6000 / ins;
    parameter_7 = parameter_2 * vp * 6000 / ins;
    parameter_8 = parameter_7 + parameter_6;
    parameter_9 = (Rtotal - R - Rp - Ren - RPen) / Rtotal;
    parameter_11 = (IR + I2R + IRp + I2Rp) / Rtotal;
    parameter_10 = (I2R + I2Ren + I2Rp + I2RPen) / Rtotal;
    parameter_12 = (I2R + I2Rp) / Rtotal;
    parameter_13 = parameter_9 - parameter_11;
    parameter_14 = parameter_10 - parameter_12;
    der(R) = -r1 + r5 - f1;
    der(IR) = r1 - r3 - r6 - f2;
    der(I2R) = r3 - r7 - f3;
    der(Rp) = -r2 - r5 - f4;
    der(IRp) = r2 - r4 + r6 - f5;
    der(I2Rp) = r4 + r7 - f6;
    der(Ren) = i1 + i5 + f1;
    der(IRen) = -i1 + i3 - i6 + f2;
    der(I2Ren) = -i3 - i7 + f3;
    der(RPen) = i2 - i5 + f4;
    der(IRPen) = -i2 + i4 + i6 + f5;
    der(ins) = 0.0;




end BIOMD345;
