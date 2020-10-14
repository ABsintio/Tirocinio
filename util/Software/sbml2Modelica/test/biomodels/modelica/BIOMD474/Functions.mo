within BIOMD474;
class Functions

    function elmt_function_138
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_cytoplasm * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_cytoplasm);
    end elmt_function_138;

    function elmt_function_259
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_nucleus * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_nucleus);
    end elmt_function_259;

    function elmt_function_139
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_nucleus * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_nucleus);
    end elmt_function_139;

    function elmt_function_260
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_dnabound * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_dnabound);
    end elmt_function_260;

    function elmt_function_140
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_dnabound * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_dnabound);
    end elmt_function_140;

    function elmt_function_261
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_cytoplasm * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_cytoplasm);
    end elmt_function_261;

    function elmt_function_147
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_cytoplasm * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_cytoplasm);
    end elmt_function_147;

    function elmt_function_268
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_268;

    function elmt_function_148
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_nucleus * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_nucleus);
    end elmt_function_148;

    function elmt_function_269
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_269;

    function elmt_function_145
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_nucleus * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_nucleus);
    end elmt_function_145;

    function elmt_function_266
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_266;

    function elmt_function_146
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_dnabound * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_dnabound);
    end elmt_function_146;

    function elmt_function_267
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_267;

    function elmt_function_143
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_dnabound * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_dnabound);
    end elmt_function_143;

    function elmt_function_264
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_264;

    function elmt_function_144
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_cytoplasm * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_cytoplasm);
    end elmt_function_144;

    function elmt_function_265
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_265;

    function elmt_function_141
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_cytoplasm * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_cytoplasm);
    end elmt_function_141;

    function elmt_function_262
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_nucleus * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_nucleus);
    end elmt_function_262;

    function elmt_function_142
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_nucleus * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_nucleus);
    end elmt_function_142;

    function elmt_function_263
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_dnabound * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_dnabound);
    end elmt_function_263;

    function elmt_function_149
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_dnabound * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_dnabound);
    end elmt_function_149;

    function elmt_function_150
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_cytoplasm * arg_SGK * arg_cytoplasm * arg_kkin) / arg_cytoplasm);
    end elmt_function_150;

    function elmt_function_271
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * arg_nucleus * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_nucleus);
    end elmt_function_271;

    function elmt_function_151
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_nucleus * arg_SGK * arg_cytoplasm * arg_kkin) / arg_nucleus);
    end elmt_function_151;

    function elmt_function_272
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * arg_dnabound * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_dnabound);
    end elmt_function_272;

    function elmt_function_270
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * arg_cytoplasm * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_cytoplasm);
    end elmt_function_270;

    function elmt_function_158
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_dnabound * arg_SGK * arg_cytoplasm * arg_kkin) / arg_dnabound);
    end elmt_function_158;

    function elmt_function_279
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_279;

    function elmt_function_159
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_cytoplasm * arg_SGK * arg_cytoplasm * arg_kkin) / arg_cytoplasm);
    end elmt_function_159;

    function elmt_function_156
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_cytoplasm * arg_SGK * arg_cytoplasm * arg_kkin) / arg_cytoplasm);
    end elmt_function_156;

    function elmt_function_277
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_277;

    function elmt_function_157
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_nucleus * arg_SGK * arg_cytoplasm * arg_kkin) / arg_nucleus);
    end elmt_function_157;

    function elmt_function_278
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_278;

    function elmt_function_154
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_nucleus * arg_SGK * arg_cytoplasm * arg_kkin) / arg_nucleus);
    end elmt_function_154;

    function elmt_function_275
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * arg_dnabound * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_dnabound);
    end elmt_function_275;

    function elmt_function_155
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_dnabound * arg_SGK * arg_cytoplasm * arg_kkin) / arg_dnabound);
    end elmt_function_155;

    function elmt_function_276
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_276;

    function elmt_function_152
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_dnabound * arg_SGK * arg_cytoplasm * arg_kkin) / arg_dnabound);
    end elmt_function_152;

    function elmt_function_273
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * arg_cytoplasm * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_cytoplasm);
    end elmt_function_273;

    function elmt_function_153
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_cytoplasm * arg_SGK * arg_cytoplasm * arg_kkin) / arg_cytoplasm);
    end elmt_function_153;

    function elmt_function_274
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * arg_nucleus * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_nucleus);
    end elmt_function_274;

    function elmt_function_84
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_nucleus * arg_ktr);
    end elmt_function_84;

    function elmt_function_85
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_dnabound * arg_ktr);
    end elmt_function_85;

    function elmt_function_82
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_cytoplasm * arg_ktr);
    end elmt_function_82;

    function elmt_function_83
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_nucleus * arg_ktr);
    end elmt_function_83;

    function elmt_function_88
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_nucleus * arg_ktr);
    end elmt_function_88;

    function elmt_function_89
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_dnabound * arg_ktr);
    end elmt_function_89;

    function elmt_function_86
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_cytoplasm * arg_ktr);
    end elmt_function_86;

    function elmt_function_87
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_nucleus * arg_ktr);
    end elmt_function_87;

    function elmt_function_161
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_dnabound * arg_SGK * arg_cytoplasm * arg_kkin) / arg_dnabound);
    end elmt_function_161;

    function elmt_function_282
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * arg_cytoplasm * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_cytoplasm);
    end elmt_function_282;

    function elmt_function_162
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_cytoplasm * arg_SGK * arg_cytoplasm * arg_kkin) / arg_cytoplasm);
    end elmt_function_162;

    function elmt_function_283
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * arg_nucleus * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_nucleus);
    end elmt_function_283;

    function elmt_function_280
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_280;

    function elmt_function_160
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_nucleus * arg_SGK * arg_cytoplasm * arg_kkin) / arg_nucleus);
    end elmt_function_160;

    function elmt_function_281
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_281;

    function elmt_function_169
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_nucleus * arg_SGK * arg_cytoplasm * arg_kkin) / arg_nucleus);
    end elmt_function_169;

    function elmt_function_167
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_dnabound * arg_SGK * arg_cytoplasm * arg_kkin) / arg_dnabound);
    end elmt_function_167;

    function elmt_function_288
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_288;

    function elmt_function_168
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_cytoplasm * arg_SGK * arg_cytoplasm * arg_kkin) / arg_cytoplasm);
    end elmt_function_168;

    function elmt_function_289
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_289;

    function elmt_function_80
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_nucleus * arg_ktr);
    end elmt_function_80;

    function elmt_function_165
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_cytoplasm * arg_SGK * arg_cytoplasm * arg_kkin) / arg_cytoplasm);
    end elmt_function_165;

    function elmt_function_286
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * arg_nucleus * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_nucleus);
    end elmt_function_286;

    function elmt_function_81
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_dnabound * arg_ktr);
    end elmt_function_81;

    function elmt_function_166
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_nucleus * arg_SGK * arg_cytoplasm * arg_kkin) / arg_nucleus);
    end elmt_function_166;

    function elmt_function_287
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * arg_dnabound * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_dnabound);
    end elmt_function_287;

    function elmt_function_163
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_nucleus * arg_SGK * arg_cytoplasm * arg_kkin) / arg_nucleus);
    end elmt_function_163;

    function elmt_function_284
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * arg_dnabound * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_dnabound);
    end elmt_function_284;

    function elmt_function_164
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_dnabound * arg_SGK * arg_cytoplasm * arg_kkin) / arg_dnabound);
    end elmt_function_164;

    function elmt_function_285
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * arg_cytoplasm * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_cytoplasm);
    end elmt_function_285;

    function elmt_function_95
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * arg_nucleus * arg_ktr);
    end elmt_function_95;

    function elmt_function_96
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * arg_nucleus * arg_ktr);
    end elmt_function_96;

    function elmt_function_93
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_dnabound * arg_ktr);
    end elmt_function_93;

    function elmt_function_94
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * arg_cytoplasm * arg_ktr);
    end elmt_function_94;

    function elmt_function_99
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * arg_nucleus * arg_ktr);
    end elmt_function_99;

    function elmt_function_97
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * arg_dnabound * arg_ktr);
    end elmt_function_97;

    function elmt_function_98
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * arg_cytoplasm * arg_ktr);
    end elmt_function_98;

    function elmt_function_172
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_nucleus * arg_SGK * arg_cytoplasm * arg_kkin) / arg_nucleus);
    end elmt_function_172;

    function elmt_function_293
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_293;

    function elmt_function_173
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_dnabound * arg_SGK * arg_cytoplasm * arg_kkin) / arg_dnabound);
    end elmt_function_173;

    function elmt_function_294
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0;
        input Real arg_kub;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_cytoplasm * arg_SCF * arg_cytoplasm * arg_kub) / arg_cytoplasm);
    end elmt_function_294;

    function elmt_function_170
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_dnabound * arg_SGK * arg_cytoplasm * arg_kkin) / arg_dnabound);
    end elmt_function_170;

    function elmt_function_291
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_291;

    function elmt_function_171
        input Real arg_SGK;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_cytoplasm * arg_SGK * arg_cytoplasm * arg_kkin) / arg_cytoplasm);
    end elmt_function_171;

    function elmt_function_292
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_292;

    function elmt_function_290
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_290;

    function elmt_function_178
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_178;

    function elmt_function_299
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0;
        input Real arg_kub;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_dnabound * arg_SCF * arg_cytoplasm * arg_kub) / arg_dnabound);
    end elmt_function_299;

    function elmt_function_179
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_179;

    function elmt_function_91
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_nucleus * arg_ktr);
    end elmt_function_91;

    function elmt_function_176
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_176;

    function elmt_function_297
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0;
        input Real arg_kub;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_cytoplasm * arg_SCF * arg_cytoplasm * arg_kub) / arg_cytoplasm);
    end elmt_function_297;

    function elmt_function_92
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_nucleus * arg_ktr);
    end elmt_function_92;

    function elmt_function_177
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_177;

    function elmt_function_298
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_kub;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_nucleus * arg_SCF * arg_cytoplasm * arg_kub) / arg_nucleus);
    end elmt_function_298;

    function elmt_function_174
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_174;

    function elmt_function_295
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_kub;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_nucleus * arg_SCF * arg_cytoplasm * arg_kub) / arg_nucleus);
    end elmt_function_295;

    function elmt_function_90
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_cytoplasm * arg_ktr);
    end elmt_function_90;

    function elmt_function_175
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_175;

    function elmt_function_296
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0;
        input Real arg_kub;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_dnabound * arg_SCF * arg_cytoplasm * arg_kub) / arg_dnabound);
    end elmt_function_296;

    function elmt_function_62
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_cytoplasm * arg_ktr);
    end elmt_function_62;

    function elmt_function_63
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_nucleus * arg_ktr);
    end elmt_function_63;

    function elmt_function_60
        input Real arg_DUSP_ox;
        input Real arg_GSH;
        input Real arg_cytoplasm;
        input Real arg_k32r;

        output Real result;
        algorithm
            result := ((arg_k32r * arg_DUSP_ox * arg_cytoplasm * arg_GSH * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_60;

    function elmt_function_219
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_219;

    function elmt_function_61
        input Real arg_E2F1;
        input Real arg_cytoplasm;
        input Real arg_ksynth;

        output Real result;
        algorithm
            result := ((arg_E2F1 * arg_cytoplasm * arg_ksynth) / arg_cytoplasm);
    end elmt_function_61;

    function elmt_function_66
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_cytoplasm * arg_ktr);
    end elmt_function_66;

    function elmt_function_217
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_217;

    function elmt_function_338
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_dnabound * arg_ktranscr);
    end elmt_function_338;

    function elmt_function_67
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_nucleus * arg_ktr);
    end elmt_function_67;

    function elmt_function_218
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_218;

    function elmt_function_339
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_dnabound * arg_ktranscr);
    end elmt_function_339;

    function elmt_function_64
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_nucleus * arg_ktr);
    end elmt_function_64;

    function elmt_function_215
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_215;

    function elmt_function_336
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_dnabound * arg_ktranscr);
    end elmt_function_336;

    function elmt_function_65
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_dnabound * arg_ktr);
    end elmt_function_65;

    function elmt_function_216
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_216;

    function elmt_function_337
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_dnabound * arg_ktranscr);
    end elmt_function_337;

    function elmt_function_68
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_nucleus * arg_ktr);
    end elmt_function_68;

    function elmt_function_69
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_dnabound * arg_ktr);
    end elmt_function_69;

    function elmt_function_103
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * arg_nucleus * arg_ktr);
    end elmt_function_103;

    function elmt_function_224
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * arg_dnabound * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_dnabound);
    end elmt_function_224;

    function elmt_function_345
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * arg_dnabound * arg_ktranscr);
    end elmt_function_345;

    function elmt_function_104
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * arg_nucleus * arg_ktr);
    end elmt_function_104;

    function elmt_function_225
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * arg_cytoplasm * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_cytoplasm);
    end elmt_function_225;

    function elmt_function_346
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * arg_dnabound * arg_ktranscr);
    end elmt_function_346;

    function elmt_function_101
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * arg_dnabound * arg_ktr);
    end elmt_function_101;

    function elmt_function_222
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * arg_cytoplasm * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_cytoplasm);
    end elmt_function_222;

    function elmt_function_343
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * arg_dnabound * arg_ktranscr);
    end elmt_function_343;

    function elmt_function_102
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * arg_cytoplasm * arg_ktr);
    end elmt_function_102;

    function elmt_function_223
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * arg_nucleus * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_nucleus);
    end elmt_function_223;

    function elmt_function_344
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * arg_dnabound * arg_ktranscr);
    end elmt_function_344;

    function elmt_function_220
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_220;

    function elmt_function_341
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_dnabound * arg_ktranscr);
    end elmt_function_341;

    function elmt_function_100
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * arg_nucleus * arg_ktr);
    end elmt_function_100;

    function elmt_function_221
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_221;

    function elmt_function_342
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * arg_dnabound * arg_ktranscr);
    end elmt_function_342;

    function elmt_function_340
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_dnabound * arg_ktranscr);
    end elmt_function_340;

    function elmt_function_73
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_dnabound * arg_ktr);
    end elmt_function_73;

    function elmt_function_74
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_cytoplasm * arg_ktr);
    end elmt_function_74;

    function elmt_function_71
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_nucleus * arg_ktr);
    end elmt_function_71;

    function elmt_function_109
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * arg_dnabound * arg_ktr);
    end elmt_function_109;

    function elmt_function_72
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_nucleus * arg_ktr);
    end elmt_function_72;

    function elmt_function_77
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_dnabound * arg_ktr);
    end elmt_function_77;

    function elmt_function_107
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * arg_nucleus * arg_ktr);
    end elmt_function_107;

    function elmt_function_228
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * arg_cytoplasm * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_cytoplasm);
    end elmt_function_228;

    function elmt_function_349
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * arg_dnabound * arg_ktranscr);
    end elmt_function_349;

    function elmt_function_78
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_cytoplasm * arg_ktr);
    end elmt_function_78;

    function elmt_function_108
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * arg_nucleus * arg_ktr);
    end elmt_function_108;

    function elmt_function_229
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * arg_nucleus * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_nucleus);
    end elmt_function_229;

    function elmt_function_75
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_nucleus * arg_ktr);
    end elmt_function_75;

    function elmt_function_105
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * arg_dnabound * arg_ktr);
    end elmt_function_105;

    function elmt_function_226
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * arg_nucleus * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_nucleus);
    end elmt_function_226;

    function elmt_function_347
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * arg_dnabound * arg_ktranscr);
    end elmt_function_347;

    function elmt_function_76
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_nucleus * arg_ktr);
    end elmt_function_76;

    function elmt_function_106
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * arg_cytoplasm * arg_ktr);
    end elmt_function_106;

    function elmt_function_227
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * arg_dnabound * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_dnabound);
    end elmt_function_227;

    function elmt_function_348
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * arg_dnabound * arg_ktranscr);
    end elmt_function_348;

    function elmt_function_79
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_nucleus * arg_ktr);
    end elmt_function_79;

    function elmt_function_114
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * arg_cytoplasm * arg_ktr);
    end elmt_function_114;

    function elmt_function_235
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_235;

    function elmt_function_356
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * arg_dnabound * arg_ktranscr);
    end elmt_function_356;

    function elmt_function_115
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * arg_nucleus * arg_ktr);
    end elmt_function_115;

    function elmt_function_236
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_236;

    function elmt_function_357
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * arg_dnabound * arg_ktranscr);
    end elmt_function_357;

    function elmt_function_112
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * arg_nucleus * arg_ktr);
    end elmt_function_112;

    function elmt_function_233
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * arg_dnabound * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_dnabound);
    end elmt_function_233;

    function elmt_function_354
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * arg_dnabound * arg_ktranscr);
    end elmt_function_354;

    function elmt_function_113
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * arg_dnabound * arg_ktr);
    end elmt_function_113;

    function elmt_function_234
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_234;

    function elmt_function_355
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * arg_dnabound * arg_ktranscr);
    end elmt_function_355;

    function elmt_function_110
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * arg_cytoplasm * arg_ktr);
    end elmt_function_110;

    function elmt_function_231
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * arg_cytoplasm * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_cytoplasm);
    end elmt_function_231;

    function elmt_function_352
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * arg_dnabound * arg_ktranscr);
    end elmt_function_352;

    function elmt_function_70
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_cytoplasm * arg_ktr);
    end elmt_function_70;

    function elmt_function_111
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * arg_nucleus * arg_ktr);
    end elmt_function_111;

    function elmt_function_232
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * arg_nucleus * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_nucleus);
    end elmt_function_232;

    function elmt_function_353
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * arg_dnabound * arg_ktranscr);
    end elmt_function_353;

    function elmt_function_350
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * arg_dnabound * arg_ktranscr);
    end elmt_function_350;

    function elmt_function_230
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * arg_dnabound * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_dnabound);
    end elmt_function_230;

    function elmt_function_351
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * arg_dnabound * arg_ktranscr);
    end elmt_function_351;

    function elmt_function_40
        input Real arg_IRS1;
        input Real arg_IRp;
        input Real arg_Ins_2_InR_P;
        input Real arg_Ins_InR_P;
        input Real arg_cellsurface;
        input Real arg_cyto_vol;
        input Real arg_cytoplasm;
        input Real arg_k7;

        output Real result;
        algorithm
            result := ((arg_cyto_vol * ((arg_k7 * arg_IRS1 * arg_cytoplasm * ((arg_Ins_2_InR_P * arg_cellsurface) + (arg_Ins_InR_P * arg_cellsurface))) / arg_IRp)) / arg_cytoplasm);
    end elmt_function_40;

    function elmt_function_41
        input Real arg_IRS1_TyrP;
        input Real arg_PTP1B;
        input Real arg_cyto_vol;
        input Real arg_cytoplasm;
        input Real arg_kminus7a;

        output Real result;
        algorithm
            result := ((arg_cyto_vol * arg_kminus7a * arg_PTP1B * arg_cytoplasm * arg_IRS1_TyrP * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_41;

    function elmt_function_44
        input Real arg_IRS1_TyrP;
        input Real arg_PKC_P;
        input Real arg_cyto_vol;
        input Real arg_cytoplasm;
        input Real arg_k2psp;

        output Real result;
        algorithm
            result := ((arg_cyto_vol * arg_k2psp * arg_IRS1_TyrP * arg_cytoplasm * arg_PKC_P * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_44;

    function elmt_function_118
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * arg_cytoplasm * arg_ktr);
    end elmt_function_118;

    function elmt_function_239
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_239;

    function elmt_function_45
        input Real arg_IRS1_TyrP_PolySerP;
        input Real arg_PP2A;
        input Real arg_cyto_vol;
        input Real arg_cytoplasm;
        input Real arg_kminus7b;

        output Real result;
        algorithm
            result := ((arg_cyto_vol * arg_kminus7b * arg_PP2A * arg_cytoplasm * arg_IRS1_TyrP_PolySerP * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_45;

    function elmt_function_119
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * arg_nucleus * arg_ktr);
    end elmt_function_119;

    function elmt_function_358
        input Real arg_v;

        output Real result;
        algorithm
            result := arg_v;
    end elmt_function_358;

    function elmt_function_42
        input Real arg_IRS1;
        input Real arg_PKC_P;
        input Real arg_cyto_vol;
        input Real arg_cytoplasm;
        input Real arg_k2psp;

        output Real result;
        algorithm
            result := ((arg_cyto_vol * arg_k2psp * arg_IRS1 * arg_cytoplasm * arg_PKC_P * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_42;

    function elmt_function_116
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * arg_nucleus * arg_ktr);
    end elmt_function_116;

    function elmt_function_237
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_237;

    function elmt_function_359
        input Real arg_kexp;
        input Real arg_nucleus;
        input Real arg_nucleus_RNA_InR;

        output Real result;
        algorithm
            result := (arg_nucleus_RNA_InR * arg_nucleus * arg_kexp);
    end elmt_function_359;

    function elmt_function_43
        input Real arg_IRS1_PolySerP;
        input Real arg_PP2A;
        input Real arg_cyto_vol;
        input Real arg_cytoplasm;
        input Real arg_kminus7b;

        output Real result;
        algorithm
            result := ((arg_cyto_vol * arg_kminus7b * arg_PP2A * arg_cytoplasm * arg_IRS1_PolySerP * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_43;

    function elmt_function_117
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * arg_dnabound * arg_ktr);
    end elmt_function_117;

    function elmt_function_238
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_238;

    function elmt_function_48
        input Real arg_cytoplasm;
        input Real arg_k_irs1_basal_syn;

        output Real result;
        algorithm
            result := (arg_k_irs1_basal_syn / arg_cytoplasm);
    end elmt_function_48;

    function elmt_function_49
        input Real arg_IRS1;
        input Real arg_cytoplasm;
        input Real arg_k_irs1_basal_degr;

        output Real result;
        algorithm
            result := ((arg_IRS1 * arg_cytoplasm * arg_k_irs1_basal_degr) / arg_cytoplasm);
    end elmt_function_49;

    function elmt_function_46
        input Real arg_IRS1_TyrP;
        input Real arg_PI3K;
        input Real arg_cyto_vol;
        input Real arg_cytoplasm;
        input Real arg_k8;

        output Real result;
        algorithm
            result := ((arg_cyto_vol * arg_k8 * arg_IRS1_TyrP * arg_cytoplasm * arg_PI3K * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_46;

    function elmt_function_47
        input Real arg_IRS1_TyrP_PI3K;
        input Real arg_cyto_vol;
        input Real arg_cytoplasm;
        input Real arg_kminus8;

        output Real result;
        algorithm
            result := ((arg_cyto_vol * arg_kminus8 * arg_IRS1_TyrP_PI3K * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_47;

    function elmt_function_360
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_RNA_InR;
        input Real arg_kmdeg;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_RNA_InR * arg_cytoplasm * arg_kmdeg) / arg_cytoplasm);
    end elmt_function_360;

    function elmt_function_125
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * arg_dnabound * arg_ktr);
    end elmt_function_125;

    function elmt_function_246
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_cytoplasm * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_cytoplasm);
    end elmt_function_246;

    function elmt_function_126
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_cytoplasm * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_cytoplasm);
    end elmt_function_126;

    function elmt_function_247
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_nucleus * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_nucleus);
    end elmt_function_247;

    function elmt_function_365
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_RNA_SOD2;
        input Real arg_ktransl;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_RNA_SOD2 * arg_cytoplasm * arg_ktransl) / arg_cytoplasm);
    end elmt_function_365;

    function elmt_function_123
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * arg_nucleus * arg_ktr);
    end elmt_function_123;

    function elmt_function_244
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_244;

    function elmt_function_366
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_SOD2;
        input Real arg_kpdeg;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_SOD2 * arg_cytoplasm * arg_kpdeg) / arg_cytoplasm);
    end elmt_function_366;

    function elmt_function_124
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * arg_nucleus * arg_ktr);
    end elmt_function_124;

    function elmt_function_245
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_245;

    function elmt_function_363
        input Real arg_kexp;
        input Real arg_nucleus;
        input Real arg_nucleus_RNA_SOD2;

        output Real result;
        algorithm
            result := (arg_nucleus_RNA_SOD2 * arg_nucleus * arg_kexp);
    end elmt_function_363;

    function elmt_function_121
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * arg_dnabound * arg_ktr);
    end elmt_function_121;

    function elmt_function_242
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_242;

    function elmt_function_364
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_RNA_SOD2;
        input Real arg_kmdeg;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_RNA_SOD2 * arg_cytoplasm * arg_kmdeg) / arg_cytoplasm);
    end elmt_function_364;

    function elmt_function_122
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1;
        input Real arg_ktr;

        output Real result;
        algorithm
            result := (arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * arg_cytoplasm * arg_ktr);
    end elmt_function_122;

    function elmt_function_243
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_243;

    function elmt_function_361
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_RNA_InR;
        input Real arg_ktransl;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_RNA_InR * arg_cytoplasm * arg_ktransl) / arg_cytoplasm);
    end elmt_function_361;

    function elmt_function_240
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_240;

    function elmt_function_362
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_InR;
        input Real arg_kpdeg;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_InR * arg_cytoplasm * arg_kpdeg) / arg_cytoplasm);
    end elmt_function_362;

    function elmt_function_120
        input Real arg_ktr;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0;

        output Real result;
        algorithm
            result := (arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * arg_nucleus * arg_ktr);
    end elmt_function_120;

    function elmt_function_241
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_241;

    function elmt_function_51
        input Real arg_IRS1_PolySerP;
        input Real arg_cytoplasm;
        input Real arg_k_irs1_polyserp_degr;

        output Real result;
        algorithm
            result := ((arg_IRS1_PolySerP * arg_cytoplasm * arg_k_irs1_polyserp_degr) / arg_cytoplasm);
    end elmt_function_51;

    function elmt_function_52
        input Real arg_IRS1_TyrP_PolySerP;
        input Real arg_cytoplasm;
        input Real arg_k_irs1_polyserp_degr;

        output Real result;
        algorithm
            result := ((arg_IRS1_TyrP_PolySerP * arg_cytoplasm * arg_k_irs1_polyserp_degr) / arg_cytoplasm);
    end elmt_function_52;

    function elmt_function_50
        input Real arg_IRS1_TyrP;
        input Real arg_cytoplasm;
        input Real arg_k_irs1_basal_degr;

        output Real result;
        algorithm
            result := ((arg_IRS1_TyrP * arg_cytoplasm * arg_k_irs1_basal_degr) / arg_cytoplasm);
    end elmt_function_50;

    function elmt_function_55
        input Real arg_JNK;
        input Real arg_ROS;
        input Real arg_alpha_ox;
        input Real arg_cytoplasm;
        input Real arg_k42f;

        output Real result;
        algorithm
            result := ((arg_k42f * arg_alpha_ox * arg_JNK * arg_cytoplasm * arg_ROS * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_55;

    function elmt_function_129
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_cytoplasm * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_cytoplasm);
    end elmt_function_129;

    function elmt_function_56
        input Real arg_DUSP;
        input Real arg_JNK_P;
        input Real arg_cytoplasm;
        input Real arg_k42r;

        output Real result;
        algorithm
            result := ((arg_k42r * arg_JNK_P * arg_cytoplasm * arg_DUSP * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_56;

    function elmt_function_53
        input Real arg_IKK_P;
        input Real arg_IRS1;
        input Real arg_Km51;
        input Real arg_cytoplasm;
        input Real arg_kcat51;

        output Real result;
        algorithm
            result := (((arg_kcat51 * arg_IRS1 * arg_cytoplasm * arg_IKK_P * arg_cytoplasm) / (arg_Km51 + (arg_IRS1 * arg_cytoplasm))) / arg_cytoplasm);
    end elmt_function_53;

    function elmt_function_127
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_nucleus * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_nucleus);
    end elmt_function_127;

    function elmt_function_248
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_dnabound * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_dnabound);
    end elmt_function_248;

    function elmt_function_54
        input Real arg_IRS1;
        input Real arg_JNK_P;
        input Real arg_Km52;
        input Real arg_cytoplasm;
        input Real arg_kcat52;

        output Real result;
        algorithm
            result := (((arg_kcat52 * arg_IRS1 * arg_cytoplasm * arg_JNK_P * arg_cytoplasm) / (arg_Km52 + (arg_IRS1 * arg_cytoplasm))) / arg_cytoplasm);
    end elmt_function_54;

    function elmt_function_128
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_dnabound * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_dnabound);
    end elmt_function_128;

    function elmt_function_249
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_cytoplasm * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_cytoplasm);
    end elmt_function_249;

    function elmt_function_59
        input Real arg_DUSP;
        input Real arg_ROS;
        input Real arg_cytoplasm;
        input Real arg_k32f;

        output Real result;
        algorithm
            result := ((arg_k32f * arg_DUSP * arg_cytoplasm * arg_ROS * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_59;

    function elmt_function_57
        input Real arg_IKK;
        input Real arg_ROS;
        input Real arg_cytoplasm;
        input Real arg_k43f;

        output Real result;
        algorithm
            result := ((arg_k43f * arg_IKK * arg_cytoplasm * arg_ROS * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_57;

    function elmt_function_58
        input Real arg_DUSP;
        input Real arg_IKK_P;
        input Real arg_cytoplasm;
        input Real arg_k43r;

        output Real result;
        algorithm
            result := ((arg_k43r * arg_IKK_P * arg_cytoplasm * arg_DUSP * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_58;

    function elmt_function_250
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_nucleus * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_nucleus);
    end elmt_function_250;

    function elmt_function_136
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_nucleus * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_nucleus);
    end elmt_function_136;

    function elmt_function_257
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_257;

    function elmt_function_137
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_dnabound * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_dnabound);
    end elmt_function_137;

    function elmt_function_258
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_cytoplasm * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_cytoplasm);
    end elmt_function_258;

    function elmt_function_134
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_dnabound * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_dnabound);
    end elmt_function_134;

    function elmt_function_255
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_255;

    function elmt_function_135
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_cytoplasm * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_cytoplasm);
    end elmt_function_135;

    function elmt_function_256
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_256;

    function elmt_function_132
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_cytoplasm * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_cytoplasm);
    end elmt_function_132;

    function elmt_function_253
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_253;

    function elmt_function_133
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_nucleus * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_nucleus);
    end elmt_function_133;

    function elmt_function_254
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_254;

    function elmt_function_130
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_nucleus * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_nucleus);
    end elmt_function_130;

    function elmt_function_251
        input Real arg_JNK_P;
        input Real arg_by_jnk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_dnabound * arg_JNK_P * arg_cytoplasm * arg_by_jnk_phos_factor * arg_kkin) / arg_dnabound);
    end elmt_function_251;

    function elmt_function_131
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_dnabound * arg_Akt_P2 * arg_cytoplasm * arg_kkin) / arg_dnabound);
    end elmt_function_131;

    function elmt_function_252
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_252;

    function elmt_function_22
        input Real arg_PKC_P;
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kminus12;

        output Real result;
        algorithm
            result := ((arg_kminus12 * arg_PP2A * arg_cytoplasm * arg_PKC_P * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_22;

    function elmt_function_23
        input Real arg_AS160_P;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_GLUT4;
        input Real arg_k13;
        input Real arg_k13_basal;

        output Real result;
        algorithm
            result := ((arg_k13_basal + (arg_k13 * arg_AS160_P * arg_cytoplasm)) * arg_cytoplasm_GLUT4 * arg_cytoplasm);
    end elmt_function_23;

    function elmt_function_20
        input Real arg_AS160_P;
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kminusr16a;

        output Real result;
        algorithm
            result := ((arg_kminusr16a * arg_PP2A * arg_cytoplasm * arg_AS160_P * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_20;

    function elmt_function_21
        input Real arg_PI345P3;
        input Real arg_PKC;
        input Real arg_cytoplasm;
        input Real arg_k12;
        input Real arg_pip3_basal;

        output Real result;
        algorithm
            result := ((arg_k12 * arg_PKC * arg_cytoplasm * (if ((arg_PI345P3 * arg_cytoplasm) > arg_pip3_basal) then ((arg_PI345P3 * arg_cytoplasm) - arg_pip3_basal) else 0.0)) / arg_cytoplasm);
    end elmt_function_21;

    function elmt_function_26
        input Real arg_GSH;
        input Real arg_PTP1B_ox;
        input Real arg_cytoplasm;
        input Real arg_k30r;

        output Real result;
        algorithm
            result := ((arg_k30r * arg_PTP1B_ox * arg_cytoplasm * arg_GSH * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_26;

    function elmt_function_27
        input Real arg_PTEN;
        input Real arg_ROS;
        input Real arg_cytoplasm;
        input Real arg_k31f;

        output Real result;
        algorithm
            result := ((arg_k31f * arg_PTEN * arg_cytoplasm * arg_ROS * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_27;

    function elmt_function_24
        input Real arg_cellsurface;
        input Real arg_cellsurface_GLUT4;
        input Real arg_kminus13;

        output Real result;
        algorithm
            result := (arg_kminus13 * arg_cellsurface_GLUT4 * arg_cellsurface);
    end elmt_function_24;

    function elmt_function_25
        input Real arg_PTP1B;
        input Real arg_ROS;
        input Real arg_cytoplasm;
        input Real arg_k30f;

        output Real result;
        algorithm
            result := ((arg_k30f * arg_PTP1B * arg_cytoplasm * arg_ROS * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_25;

    function elmt_function_28
        input Real arg_GSH;
        input Real arg_PTEN_ox;
        input Real arg_cytoplasm;
        input Real arg_k31r;

        output Real result;
        algorithm
            result := ((arg_k31r * arg_PTEN_ox * arg_cytoplasm * arg_GSH * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_28;

    function elmt_function_29
        input Real arg_Ins;
        input Real arg_NOX_inact;
        input Real arg_cytoplasm;
        input Real arg_extracellular;
        input Real arg_k34f;

        output Real result;
        algorithm
            result := (arg_k34f * arg_NOX_inact * arg_cytoplasm * arg_Ins * arg_extracellular);
    end elmt_function_29;

    function elmt_function_301
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_kub;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_nucleus * arg_SCF * arg_cytoplasm * arg_kub) / arg_nucleus);
    end elmt_function_301;

    function elmt_function_302
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0;
        input Real arg_kub;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_dnabound * arg_SCF * arg_cytoplasm * arg_kub) / arg_dnabound);
    end elmt_function_302;

    function elmt_function_300
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0;
        input Real arg_kub;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_cytoplasm * arg_SCF * arg_cytoplasm * arg_kub) / arg_cytoplasm);
    end elmt_function_300;

    function elmt_function_309
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0;
        input Real arg_kub;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * arg_cytoplasm * arg_SCF * arg_cytoplasm * arg_kub) / arg_cytoplasm);
    end elmt_function_309;

    function elmt_function_30
        input Real arg_NOX;
        input Real arg_cytoplasm;
        input Real arg_k34r1;

        output Real result;
        algorithm
            result := ((arg_k34r1 * arg_NOX * arg_cytoplasm * arg_NOX * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_30;

    function elmt_function_307
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_kub;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * arg_nucleus * arg_SCF * arg_cytoplasm * arg_kub) / arg_nucleus);
    end elmt_function_307;

    function elmt_function_308
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0;
        input Real arg_kub;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * arg_dnabound * arg_SCF * arg_cytoplasm * arg_kub) / arg_dnabound);
    end elmt_function_308;

    function elmt_function_33
        input Real arg_NOX;
        input Real arg_cytoplasm;
        input Real arg_k35f;

        output Real result;
        algorithm
            result := ((arg_k35f * arg_NOX * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_33;

    function elmt_function_305
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0;
        input Real arg_kub;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_dnabound * arg_SCF * arg_cytoplasm * arg_kub) / arg_dnabound);
    end elmt_function_305;

    function elmt_function_34
        input Real arg_ROS;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_SOD2;
        input Real arg_k35r;

        output Real result;
        algorithm
            result := ((arg_k35r * arg_ROS * arg_cytoplasm * arg_cytoplasm_SOD2 * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_34;

    function elmt_function_306
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0;
        input Real arg_kub;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * arg_cytoplasm * arg_SCF * arg_cytoplasm * arg_kub) / arg_cytoplasm);
    end elmt_function_306;

    function elmt_function_31
        input Real arg_NOX;
        input Real arg_cytoplasm;
        input Real arg_k34r2;

        output Real result;
        algorithm
            result := ((arg_k34r2 * arg_NOX * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_31;

    function elmt_function_303
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0;
        input Real arg_kub;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_cytoplasm * arg_SCF * arg_cytoplasm * arg_kub) / arg_cytoplasm);
    end elmt_function_303;

    function elmt_function_32
        input Real arg_NOX_deact;
        input Real arg_cytoplasm;
        input Real arg_k34r3;

        output Real result;
        algorithm
            result := ((arg_k34r3 * arg_NOX_deact * arg_cytoplasm * arg_NOX_deact * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_32;

    function elmt_function_304
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_kub;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * arg_nucleus * arg_SCF * arg_cytoplasm * arg_kub) / arg_nucleus);
    end elmt_function_304;

    function elmt_function_37
        input Real arg_ROS;
        input Real arg_cytoplasm;
        input Real arg_extracellular;
        input Real arg_k_ros_perm;

        output Real result;
        algorithm
            result := (arg_k_ros_perm * (arg_extracellular / arg_cytoplasm) * arg_ROS * arg_cytoplasm);
    end elmt_function_37;

    function elmt_function_38
        input Real arg_GSH;
        input Real arg_ROS;
        input Real arg_cytoplasm;
        input Real arg_k38f;

        output Real result;
        algorithm
            result := ((arg_k38f * arg_GSH * arg_cytoplasm * arg_ROS * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_38;

    function elmt_function_35
        input Real arg_Mt;
        input Real arg_cytoplasm;
        input Real arg_k36f;

        output Real result;
        algorithm
            result := ((arg_k36f * arg_Mt * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_35;

    function elmt_function_36
        input Real arg_extracellular;
        input Real arg_extracellular_ROS;
        input Real arg_k_ros_perm;

        output Real result;
        algorithm
            result := (arg_k_ros_perm * arg_extracellular_ROS * arg_extracellular);
    end elmt_function_36;

    function elmt_function_39
        input Real arg_GSSG;
        input Real arg_cytoplasm;
        input Real arg_k38r;

        output Real result;
        algorithm
            result := ((arg_k38r * arg_GSSG * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_39;

    function elmt_function_312
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0;
        input Real arg_kub;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * arg_cytoplasm * arg_SCF * arg_cytoplasm * arg_kub) / arg_cytoplasm);
    end elmt_function_312;

    function elmt_function_313
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_kub;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * arg_nucleus * arg_SCF * arg_cytoplasm * arg_kub) / arg_nucleus);
    end elmt_function_313;

    function elmt_function_310
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_kub;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * arg_nucleus * arg_SCF * arg_cytoplasm * arg_kub) / arg_nucleus);
    end elmt_function_310;

    function elmt_function_311
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0;
        input Real arg_kub;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * arg_dnabound * arg_SCF * arg_cytoplasm * arg_kub) / arg_dnabound);
    end elmt_function_311;

    function elmt_function_318
        input Real arg_Proteasome;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1;
        input Real arg_kdeg;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_cytoplasm * arg_Proteasome * arg_cytoplasm * arg_kdeg) / arg_cytoplasm);
    end elmt_function_318;

    function elmt_function_319
        input Real arg_Proteasome;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1;
        input Real arg_kdeg;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_cytoplasm * arg_Proteasome * arg_cytoplasm * arg_kdeg) / arg_cytoplasm);
    end elmt_function_319;

    function elmt_function_316
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_kub;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * arg_nucleus * arg_SCF * arg_cytoplasm * arg_kub) / arg_nucleus);
    end elmt_function_316;

    function elmt_function_317
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0;
        input Real arg_kub;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * arg_dnabound * arg_SCF * arg_cytoplasm * arg_kub) / arg_dnabound);
    end elmt_function_317;

    function elmt_function_314
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0;
        input Real arg_kub;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * arg_dnabound * arg_SCF * arg_cytoplasm * arg_kub) / arg_dnabound);
    end elmt_function_314;

    function elmt_function_315
        input Real arg_SCF;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0;
        input Real arg_kub;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * arg_cytoplasm * arg_SCF * arg_cytoplasm * arg_kub) / arg_cytoplasm);
    end elmt_function_315;

    function elmt_function_1
        input Real arg_InR;
        input Real arg_Ins;
        input Real arg_cellsurface;
        input Real arg_extracellular;
        input Real arg_k1;

        output Real result;
        algorithm
            result := (arg_k1 * arg_Ins * arg_extracellular * arg_InR * arg_cellsurface);
    end elmt_function_1;

    function elmt_function_4
        input Real arg_Ins;
        input Real arg_Ins_InR_P;
        input Real arg_cellsurface;
        input Real arg_extracellular;
        input Real arg_k2;

        output Real result;
        algorithm
            result := (arg_k2 * arg_Ins * arg_extracellular * arg_Ins_InR_P * arg_cellsurface);
    end elmt_function_4;

    function elmt_function_5
        input Real arg_Ins_2_InR_P;
        input Real arg_cellsurface;
        input Real arg_kminus2;

        output Real result;
        algorithm
            result := (arg_kminus2 * arg_Ins_2_InR_P * arg_cellsurface);
    end elmt_function_5;

    function elmt_function_2
        input Real arg_Ins_InR;
        input Real arg_cellsurface;
        input Real arg_kminus1;

        output Real result;
        algorithm
            result := (arg_kminus1 * arg_Ins_InR * arg_cellsurface);
    end elmt_function_2;

    function elmt_function_3
        input Real arg_Ins_InR;
        input Real arg_cellsurface;
        input Real arg_k3;

        output Real result;
        algorithm
            result := ((arg_k3 * arg_Ins_InR * arg_cellsurface) / arg_cellsurface);
    end elmt_function_3;

    function elmt_function_202
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_nucleus * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_nucleus);
    end elmt_function_202;

    function elmt_function_323
        input Real arg_Proteasome;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1;
        input Real arg_kdeg;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * arg_cytoplasm * arg_Proteasome * arg_cytoplasm * arg_kdeg) / arg_cytoplasm);
    end elmt_function_323;

    function elmt_function_203
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_dnabound * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_dnabound);
    end elmt_function_203;

    function elmt_function_324
        input Real arg_Proteasome;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1;
        input Real arg_kdeg;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * arg_cytoplasm * arg_Proteasome * arg_cytoplasm * arg_kdeg) / arg_cytoplasm);
    end elmt_function_324;

    function elmt_function_200
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_dnabound * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_dnabound);
    end elmt_function_200;

    function elmt_function_321
        input Real arg_Proteasome;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1;
        input Real arg_kdeg;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * arg_cytoplasm * arg_Proteasome * arg_cytoplasm * arg_kdeg) / arg_cytoplasm);
    end elmt_function_321;

    function elmt_function_201
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_cytoplasm * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_cytoplasm);
    end elmt_function_201;

    function elmt_function_322
        input Real arg_Proteasome;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1;
        input Real arg_kdeg;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * arg_cytoplasm * arg_Proteasome * arg_cytoplasm * arg_kdeg) / arg_cytoplasm);
    end elmt_function_322;

    function elmt_function_320
        input Real arg_Proteasome;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1;
        input Real arg_kdeg;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_cytoplasm * arg_Proteasome * arg_cytoplasm * arg_kdeg) / arg_cytoplasm);
    end elmt_function_320;

    function elmt_function_208
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_nucleus * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_nucleus);
    end elmt_function_208;

    function elmt_function_329
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_dnabound * arg_ktranscr);
    end elmt_function_329;

    function elmt_function_209
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_dnabound * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_dnabound);
    end elmt_function_209;

    function elmt_function_206
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_dnabound * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_dnabound);
    end elmt_function_206;

    function elmt_function_327
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_dnabound * arg_ktranscr);
    end elmt_function_327;

    function elmt_function_11
        input Real arg_Ins_InR_P;
        input Real arg_cellsurface;
        input Real arg_k4prime;

        output Real result;
        algorithm
            result := (arg_k4prime * arg_Ins_InR_P * arg_cellsurface);
    end elmt_function_11;

    function elmt_function_207
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_cytoplasm * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_cytoplasm);
    end elmt_function_207;

    function elmt_function_328
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * arg_dnabound * arg_ktranscr);
    end elmt_function_328;

    function elmt_function_12
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Ins_InR_P;
        input Real arg_kminus4prime;

        output Real result;
        algorithm
            result := (arg_kminus4prime * arg_cytoplasm_Ins_InR_P * arg_cytoplasm);
    end elmt_function_12;

    function elmt_function_204
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_cytoplasm * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_cytoplasm);
    end elmt_function_204;

    function elmt_function_325
        input Real arg_Proteasome;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1;
        input Real arg_kdeg;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * arg_cytoplasm * arg_Proteasome * arg_cytoplasm * arg_kdeg) / arg_cytoplasm);
    end elmt_function_325;

    function elmt_function_205
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_nucleus * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_nucleus);
    end elmt_function_205;

    function elmt_function_326
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_dnabound * arg_ktranscr);
    end elmt_function_326;

    function elmt_function_10
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Ins_2_InR_P;
        input Real arg_kminus4prime;

        output Real result;
        algorithm
            result := (arg_kminus4prime * arg_cytoplasm_Ins_2_InR_P * arg_cytoplasm);
    end elmt_function_10;

    function elmt_function_8
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_InR;
        input Real arg_kminus4;

        output Real result;
        algorithm
            result := (arg_kminus4 * arg_cytoplasm_InR * arg_cytoplasm);
    end elmt_function_8;

    function elmt_function_15
        input Real arg_IRS1_TyrP_PI3K;
        input Real arg_PIP2;
        input Real arg_cytoplasm;
        input Real arg_k9;
        input Real arg_k9_basal;

        output Real result;
        algorithm
            result := (((arg_k9_basal + (arg_k9 * arg_IRS1_TyrP_PI3K * arg_cytoplasm)) * arg_PIP2 * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_15;

    function elmt_function_9
        input Real arg_Ins_2_InR_P;
        input Real arg_cellsurface;
        input Real arg_k4prime;

        output Real result;
        algorithm
            result := (arg_k4prime * arg_Ins_2_InR_P * arg_cellsurface);
    end elmt_function_9;

    function elmt_function_16
        input Real arg_PI345P3;
        input Real arg_PTEN;
        input Real arg_cytoplasm;
        input Real arg_kminus9;
        input Real arg_kminus9_basal;

        output Real result;
        algorithm
            result := (((arg_kminus9_basal + (arg_kminus9 * arg_PTEN * arg_cytoplasm)) * arg_PI345P3 * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_16;

    function elmt_function_6
        input Real arg_Ins_InR_P;
        input Real arg_PTP1B;
        input Real arg_cellsurface;
        input Real arg_cytoplasm;
        input Real arg_kminus3;

        output Real result;
        algorithm
            result := ((arg_kminus3 * arg_PTP1B * arg_cytoplasm * arg_Ins_InR_P * arg_cellsurface) / arg_cellsurface);
    end elmt_function_6;

    function elmt_function_13
        input Real arg_PTP1B;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Ins_2_InR_P;
        input Real arg_k6;

        output Real result;
        algorithm
            result := ((arg_k6 * arg_PTP1B * arg_cytoplasm * arg_cytoplasm_Ins_2_InR_P * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_13;

    function elmt_function_7
        input Real arg_InR;
        input Real arg_cellsurface;
        input Real arg_k4;

        output Real result;
        algorithm
            result := (arg_k4 * arg_InR * arg_cellsurface);
    end elmt_function_7;

    function elmt_function_14
        input Real arg_PTP1B;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Ins_InR_P;
        input Real arg_k6;

        output Real result;
        algorithm
            result := ((arg_k6 * arg_PTP1B * arg_cytoplasm * arg_cytoplasm_Ins_InR_P * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_14;

    function elmt_function_19
        input Real arg_AS160;
        input Real arg_Akt_P2;
        input Real arg_cytoplasm;
        input Real arg_kr16a;

        output Real result;
        algorithm
            result := ((arg_kr16a * arg_Akt_P2 * arg_cytoplasm * arg_AS160 * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_19;

    function elmt_function_17
        input Real arg_Akt;
        input Real arg_PI345P3;
        input Real arg_cytoplasm;
        input Real arg_k11;
        input Real arg_pip3_basal;

        output Real result;
        algorithm
            result := ((arg_k11 * arg_Akt * arg_cytoplasm * (if ((arg_PI345P3 * arg_cytoplasm) > arg_pip3_basal) then ((arg_PI345P3 * arg_cytoplasm) - arg_pip3_basal) else 0.0)) / arg_cytoplasm);
    end elmt_function_17;

    function elmt_function_18
        input Real arg_Akt_P2;
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kminus11;

        output Real result;
        algorithm
            result := ((arg_kminus11 * arg_PP2A * arg_cytoplasm * arg_Akt_P2 * arg_cytoplasm) / arg_cytoplasm);
    end elmt_function_18;

    function elmt_function_213
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_213;

    function elmt_function_334
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_dnabound * arg_ktranscr);
    end elmt_function_334;

    function elmt_function_214
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_214;

    function elmt_function_335
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_dnabound * arg_ktranscr);
    end elmt_function_335;

    function elmt_function_211
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_211;

    function elmt_function_332
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_dnabound * arg_ktranscr);
    end elmt_function_332;

    function elmt_function_212
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_212;

    function elmt_function_333
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * arg_dnabound * arg_ktranscr);
    end elmt_function_333;

    function elmt_function_330
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_dnabound * arg_ktranscr);
    end elmt_function_330;

    function elmt_function_210
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_210;

    function elmt_function_331
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0;
        input Real arg_ktranscr;

        output Real result;
        algorithm
            result := (arg_dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * arg_dnabound * arg_ktranscr);
    end elmt_function_331;

    function elmt_function_183
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_183;

    function elmt_function_184
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_184;

    function elmt_function_181
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_181;

    function elmt_function_182
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_182;

    function elmt_function_180
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_180;

    function elmt_function_189
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_189;

    function elmt_function_187
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_187;

    function elmt_function_188
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_188;

    function elmt_function_185
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_185;

    function elmt_function_186
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_186;

    function elmt_function_194
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_194;

    function elmt_function_195
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_195;

    function elmt_function_192
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * arg_cytoplasm * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_cytoplasm);
    end elmt_function_192;

    function elmt_function_193
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_193;

    function elmt_function_190
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_190;

    function elmt_function_191
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_191;

    function elmt_function_198
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0;
        input Real arg_kkin;

        output Real result;
        algorithm
            result := ((arg_cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_cytoplasm * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_cytoplasm);
    end elmt_function_198;

    function elmt_function_199
        input Real arg_IKK_P;
        input Real arg_by_ikk_phos_factor;
        input Real arg_cytoplasm;
        input Real arg_kkin;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * arg_nucleus * arg_IKK_P * arg_cytoplasm * arg_by_ikk_phos_factor * arg_kkin) / arg_nucleus);
    end elmt_function_199;

    function elmt_function_196
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_kdephos;
        input Real arg_nucleus;
        input Real arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1;

        output Real result;
        algorithm
            result := ((arg_nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * arg_nucleus * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_nucleus);
    end elmt_function_196;

    function elmt_function_197
        input Real arg_PP2A;
        input Real arg_cytoplasm;
        input Real arg_dnabound;
        input Real arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1;
        input Real arg_kdephos;

        output Real result;
        algorithm
            result := ((arg_dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * arg_dnabound * arg_PP2A * arg_cytoplasm * arg_kdephos) / arg_dnabound);
    end elmt_function_197;


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
