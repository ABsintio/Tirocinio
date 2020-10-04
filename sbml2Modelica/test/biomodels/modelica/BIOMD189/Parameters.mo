within BIOMD189;
class Parameters

    input Boolean elmt_stressCell;    input Boolean elmt_stopStress;
    input Real assign_elmt_IR;


    Real elmt_kdegp53(unit = "s-1.0") "";
    Real elmt_kproteff(unit = "") "";
    Real elmt_krepair(unit = "s-1.0") "";
    Real elmt_IR(unit = "m2.0.s-2.0") "";
    Real elmt_ksynMdm2(unit = "s-1.0") "";
    Real elmt_krelMdm2p53(unit = "s-1.0") "";
    Real elmt_kdegMdm2(unit = "s-1.0") "";
    Real elmt_kdegMdm2mRNA(unit = "s-1.0") "";
    Real elmt_kdegARF(unit = "s-1.0") "";
    Real elmt_kactARF(unit = "s-1.0") "";
    Real elmt_kdam(unit = "m-2.0..") "";
    Real elmt_ksynMdm2mRNA(unit = "s-1.0") "";
    Real elmt_kbinARFMdm2(unit = "mol-1.0.s-1.0") "";
    Real elmt_ksynp53(unit = "s-1.0") "";
    Real elmt_kdegARFMdm2(unit = "s-1.0") "";
    Real elmt_kbinMdm2p53(unit = "mol-1.0.s-1.0") "";


    initial equation
        elmt_kdegp53 = 8.25E-4;
        elmt_kproteff = 1.0;
        elmt_krepair = 2.0E-5;
        elmt_IR = 0.0;
        elmt_ksynMdm2 = 4.95E-4;
        elmt_krelMdm2p53 = 1.155E-5;
        elmt_kdegMdm2 = 4.33E-4;
        elmt_kdegMdm2mRNA = 1.0E-4;
        elmt_kdegARF = 1.0E-4;
        elmt_kactARF = 3.3E-5;
        elmt_kdam = 0.08;
        elmt_ksynMdm2mRNA = 1.0E-4;
        elmt_kbinARFMdm2 = 0.01;
        elmt_ksynp53 = 0.078;
        elmt_kdegARFMdm2 = 0.001;
        elmt_kbinMdm2p53 = 0.001155;


    equation
        der(elmt_kdegp53) = 0;
        der(elmt_kproteff) = 0;
        der(elmt_krepair) = 0;
        der(elmt_IR) = 0.0;
        der(elmt_ksynMdm2) = 0;
        der(elmt_krelMdm2p53) = 0;
        der(elmt_kdegMdm2) = 0;
        der(elmt_kdegMdm2mRNA) = 0;
        der(elmt_kdegARF) = 0;
        der(elmt_kactARF) = 0;
        der(elmt_kdam) = 0;
        der(elmt_ksynMdm2mRNA) = 0;
        der(elmt_kbinARFMdm2) = 0;
        der(elmt_ksynp53) = 0;
        der(elmt_kdegARFMdm2) = 0;
        der(elmt_kbinMdm2p53) = 0;

        when elmt_stressCell then
            reinit(elmt_IR, assign_elmt_IR);
        end when;
        when elmt_stopStress then
            reinit(elmt_IR, assign_elmt_IR);
        end when;
end Parameters;
