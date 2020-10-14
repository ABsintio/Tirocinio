within BIOMD287;
class Parameters

    input Boolean elmt_stopp38ROS;
    input Real assign_elmt_kp38ROS;


    Real elmt_kgenROSp38(unit = "") "";
    Real elmt_kdegp53(unit = "") "";
    Real elmt_kdephosp53(unit = "") "";
    Real elmt_ksynp53mRNA(unit = "") "";
    Real elmt_ksynp21mRNAp53(unit = "") "";
    Real elmt_ksynMdm2(unit = "") "";
    Real elmt_kdegMdm2(unit = "") "";
    Real elmt_kdephosp38(unit = "") "";
    Real elmt_kp38ROS(unit = "") "";
    Real elmt_ksynp21mRNAp53P(unit = "") "";
    Real elmt_kinactATM(unit = "") "";
    Real elmt_kdegp53mRNA(unit = "") "";
    Real elmt_kbinMdm2p53(unit = "") "";
    Real elmt_kdegp53mdm2ind(unit = "") "";
    Real elmt_kdegp21(unit = "") "";
    Real elmt_kphosMdm2(unit = "") "";
    Real elmt_krepair(unit = "") "";
    Real elmt_kphosp53(unit = "") "";
    Real elmt_kGADD45(unit = "") "";
    Real elmt_kdegGADD45(unit = "") "";
    Real elmt_krelMdm2p53(unit = "") "";
    Real elmt_kdegMdm2mRNA(unit = "") "";
    Real elmt_kdegATMMdm2(unit = "") "";
    Real elmt_kphosp38(unit = "") "";
    Real elmt_kactATM(unit = "") "";
    Real elmt_ksynp21step3(unit = "") "";
    Real elmt_kdamROS(unit = "") "";
    Real elmt_kdam(unit = "") "";
    Real elmt_ksynp21step2(unit = "") "";
    Real elmt_ksynMdm2mRNA(unit = "") "";
    Real elmt_kdegp21mRNA(unit = "") "";
    Real elmt_ksynp21step1(unit = "") "";
    Real elmt_kremROS(unit = "") "";
    Real elmt_kdamBasalROS(unit = "") "";
    Real elmt_ksynp53(unit = "") "";
    Real elmt_kdephosMdm2(unit = "") "";


    initial equation
        elmt_kgenROSp38 = 4.5E-4;
        elmt_kdegp53 = 8.25E-4;
        elmt_kdephosp53 = 0.5;
        elmt_ksynp53mRNA = 0.001;
        elmt_ksynp21mRNAp53 = 6.0E-8;
        elmt_ksynMdm2 = 4.95E-4;
        elmt_kdegMdm2 = 4.33E-4;
        elmt_kdephosp38 = 0.1;
        elmt_kp38ROS = 1.0;
        elmt_ksynp21mRNAp53P = 6.0E-6;
        elmt_kinactATM = 5.0E-4;
        elmt_kdegp53mRNA = 1.0E-4;
        elmt_kbinMdm2p53 = 0.001155;
        elmt_kdegp53mdm2ind = 8.25E-7;
        elmt_kdegp21 = 1.9E-4;
        elmt_kphosMdm2 = 2.0;
        elmt_krepair = 6.0E-5;
        elmt_kphosp53 = 0.006;
        elmt_kGADD45 = 4.0E-6;
        elmt_kdegGADD45 = 1.0E-5;
        elmt_krelMdm2p53 = 1.155E-6;
        elmt_kdegMdm2mRNA = 1.0E-4;
        elmt_kdegATMMdm2 = 4.0E-4;
        elmt_kphosp38 = 0.008;
        elmt_kactATM = 2.0E-5;
        elmt_ksynp21step3 = 4.0E-5;
        elmt_kdamROS = 1.0E-5;
        elmt_kdam = 0.007;
        elmt_ksynp21step2 = 4.0E-5;
        elmt_ksynMdm2mRNA = 1.0E-4;
        elmt_kdegp21mRNA = 2.4E-5;
        elmt_ksynp21step1 = 4.0E-4;
        elmt_kremROS = 3.83E-4;
        elmt_kdamBasalROS = 1.0E-9;
        elmt_ksynp53 = 0.006;
        elmt_kdephosMdm2 = 0.5;


    equation
        der(elmt_kgenROSp38) = 0;
        der(elmt_kdegp53) = 0;
        der(elmt_kdephosp53) = 0;
        der(elmt_ksynp53mRNA) = 0;
        der(elmt_ksynp21mRNAp53) = 0;
        der(elmt_ksynMdm2) = 0;
        der(elmt_kdegMdm2) = 0;
        der(elmt_kdephosp38) = 0;
        der(elmt_kp38ROS) = 0.0;
        der(elmt_ksynp21mRNAp53P) = 0;
        der(elmt_kinactATM) = 0;
        der(elmt_kdegp53mRNA) = 0;
        der(elmt_kbinMdm2p53) = 0;
        der(elmt_kdegp53mdm2ind) = 0;
        der(elmt_kdegp21) = 0;
        der(elmt_kphosMdm2) = 0;
        der(elmt_krepair) = 0;
        der(elmt_kphosp53) = 0;
        der(elmt_kGADD45) = 0;
        der(elmt_kdegGADD45) = 0;
        der(elmt_krelMdm2p53) = 0;
        der(elmt_kdegMdm2mRNA) = 0;
        der(elmt_kdegATMMdm2) = 0;
        der(elmt_kphosp38) = 0;
        der(elmt_kactATM) = 0;
        der(elmt_ksynp21step3) = 0;
        der(elmt_kdamROS) = 0;
        der(elmt_kdam) = 0;
        der(elmt_ksynp21step2) = 0;
        der(elmt_ksynMdm2mRNA) = 0;
        der(elmt_kdegp21mRNA) = 0;
        der(elmt_ksynp21step1) = 0;
        der(elmt_kremROS) = 0;
        der(elmt_kdamBasalROS) = 0;
        der(elmt_ksynp53) = 0;
        der(elmt_kdephosMdm2) = 0;

        when elmt_stopp38ROS then
            reinit(elmt_kp38ROS, assign_elmt_kp38ROS);
        end when;
end Parameters;
