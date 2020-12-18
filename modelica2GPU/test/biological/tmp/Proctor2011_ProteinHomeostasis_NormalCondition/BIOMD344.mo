
model BIOMD344 "Proctor2011_ProteinHomeostasis_NormalCondition"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real ksynNatP = 0.042;
    parameter Real kmisfold = 2e-06;
    parameter Real kbinMisPProt = 1e-07;
    parameter Real kdegMisP = 0.01;
    parameter Real kagg = 1e-08;
    parameter Real kseqagg = 7e-07;
    parameter Real kbinAggPProt = 1e-05;
    parameter Real kbinHspMisp = 8e-06;
    parameter Real krelHspMisp = 8e-05;
    parameter Real krefold = 0.00055;
    parameter Real krelHsf1Hsp90 = 0.5;
    parameter Real kdimerHsf1 = 8e-05;
    parameter Real ktrimerHsf1 = 0.01;
    parameter Real kdetrimerHsf1 = 0.5;
    parameter Real kdedimerHsf1 = 0.5;
    parameter Real kbinHSEHsf1 = 0.05;
    parameter Real krelHSEHsf1 = 0.08;
    parameter Real kupregHsp = 0.2;
    parameter Real kbasalsynHsp70 = 0.008;
    parameter Real kbasalsynHsp90 = 0.008;
    parameter Real kbinHsp70Prot = 1.2e-08;
    parameter Real kbinHsp90Prot = 1e-08;
    parameter Real kdegHsp70 = 0.01;
    parameter Real kdegHsp90 = 0.01;
    parameter Real kremROS = 0.001;
    parameter Real kbinHsp70client = 0.0002;
    parameter Real krelHsp70client = 5.0;
    parameter Real kbinHsp90client = 0.0002;
    parameter Real kphosJnk = 0.02;
    parameter Real kdephosJnkMkp1 = 0.05;
    parameter Real kbinHsp70Ppx = 0.2;
    parameter Real krelHsp70Ppx = 5.0;
    parameter Real kphosHsf1 = 0.03;
    parameter Real kdephosHsf1 = 0.01;
    parameter Real kbinHSEPhosTriH = 0.1;
    parameter Real krelHSEPhosTriH = 0.08;
    parameter Real kphosp38 = 0.02;
    parameter Real kdephosp38Mkp1 = 0.05;
    parameter Real kgenROSAggP = 1e-06;
    parameter Real ksynAkt = 0.0015;
    parameter Real kbinAktHsp90 = 0.00037;
    parameter Real kbinAktProt = 6e-08;
    parameter Real krelAktProt = 1e-08;
    parameter Real kdegAkt = 0.01;
    parameter Real kbinCHIP = 2e-07;
    parameter Real krelCHIP = 1e-08;
    parameter Real ksynMkp1 = 1e-05;
    parameter Real kbinMkp1Prot = 9.6e-09;
    parameter Real kdegMkp1 = 0.01;
    parameter Real kphosMkp1 = 0.02;
    parameter Real kdephosMkp1 = 0.001;
    parameter Real kgenROSp38 = 0.0001;
    parameter Real kdamHsp = 1e-08;
    parameter Real kp38death = 1.5e-07;
    parameter Real kJnkdeath = 1.5e-07;
    parameter Real kPIdeath = 2e-08;
    parameter Real cytosol = 1.0;
    parameter Real nucleus = 1.0;

    Real kbinHsf1Hsp90(start=0.02);
    Real kgenROS(start=0.01);
    Real krelHsp90client(start=5.0);
    Real krelAktHsp90(start=7.0);
    Real kp38act(start=1.0);
    Real kalive(start=1.0);
    Real tot_Hsp90(start=0.0);
    Real tot_Hsp70(start=0.0);
    Real tot_MisP(start=0.0);

    Real NatP;
    Real MisP;
    Real Hsp70;
    Real Hsp90;
    Real Hsp70_dam;
    Real Hsp90_dam;
    Real Hsp90_Proteasome;
    Real Hsp70_Proteasome;
    Real Hsp70Client;
    Real Hsp90Client;
    Real Hsp70_Hsp70Client;
    Real Hsp90_Hsp90Client;
    Real Akt;
    Real Akt_Hsp90;
    Real CHIP;
    Real Akt_CHIP_Hsp90;
    Real Akt_Proteasome;
    Real Hsf1;
    Real Hsf1_Hsp90;
    Real Hsp90_MisP;
    Real Hsp70_MisP;
    Real Hsf1_Hsf1_Hsf1;
    Real Hsf1_Hsf1_Hsf1_P;
    Real Hsf1_Hsf1;
    Real HSEHsp70;
    Real HSEHsp90;
    Real HSEHsp70_Hsf1_Hsf1_Hsf1;
    Real HSEHsp70_Hsf1_Hsf1_Hsf1_P;
    Real HSEHsp90_Hsf1_Hsf1_Hsf1;
    Real HSEHsp90_Hsf1_Hsf1_Hsf1_P;
    Real Jnk;
    Real Jnk_P;
    Real Ppx;
    Real Mkp1;
    Real Mkp1_P;
    Real Mkp1_Proteasome;
    Real Hsp70_Ppx;
    Real Pkc;
    Real p38;
    Real p38_P;
    Real Proteasome;
    Real MisP_Proteasome;
    Real AggP;
    Real SeqAggP;
    Real AggP_Proteasome;
    Real ROS;
    Real ATP;
    Real ADP;
    Real Source;
    Real Sink;
    Real p38Death;
    Real JNKDeath;
    Real PIDeath;
    Real CellDeath;

initial equation
    NatP = 17600.0;
    MisP = 0.0;
    Hsp70 = 1400.0;
    Hsp90 = 1850.0;
    Hsp70_dam = 0.0;
    Hsp90_dam = 0.0;
    Hsp90_Proteasome = 0.0;
    Hsp70_Proteasome = 0.0;
    Hsp70Client = 490.0;
    Hsp90Client = 590.0;
    Hsp70_Hsp70Client = 10.0;
    Hsp90_Hsp90Client = 10.0;
    Akt = 340.0;
    Akt_Hsp90 = 30.0;
    CHIP = 255.0;
    Akt_CHIP_Hsp90 = 80.0;
    Akt_Proteasome = 0.0;
    Hsf1 = 5.0;
    Hsf1_Hsp90 = 95.0;
    Hsp90_MisP = 470.0;
    Hsp70_MisP = 410.0;
    Hsf1_Hsf1_Hsf1 = 0.0;
    Hsf1_Hsf1_Hsf1_P = 0.0;
    Hsf1_Hsf1 = 0.0;
    HSEHsp70 = 2.0;
    HSEHsp90 = 2.0;
    HSEHsp70_Hsf1_Hsf1_Hsf1 = 0.0;
    HSEHsp70_Hsf1_Hsf1_Hsf1_P = 0.0;
    HSEHsp90_Hsf1_Hsf1_Hsf1 = 0.0;
    HSEHsp90_Hsf1_Hsf1_Hsf1_P = 0.0;
    Jnk = 100.0;
    Jnk_P = 0.0;
    Ppx = 0.0;
    Mkp1 = 0.0;
    Mkp1_P = 100.0;
    Mkp1_Proteasome = 0.0;
    Hsp70_Ppx = 100.0;
    Pkc = 100.0;
    p38 = 100.0;
    p38_P = 0.0;
    Proteasome = 500.0;
    MisP_Proteasome = 0.0;
    AggP = 0.0;
    SeqAggP = 0.0;
    AggP_Proteasome = 0.0;
    ROS = 10.0;
    ATP = 10000.0;
    ADP = 1000.0;
    Source = 1.0;
    Sink = 1.0;
    p38Death = 0.0;
    JNKDeath = 0.0;
    PIDeath = 0.0;
    CellDeath = 0.0;

equation
    tot_Hsp90 = Hsp90 + Hsp90_dam + Hsp90_Proteasome + Hsp90_Hsp90Client + Akt_Hsp90 + Akt_CHIP_Hsp90 + Hsf1_Hsp90 + Hsp90_MisP;
    tot_Hsp70 = Hsp70 + Hsp70_dam + Hsp70_Proteasome + Hsp70_Hsp70Client + Hsp70_MisP + Hsp70_Ppx;
    tot_MisP = MisP + Hsp70_MisP + Hsp90_MisP;
    der(NatP) = (ksynNatP * Source * kalive) + (krefold * Hsp90_MisP * kalive * ATP / (5000 + ATP)) + (krefold * Hsp70_MisP * kalive * ATP / (5000 + ATP)) - (kmisfold * NatP * ROS * kalive);
    der(MisP) = (kmisfold * NatP * ROS * kalive) + (krelHspMisp * Hsp90_MisP * kalive) + (krelHspMisp * Hsp70_MisP * kalive) - (kbinHspMisp * MisP * Hsp90 * kalive) - (kbinHspMisp * MisP * Hsp70 * kalive) - (2.0 * kagg * MisP * (MisP - 1) * 0.5 * kalive) - (kagg * MisP * AggP * kalive) - (kseqagg * SeqAggP * MisP * kalive);
    der(Hsp70) = (krelHspMisp * Hsp70_MisP * kalive) + (krefold * Hsp70_MisP * kalive * ATP / (5000 + ATP)) + (krelHsp70client * Hsp70_Hsp70Client * kalive) + (kbasalsynHsp70 * kalive) + (kupregHsp * HSEHsp70_Hsf1_Hsf1_Hsf1_P * kalive) + (kbinMisPProt * Hsp70_MisP * Proteasome * kalive) + (krelHsp70Ppx * Hsp70_Ppx * kalive) + (kphosMkp1 * Mkp1 * Hsp70 * kalive) - (kbinHspMisp * MisP * Hsp70 * kalive) - (kbinHsp70client * Hsp70 * Hsp70Client * kalive) - (kbinHsp70Prot * Hsp70 * Proteasome * kalive) - (kbinHsp70Ppx * Hsp70 * Ppx * kalive) - (kphosMkp1 * Mkp1 * Hsp70 * kalive) - (kdamHsp * Hsp70 * ROS * kalive);
    der(Hsp90) = (krelHspMisp * Hsp90_MisP * kalive) + (krefold * Hsp90_MisP * kalive * ATP / (5000 + ATP)) + (krelHsp90client * Hsp90_Hsp90Client * kalive) + (krelHsf1Hsp90 * Hsf1_Hsp90 * kalive) + (kbasalsynHsp90 * kalive) + (kupregHsp * HSEHsp90_Hsf1_Hsf1_Hsf1_P * kalive) + (kbinMisPProt * Hsp90_MisP * Proteasome * kalive) + (krelAktHsp90 * Akt_Hsp90 * kalive) + (kbinAktProt * Akt_CHIP_Hsp90 * Proteasome * kalive) - (kbinHspMisp * MisP * Hsp90 * kalive) - (kbinHsp90client * Hsp90 * Hsp90Client * kalive) - (kbinHsf1Hsp90 * Hsp90 * Hsf1 * kalive) - (kbinHsp90Prot * Hsp90 * Proteasome * kalive) - (kbinAktHsp90 * Hsp90 * Akt * kalive) - (kdamHsp * Hsp90 * ROS * kalive);
    der(Hsp70_dam) = (kdamHsp * Hsp70 * ROS * kalive) - (kbinHsp70Prot * Hsp70_dam * Proteasome * kalive) - (2.0 * kagg * Hsp70_dam * (Hsp70_dam - 1) * 0.5 * kalive) - (kagg * Hsp70_dam * AggP * kalive) - (kseqagg * Hsp70_dam * SeqAggP * kalive);
    der(Hsp90_dam) = (kdamHsp * Hsp90 * ROS * kalive) - (kbinHsp90Prot * Hsp90_dam * Proteasome * kalive) - (2.0 * kagg * Hsp90_dam * (Hsp90_dam - 1) * 0.5 * kalive) - (kagg * Hsp90_dam * AggP * kalive) - (kseqagg * Hsp90_dam * SeqAggP * kalive);
    der(Hsp90_Proteasome) = (kbinHsp90Prot * Hsp90 * Proteasome * kalive) + (kbinHsp90Prot * Hsp90_dam * Proteasome * kalive) - (kdegHsp90 * Hsp90_Proteasome * kalive * ATP / (5000 + ATP));
    der(Hsp70_Proteasome) = (kbinHsp70Prot * Hsp70 * Proteasome * kalive) + (kbinHsp70Prot * Hsp70_dam * Proteasome * kalive) - (kdegHsp70 * Hsp70_Proteasome * kalive * ATP / (5000 + ATP));
    der(Hsp70Client) = (krelHsp70client * Hsp70_Hsp70Client * kalive) - (kbinHsp70client * Hsp70 * Hsp70Client * kalive);
    der(Hsp90Client) = (krelHsp90client * Hsp90_Hsp90Client * kalive) - (kbinHsp90client * Hsp90 * Hsp90Client * kalive);
    der(Hsp70_Hsp70Client) = (kbinHsp70client * Hsp70 * Hsp70Client * kalive) - (krelHsp70client * Hsp70_Hsp70Client * kalive);
    der(Hsp90_Hsp90Client) = (kbinHsp90client * Hsp90 * Hsp90Client * kalive) - (krelHsp90client * Hsp90_Hsp90Client * kalive);
    der(Akt) = (ksynAkt * Source * kalive) + (krelAktHsp90 * Akt_Hsp90 * kalive) + (krelAktProt * Akt_Proteasome * kalive) - (kbinAktHsp90 * Hsp90 * Akt * kalive);
    der(Akt_Hsp90) = (kbinAktHsp90 * Hsp90 * Akt * kalive) + (krelCHIP * Akt_CHIP_Hsp90 * kalive) - (krelAktHsp90 * Akt_Hsp90 * kalive) - (kbinCHIP * CHIP * Akt_Hsp90 * kalive);
    der(CHIP) = (krelCHIP * Akt_CHIP_Hsp90 * kalive) + (kbinAktProt * Akt_CHIP_Hsp90 * Proteasome * kalive) - (kbinCHIP * CHIP * Akt_Hsp90 * kalive);
    der(Akt_CHIP_Hsp90) = (kbinCHIP * CHIP * Akt_Hsp90 * kalive) - (krelCHIP * Akt_CHIP_Hsp90 * kalive) - (kbinAktProt * Akt_CHIP_Hsp90 * Proteasome * kalive);
    der(Akt_Proteasome) = (kbinAktProt * Akt_CHIP_Hsp90 * Proteasome * kalive) - (krelAktProt * Akt_Proteasome * kalive) - (kdegAkt * Akt_Proteasome * kalive * ATP / (5000 + ATP));
    der(Hsf1) = (krelHsf1Hsp90 * Hsf1_Hsp90 * kalive) + (kdetrimerHsf1 * Hsf1_Hsf1_Hsf1 * kalive) + (2.0 * kdedimerHsf1 * Hsf1_Hsf1 * kalive) - (kbinHsf1Hsp90 * Hsp90 * Hsf1 * kalive) - (2.0 * (Hsf1 - 1) * kdimerHsf1 * kalive * Hsf1 / 2) - (ktrimerHsf1 * Hsf1 * Hsf1_Hsf1 * kalive);
    der(Hsf1_Hsp90) = (kbinHsf1Hsp90 * Hsp90 * Hsf1 * kalive) - (krelHsf1Hsp90 * Hsf1_Hsp90 * kalive);
    der(Hsp90_MisP) = (kbinHspMisp * MisP * Hsp90 * kalive) - (krelHspMisp * Hsp90_MisP * kalive) - (krefold * Hsp90_MisP * kalive * ATP / (5000 + ATP)) - (kbinMisPProt * Hsp90_MisP * Proteasome * kalive);
    der(Hsp70_MisP) = (kbinHspMisp * MisP * Hsp70 * kalive) - (krelHspMisp * Hsp70_MisP * kalive) - (krefold * Hsp70_MisP * kalive * ATP / (5000 + ATP)) - (kbinMisPProt * Hsp70_MisP * Proteasome * kalive);
    der(Hsf1_Hsf1_Hsf1) = (ktrimerHsf1 * Hsf1 * Hsf1_Hsf1 * kalive) + (krelHSEHsf1 * HSEHsp70_Hsf1_Hsf1_Hsf1 * kalive) + (krelHSEHsf1 * HSEHsp90_Hsf1_Hsf1_Hsf1 * kalive) + (kdephosHsf1 * Hsf1_Hsf1_Hsf1_P * Hsp70_Ppx * kalive) - (kdetrimerHsf1 * Hsf1_Hsf1_Hsf1 * kalive) - (kbinHSEHsf1 * HSEHsp70 * Hsf1_Hsf1_Hsf1 * kalive) - (kbinHSEHsf1 * HSEHsp90 * Hsf1_Hsf1_Hsf1 * kalive) - (kphosHsf1 * Hsf1_Hsf1_Hsf1 * Pkc * kalive);
    der(Hsf1_Hsf1_Hsf1_P) = (kphosHsf1 * Hsf1_Hsf1_Hsf1 * Pkc * kalive) + (krelHSEPhosTriH * HSEHsp70_Hsf1_Hsf1_Hsf1_P * kalive) + (krelHSEPhosTriH * HSEHsp90_Hsf1_Hsf1_Hsf1_P * kalive) - (kdephosHsf1 * Hsf1_Hsf1_Hsf1_P * Hsp70_Ppx * kalive) - (kbinHSEPhosTriH * HSEHsp70 * Hsf1_Hsf1_Hsf1_P * kalive) - (kbinHSEPhosTriH * HSEHsp90 * Hsf1_Hsf1_Hsf1_P * kalive);
    der(Hsf1_Hsf1) = ((Hsf1 - 1) * kdimerHsf1 * kalive * Hsf1 / 2) + (kdetrimerHsf1 * Hsf1_Hsf1_Hsf1 * kalive) - (ktrimerHsf1 * Hsf1 * Hsf1_Hsf1 * kalive) - (kdedimerHsf1 * Hsf1_Hsf1 * kalive);
    der(HSEHsp70) = (krelHSEHsf1 * HSEHsp70_Hsf1_Hsf1_Hsf1 * kalive) + (krelHSEPhosTriH * HSEHsp70_Hsf1_Hsf1_Hsf1_P * kalive) - (kbinHSEHsf1 * HSEHsp70 * Hsf1_Hsf1_Hsf1 * kalive) - (kbinHSEPhosTriH * HSEHsp70 * Hsf1_Hsf1_Hsf1_P * kalive);
    der(HSEHsp90) = (krelHSEHsf1 * HSEHsp90_Hsf1_Hsf1_Hsf1 * kalive) + (krelHSEPhosTriH * HSEHsp90_Hsf1_Hsf1_Hsf1_P * kalive) - (kbinHSEHsf1 * HSEHsp90 * Hsf1_Hsf1_Hsf1 * kalive) - (kbinHSEPhosTriH * HSEHsp90 * Hsf1_Hsf1_Hsf1_P * kalive);
    der(HSEHsp70_Hsf1_Hsf1_Hsf1) = (kbinHSEHsf1 * HSEHsp70 * Hsf1_Hsf1_Hsf1 * kalive) - (krelHSEHsf1 * HSEHsp70_Hsf1_Hsf1_Hsf1 * kalive);
    der(HSEHsp70_Hsf1_Hsf1_Hsf1_P) = (kbinHSEPhosTriH * HSEHsp70 * Hsf1_Hsf1_Hsf1_P * kalive) + (kupregHsp * HSEHsp70_Hsf1_Hsf1_Hsf1_P * kalive) - (krelHSEPhosTriH * HSEHsp70_Hsf1_Hsf1_Hsf1_P * kalive) - (kupregHsp * HSEHsp70_Hsf1_Hsf1_Hsf1_P * kalive);
    der(HSEHsp90_Hsf1_Hsf1_Hsf1) = (kbinHSEHsf1 * HSEHsp90 * Hsf1_Hsf1_Hsf1 * kalive) - (krelHSEHsf1 * HSEHsp90_Hsf1_Hsf1_Hsf1 * kalive);
    der(HSEHsp90_Hsf1_Hsf1_Hsf1_P) = (kbinHSEPhosTriH * HSEHsp90 * Hsf1_Hsf1_Hsf1_P * kalive) + (kupregHsp * HSEHsp90_Hsf1_Hsf1_Hsf1_P * kalive) - (krelHSEPhosTriH * HSEHsp90_Hsf1_Hsf1_Hsf1_P * kalive) - (kupregHsp * HSEHsp90_Hsf1_Hsf1_Hsf1_P * kalive);
    der(Jnk) = (kdephosJnkMkp1 * Jnk_P * Mkp1_P * kalive) - (kphosJnk * Jnk * ROS * kalive);
    der(Jnk_P) = (kphosJnk * Jnk * ROS * kalive) + (kJnkdeath * Jnk_P * kalive) - (kdephosJnkMkp1 * Jnk_P * Mkp1_P * kalive) - (kJnkdeath * Jnk_P * kalive);
    der(Ppx) = (krelHsp70Ppx * Hsp70_Ppx * kalive) - (kbinHsp70Ppx * Hsp70 * Ppx * kalive);
    der(Mkp1) = (ksynMkp1 * Source * kalive) + (kdephosMkp1 * Mkp1_P * ROS * kalive) - (kbinMkp1Prot * Mkp1 * Proteasome * kalive) - (kphosMkp1 * Mkp1 * Hsp70 * kalive);
    der(Mkp1_P) = (kdephosJnkMkp1 * Jnk_P * Mkp1_P * kalive) + (kdephosp38Mkp1 * p38_P * Mkp1_P * kalive) + (kphosMkp1 * Mkp1 * Hsp70 * kalive) - (kdephosJnkMkp1 * Jnk_P * Mkp1_P * kalive) - (kdephosp38Mkp1 * p38_P * Mkp1_P * kalive) - (kdephosMkp1 * Mkp1_P * ROS * kalive);
    der(Mkp1_Proteasome) = (kbinMkp1Prot * Mkp1 * Proteasome * kalive) - (kdegMkp1 * Mkp1_Proteasome * kalive * ATP / (5000 + ATP));
    der(Hsp70_Ppx) = (kdephosHsf1 * Hsf1_Hsf1_Hsf1_P * Hsp70_Ppx * kalive) + (kbinHsp70Ppx * Hsp70 * Ppx * kalive) - (kdephosHsf1 * Hsf1_Hsf1_Hsf1_P * Hsp70_Ppx * kalive) - (krelHsp70Ppx * Hsp70_Ppx * kalive);
    der(Pkc) = (kphosHsf1 * Hsf1_Hsf1_Hsf1 * Pkc * kalive) - (kphosHsf1 * Hsf1_Hsf1_Hsf1 * Pkc * kalive);
    der(p38) = (kdephosp38Mkp1 * p38_P * Mkp1_P * kalive) - (kphosp38 * ROS * p38 * kalive);
    der(p38_P) = (kphosp38 * ROS * p38 * kalive) + (kgenROSp38 * p38_P * kalive * kp38act) + (kp38death * p38_P * kalive * kp38act) - (kdephosp38Mkp1 * p38_P * Mkp1_P * kalive) - (kgenROSp38 * p38_P * kalive * kp38act) - (kp38death * p38_P * kalive * kp38act);
    der(Proteasome) = (kdegHsp90 * Hsp90_Proteasome * kalive * ATP / (5000 + ATP)) + (kdegHsp70 * Hsp70_Proteasome * kalive * ATP / (5000 + ATP)) + (kdegMisP * MisP_Proteasome * kalive * ATP / (5000 + ATP)) + (krelAktProt * Akt_Proteasome * kalive) + (kdegAkt * Akt_Proteasome * kalive * ATP / (5000 + ATP)) + (kdegMkp1 * Mkp1_Proteasome * kalive * ATP / (5000 + ATP)) - (kbinHsp90Prot * Hsp90 * Proteasome * kalive) - (kbinHsp70Prot * Hsp70 * Proteasome * kalive) - (kbinMisPProt * Hsp70_MisP * Proteasome * kalive) - (kbinMisPProt * Hsp90_MisP * Proteasome * kalive) - (kbinAggPProt * AggP * Proteasome * kalive) - (kbinAktProt * Akt_CHIP_Hsp90 * Proteasome * kalive) - (kbinMkp1Prot * Mkp1 * Proteasome * kalive) - (kbinHsp70Prot * Hsp70_dam * Proteasome * kalive) - (kbinHsp90Prot * Hsp90_dam * Proteasome * kalive);
    der(MisP_Proteasome) = (kbinMisPProt * Hsp70_MisP * Proteasome * kalive) + (kbinMisPProt * Hsp90_MisP * Proteasome * kalive) - (kdegMisP * MisP_Proteasome * kalive * ATP / (5000 + ATP));
    der(AggP) = (kagg * MisP * (MisP - 1) * 0.5 * kalive) + (kgenROSAggP * AggP * kalive) + (kagg * Hsp70_dam * (Hsp70_dam - 1) * 0.5 * kalive) + (kagg * Hsp90_dam * (Hsp90_dam - 1) * 0.5 * kalive) - (kagg * MisP * AggP * kalive) - (kbinAggPProt * AggP * Proteasome * kalive) - (kgenROSAggP * AggP * kalive) - (kagg * Hsp70_dam * AggP * kalive) - (kagg * Hsp90_dam * AggP * kalive);
    der(SeqAggP) = (kagg * MisP * AggP * kalive) + (2.0 * kseqagg * SeqAggP * MisP * kalive) + (kagg * Hsp70_dam * AggP * kalive) + (kagg * Hsp90_dam * AggP * kalive) + (2.0 * kseqagg * Hsp70_dam * SeqAggP * kalive) + (2.0 * kseqagg * Hsp90_dam * SeqAggP * kalive) - (kseqagg * SeqAggP * MisP * kalive) - (kseqagg * Hsp70_dam * SeqAggP * kalive) - (kseqagg * Hsp90_dam * SeqAggP * kalive);
    der(AggP_Proteasome) = (kbinAggPProt * AggP * Proteasome * kalive) + (kgenROSAggP * AggP_Proteasome * kalive) + (kPIdeath * AggP_Proteasome * kalive) - (kgenROSAggP * AggP_Proteasome * kalive) - (kPIdeath * AggP_Proteasome * kalive);
    der(ROS) = (kmisfold * NatP * ROS * kalive) + (kgenROS * Source * kalive) + (kphosJnk * Jnk * ROS * kalive) + (kphosp38 * ROS * p38 * kalive) + (kgenROSAggP * AggP * kalive) + (kgenROSAggP * AggP_Proteasome * kalive) + (kdephosMkp1 * Mkp1_P * ROS * kalive) + (kgenROSp38 * p38_P * kalive * kp38act) + (kdamHsp * Hsp70 * ROS * kalive) + (kdamHsp * Hsp90 * ROS * kalive) - (kmisfold * NatP * ROS * kalive) - (kremROS * ROS * kalive) - (kphosJnk * Jnk * ROS * kalive) - (kphosp38 * ROS * p38 * kalive) - (kdephosMkp1 * Mkp1_P * ROS * kalive) - (kdamHsp * Hsp70 * ROS * kalive) - (kdamHsp * Hsp90 * ROS * kalive);
    der(ATP) = 0.0;
    der(ADP) = 0.0;
    der(Source) = 0.0;
    der(Sink) = 0.0;
    der(p38Death) = (kp38death * p38_P * kalive * kp38act) ;
    der(JNKDeath) = (kJnkdeath * Jnk_P * kalive) ;
    der(PIDeath) = (kPIdeath * AggP_Proteasome * kalive) ;
    der(CellDeath) = (kp38death * p38_P * kalive * kp38act) + (kJnkdeath * Jnk_P * kalive) + (kPIdeath * AggP_Proteasome * kalive) ;
    der(kbinHsf1Hsp90)=0.0;
    der(kgenROS)=0.0;
    der(krelHsp90client)=0.0;
    der(krelAktHsp90)=0.0;
    der(kp38act)=0.0;
    der(kalive)=0.0;

    when CellDeath >= 1 then
        reinit(kalive,0);
    end when;

end BIOMD344;
