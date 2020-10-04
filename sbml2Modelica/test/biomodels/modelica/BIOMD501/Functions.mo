within BIOMD501;
class Functions

    function elmt_function_4_DNA52_1
        input Real arg_DNA11_11;
        input Real arg_DNA11_1_1;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA11_11) - (arg_Koff_P1 * arg_DNA11_1_1)) / arg_nucleus);
    end elmt_function_4_DNA52_1;

    function elmt_function_4_DNA54_1
        input Real arg_DNA1_1_11;
        input Real arg_DNA1_1_1_1;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA1_1_11) - (arg_Koff_P1 * arg_DNA1_1_1_1)) / arg_nucleus);
    end elmt_function_4_DNA54_1;

    function elmt_function_4_DNA10_1
        input Real arg_DNA0011;
        input Real arg_DNA0111;
        input Real arg_Koff_G1;
        input Real arg_Kon_G1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_G1 * arg_DNA0011 * arg_S1) - (arg_Koff_G1 * arg_DNA0111)) / arg_nucleus);
    end elmt_function_4_DNA10_1;

    function elmt_function_4_DNA31_1
        input Real arg_DNA1101;
        input Real arg_DNA1111;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA1101 * arg_S1) - (arg_Koff_NG1 * arg_DNA1111)) / arg_nucleus);
    end elmt_function_4_DNA31_1;

    function elmt_function_4_DNA50_1
        input Real arg_DNA1_111;
        input Real arg_DNA1_1_11;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA1_111) - (arg_Koff_P1 * arg_DNA1_1_11)) / arg_nucleus);
    end elmt_function_4_DNA50_1;

    function elmt_function_4_DNA35_1
        input Real arg_DNA0111;
        input Real arg_DNA01_11;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA0111) - (arg_Koff_P1 * arg_DNA01_11)) / arg_nucleus);
    end elmt_function_4_DNA35_1;

    function elmt_function_4_DNA14_1
        input Real arg_DNA0001;
        input Real arg_DNA1001;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA0001 * arg_S1) - (arg_Koff_NG1 * arg_DNA1001)) / arg_nucleus);
    end elmt_function_4_DNA14_1;

    function elmt_function_4_DNA12_1
        input Real arg_DNA0110;
        input Real arg_DNA0111;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA0110 * arg_S1) - (arg_Koff_NG1 * arg_DNA0111)) / arg_nucleus);
    end elmt_function_4_DNA12_1;

    function elmt_function_4_DNA33_1
        input Real arg_DNA0011;
        input Real arg_DNA001_1;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA0011) - (arg_Koff_P1 * arg_DNA001_1)) / arg_nucleus);
    end elmt_function_4_DNA33_1;

    function elmt_function_4_DNA18_1
        input Real arg_DNA0011;
        input Real arg_DNA1011;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA0011 * arg_S1) - (arg_Koff_NG1 * arg_DNA1011)) / arg_nucleus);
    end elmt_function_4_DNA18_1;

    function elmt_function_4_DNA39_1
        input Real arg_DNA1100;
        input Real arg_DNA1_100;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA1100) - (arg_Koff_P1 * arg_DNA1_100)) / arg_nucleus);
    end elmt_function_4_DNA39_1;

    function elmt_function_4_DNA56_1
        input Real arg_DNA11_1_1;
        input Real arg_DNA1_1_1_1;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA11_1_1) - (arg_Koff_P1 * arg_DNA1_1_1_1)) / arg_nucleus);
    end elmt_function_4_DNA56_1;

    function elmt_function_4_DNA16_1
        input Real arg_DNA1000;
        input Real arg_DNA1010;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA1000 * arg_S1) - (arg_Koff_NG1 * arg_DNA1010)) / arg_nucleus);
    end elmt_function_4_DNA16_1;

    function elmt_function_4_DNA37_1
        input Real arg_DNA01_11;
        input Real arg_DNA01_1_1;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA01_11) - (arg_Koff_P1 * arg_DNA01_1_1)) / arg_nucleus);
    end elmt_function_4_DNA37_1;

    function elmt_function_4_DNA43_1
        input Real arg_DNA1_110;
        input Real arg_DNA1_1_10;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA1_110) - (arg_Koff_P1 * arg_DNA1_1_10)) / arg_nucleus);
    end elmt_function_4_DNA43_1;

    function elmt_function_4_DNA1_1
        input Real arg_DNA0000;
        input Real arg_DNA0001;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA0000 * arg_S1) - (arg_Koff_NG1 * arg_DNA0001)) / arg_nucleus);
    end elmt_function_4_DNA1_1;

    function elmt_function_4_DNA20_1
        input Real arg_DNA1010;
        input Real arg_DNA1011;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA1010 * arg_S1) - (arg_Koff_NG1 * arg_DNA1011)) / arg_nucleus);
    end elmt_function_4_DNA20_1;

    function elmt_function_4_DNA41_1
        input Real arg_DNA1110;
        input Real arg_DNA1_110;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA1110) - (arg_Koff_P1 * arg_DNA1_110)) / arg_nucleus);
    end elmt_function_4_DNA41_1;

    function elmt_function_4_DNA3_1
        input Real arg_DNA0001;
        input Real arg_DNA0011;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA0001 * arg_S1) - (arg_Koff_NG1 * arg_DNA0011)) / arg_nucleus);
    end elmt_function_4_DNA3_1;

    function elmt_function_4_DNA24_1
        input Real arg_DNA1001;
        input Real arg_DNA1101;
        input Real arg_Koff_G1;
        input Real arg_Kon_G1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_G1 * arg_DNA1001 * arg_S1) - (arg_Koff_G1 * arg_DNA1101)) / arg_nucleus);
    end elmt_function_4_DNA24_1;

    function elmt_function_4_DNA49_1
        input Real arg_DNA111_1;
        input Real arg_DNA1_11_1;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA111_1) - (arg_Koff_P1 * arg_DNA1_11_1)) / arg_nucleus);
    end elmt_function_4_DNA49_1;

    function elmt_function_4_DNA22_1
        input Real arg_DNA0100;
        input Real arg_DNA1100;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA0100 * arg_S1) - (arg_Koff_NG1 * arg_DNA1100)) / arg_nucleus);
    end elmt_function_4_DNA22_1;

    function elmt_function_4_DNA28_1
        input Real arg_DNA1100;
        input Real arg_DNA1110;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA1100 * arg_S1) - (arg_Koff_NG1 * arg_DNA1110)) / arg_nucleus);
    end elmt_function_4_DNA28_1;

    function elmt_function_4_DNA45_1
        input Real arg_DNA1111;
        input Real arg_DNA1_111;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA1111) - (arg_Koff_P1 * arg_DNA1_111)) / arg_nucleus);
    end elmt_function_4_DNA45_1;

    function elmt_function_4_DNA26_1
        input Real arg_DNA0110;
        input Real arg_DNA1110;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA0110 * arg_S1) - (arg_Koff_NG1 * arg_DNA1110)) / arg_nucleus);
    end elmt_function_4_DNA26_1;

    function elmt_function_4_DNA47_1
        input Real arg_DNA1111;
        input Real arg_DNA111_1;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA1111) - (arg_Koff_P1 * arg_DNA111_1)) / arg_nucleus);
    end elmt_function_4_DNA47_1;

    function elmt_function_4_DNA57
        input Real arg_DNA1011;
        input Real arg_DNA101_1;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA1011) - (arg_Koff_P1 * arg_DNA101_1)) / arg_nucleus);
    end elmt_function_4_DNA57;

    function elmt_function_4_DNA5_1
        input Real arg_DNA0000;
        input Real arg_DNA0100;
        input Real arg_Koff_G1;
        input Real arg_Kon_G1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_G1 * arg_DNA0000 * arg_S1) - (arg_Koff_G1 * arg_DNA0100)) / arg_nucleus);
    end elmt_function_4_DNA5_1;

    function elmt_function_4_DNA7_1
        input Real arg_DNA0001;
        input Real arg_DNA0101;
        input Real arg_Koff_G1;
        input Real arg_Kon_G1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_G1 * arg_DNA0001 * arg_S1) - (arg_Koff_G1 * arg_DNA0101)) / arg_nucleus);
    end elmt_function_4_DNA7_1;

    function elmt_function_4_DNA9_1
        input Real arg_DNA0100;
        input Real arg_DNA0110;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA0100 * arg_S1) - (arg_Koff_NG1 * arg_DNA0110)) / arg_nucleus);
    end elmt_function_4_DNA9_1;

    function elmt_function_4_DNA51_1
        input Real arg_DNA11_11;
        input Real arg_DNA1_1_11;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA11_11) - (arg_Koff_P1 * arg_DNA1_1_11)) / arg_nucleus);
    end elmt_function_4_DNA51_1;

    function elmt_function_4_DNA53_1
        input Real arg_DNA111_1;
        input Real arg_DNA11_1_1;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA111_1) - (arg_Koff_P1 * arg_DNA11_1_1)) / arg_nucleus);
    end elmt_function_4_DNA53_1;

    function elmt_function_4_DNA32_1
        input Real arg_DNA1110;
        input Real arg_DNA1111;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA1110 * arg_S1) - (arg_Koff_NG1 * arg_DNA1111)) / arg_nucleus);
    end elmt_function_4_DNA32_1;

    function elmt_function_4_DNA30_1
        input Real arg_DNA1011;
        input Real arg_DNA1111;
        input Real arg_Koff_G1;
        input Real arg_Kon_G1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_G1 * arg_DNA1011 * arg_S1) - (arg_Koff_G1 * arg_DNA1111)) / arg_nucleus);
    end elmt_function_4_DNA30_1;

    function elmt_function_4_DNA13_1
        input Real arg_DNA0000;
        input Real arg_DNA1000;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA0000 * arg_S1) - (arg_Koff_NG1 * arg_DNA1000)) / arg_nucleus);
    end elmt_function_4_DNA13_1;

    function elmt_function_4_DNA36_1
        input Real arg_DNA0111;
        input Real arg_DNA011_1;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA0111) - (arg_Koff_P1 * arg_DNA011_1)) / arg_nucleus);
    end elmt_function_4_DNA36_1;

    function elmt_function_4_DNA11_1
        input Real arg_DNA0101;
        input Real arg_DNA0111;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA0101 * arg_S1) - (arg_Koff_NG1 * arg_DNA0111)) / arg_nucleus);
    end elmt_function_4_DNA11_1;

    function elmt_function_4_DNA34_1
        input Real arg_DNA0110;
        input Real arg_DNA01_10;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA0110) - (arg_Koff_P1 * arg_DNA01_10)) / arg_nucleus);
    end elmt_function_4_DNA34_1;

    function elmt_function_4_DNA17_1
        input Real arg_DNA0010;
        input Real arg_DNA1010;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA0010 * arg_S1) - (arg_Koff_NG1 * arg_DNA1010)) / arg_nucleus);
    end elmt_function_4_DNA17_1;

    function elmt_function_4_DNA55_1
        input Real arg_DNA1_11_1;
        input Real arg_DNA1_1_1_1;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA1_11_1) - (arg_Koff_P1 * arg_DNA1_1_1_1)) / arg_nucleus);
    end elmt_function_4_DNA55_1;

    function elmt_function_4_DNA15_1
        input Real arg_DNA1000;
        input Real arg_DNA1001;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA1000 * arg_S1) - (arg_Koff_NG1 * arg_DNA1001)) / arg_nucleus);
    end elmt_function_4_DNA15_1;

    function elmt_function_4_DNA38_1
        input Real arg_DNA011_1;
        input Real arg_DNA01_1_1;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA011_1) - (arg_Koff_P1 * arg_DNA01_1_1)) / arg_nucleus);
    end elmt_function_4_DNA38_1;

    function elmt_function_4_DNA19_1
        input Real arg_DNA1001;
        input Real arg_DNA1011;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA1001 * arg_S1) - (arg_Koff_NG1 * arg_DNA1011)) / arg_nucleus);
    end elmt_function_4_DNA19_1;

    function elmt_function_4_DNA21_1
        input Real arg_DNA1000;
        input Real arg_DNA1100;
        input Real arg_Koff_G1;
        input Real arg_Kon_G1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_G1 * arg_DNA1000 * arg_S1) - (arg_Koff_G1 * arg_DNA1100)) / arg_nucleus);
    end elmt_function_4_DNA21_1;

    function elmt_function_4_DNA42_1
        input Real arg_DNA1110;
        input Real arg_DNA11_10;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA1110) - (arg_Koff_P1 * arg_DNA11_10)) / arg_nucleus);
    end elmt_function_4_DNA42_1;

    function elmt_function_4_DNA2_1
        input Real arg_DNA0000;
        input Real arg_DNA0010;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA0000 * arg_S1) - (arg_Koff_NG1 * arg_DNA0010)) / arg_nucleus);
    end elmt_function_4_DNA2_1;

    function elmt_function_4_DNA40_1
        input Real arg_DNA1101;
        input Real arg_DNA1_101;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA1101) - (arg_Koff_P1 * arg_DNA1_101)) / arg_nucleus);
    end elmt_function_4_DNA40_1;

    function elmt_function_4_DNA25_1
        input Real arg_DNA1100;
        input Real arg_DNA1101;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA1100 * arg_S1) - (arg_Koff_NG1 * arg_DNA1101)) / arg_nucleus);
    end elmt_function_4_DNA25_1;

    function elmt_function_4_DNA48_1
        input Real arg_DNA1_111;
        input Real arg_DNA1_11_1;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA1_111) - (arg_Koff_P1 * arg_DNA1_11_1)) / arg_nucleus);
    end elmt_function_4_DNA48_1;

    function elmt_function_4_DNA23_1
        input Real arg_DNA0101;
        input Real arg_DNA1101;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA0101 * arg_S1) - (arg_Koff_NG1 * arg_DNA1101)) / arg_nucleus);
    end elmt_function_4_DNA23_1;

    function elmt_function_4_DNA44_1
        input Real arg_DNA11_10;
        input Real arg_DNA1_1_10;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA11_10) - (arg_Koff_P1 * arg_DNA1_1_10)) / arg_nucleus);
    end elmt_function_4_DNA44_1;

    function elmt_function_4_DNA29_1
        input Real arg_DNA0111;
        input Real arg_DNA1111;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA0111 * arg_S1) - (arg_Koff_NG1 * arg_DNA1111)) / arg_nucleus);
    end elmt_function_4_DNA29_1;

    function elmt_function_4_DNA27_1
        input Real arg_DNA1010;
        input Real arg_DNA1110;
        input Real arg_Koff_G1;
        input Real arg_Kon_G1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_G1 * arg_DNA1010 * arg_S1) - (arg_Koff_G1 * arg_DNA1110)) / arg_nucleus);
    end elmt_function_4_DNA27_1;

    function elmt_function_4_DNA46_1
        input Real arg_DNA1111;
        input Real arg_DNA11_11;
        input Real arg_Koff_P1;
        input Real arg_Kon_P1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_P1 * arg_DNA1111) - (arg_Koff_P1 * arg_DNA11_11)) / arg_nucleus);
    end elmt_function_4_DNA46_1;

    function elmt_function_4_DNA4_1
        input Real arg_DNA0010;
        input Real arg_DNA0011;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA0010 * arg_S1) - (arg_Koff_NG1 * arg_DNA0011)) / arg_nucleus);
    end elmt_function_4_DNA4_1;

    function elmt_function_4_DNA6_1
        input Real arg_DNA0100;
        input Real arg_DNA0101;
        input Real arg_Koff_NG1;
        input Real arg_Kon_NG1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_NG1 * arg_DNA0100 * arg_S1) - (arg_Koff_NG1 * arg_DNA0101)) / arg_nucleus);
    end elmt_function_4_DNA6_1;

    function elmt_function_4_DNA8_1
        input Real arg_DNA0010;
        input Real arg_DNA0110;
        input Real arg_Koff_G1;
        input Real arg_Kon_G1;
        input Real arg_S1;
        input Real arg_nucleus;

        output Real result;
        algorithm
            result := (((arg_Kon_G1 * arg_DNA0010 * arg_S1) - (arg_Koff_G1 * arg_DNA0110)) / arg_nucleus);
    end elmt_function_4_DNA8_1;


    function acosh
        input  Real x;
        output Real y;
        algorithm
            y := log(x + sqrt(x^2 - 1));
    end acosh;

    function acot
        input  Real x;
        output Real y;
        algorithm
            if abs(x) < Constants.EPSILON then
                y := atan(sign(x) * Constants.INFINITY);
            else
                y := atan(1 / x);
            end if;
    end acot;

    function acoth
        input  Real x;
        output Real y;
        algorithm
            y := (1 / 2) * log((x + 1) / (x - 1));
    end acoth;

    function acsc
        input  Real x;
        output Real y;
        algorithm
            y := asin(1 / x);
    end acsc;

    function acsch
        input  Real x;
        output Real y;
        algorithm
            y := sign(x) * log((1 + sqrt(1 + x^2)) / abs(x));
    end acsch;

    function asec
        input  Real x;
        output Real y;
        algorithm
            y := acos(1 / x);
    end asec;

    function asech
        input  Real x;
        output Real y;
        algorithm
            y := log((1 + sqrt(1 - x^2)) / x);
    end asech;

    function asinh
        input  Real x;
        output Real y;
        algorithm
            y := log(x + sqrt(x^2 + 1));
    end asinh;

    function atanh
        input  Real x;
        output Real y;
        algorithm
            y := (1 / 2) * log((1 + x) / (1 - x));
    end atanh;

    function cot
        input  Real x;
        output Real y;
        algorithm
            y := 1 / tan(x);
    end cot;

    function coth
        input  Real x;
        output Real y;
        algorithm
            y := 1 / tanh(x);
    end coth;

    function csc
        input  Real x;
        output Real y;
        algorithm
            y := 1 / sin(x);
    end csc;

    function csch
        input  Real x;
        output Real y;
        algorithm
            y := 1 / sinh(x);
    end csch;

    function factorial
        input  Real n;
        output Real y;
        algorithm
            if eq(n, 0) then
                y := 1;
            else
                y := n * factorial(n - 1);
            end if;
    end factorial;

    function logarithm
        input  Real base;
        input  Real arg;
        output Real y;
        algorithm
            y := log(arg) / log(base);
    end logarithm;

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    function root
        input  Real degree;
        input  Real x;
        output Real y;
        algorithm
            y := x^(1 / degree);
    end root;

    function sec
        input  Real x;
        output Real y;
        algorithm
            y := 1 / cos(x);
    end sec;

    function sech
        input  Real x;
        output Real y;
        algorithm
            y := 1 / cosh(x);
    end sech;

    function implies
        input  Boolean x1;
        input  Boolean x2;
        output Boolean y;
        algorithm
            y := not x1 or x2;
    end implies;

    function xor
        input  Boolean x1;
        input  Boolean x2;
        output Boolean y;
        algorithm
            y := (x1 and not x2) or (not x1 and x2);
    end xor;

    function eq
        input  Real x1;
        input  Real x2;
        output Boolean y;
        algorithm
            y := abs(x1 - x2) / max(abs(x1), Constants.ETA) < Constants.EPSILON;
    end eq;

    function real2bool
        input  Real    x;
        output Boolean y;
        algorithm
            y := (not eq(x, 0));
    end real2bool;

    function bool2real
        input  Boolean x;
        output Real    y;
        algorithm
            if x then
                y := 1.0;
            else
                y := 0.0;
            end if;
    end bool2real;
end Functions;
