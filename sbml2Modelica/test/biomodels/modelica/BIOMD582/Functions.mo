within BIOMD582;
class Functions

    function elmt_function_4_reaction_1_1
        input Real arg_Akt;
        input Real arg_Akt_S473_phos_by_insulin;
        input Real arg_Insulin;

        output Real result;
        algorithm
            result := (arg_Akt_S473_phos_by_insulin * arg_Akt * arg_Insulin);
    end elmt_function_4_reaction_1_1;

    function elmt_function_4_reaction_2_1
        input Real arg_Akt_pS473;
        input Real arg_Akt_pS473_dephos_by_mTORC1_pS2448;
        input Real arg_mTORC1_pS2448;

        output Real result;
        algorithm
            result := (arg_Akt_pS473_dephos_by_mTORC1_pS2448 * arg_Akt_pS473 * arg_mTORC1_pS2448);
    end elmt_function_4_reaction_2_1;

    function elmt_function_4_reaction_22_1
        input Real arg_Mito_membr_pot_new;
        input Real arg_ROS_prod_by_Mito_membr_pot_new;

        output Real result;
        algorithm
            result := (arg_ROS_prod_by_Mito_membr_pot_new * arg_Mito_membr_pot_new);
    end elmt_function_4_reaction_22_1;

    function elmt_function_2
        input Real arg_v;

        output Real result;
        algorithm
            result := arg_v;
    end elmt_function_2;

    function elmt_function_4_reaction_20_1
        input Real arg_DNA_damaged_by_ROS;
        input Real arg_ROS;

        output Real result;
        algorithm
            result := (arg_DNA_damaged_by_ROS * arg_ROS);
    end elmt_function_4_reaction_20_1;

    function elmt_function_4_reaction_41_1
        input Real arg_Amino_Acids;
        input Real arg_IKKbeta;
        input Real arg_mTORC1;
        input Real arg_mTORC1_S2448_phos_by_AA_n_IKKbeta;

        output Real result;
        algorithm
            result := (arg_mTORC1_S2448_phos_by_AA_n_IKKbeta * arg_mTORC1 * arg_Amino_Acids * arg_IKKbeta);
    end elmt_function_4_reaction_41_1;

    function elmt_function_4_reaction_9_1
        input Real arg_AMPK_pT172;
        input Real arg_FoxO3a;
        input Real arg_mitophagy_activ_by_FoxO3a_n_AMPK_pT172;

        output Real result;
        algorithm
            result := (arg_mitophagy_activ_by_FoxO3a_n_AMPK_pT172 * arg_FoxO3a * arg_AMPK_pT172);
    end elmt_function_4_reaction_9_1;

    function elmt_function_4_reaction_25_1
        input Real arg_JNK;
        input Real arg_JNK_activ_by_ROS;
        input Real arg_ROS;

        output Real result;
        algorithm
            result := (arg_JNK_activ_by_ROS * arg_JNK * arg_ROS);
    end elmt_function_4_reaction_25_1;

    function elmt_function_4_reaction_7_1
        input Real arg_Akt_pS473;
        input Real arg_Amino_Acids;
        input Real arg_mTORC1;
        input Real arg_mTORC1_S2448_phos_by_AA_n_Akt_pS473;

        output Real result;
        algorithm
            result := (arg_mTORC1_S2448_phos_by_AA_n_Akt_pS473 * arg_mTORC1 * arg_Amino_Acids * arg_Akt_pS473);
    end elmt_function_4_reaction_7_1;

    function elmt_function_4_reaction_23_1
        input Real arg_Mito_membr_pot_old;
        input Real arg_ROS_prod_by_Mito_membr_pot_old;

        output Real result;
        algorithm
            result := (arg_ROS_prod_by_Mito_membr_pot_old * arg_Mito_membr_pot_old);
    end elmt_function_4_reaction_23_1;

    function elmt_function_4_reaction_8_1
        input Real arg_AMPK_pT172;
        input Real arg_mTORC1_pS2448;
        input Real arg_mTORC1_pS2448_dephos_by_AMPK_pT172;

        output Real result;
        algorithm
            result := (arg_mTORC1_pS2448_dephos_by_AMPK_pT172 * arg_mTORC1_pS2448 * arg_AMPK_pT172);
    end elmt_function_4_reaction_8_1;

    function elmt_function_4_reaction_5_1
        input Real arg_AMPK_pT172;
        input Real arg_AMPK_pT172_dephos_by_Mito_membr_pot_old;
        input Real arg_Mito_membr_pot_old;

        output Real result;
        algorithm
            result := (arg_AMPK_pT172_dephos_by_Mito_membr_pot_old * arg_AMPK_pT172 * arg_Mito_membr_pot_old);
    end elmt_function_4_reaction_5_1;

    function elmt_function_4_reaction_6_1
        input Real arg_Amino_Acids;
        input Real arg_mTORC1;
        input Real arg_mTORC1_S2448_phos_by_AA;

        output Real result;
        algorithm
            result := (arg_mTORC1_S2448_phos_by_AA * arg_mTORC1 * arg_Amino_Acids);
    end elmt_function_4_reaction_6_1;

    function elmt_function_4_reaction_27_1
        input Real arg_ROS;
        input Real arg_sen_ass_beta_gal_inc_by_ROS;

        output Real result;
        algorithm
            result := (arg_sen_ass_beta_gal_inc_by_ROS * arg_ROS);
    end elmt_function_4_reaction_27_1;

    function elmt_function_4_reaction_4_1
        input Real arg_AMPK_pT172;
        input Real arg_AMPK_pT172_dephos_by_Mito_membr_pot_new;
        input Real arg_Mito_membr_pot_new;

        output Real result;
        algorithm
            result := (arg_AMPK_pT172_dephos_by_Mito_membr_pot_new * arg_AMPK_pT172 * arg_Mito_membr_pot_new);
    end elmt_function_4_reaction_4_1;

    function elmt_function_4_reaction_28_1
        input Real arg_Mitophagy;
        input Real arg_sen_ass_beta_gal_inc_by_Mitophagy;

        output Real result;
        algorithm
            result := (arg_sen_ass_beta_gal_inc_by_Mitophagy * arg_Mitophagy);
    end elmt_function_4_reaction_28_1;

    function elmt_function_4_reaction_32_1
        input Real arg_Mito_mass_new;
        input Real arg_Mitophagy;
        input Real arg_mitophagy_new;

        output Real result;
        algorithm
            result := (arg_mitophagy_new * arg_Mito_mass_new * arg_Mitophagy);
    end elmt_function_4_reaction_32_1;

    function elmt_function_4_reaction_33_1
        input Real arg_Mito_mass_old;
        input Real arg_Mitophagy;
        input Real arg_mitophagy_old;

        output Real result;
        algorithm
            result := (arg_mitophagy_old * arg_Mito_mass_old * arg_Mitophagy);
    end elmt_function_4_reaction_33_1;

    function elmt_function_4_reaction_11_1
        input Real arg_Akt_pS473;
        input Real arg_FoxO3a;
        input Real arg_FoxO3a_phos_by_Akt_pS473;

        output Real result;
        algorithm
            result := (arg_FoxO3a_phos_by_Akt_pS473 * arg_FoxO3a * arg_Akt_pS473);
    end elmt_function_4_reaction_11_1;

    function elmt_function_4_reaction_30_1
        input Real arg_Mito_mass_turnover;
        input Real arg_mTORC1_pS2448;
        input Real arg_mito_biogenesis_by_mTORC1_pS2448;

        output Real result;
        algorithm
            result := (arg_mito_biogenesis_by_mTORC1_pS2448 * arg_Mito_mass_turnover * arg_mTORC1_pS2448);
    end elmt_function_4_reaction_30_1;

    function elmt_function_4_reaction_10_1
        input Real arg_Mitophagy;
        input Real arg_mTORC1_pS2448;
        input Real arg_mitophagy_inactiv_by_mTORC1_pS2448;

        output Real result;
        algorithm
            result := (arg_mitophagy_inactiv_by_mTORC1_pS2448 * arg_Mitophagy * arg_mTORC1_pS2448);
    end elmt_function_4_reaction_10_1;

    function elmt_function_4_reaction_31_1
        input Real arg_Mito_mass_turnover;
        input Real arg_mTORC1_pS2448;
        input Real arg_mito_biogenesis_by_AMPK_pT172;

        output Real result;
        algorithm
            result := (arg_mito_biogenesis_by_AMPK_pT172 * arg_Mito_mass_turnover * arg_mTORC1_pS2448);
    end elmt_function_4_reaction_31_1;

    function elmt_function_4_reaction_36_1
        input Real arg_Mito_mass_old;
        input Real arg_mito_membr_pot_old_inc;

        output Real result;
        algorithm
            result := (arg_mito_membr_pot_old_inc * arg_Mito_mass_old);
    end elmt_function_4_reaction_36_1;

    function elmt_function_4_reaction_15_1
        input Real arg_CDKN1A_transcr_by_FoxO3a_n_DNA_damage;
        input Real arg_DNA_damage;
        input Real arg_FoxO3a;

        output Real result;
        algorithm
            result := (arg_CDKN1A_transcr_by_FoxO3a_n_DNA_damage * arg_DNA_damage * arg_FoxO3a);
    end elmt_function_4_reaction_15_1;

    function elmt_function_4_reaction_12_1
        input Real arg_FoxO3a_pS253;
        input Real arg_FoxO3a_phos_by_JNK_pT183;
        input Real arg_JNK_pT183;

        output Real result;
        algorithm
            result := (arg_FoxO3a_phos_by_JNK_pT183 * arg_FoxO3a_pS253 * arg_JNK_pT183);
    end elmt_function_4_reaction_12_1;

    function elmt_function_4_reaction_34_1
        input Real arg_CDKN1A;
        input Real arg_Mito_mass_new;
        input Real arg_mito_dysfunction;

        output Real result;
        algorithm
            result := (arg_mito_dysfunction * arg_Mito_mass_new * arg_CDKN1A);
    end elmt_function_4_reaction_34_1;

    function elmt_function_4_reaction_35_1
        input Real arg_Mito_mass_new;
        input Real arg_mito_membr_pot_new_inc;

        output Real result;
        algorithm
            result := (arg_mito_membr_pot_new_inc * arg_Mito_mass_new);
    end elmt_function_4_reaction_35_1;

    function elmt_function_4_reaction_18_1
        input Real arg_Akt_pS473;
        input Real arg_CDKN1B;
        input Real arg_CDKN1B_inactiv_by_Akt_pS473;

        output Real result;
        algorithm
            result := (arg_CDKN1B_inactiv_by_Akt_pS473 * arg_CDKN1B * arg_Akt_pS473);
    end elmt_function_4_reaction_18_1;

    function elmt_function_4_reaction_19_1
        input Real arg_DNA_damaged_by_irradiation;
        input Real arg_Irradiation;

        output Real result;
        algorithm
            result := (arg_DNA_damaged_by_irradiation * arg_Irradiation);
    end elmt_function_4_reaction_19_1;

    function elmt_function_4_reaction_16_1
        input Real arg_Akt_pS473;
        input Real arg_CDKN1A;
        input Real arg_CDKN1A_inactiv_by_Akt_pS473;

        output Real result;
        algorithm
            result := (arg_CDKN1A_inactiv_by_Akt_pS473 * arg_CDKN1A * arg_Akt_pS473);
    end elmt_function_4_reaction_16_1;

    function elmt_function_4_reaction_39_1
        input Real arg_IKKbeta_activ_by_ROS;
        input Real arg_ROS;

        output Real result;
        algorithm
            result := (arg_IKKbeta_activ_by_ROS * arg_ROS);
    end elmt_function_4_reaction_39_1;

    function elmt_function_4_reaction_17_1
        input Real arg_CDKN1B_transcr_by_FoxO3a_n_DNA_damage;
        input Real arg_DNA_damage;
        input Real arg_FoxO3a;

        output Real result;
        algorithm
            result := (arg_CDKN1B_transcr_by_FoxO3a_n_DNA_damage * arg_DNA_damage * arg_FoxO3a);
    end elmt_function_4_reaction_17_1;


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
