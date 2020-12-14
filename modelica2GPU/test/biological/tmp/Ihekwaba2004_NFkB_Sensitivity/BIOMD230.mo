
model BIOMD230 "Ihekwaba2004_NFkB_Sensitivity"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k1 = 0.5;
    parameter Real k2 = 0.0005;
    parameter Real k3 = 0.5;
    parameter Real k4 = 0.0005;
    parameter Real k5 = 0.5;
    parameter Real k6 = 0.0005;
    parameter Real k7 = 0.5;
    parameter Real k8 = 0.0005;
    parameter Real k9 = 0.0204;
    parameter Real k10 = 0.5;
    parameter Real k11 = 0.0005;
    parameter Real k12 = 0.0075;
    parameter Real k13 = 0.5;
    parameter Real k14 = 0.0005;
    parameter Real k15 = 0.011;
    parameter Real k16 = 2.25e-05;
    parameter Real k17 = 2.25e-05;
    parameter Real k18 = 2.25e-05;
    parameter Real k19 = 0.09;
    parameter Real k20 = 8e-05;
    parameter Real k21 = 0.5;
    parameter Real k22 = 0.0005;
    parameter Real k23 = 0.5;
    parameter Real k24 = 0.0005;
    parameter Real k25 = 0.5;
    parameter Real k26 = 0.0005;
    parameter Real k27 = 1.54e-06;
    parameter Real k28 = 0.0165;
    parameter Real k29 = 0.00028;
    parameter Real k30 = 1.78e-07;
    parameter Real k31 = 0.00028;
    parameter Real k32 = 1.27e-07;
    parameter Real k33 = 0.00028;
    parameter Real k34 = 0.0225;
    parameter Real k35 = 0.00125;
    parameter Real k36 = 0.00408;
    parameter Real k37 = 0.000113;
    parameter Real k38 = 0.0003;
    parameter Real k39 = 0.0002;
    parameter Real k40 = 0.006;
    parameter Real k41 = 0.00175;
    parameter Real k42 = 0.00408;
    parameter Real k43 = 0.000113;
    parameter Real k44 = 0.00015;
    parameter Real k45 = 0.0001;
    parameter Real k46 = 0.009;
    parameter Real k47 = 0.00175;
    parameter Real k48 = 0.00408;
    parameter Real k49 = 0.000113;
    parameter Real k50 = 0.00015;
    parameter Real k51 = 0.0001;
    parameter Real k52 = 0.185;
    parameter Real k53 = 0.00125;
    parameter Real k54 = 0.0138;
    parameter Real k55 = 0.048;
    parameter Real k56 = 0.00175;
    parameter Real k57 = 0.0052;
    parameter Real k58 = 0.07;
    parameter Real k59 = 0.00175;
    parameter Real k60 = 0.0052;
    parameter Real k61 = 0.00012;
    parameter Real k62 = 0.00407;
    parameter Real k63 = 0.0015;
    parameter Real k64 = 0.0022;



    Real NFkB;
    Real IKKIkBa;
    Real IKKIkBaNFkB;
    Real IKK;
    Real IkBa;
    Real IKKIkBb;
    Real IKKIkBbNFkB;
    Real IkBb;
    Real IKKIkBe;
    Real IKKIkBeNFkB;
    Real IkBe;
    Real IkBaNFkB;
    Real IkBbNFkB;
    Real IkBeNFkB;
    Real source;
    Real IkBat;
    Real sink;
    Real NFkBn;
    Real IkBan;
    Real IkBanNFkBn;
    Real IkBbn;
    Real IkBbnNFkBn;
    Real IkBbt;
    Real IkBen;
    Real IkBenNFkBn;
    Real IkBet;

initial equation
    NFkB = 0.00025081;
    IKKIkBa = 0.0;
    IKKIkBaNFkB = 0.0;
    IKK = 0.1;
    IkBa = 0.19028;
    IKKIkBb = 0.0;
    IKKIkBbNFkB = 0.0;
    IkBb = 0.021428;
    IKKIkBe = 0.0;
    IKKIkBeNFkB = 0.0;
    IkBe = 0.015307;
    IkBaNFkB = 0.082062;
    IkBbNFkB = 0.0090963;
    IkBeNFkB = 0.0064977;
    source = 1.0;
    IkBat = 0.0054868;
    sink = 0.0;
    NFkBn = 0.00020366;
    IkBan = 0.19326;
    IkBanNFkBn = 0.0013739;
    IkBbn = 0.021887;
    IkBbnNFkBn = 0.00030061;
    IkBbt = 0.00063696;
    IkBen = 0.015635;
    IkBenNFkBn = 0.00021473;
    IkBet = 0.000455;

equation

    der(NFkB) = (k9 * IKKIkBaNFkB) + (k8 * IKKIkBaNFkB) + (k12 * IKKIkBbNFkB) + (k11 * IKKIkBbNFkB) + (k15 * IKKIkBeNFkB) + (k14 * IKKIkBeNFkB) + (k2 * IkBaNFkB) + (k16 * IkBaNFkB) + (k4 * IkBbNFkB) + (k17 * IkBbNFkB) + (k6 * IkBeNFkB) + (k18 * IkBeNFkB) + (k20 * NFkBn) - (k7 * IKKIkBa * NFkB) - (k10 * IKKIkBb * NFkB) - (k13 * IKKIkBe * NFkB) - (k1 * IkBa * NFkB) - (k3 * IkBb * NFkB) - (k5 * IkBe * NFkB) - (k19 * NFkB);
    der(IKKIkBa) = (k8 * IKKIkBaNFkB) + (k34 * IKK * IkBa) - (k7 * IKKIkBa * NFkB) - (k62 * IKKIkBa) - (k35 * IKKIkBa);
    der(IKKIkBaNFkB) = (k7 * IKKIkBa * NFkB) + (k52 * IKK * IkBaNFkB) - (k9 * IKKIkBaNFkB) - (k8 * IKKIkBaNFkB) - (k53 * IKKIkBaNFkB);
    der(IKK) = (k9 * IKKIkBaNFkB) + (k62 * IKKIkBa) + (k35 * IKKIkBa) + (k12 * IKKIkBbNFkB) + (k63 * IKKIkBb) + (k41 * IKKIkBb) + (k15 * IKKIkBeNFkB) + (k64 * IKKIkBe) + (k47 * IKKIkBe) + (k53 * IKKIkBaNFkB) + (k56 * IKKIkBbNFkB) + (k59 * IKKIkBeNFkB) - (k34 * IKK * IkBa) - (k40 * IKK * IkBb) - (k46 * IKK * IkBe) - (k52 * IKK * IkBaNFkB) - (k55 * IKK * IkBbNFkB) - (k58 * IKK * IkBeNFkB) - (k61 * IKK);
    der(IkBa) = (k35 * IKKIkBa) + (k2 * IkBaNFkB) + (k39 * IkBan) + (k36 * IkBat) - (k34 * IKK * IkBa) - (k1 * IkBa * NFkB) - (k38 * IkBa) - (k37 * IkBa);
    der(IKKIkBb) = (k11 * IKKIkBbNFkB) + (k40 * IKK * IkBb) - (k10 * IKKIkBb * NFkB) - (k63 * IKKIkBb) - (k41 * IKKIkBb);
    der(IKKIkBbNFkB) = (k10 * IKKIkBb * NFkB) + (k55 * IKK * IkBbNFkB) - (k12 * IKKIkBbNFkB) - (k11 * IKKIkBbNFkB) - (k56 * IKKIkBbNFkB);
    der(IkBb) = (k41 * IKKIkBb) + (k4 * IkBbNFkB) + (k45 * IkBbn) + (k42 * IkBbt) - (k40 * IKK * IkBb) - (k3 * IkBb * NFkB) - (k44 * IkBb) - (k43 * IkBb);
    der(IKKIkBe) = (k14 * IKKIkBeNFkB) + (k46 * IKK * IkBe) - (k13 * IKKIkBe * NFkB) - (k64 * IKKIkBe) - (k47 * IKKIkBe);
    der(IKKIkBeNFkB) = (k13 * IKKIkBe * NFkB) + (k58 * IKK * IkBeNFkB) - (k15 * IKKIkBeNFkB) - (k14 * IKKIkBeNFkB) - (k59 * IKKIkBeNFkB);
    der(IkBe) = (k47 * IKKIkBe) + (k6 * IkBeNFkB) + (k51 * IkBen) + (k48 * IkBet) - (k46 * IKK * IkBe) - (k5 * IkBe * NFkB) - (k50 * IkBe) - (k49 * IkBe);
    der(IkBaNFkB) = (k53 * IKKIkBaNFkB) + (k1 * IkBa * NFkB) + (k54 * IkBanNFkBn) - (k52 * IKK * IkBaNFkB) - (k2 * IkBaNFkB) - (k16 * IkBaNFkB);
    der(IkBbNFkB) = (k56 * IKKIkBbNFkB) + (k3 * IkBb * NFkB) + (k57 * IkBbnNFkBn) - (k55 * IKK * IkBbNFkB) - (k4 * IkBbNFkB) - (k17 * IkBbNFkB);
    der(IkBeNFkB) = (k59 * IKKIkBeNFkB) + (k5 * IkBe * NFkB) + (k60 * IkBenNFkBn) - (k58 * IKK * IkBeNFkB) - (k6 * IkBeNFkB) - (k18 * IkBeNFkB);
    der(source) = 0.0;
    der(IkBat) = (k28 * NFkBn * NFkBn) + (k27 * source) - (k29 * IkBat);
    der(sink) = 0.0;
    der(NFkBn) = (k22 * IkBanNFkBn) + (k24 * IkBbnNFkBn) + (k26 * IkBenNFkBn) + (k19 * NFkB) - (k21 * IkBan * NFkBn) - (k23 * IkBbn * NFkBn) - (k25 * IkBen * NFkBn) - (k20 * NFkBn);
    der(IkBan) = (k22 * IkBanNFkBn) + (k38 * IkBa) - (k21 * IkBan * NFkBn) - (k39 * IkBan);
    der(IkBanNFkBn) = (k21 * IkBan * NFkBn) - (k22 * IkBanNFkBn) - (k54 * IkBanNFkBn);
    der(IkBbn) = (k24 * IkBbnNFkBn) + (k44 * IkBb) - (k23 * IkBbn * NFkBn) - (k45 * IkBbn);
    der(IkBbnNFkBn) = (k23 * IkBbn * NFkBn) - (k24 * IkBbnNFkBn) - (k57 * IkBbnNFkBn);
    der(IkBbt) = (k30 * source) - (k31 * IkBbt);
    der(IkBen) = (k26 * IkBenNFkBn) + (k50 * IkBe) - (k25 * IkBen * NFkBn) - (k51 * IkBen);
    der(IkBenNFkBn) = (k25 * IkBen * NFkBn) - (k26 * IkBenNFkBn) - (k60 * IkBenNFkBn);
    der(IkBet) = (k32 * source) - (k33 * IkBet);



end BIOMD230;
