within BIOMD612;
class Parameters

    Real elmt_kinactCreb(unit = "") "";
    Real elmt_kbinObpTgfb(unit = "") "";
    Real elmt_ksecTgfb(unit = "") "";
    Real elmt_kbinBaxBcl2(unit = "") "";
    Real elmt_kbinObpPTH(unit = "") "";
    Real elmt_kdeathOb(unit = "") "";
    Real elmt_kdiffHSC(unit = "") "";
    Real elmt_kmatOb(unit = "") "";
    Real elmt_kactWntPth(unit = "") "";
    Real elmt_krelObpTgfb(unit = "") "";
    Real elmt_ksynBcl2(unit = "") "";
    Real elmt_krelObmPTH(unit = "") "";
    Real elmt_krelBaxBcl2(unit = "") "";
    Real elmt_krelOclpRANKL(unit = "") "";
    Real elmt_kdeathOclp(unit = "") "";
    Real elmt_ksecRANKLbyMSC(unit = "") "";
    Real elmt_ksecRANKLbyObp(unit = "") "";
    Real elmt_ksecRANKLbyOcyI(unit = "") "";
    Real elmt_ksecRANKLbyObpPTH(unit = "") "";
    Real elmt_ksecRANKLbyObm(unit = "") "";
    Real elmt_kdegTgfb(unit = "") "";
    Real elmt_krelObpPTH(unit = "") "";
    Real elmt_kdeathOcl(unit = "") "";
    Real elmt_kinactWnt(unit = "") "";
    Real elmt_kdegRunx2(unit = "") "";
    Real elmt_kmatObTgfb(unit = "") "";
    Real elmt_kactCreb(unit = "") "";
    Real elmt_kformBone(unit = "") "";
    Real elmt_kbinOclpRANKL(unit = "") "";
    Real elmt_ksecRANKLbyObpro(unit = "") "";
    Real elmt_kactOcyPth(unit = "") "";
    Real elmt_kdegOPG(unit = "") "";
    Real elmt_ksecRANKLbyObpTgfb(unit = "") "";
    Real elmt_kdeathOcy(unit = "") "";
    Real elmt_kdegSost(unit = "") "";
    Real elmt_ksecRANKLbyObmPTH(unit = "") "";
    Real elmt_kdegRANKL(unit = "") "";
    Real elmt_kdiffMSC(unit = "") "";
    Real elmt_ksynPTH(unit = "") "";
    Real elmt_ksynX(unit = "") "";
    Real elmt_kdiffOclP(unit = "") "";
    Real elmt_kdegOPGRANKL(unit = "") "";
    Real elmt_kinactOcy(unit = "") "";
    Real elmt_ksecOPGbyObp(unit = "") "";
    Real elmt_ksecOPGbyObm(unit = "") "";
    Real elmt_kdegMCSF(unit = "") "";
    Real elmt_kdegBone(unit = "") "";
    Real elmt_krelRANKL(unit = "") "";
    Real elmt_kdegBcl2(unit = "") "";
    Real elmt_kactWnt(unit = "") "";
    Real elmt_krelOcyPTH(unit = "") "";
    Real elmt_ksynRunx2(unit = "") "";
    Real elmt_kdegTgfbPTH(unit = "") "";
    Real elmt_ksecMCSFbyObm(unit = "") "";
    Real elmt_ksecSost(unit = "") "";
    Real elmt_kbinOcyPTH(unit = "") "";
    Real elmt_kdiffObproTgfb(unit = "") "";
    Real elmt_ksecMCSFbyMSC(unit = "") "";
    Real elmt_ksecMCSFbyObp(unit = "") "";
    Real elmt_kactTgfb(unit = "") "";
    Real elmt_kinhibRANKL(unit = "") "";
    Real elmt_krelCrebRunx2(unit = "") "";
    Real elmt_kdiffObP(unit = "") "";
    Real elmt_kbinObmPTH(unit = "") "";
    Real elmt_kbinCrebRunx2(unit = "") "";
    Real elmt_ksecRANKLbyOcy(unit = "") "";
    Real elmt_kunload(unit = "") "";
    Real elmt_ksecMCSFbyObpro(unit = "") "";
    Real elmt_ksecOPGbyObpPTH(unit = "") "";
    Real elmt_kdegRunx2PTH(unit = "") "";
    Real elmt_kactOcy(unit = "") "";
    Real elmt_kdegPTH(unit = "") "";


    initial equation
        elmt_kinactCreb = 1.0E-4;
        elmt_kbinObpTgfb = 2.0E-4;
        elmt_ksecTgfb = 5.0E-5;
        elmt_kbinBaxBcl2 = 0.01;
        elmt_kbinObpPTH = 3.0E-4;
        elmt_kdeathOb = 2.4E-4;
        elmt_kdiffHSC = 5.5E-5;
        elmt_kmatOb = 2.0E-9;
        elmt_kactWntPth = 0.001;
        elmt_krelObpTgfb = 0.01;
        elmt_ksynBcl2 = 0.005;
        elmt_krelObmPTH = 0.005;
        elmt_krelBaxBcl2 = 0.5;
        elmt_krelOclpRANKL = 0.001;
        elmt_kdeathOclp = 1.0E-5;
        elmt_ksecRANKLbyMSC = 1.0E-6;
        elmt_ksecRANKLbyObp = 3.0E-6;
        elmt_ksecRANKLbyOcyI = 1.0E-7;
        elmt_ksecRANKLbyObpPTH = 2.0E-5;
        elmt_ksecRANKLbyObm = 1.0E-7;
        elmt_kdegTgfb = 5.0E-5;
        elmt_krelObpPTH = 0.005;
        elmt_kdeathOcl = 6.5E-5;
        elmt_kinactWnt = 0.8;
        elmt_kdegRunx2 = 1.0E-4;
        elmt_kmatObTgfb = 1.0E-8;
        elmt_kactCreb = 0.009;
        elmt_kformBone = 3.07E-6;
        elmt_kbinOclpRANKL = 0.001;
        elmt_ksecRANKLbyObpro = 7.0E-6;
        elmt_kactOcyPth = 0.08;
        elmt_kdegOPG = 4.0E-6;
        elmt_ksecRANKLbyObpTgfb = 4.0E-6;
        elmt_kdeathOcy = 1.0E-8;
        elmt_kdegSost = 0.004;
        elmt_ksecRANKLbyObmPTH = 1.0E-6;
        elmt_kdegRANKL = 3.0E-5;
        elmt_kdiffMSC = 6.5E-4;
        elmt_ksynPTH = 0.02;
        elmt_ksynX = 0.01157;
        elmt_kdiffOclP = 8.0E-5;
        elmt_kdegOPGRANKL = 1.0E-5;
        elmt_kinactOcy = 2.0E-5;
        elmt_ksecOPGbyObp = 2.0E-6;
        elmt_ksecOPGbyObm = 1.0E-5;
        elmt_kdegMCSF = 1.0E-4;
        elmt_kdegBone = 6.5E-9;
        elmt_krelRANKL = 0.001;
        elmt_kdegBcl2 = 0.0025;
        elmt_kactWnt = 0.03;
        elmt_krelOcyPTH = 0.005;
        elmt_ksynRunx2 = 0.005;
        elmt_kdegTgfbPTH = 1.7E-5;
        elmt_ksecMCSFbyObm = 1.0E-5;
        elmt_ksecSost = 7.5E-4;
        elmt_kbinOcyPTH = 0.008;
        elmt_kdiffObproTgfb = 0.05;
        elmt_ksecMCSFbyMSC = 1.0E-5;
        elmt_ksecMCSFbyObp = 1.0E-5;
        elmt_kactTgfb = 2.0E-7;
        elmt_kinhibRANKL = 0.001;
        elmt_krelCrebRunx2 = 0.01;
        elmt_kdiffObP = 1.0E-4;
        elmt_kbinObmPTH = 0.02;
        elmt_kbinCrebRunx2 = 0.01;
        elmt_ksecRANKLbyOcy = 1.0E-6;
        elmt_kunload = 3.5E-4;
        elmt_ksecMCSFbyObpro = 1.0E-5;
        elmt_ksecOPGbyObpPTH = 1.0E-6;
        elmt_kdegRunx2PTH = 0.003;
        elmt_kactOcy = 0.004;
        elmt_kdegPTH = 0.002;


    equation
        der(elmt_kinactCreb) = 0;
        der(elmt_kbinObpTgfb) = 0;
        der(elmt_ksecTgfb) = 0;
        der(elmt_kbinBaxBcl2) = 0;
        der(elmt_kbinObpPTH) = 0;
        der(elmt_kdeathOb) = 0;
        der(elmt_kdiffHSC) = 0;
        der(elmt_kmatOb) = 0;
        der(elmt_kactWntPth) = 0;
        der(elmt_krelObpTgfb) = 0;
        der(elmt_ksynBcl2) = 0;
        der(elmt_krelObmPTH) = 0;
        der(elmt_krelBaxBcl2) = 0;
        der(elmt_krelOclpRANKL) = 0;
        der(elmt_kdeathOclp) = 0;
        der(elmt_ksecRANKLbyMSC) = 0;
        der(elmt_ksecRANKLbyObp) = 0;
        der(elmt_ksecRANKLbyOcyI) = 0;
        der(elmt_ksecRANKLbyObpPTH) = 0;
        der(elmt_ksecRANKLbyObm) = 0;
        der(elmt_kdegTgfb) = 0;
        der(elmt_krelObpPTH) = 0;
        der(elmt_kdeathOcl) = 0;
        der(elmt_kinactWnt) = 0;
        der(elmt_kdegRunx2) = 0;
        der(elmt_kmatObTgfb) = 0;
        der(elmt_kactCreb) = 0;
        der(elmt_kformBone) = 0;
        der(elmt_kbinOclpRANKL) = 0;
        der(elmt_ksecRANKLbyObpro) = 0;
        der(elmt_kactOcyPth) = 0;
        der(elmt_kdegOPG) = 0;
        der(elmt_ksecRANKLbyObpTgfb) = 0;
        der(elmt_kdeathOcy) = 0;
        der(elmt_kdegSost) = 0;
        der(elmt_ksecRANKLbyObmPTH) = 0;
        der(elmt_kdegRANKL) = 0;
        der(elmt_kdiffMSC) = 0;
        der(elmt_ksynPTH) = 0;
        der(elmt_ksynX) = 0;
        der(elmt_kdiffOclP) = 0;
        der(elmt_kdegOPGRANKL) = 0;
        der(elmt_kinactOcy) = 0;
        der(elmt_ksecOPGbyObp) = 0;
        der(elmt_ksecOPGbyObm) = 0;
        der(elmt_kdegMCSF) = 0;
        der(elmt_kdegBone) = 0;
        der(elmt_krelRANKL) = 0;
        der(elmt_kdegBcl2) = 0;
        der(elmt_kactWnt) = 0;
        der(elmt_krelOcyPTH) = 0;
        der(elmt_ksynRunx2) = 0;
        der(elmt_kdegTgfbPTH) = 0;
        der(elmt_ksecMCSFbyObm) = 0;
        der(elmt_ksecSost) = 0;
        der(elmt_kbinOcyPTH) = 0;
        der(elmt_kdiffObproTgfb) = 0;
        der(elmt_ksecMCSFbyMSC) = 0;
        der(elmt_ksecMCSFbyObp) = 0;
        der(elmt_kactTgfb) = 0;
        der(elmt_kinhibRANKL) = 0;
        der(elmt_krelCrebRunx2) = 0;
        der(elmt_kdiffObP) = 0;
        der(elmt_kbinObmPTH) = 0;
        der(elmt_kbinCrebRunx2) = 0;
        der(elmt_ksecRANKLbyOcy) = 0;
        der(elmt_kunload) = 0;
        der(elmt_ksecMCSFbyObpro) = 0;
        der(elmt_ksecOPGbyObpPTH) = 0;
        der(elmt_kdegRunx2PTH) = 0;
        der(elmt_kactOcy) = 0;
        der(elmt_kdegPTH) = 0;

end Parameters;
