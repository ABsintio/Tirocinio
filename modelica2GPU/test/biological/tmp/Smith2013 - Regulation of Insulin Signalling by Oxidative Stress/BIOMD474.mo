
model BIOMD474 "Smith2013 - Regulation of Insulin Signalling by Oxidative Stress"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;
    
    function piecewise
        input Real x;
        input Boolean condition;
        input Real y;
        output Real z;
        algorithm
            z := if condition then x else y;
    end piecewise;


    function function_358
        	input Real v;
        output Real y;
    algorithm
        y :=  v;
    end function_358;


    function function_359
        	input Real kexp;
	input Real nucleus;
	input Real nucleus_RNA_InR;
        output Real y;
    algorithm
        y :=  nucleus_RNA_InR * nucleus * kexp;
    end function_359;


    function function_360
        	input Real cytoplasm;
	input Real cytoplasm_RNA_InR;
	input Real kmdeg;
        output Real y;
    algorithm
        y :=  cytoplasm_RNA_InR * cytoplasm * kmdeg / cytoplasm;
    end function_360;


    function function_361
        	input Real cytoplasm;
	input Real cytoplasm_RNA_InR;
	input Real ktransl;
        output Real y;
    algorithm
        y :=  cytoplasm_RNA_InR * cytoplasm * ktransl / cytoplasm;
    end function_361;


    function function_362
        	input Real cytoplasm;
	input Real cytoplasm_InR;
	input Real kpdeg;
        output Real y;
    algorithm
        y :=  cytoplasm_InR * cytoplasm * kpdeg / cytoplasm;
    end function_362;


    function function_363
        	input Real kexp;
	input Real nucleus;
	input Real nucleus_RNA_SOD2;
        output Real y;
    algorithm
        y :=  nucleus_RNA_SOD2 * nucleus * kexp;
    end function_363;


    function function_364
        	input Real cytoplasm;
	input Real cytoplasm_RNA_SOD2;
	input Real kmdeg;
        output Real y;
    algorithm
        y :=  cytoplasm_RNA_SOD2 * cytoplasm * kmdeg / cytoplasm;
    end function_364;


    function function_365
        	input Real cytoplasm;
	input Real cytoplasm_RNA_SOD2;
	input Real ktransl;
        output Real y;
    algorithm
        y :=  cytoplasm_RNA_SOD2 * cytoplasm * ktransl / cytoplasm;
    end function_365;


    function function_366
        	input Real cytoplasm;
	input Real cytoplasm_SOD2;
	input Real kpdeg;
        output Real y;
    algorithm
        y :=  cytoplasm_SOD2 * cytoplasm * kpdeg / cytoplasm;
    end function_366;


    function function_22
        	input Real PKC_P;
	input Real PP2A;
	input Real cytoplasm;
	input Real kminus12;
        output Real y;
    algorithm
        y :=  kminus12 * PP2A * cytoplasm * PKC_P * cytoplasm / cytoplasm;
    end function_22;


    function function_23
        	input Real AS160_P;
	input Real cytoplasm;
	input Real cytoplasm_GLUT4;
	input Real k13;
	input Real k13_basal;
        output Real y;
    algorithm
        y :=  (k13_basal + k13 * AS160_P * cytoplasm) * cytoplasm_GLUT4 * cytoplasm;
    end function_23;


    function function_24
        	input Real cellsurface;
	input Real cellsurface_GLUT4;
	input Real kminus13;
        output Real y;
    algorithm
        y :=  kminus13 * cellsurface_GLUT4 * cellsurface;
    end function_24;


    function function_25
        	input Real PTP1B;
	input Real ROS;
	input Real cytoplasm;
	input Real k30f;
        output Real y;
    algorithm
        y :=  k30f * PTP1B * cytoplasm * ROS * cytoplasm / cytoplasm;
    end function_25;


    function function_26
        	input Real GSH;
	input Real PTP1B_ox;
	input Real cytoplasm;
	input Real k30r;
        output Real y;
    algorithm
        y :=  k30r * PTP1B_ox * cytoplasm * GSH * cytoplasm / cytoplasm;
    end function_26;


    function function_27
        	input Real PTEN;
	input Real ROS;
	input Real cytoplasm;
	input Real k31f;
        output Real y;
    algorithm
        y :=  k31f * PTEN * cytoplasm * ROS * cytoplasm / cytoplasm;
    end function_27;


    function function_28
        	input Real GSH;
	input Real PTEN_ox;
	input Real cytoplasm;
	input Real k31r;
        output Real y;
    algorithm
        y :=  k31r * PTEN_ox * cytoplasm * GSH * cytoplasm / cytoplasm;
    end function_28;


    function function_29
        	input Real Ins;
	input Real NOX_inact;
	input Real cytoplasm;
	input Real extracellular;
	input Real k34f;
        output Real y;
    algorithm
        y :=  k34f * NOX_inact * cytoplasm * Ins * extracellular;
    end function_29;


    function function_30
        	input Real NOX;
	input Real cytoplasm;
	input Real k34r1;
        output Real y;
    algorithm
        y :=  k34r1 * NOX * cytoplasm * NOX * cytoplasm / cytoplasm;
    end function_30;


    function function_31
        	input Real NOX;
	input Real cytoplasm;
	input Real k34r2;
        output Real y;
    algorithm
        y :=  k34r2 * NOX * cytoplasm / cytoplasm;
    end function_31;


    function function_32
        	input Real NOX_deact;
	input Real cytoplasm;
	input Real k34r3;
        output Real y;
    algorithm
        y :=  k34r3 * NOX_deact * cytoplasm * NOX_deact * cytoplasm / cytoplasm;
    end function_32;


    function function_33
        	input Real NOX;
	input Real cytoplasm;
	input Real k35f;
        output Real y;
    algorithm
        y :=  k35f * NOX * cytoplasm / cytoplasm;
    end function_33;


    function function_34
        	input Real ROS;
	input Real cytoplasm;
	input Real cytoplasm_SOD2;
	input Real k35r;
        output Real y;
    algorithm
        y :=  k35r * ROS * cytoplasm * cytoplasm_SOD2 * cytoplasm / cytoplasm;
    end function_34;


    function function_35
        	input Real Mt;
	input Real cytoplasm;
	input Real k36f;
        output Real y;
    algorithm
        y :=  k36f * Mt * cytoplasm / cytoplasm;
    end function_35;


    function function_36
        	input Real extracellular;
	input Real extracellular_ROS;
	input Real k_ros_perm;
        output Real y;
    algorithm
        y :=  k_ros_perm * extracellular_ROS * extracellular;
    end function_36;


    function function_37
        	input Real ROS;
	input Real cytoplasm;
	input Real extracellular;
	input Real k_ros_perm;
        output Real y;
    algorithm
        y :=  k_ros_perm * (extracellular / cytoplasm) * ROS * cytoplasm;
    end function_37;


    function function_38
        	input Real GSH;
	input Real ROS;
	input Real cytoplasm;
	input Real k38f;
        output Real y;
    algorithm
        y :=  k38f * GSH * cytoplasm * ROS * cytoplasm / cytoplasm;
    end function_38;


    function function_39
        	input Real GSSG;
	input Real cytoplasm;
	input Real k38r;
        output Real y;
    algorithm
        y :=  k38r * GSSG * cytoplasm / cytoplasm;
    end function_39;


    function function_40
        	input Real IRS1;
	input Real IRp;
	input Real Ins_2_InR_P;
	input Real Ins_InR_P;
	input Real cellsurface;
	input Real cyto_vol;
	input Real cytoplasm;
	input Real k7;
        output Real y;
    algorithm
        y :=  cyto_vol * (k7 * IRS1 * cytoplasm * (Ins_2_InR_P * cellsurface + Ins_InR_P * cellsurface) / IRp) / cytoplasm;
    end function_40;


    function function_41
        	input Real IRS1_TyrP;
	input Real PTP1B;
	input Real cyto_vol;
	input Real cytoplasm;
	input Real kminus7a;
        output Real y;
    algorithm
        y :=  cyto_vol * kminus7a * PTP1B * cytoplasm * IRS1_TyrP * cytoplasm / cytoplasm;
    end function_41;


    function function_42
        	input Real IRS1;
	input Real PKC_P;
	input Real cyto_vol;
	input Real cytoplasm;
	input Real k2psp;
        output Real y;
    algorithm
        y :=  cyto_vol * k2psp * IRS1 * cytoplasm * PKC_P * cytoplasm / cytoplasm;
    end function_42;


    function function_43
        	input Real IRS1_PolySerP;
	input Real PP2A;
	input Real cyto_vol;
	input Real cytoplasm;
	input Real kminus7b;
        output Real y;
    algorithm
        y :=  cyto_vol * kminus7b * PP2A * cytoplasm * IRS1_PolySerP * cytoplasm / cytoplasm;
    end function_43;


    function function_44
        	input Real IRS1_TyrP;
	input Real PKC_P;
	input Real cyto_vol;
	input Real cytoplasm;
	input Real k2psp;
        output Real y;
    algorithm
        y :=  cyto_vol * k2psp * IRS1_TyrP * cytoplasm * PKC_P * cytoplasm / cytoplasm;
    end function_44;


    function function_45
        	input Real IRS1_TyrP_PolySerP;
	input Real PP2A;
	input Real cyto_vol;
	input Real cytoplasm;
	input Real kminus7b;
        output Real y;
    algorithm
        y :=  cyto_vol * kminus7b * PP2A * cytoplasm * IRS1_TyrP_PolySerP * cytoplasm / cytoplasm;
    end function_45;


    function function_46
        	input Real IRS1_TyrP;
	input Real PI3K;
	input Real cyto_vol;
	input Real cytoplasm;
	input Real k8;
        output Real y;
    algorithm
        y :=  cyto_vol * k8 * IRS1_TyrP * cytoplasm * PI3K * cytoplasm / cytoplasm;
    end function_46;


    function function_47
        	input Real IRS1_TyrP_PI3K;
	input Real cyto_vol;
	input Real cytoplasm;
	input Real kminus8;
        output Real y;
    algorithm
        y :=  cyto_vol * kminus8 * IRS1_TyrP_PI3K * cytoplasm / cytoplasm;
    end function_47;


    function function_48
        	input Real cytoplasm;
	input Real k_irs1_basal_syn;
        output Real y;
    algorithm
        y :=  k_irs1_basal_syn / cytoplasm;
    end function_48;


    function function_49
        	input Real IRS1;
	input Real cytoplasm;
	input Real k_irs1_basal_degr;
        output Real y;
    algorithm
        y :=  IRS1 * cytoplasm * k_irs1_basal_degr / cytoplasm;
    end function_49;


    function function_50
        	input Real IRS1_TyrP;
	input Real cytoplasm;
	input Real k_irs1_basal_degr;
        output Real y;
    algorithm
        y :=  IRS1_TyrP * cytoplasm * k_irs1_basal_degr / cytoplasm;
    end function_50;


    function function_51
        	input Real IRS1_PolySerP;
	input Real cytoplasm;
	input Real k_irs1_polyserp_degr;
        output Real y;
    algorithm
        y :=  IRS1_PolySerP * cytoplasm * k_irs1_polyserp_degr / cytoplasm;
    end function_51;


    function function_52
        	input Real IRS1_TyrP_PolySerP;
	input Real cytoplasm;
	input Real k_irs1_polyserp_degr;
        output Real y;
    algorithm
        y :=  IRS1_TyrP_PolySerP * cytoplasm * k_irs1_polyserp_degr / cytoplasm;
    end function_52;


    function function_53
        	input Real IKK_P;
	input Real IRS1;
	input Real Km51;
	input Real cytoplasm;
	input Real kcat51;
        output Real y;
    algorithm
        y :=  kcat51 * IRS1 * cytoplasm * IKK_P * cytoplasm / (Km51 + IRS1 * cytoplasm) / cytoplasm;
    end function_53;


    function function_54
        	input Real IRS1;
	input Real JNK_P;
	input Real Km52;
	input Real cytoplasm;
	input Real kcat52;
        output Real y;
    algorithm
        y :=  kcat52 * IRS1 * cytoplasm * JNK_P * cytoplasm / (Km52 + IRS1 * cytoplasm) / cytoplasm;
    end function_54;


    function function_55
        	input Real JNK;
	input Real ROS;
	input Real alpha_ox;
	input Real cytoplasm;
	input Real k42f;
        output Real y;
    algorithm
        y :=  k42f * alpha_ox * JNK * cytoplasm * ROS * cytoplasm / cytoplasm;
    end function_55;


    function function_56
        	input Real DUSP;
	input Real JNK_P;
	input Real cytoplasm;
	input Real k42r;
        output Real y;
    algorithm
        y :=  k42r * JNK_P * cytoplasm * DUSP * cytoplasm / cytoplasm;
    end function_56;


    function function_57
        	input Real IKK;
	input Real ROS;
	input Real cytoplasm;
	input Real k43f;
        output Real y;
    algorithm
        y :=  k43f * IKK * cytoplasm * ROS * cytoplasm / cytoplasm;
    end function_57;


    function function_58
        	input Real DUSP;
	input Real IKK_P;
	input Real cytoplasm;
	input Real k43r;
        output Real y;
    algorithm
        y :=  k43r * IKK_P * cytoplasm * DUSP * cytoplasm / cytoplasm;
    end function_58;


    function function_59
        	input Real DUSP;
	input Real ROS;
	input Real cytoplasm;
	input Real k32f;
        output Real y;
    algorithm
        y :=  k32f * DUSP * cytoplasm * ROS * cytoplasm / cytoplasm;
    end function_59;


    function function_60
        	input Real DUSP_ox;
	input Real GSH;
	input Real cytoplasm;
	input Real k32r;
        output Real y;
    algorithm
        y :=  k32r * DUSP_ox * cytoplasm * GSH * cytoplasm / cytoplasm;
    end function_60;


    function function_61
        	input Real E2F1;
	input Real cytoplasm;
	input Real ksynth;
        output Real y;
    algorithm
        y :=  E2F1 * cytoplasm * ksynth / cytoplasm;
    end function_61;


    function function_62
        	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0;
	input Real ktr;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * cytoplasm * ktr;
    end function_62;


    function function_63
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * nucleus * ktr;
    end function_63;


    function function_64
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * nucleus * ktr;
    end function_64;


    function function_65
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0;
	input Real ktr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * dnabound * ktr;
    end function_65;


    function function_66
        	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1;
	input Real ktr;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * cytoplasm * ktr;
    end function_66;


    function function_67
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * nucleus * ktr;
    end function_67;


    function function_68
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * nucleus * ktr;
    end function_68;


    function function_69
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1;
	input Real ktr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * dnabound * ktr;
    end function_69;


    function function_70
        	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0;
	input Real ktr;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * cytoplasm * ktr;
    end function_70;


    function function_71
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * nucleus * ktr;
    end function_71;


    function function_72
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * nucleus * ktr;
    end function_72;


    function function_73
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0;
	input Real ktr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * dnabound * ktr;
    end function_73;


    function function_74
        	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1;
	input Real ktr;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * cytoplasm * ktr;
    end function_74;


    function function_75
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * nucleus * ktr;
    end function_75;


    function function_76
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * nucleus * ktr;
    end function_76;


    function function_77
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1;
	input Real ktr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * dnabound * ktr;
    end function_77;


    function function_78
        	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0;
	input Real ktr;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * cytoplasm * ktr;
    end function_78;


    function function_79
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * nucleus * ktr;
    end function_79;


    function function_80
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * nucleus * ktr;
    end function_80;


    function function_81
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0;
	input Real ktr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * dnabound * ktr;
    end function_81;


    function function_82
        	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1;
	input Real ktr;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * cytoplasm * ktr;
    end function_82;


    function function_83
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * nucleus * ktr;
    end function_83;


    function function_84
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * nucleus * ktr;
    end function_84;


    function function_85
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1;
	input Real ktr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * dnabound * ktr;
    end function_85;


    function function_86
        	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0;
	input Real ktr;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * cytoplasm * ktr;
    end function_86;


    function function_87
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * nucleus * ktr;
    end function_87;


    function function_88
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * nucleus * ktr;
    end function_88;


    function function_89
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0;
	input Real ktr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * dnabound * ktr;
    end function_89;


    function function_90
        	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1;
	input Real ktr;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * cytoplasm * ktr;
    end function_90;


    function function_91
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * nucleus * ktr;
    end function_91;


    function function_92
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * nucleus * ktr;
    end function_92;


    function function_93
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1;
	input Real ktr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * dnabound * ktr;
    end function_93;


    function function_94
        	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0;
	input Real ktr;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * cytoplasm * ktr;
    end function_94;


    function function_95
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * nucleus * ktr;
    end function_95;


    function function_96
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * nucleus * ktr;
    end function_96;


    function function_97
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0;
	input Real ktr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * dnabound * ktr;
    end function_97;


    function function_98
        	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1;
	input Real ktr;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * cytoplasm * ktr;
    end function_98;


    function function_99
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * nucleus * ktr;
    end function_99;


    function function_100
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * nucleus * ktr;
    end function_100;


    function function_101
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1;
	input Real ktr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * dnabound * ktr;
    end function_101;


    function function_102
        	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0;
	input Real ktr;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * cytoplasm * ktr;
    end function_102;


    function function_103
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * nucleus * ktr;
    end function_103;


    function function_104
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * nucleus * ktr;
    end function_104;


    function function_105
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0;
	input Real ktr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * dnabound * ktr;
    end function_105;


    function function_106
        	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1;
	input Real ktr;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * cytoplasm * ktr;
    end function_106;


    function function_107
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * nucleus * ktr;
    end function_107;


    function function_108
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * nucleus * ktr;
    end function_108;


    function function_109
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1;
	input Real ktr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * dnabound * ktr;
    end function_109;


    function function_110
        	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0;
	input Real ktr;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * cytoplasm * ktr;
    end function_110;


    function function_111
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * nucleus * ktr;
    end function_111;


    function function_112
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * nucleus * ktr;
    end function_112;


    function function_113
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0;
	input Real ktr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * dnabound * ktr;
    end function_113;


    function function_114
        	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1;
	input Real ktr;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * cytoplasm * ktr;
    end function_114;


    function function_115
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * nucleus * ktr;
    end function_115;


    function function_116
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * nucleus * ktr;
    end function_116;


    function function_117
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1;
	input Real ktr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * dnabound * ktr;
    end function_117;


    function function_118
        	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0;
	input Real ktr;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * cytoplasm * ktr;
    end function_118;


    function function_119
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * nucleus * ktr;
    end function_119;


    function function_120
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * nucleus * ktr;
    end function_120;


    function function_121
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0;
	input Real ktr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * dnabound * ktr;
    end function_121;


    function function_122
        	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1;
	input Real ktr;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * cytoplasm * ktr;
    end function_122;


    function function_123
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * nucleus * ktr;
    end function_123;


    function function_124
        	input Real ktr;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * nucleus * ktr;
    end function_124;


    function function_125
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1;
	input Real ktr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * dnabound * ktr;
    end function_125;


    function function_126
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * cytoplasm * Akt_P2 * cytoplasm * kkin / cytoplasm;
    end function_126;


    function function_127
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * nucleus * Akt_P2 * cytoplasm * kkin / nucleus;
    end function_127;


    function function_128
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * dnabound * Akt_P2 * cytoplasm * kkin / dnabound;
    end function_128;


    function function_129
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * cytoplasm * Akt_P2 * cytoplasm * kkin / cytoplasm;
    end function_129;


    function function_130
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * nucleus * Akt_P2 * cytoplasm * kkin / nucleus;
    end function_130;


    function function_131
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * dnabound * Akt_P2 * cytoplasm * kkin / dnabound;
    end function_131;


    function function_132
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * cytoplasm * Akt_P2 * cytoplasm * kkin / cytoplasm;
    end function_132;


    function function_133
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * nucleus * Akt_P2 * cytoplasm * kkin / nucleus;
    end function_133;


    function function_134
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * dnabound * Akt_P2 * cytoplasm * kkin / dnabound;
    end function_134;


    function function_135
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * cytoplasm * Akt_P2 * cytoplasm * kkin / cytoplasm;
    end function_135;


    function function_136
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * nucleus * Akt_P2 * cytoplasm * kkin / nucleus;
    end function_136;


    function function_137
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * dnabound * Akt_P2 * cytoplasm * kkin / dnabound;
    end function_137;


    function function_138
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * cytoplasm * Akt_P2 * cytoplasm * kkin / cytoplasm;
    end function_138;


    function function_139
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * nucleus * Akt_P2 * cytoplasm * kkin / nucleus;
    end function_139;


    function function_140
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * dnabound * Akt_P2 * cytoplasm * kkin / dnabound;
    end function_140;


    function function_141
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * cytoplasm * Akt_P2 * cytoplasm * kkin / cytoplasm;
    end function_141;


    function function_142
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * nucleus * Akt_P2 * cytoplasm * kkin / nucleus;
    end function_142;


    function function_143
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * dnabound * Akt_P2 * cytoplasm * kkin / dnabound;
    end function_143;


    function function_144
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * cytoplasm * Akt_P2 * cytoplasm * kkin / cytoplasm;
    end function_144;


    function function_145
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * nucleus * Akt_P2 * cytoplasm * kkin / nucleus;
    end function_145;


    function function_146
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * dnabound * Akt_P2 * cytoplasm * kkin / dnabound;
    end function_146;


    function function_147
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * cytoplasm * Akt_P2 * cytoplasm * kkin / cytoplasm;
    end function_147;


    function function_148
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * nucleus * Akt_P2 * cytoplasm * kkin / nucleus;
    end function_148;


    function function_149
        	input Real Akt_P2;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * dnabound * Akt_P2 * cytoplasm * kkin / dnabound;
    end function_149;


    function function_150
        	input Real SGK;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * cytoplasm * SGK * cytoplasm * kkin / cytoplasm;
    end function_150;


    function function_151
        	input Real SGK;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * nucleus * SGK * cytoplasm * kkin / nucleus;
    end function_151;


    function function_152
        	input Real SGK;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * dnabound * SGK * cytoplasm * kkin / dnabound;
    end function_152;


    function function_153
        	input Real SGK;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * cytoplasm * SGK * cytoplasm * kkin / cytoplasm;
    end function_153;


    function function_154
        	input Real SGK;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * nucleus * SGK * cytoplasm * kkin / nucleus;
    end function_154;


    function function_155
        	input Real SGK;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * dnabound * SGK * cytoplasm * kkin / dnabound;
    end function_155;


    function function_156
        	input Real SGK;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * cytoplasm * SGK * cytoplasm * kkin / cytoplasm;
    end function_156;


    function function_157
        	input Real SGK;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * nucleus * SGK * cytoplasm * kkin / nucleus;
    end function_157;


    function function_158
        	input Real SGK;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * dnabound * SGK * cytoplasm * kkin / dnabound;
    end function_158;


    function function_159
        	input Real SGK;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * cytoplasm * SGK * cytoplasm * kkin / cytoplasm;
    end function_159;


    function function_160
        	input Real SGK;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * nucleus * SGK * cytoplasm * kkin / nucleus;
    end function_160;


    function function_161
        	input Real SGK;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * dnabound * SGK * cytoplasm * kkin / dnabound;
    end function_161;


    function function_162
        	input Real SGK;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * cytoplasm * SGK * cytoplasm * kkin / cytoplasm;
    end function_162;


    function function_163
        	input Real SGK;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * nucleus * SGK * cytoplasm * kkin / nucleus;
    end function_163;


    function function_164
        	input Real SGK;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * dnabound * SGK * cytoplasm * kkin / dnabound;
    end function_164;


    function function_165
        	input Real SGK;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * cytoplasm * SGK * cytoplasm * kkin / cytoplasm;
    end function_165;


    function function_21
        	input Real PI345P3;
	input Real PKC;
	input Real cytoplasm;
	input Real k12;
	input Real pip3_basal;
	input Real k12 * PKC * cytoplasm * piecewise(PI345P3 * cytoplasm - pip3_basal;
	input Real (PI345P3 * cytoplasm) > pip3_basal;
        output Real y;
    algorithm
        y :=  0) / cytoplasm;
    end function_21;


    function function_166
        	input Real SGK;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * nucleus * SGK * cytoplasm * kkin / nucleus;
    end function_166;


    function function_167
        	input Real SGK;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * dnabound * SGK * cytoplasm * kkin / dnabound;
    end function_167;


    function function_168
        	input Real SGK;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * cytoplasm * SGK * cytoplasm * kkin / cytoplasm;
    end function_168;


    function function_169
        	input Real SGK;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * nucleus * SGK * cytoplasm * kkin / nucleus;
    end function_169;


    function function_170
        	input Real SGK;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * dnabound * SGK * cytoplasm * kkin / dnabound;
    end function_170;


    function function_171
        	input Real SGK;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * cytoplasm * SGK * cytoplasm * kkin / cytoplasm;
    end function_171;


    function function_172
        	input Real SGK;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * nucleus * SGK * cytoplasm * kkin / nucleus;
    end function_172;


    function function_173
        	input Real SGK;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * dnabound * SGK * cytoplasm * kkin / dnabound;
    end function_173;


    function function_174
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_174;


    function function_175
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_175;


    function function_176
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_176;


    function function_177
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_177;


    function function_178
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_178;


    function function_179
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_179;


    function function_180
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_180;


    function function_181
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_181;


    function function_182
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_182;


    function function_183
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_183;


    function function_184
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_184;


    function function_185
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_185;


    function function_186
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_186;


    function function_187
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_187;


    function function_188
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_188;


    function function_189
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_189;


    function function_190
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_190;


    function function_191
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_191;


    function function_192
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_192;


    function function_193
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_193;


    function function_194
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_194;


    function function_195
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_195;


    function function_196
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_196;


    function function_197
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_197;


    function function_198
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * cytoplasm * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / cytoplasm;
    end function_198;


    function function_199
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * nucleus * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / nucleus;
    end function_199;


    function function_200
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * dnabound * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / dnabound;
    end function_200;


    function function_201
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * cytoplasm * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / cytoplasm;
    end function_201;


    function function_202
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * nucleus * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / nucleus;
    end function_202;


    function function_203
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * dnabound * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / dnabound;
    end function_203;


    function function_204
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * cytoplasm * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / cytoplasm;
    end function_204;


    function function_205
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * nucleus * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / nucleus;
    end function_205;


    function function_206
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * dnabound * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / dnabound;
    end function_206;


    function function_207
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * cytoplasm * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / cytoplasm;
    end function_207;


    function function_208
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * nucleus * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / nucleus;
    end function_208;


    function function_209
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * dnabound * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / dnabound;
    end function_209;


    function function_210
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_210;


    function function_211
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_211;


    function function_212
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_212;


    function function_213
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_213;


    function function_214
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_214;


    function function_215
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_215;


    function function_216
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_216;


    function function_217
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_217;


    function function_218
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_218;


    function function_219
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_219;


    function function_220
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_220;


    function function_221
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_221;


    function function_222
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * cytoplasm * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / cytoplasm;
    end function_222;


    function function_223
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * nucleus * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / nucleus;
    end function_223;


    function function_224
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * dnabound * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / dnabound;
    end function_224;


    function function_225
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * cytoplasm * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / cytoplasm;
    end function_225;


    function function_226
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * nucleus * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / nucleus;
    end function_226;


    function function_227
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * dnabound * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / dnabound;
    end function_227;


    function function_228
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * cytoplasm * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / cytoplasm;
    end function_228;


    function function_229
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * nucleus * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / nucleus;
    end function_229;


    function function_230
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * dnabound * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / dnabound;
    end function_230;


    function function_231
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * cytoplasm * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / cytoplasm;
    end function_231;


    function function_232
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * nucleus * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / nucleus;
    end function_232;


    function function_233
        	input Real IKK_P;
	input Real by_ikk_phos_factor;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * dnabound * IKK_P * cytoplasm * by_ikk_phos_factor * kkin / dnabound;
    end function_233;


    function function_234
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_234;


    function function_235
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_235;


    function function_236
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_236;


    function function_237
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_237;


    function function_238
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_238;


    function function_239
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_239;


    function function_240
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_240;


    function function_241
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_241;


    function function_242
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_242;


    function function_243
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_243;


    function function_244
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_244;


    function function_245
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_245;


    function function_246
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * cytoplasm * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / cytoplasm;
    end function_246;


    function function_247
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * nucleus * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / nucleus;
    end function_247;


    function function_248
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * dnabound * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / dnabound;
    end function_248;


    function function_249
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * cytoplasm * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / cytoplasm;
    end function_249;


    function function_250
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * nucleus * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / nucleus;
    end function_250;


    function function_251
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * dnabound * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / dnabound;
    end function_251;


    function function_252
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_252;


    function function_253
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_253;


    function function_254
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_254;


    function function_255
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_255;


    function function_256
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_256;


    function function_257
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_257;


    function function_258
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * cytoplasm * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / cytoplasm;
    end function_258;


    function function_259
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * nucleus * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / nucleus;
    end function_259;


    function function_260
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * dnabound * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / dnabound;
    end function_260;


    function function_261
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * cytoplasm * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / cytoplasm;
    end function_261;


    function function_262
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * nucleus * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / nucleus;
    end function_262;


    function function_263
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * dnabound * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / dnabound;
    end function_263;


    function function_264
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_264;


    function function_265
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_265;


    function function_266
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_266;


    function function_267
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_267;


    function function_268
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_268;


    function function_269
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_269;


    function function_270
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * cytoplasm * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / cytoplasm;
    end function_270;


    function function_271
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * nucleus * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / nucleus;
    end function_271;


    function function_272
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * dnabound * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / dnabound;
    end function_272;


    function function_273
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * cytoplasm * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / cytoplasm;
    end function_273;


    function function_274
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * nucleus * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / nucleus;
    end function_274;


    function function_275
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * dnabound * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / dnabound;
    end function_275;


    function function_276
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_276;


    function function_277
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_277;


    function function_278
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_278;


    function function_279
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_279;


    function function_280
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_280;


    function function_281
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_281;


    function function_282
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * cytoplasm * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / cytoplasm;
    end function_282;


    function function_283
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * nucleus * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / nucleus;
    end function_283;


    function function_284
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * dnabound * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / dnabound;
    end function_284;


    function function_285
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * cytoplasm * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / cytoplasm;
    end function_285;


    function function_286
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real kkin;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * nucleus * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / nucleus;
    end function_286;


    function function_287
        	input Real JNK_P;
	input Real by_jnk_phos_factor;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1;
	input Real kkin;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * dnabound * JNK_P * cytoplasm * by_jnk_phos_factor * kkin / dnabound;
    end function_287;


    function function_288
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_288;


    function function_289
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_289;


    function function_290
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_290;


    function function_291
        	input Real PP2A;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * cytoplasm * PP2A * cytoplasm * kdephos / cytoplasm;
    end function_291;


    function function_292
        	input Real PP2A;
	input Real cytoplasm;
	input Real kdephos;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * nucleus * PP2A * cytoplasm * kdephos / nucleus;
    end function_292;


    function function_293
        	input Real PP2A;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1;
	input Real kdephos;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * dnabound * PP2A * cytoplasm * kdephos / dnabound;
    end function_293;


    function function_294
        	input Real SCF;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0;
	input Real kub;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * cytoplasm * SCF * cytoplasm * kub / cytoplasm;
    end function_294;


    function function_295
        	input Real SCF;
	input Real cytoplasm;
	input Real kub;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * nucleus * SCF * cytoplasm * kub / nucleus;
    end function_295;


    function function_296
        	input Real SCF;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0;
	input Real kub;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * dnabound * SCF * cytoplasm * kub / dnabound;
    end function_296;


    function function_297
        	input Real SCF;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0;
	input Real kub;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * cytoplasm * SCF * cytoplasm * kub / cytoplasm;
    end function_297;


    function function_298
        	input Real SCF;
	input Real cytoplasm;
	input Real kub;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * nucleus * SCF * cytoplasm * kub / nucleus;
    end function_298;


    function function_299
        	input Real SCF;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0;
	input Real kub;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * dnabound * SCF * cytoplasm * kub / dnabound;
    end function_299;


    function function_300
        	input Real SCF;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0;
	input Real kub;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * cytoplasm * SCF * cytoplasm * kub / cytoplasm;
    end function_300;


    function function_301
        	input Real SCF;
	input Real cytoplasm;
	input Real kub;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * nucleus * SCF * cytoplasm * kub / nucleus;
    end function_301;


    function function_302
        	input Real SCF;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0;
	input Real kub;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * dnabound * SCF * cytoplasm * kub / dnabound;
    end function_302;


    function function_303
        	input Real SCF;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0;
	input Real kub;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * cytoplasm * SCF * cytoplasm * kub / cytoplasm;
    end function_303;


    function function_304
        	input Real SCF;
	input Real cytoplasm;
	input Real kub;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * nucleus * SCF * cytoplasm * kub / nucleus;
    end function_304;


    function function_305
        	input Real SCF;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0;
	input Real kub;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * dnabound * SCF * cytoplasm * kub / dnabound;
    end function_305;


    function function_306
        	input Real SCF;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0;
	input Real kub;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * cytoplasm * SCF * cytoplasm * kub / cytoplasm;
    end function_306;


    function function_307
        	input Real SCF;
	input Real cytoplasm;
	input Real kub;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * nucleus * SCF * cytoplasm * kub / nucleus;
    end function_307;


    function function_308
        	input Real SCF;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0;
	input Real kub;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * dnabound * SCF * cytoplasm * kub / dnabound;
    end function_308;


    function function_309
        	input Real SCF;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0;
	input Real kub;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * cytoplasm * SCF * cytoplasm * kub / cytoplasm;
    end function_309;


    function function_310
        	input Real SCF;
	input Real cytoplasm;
	input Real kub;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * nucleus * SCF * cytoplasm * kub / nucleus;
    end function_310;


    function function_311
        	input Real SCF;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0;
	input Real kub;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * dnabound * SCF * cytoplasm * kub / dnabound;
    end function_311;


    function function_312
        	input Real SCF;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0;
	input Real kub;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * cytoplasm * SCF * cytoplasm * kub / cytoplasm;
    end function_312;


    function function_313
        	input Real SCF;
	input Real cytoplasm;
	input Real kub;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * nucleus * SCF * cytoplasm * kub / nucleus;
    end function_313;


    function function_314
        	input Real SCF;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0;
	input Real kub;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * dnabound * SCF * cytoplasm * kub / dnabound;
    end function_314;


    function function_315
        	input Real SCF;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0;
	input Real kub;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * cytoplasm * SCF * cytoplasm * kub / cytoplasm;
    end function_315;


    function function_316
        	input Real SCF;
	input Real cytoplasm;
	input Real kub;
	input Real nucleus;
	input Real nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0;
        output Real y;
    algorithm
        y :=  nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * nucleus * SCF * cytoplasm * kub / nucleus;
    end function_316;


    function function_317
        	input Real SCF;
	input Real cytoplasm;
	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0;
	input Real kub;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * dnabound * SCF * cytoplasm * kub / dnabound;
    end function_317;


    function function_318
        	input Real Proteasome;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1;
	input Real kdeg;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * cytoplasm * Proteasome * cytoplasm * kdeg / cytoplasm;
    end function_318;


    function function_319
        	input Real Proteasome;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1;
	input Real kdeg;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * cytoplasm * Proteasome * cytoplasm * kdeg / cytoplasm;
    end function_319;


    function function_320
        	input Real Proteasome;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1;
	input Real kdeg;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * cytoplasm * Proteasome * cytoplasm * kdeg / cytoplasm;
    end function_320;


    function function_321
        	input Real Proteasome;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1;
	input Real kdeg;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * cytoplasm * Proteasome * cytoplasm * kdeg / cytoplasm;
    end function_321;


    function function_322
        	input Real Proteasome;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1;
	input Real kdeg;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * cytoplasm * Proteasome * cytoplasm * kdeg / cytoplasm;
    end function_322;


    function function_323
        	input Real Proteasome;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1;
	input Real kdeg;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * cytoplasm * Proteasome * cytoplasm * kdeg / cytoplasm;
    end function_323;


    function function_324
        	input Real Proteasome;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1;
	input Real kdeg;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * cytoplasm * Proteasome * cytoplasm * kdeg / cytoplasm;
    end function_324;


    function function_325
        	input Real Proteasome;
	input Real cytoplasm;
	input Real cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1;
	input Real kdeg;
        output Real y;
    algorithm
        y :=  cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * cytoplasm * Proteasome * cytoplasm * kdeg / cytoplasm;
    end function_325;


    function function_326
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * dnabound * ktranscr;
    end function_326;


    function function_327
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * dnabound * ktranscr;
    end function_327;


    function function_328
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * dnabound * ktranscr;
    end function_328;


    function function_329
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * dnabound * ktranscr;
    end function_329;


    function function_330
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * dnabound * ktranscr;
    end function_330;


    function function_331
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * dnabound * ktranscr;
    end function_331;


    function function_332
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * dnabound * ktranscr;
    end function_332;


    function function_333
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * dnabound * ktranscr;
    end function_333;


    function function_334
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * dnabound * ktranscr;
    end function_334;


    function function_335
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * dnabound * ktranscr;
    end function_335;


    function function_336
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * dnabound * ktranscr;
    end function_336;


    function function_337
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * dnabound * ktranscr;
    end function_337;


    function function_338
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * dnabound * ktranscr;
    end function_338;


    function function_339
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * dnabound * ktranscr;
    end function_339;


    function function_340
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * dnabound * ktranscr;
    end function_340;


    function function_341
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * dnabound * ktranscr;
    end function_341;


    function function_342
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * dnabound * ktranscr;
    end function_342;


    function function_343
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * dnabound * ktranscr;
    end function_343;


    function function_344
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * dnabound * ktranscr;
    end function_344;


    function function_345
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * dnabound * ktranscr;
    end function_345;


    function function_346
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * dnabound * ktranscr;
    end function_346;


    function function_347
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * dnabound * ktranscr;
    end function_347;


    function function_348
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * dnabound * ktranscr;
    end function_348;


    function function_349
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * dnabound * ktranscr;
    end function_349;


    function function_350
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * dnabound * ktranscr;
    end function_350;


    function function_351
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * dnabound * ktranscr;
    end function_351;


    function function_352
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * dnabound * ktranscr;
    end function_352;


    function function_353
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * dnabound * ktranscr;
    end function_353;


    function function_354
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * dnabound * ktranscr;
    end function_354;


    function function_355
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * dnabound * ktranscr;
    end function_355;


    function function_356
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * dnabound * ktranscr;
    end function_356;


    function function_357
        	input Real dnabound;
	input Real dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1;
	input Real ktranscr;
        output Real y;
    algorithm
        y :=  dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * dnabound * ktranscr;
    end function_357;


    function function_1
        	input Real InR;
	input Real Ins;
	input Real cellsurface;
	input Real extracellular;
	input Real k1;
        output Real y;
    algorithm
        y :=  k1 * Ins * extracellular * InR * cellsurface;
    end function_1;


    function function_2
        	input Real Ins_InR;
	input Real cellsurface;
	input Real kminus1;
        output Real y;
    algorithm
        y :=  kminus1 * Ins_InR * cellsurface;
    end function_2;


    function function_3
        	input Real Ins_InR;
	input Real cellsurface;
	input Real k3;
        output Real y;
    algorithm
        y :=  k3 * Ins_InR * cellsurface / cellsurface;
    end function_3;


    function function_4
        	input Real Ins;
	input Real Ins_InR_P;
	input Real cellsurface;
	input Real extracellular;
	input Real k2;
        output Real y;
    algorithm
        y :=  k2 * Ins * extracellular * Ins_InR_P * cellsurface;
    end function_4;


    function function_5
        	input Real Ins_2_InR_P;
	input Real cellsurface;
	input Real kminus2;
        output Real y;
    algorithm
        y :=  kminus2 * Ins_2_InR_P * cellsurface;
    end function_5;


    function function_6
        	input Real Ins_InR_P;
	input Real PTP1B;
	input Real cellsurface;
	input Real cytoplasm;
	input Real kminus3;
        output Real y;
    algorithm
        y :=  kminus3 * PTP1B * cytoplasm * Ins_InR_P * cellsurface / cellsurface;
    end function_6;


    function function_7
        	input Real InR;
	input Real cellsurface;
	input Real k4;
        output Real y;
    algorithm
        y :=  k4 * InR * cellsurface;
    end function_7;


    function function_8
        	input Real cytoplasm;
	input Real cytoplasm_InR;
	input Real kminus4;
        output Real y;
    algorithm
        y :=  kminus4 * cytoplasm_InR * cytoplasm;
    end function_8;


    function function_9
        	input Real Ins_2_InR_P;
	input Real cellsurface;
	input Real k4prime;
        output Real y;
    algorithm
        y :=  k4prime * Ins_2_InR_P * cellsurface;
    end function_9;


    function function_10
        	input Real cytoplasm;
	input Real cytoplasm_Ins_2_InR_P;
	input Real kminus4prime;
        output Real y;
    algorithm
        y :=  kminus4prime * cytoplasm_Ins_2_InR_P * cytoplasm;
    end function_10;


    function function_11
        	input Real Ins_InR_P;
	input Real cellsurface;
	input Real k4prime;
        output Real y;
    algorithm
        y :=  k4prime * Ins_InR_P * cellsurface;
    end function_11;


    function function_12
        	input Real cytoplasm;
	input Real cytoplasm_Ins_InR_P;
	input Real kminus4prime;
        output Real y;
    algorithm
        y :=  kminus4prime * cytoplasm_Ins_InR_P * cytoplasm;
    end function_12;


    function function_13
        	input Real PTP1B;
	input Real cytoplasm;
	input Real cytoplasm_Ins_2_InR_P;
	input Real k6;
        output Real y;
    algorithm
        y :=  k6 * PTP1B * cytoplasm * cytoplasm_Ins_2_InR_P * cytoplasm / cytoplasm;
    end function_13;


    function function_14
        	input Real PTP1B;
	input Real cytoplasm;
	input Real cytoplasm_Ins_InR_P;
	input Real k6;
        output Real y;
    algorithm
        y :=  k6 * PTP1B * cytoplasm * cytoplasm_Ins_InR_P * cytoplasm / cytoplasm;
    end function_14;


    function function_15
        	input Real IRS1_TyrP_PI3K;
	input Real PIP2;
	input Real cytoplasm;
	input Real k9;
	input Real k9_basal;
        output Real y;
    algorithm
        y :=  (k9_basal + k9 * IRS1_TyrP_PI3K * cytoplasm) * PIP2 * cytoplasm / cytoplasm;
    end function_15;


    function function_16
        	input Real PI345P3;
	input Real PTEN;
	input Real cytoplasm;
	input Real kminus9;
	input Real kminus9_basal;
        output Real y;
    algorithm
        y :=  (kminus9_basal + kminus9 * PTEN * cytoplasm) * PI345P3 * cytoplasm / cytoplasm;
    end function_16;


    function function_17
        	input Real Akt;
	input Real PI345P3;
	input Real cytoplasm;
	input Real k11;
	input Real pip3_basal;
	input Real k11 * Akt * cytoplasm * piecewise(PI345P3 * cytoplasm - pip3_basal;
	input Real (PI345P3 * cytoplasm) > pip3_basal;
        output Real y;
    algorithm
        y :=  0) / cytoplasm;
    end function_17;


    function function_18
        	input Real Akt_P2;
	input Real PP2A;
	input Real cytoplasm;
	input Real kminus11;
        output Real y;
    algorithm
        y :=  kminus11 * PP2A * cytoplasm * Akt_P2 * cytoplasm / cytoplasm;
    end function_18;


    function function_19
        	input Real AS160;
	input Real Akt_P2;
	input Real cytoplasm;
	input Real kr16a;
        output Real y;
    algorithm
        y :=  kr16a * Akt_P2 * cytoplasm * AS160 * cytoplasm / cytoplasm;
    end function_19;


    function function_20
        	input Real AS160_P;
	input Real PP2A;
	input Real cytoplasm;
	input Real kminusr16a;
        output Real y;
    algorithm
        y :=  kminusr16a * PP2A * cytoplasm * AS160_P * cytoplasm / cytoplasm;
    end function_20;


    parameter Real k1 = 2e-05;
    parameter Real kminus1 = 12072.0;
    parameter Real k2 = 1.2e-05;
    parameter Real kminus2 = 90000.0;
    parameter Real k3 = 2500.0;
    parameter Real kminus3 = 2e-06;
    parameter Real k4 = 0.033333334;
    parameter Real kminus4 = 0.3;
    parameter Real k4prime = 0.0021;
    parameter Real kminus4prime = 0.00021;
    parameter Real k6 = 4.61e-06;
    parameter Real cellsurf_vol = 1.0;
    parameter Real cyto_vol = 1.0;
    parameter Real vextracellular = 8.3e-12;
    parameter Real vcellsurface = 6.4e-14;
    parameter Real vcytoplasm = 1.65e-11;
    parameter Real navo = 6.02e+23;
    parameter Real k9_basal = 0.13145;
    parameter Real k9 = 0.0055;
    parameter Real kminus9_basal = 2.7;
    parameter Real kminus9 = 0.0014;
    parameter Real k11 = 2.5e-05;
    parameter Real kminus11 = 1.1878e-06;
    parameter Real k12 = 3.5e-05;
    parameter Real kminus12 = 1.25e-06;
    parameter Real kr16a = 0.000333;
    parameter Real kminusr16a = 1e-06;
    parameter Real k13_basal = 0.015;
    parameter Real k13 = 7.5e-06;
    parameter Real kminus13 = 0.167;
    parameter Real k14 = 110.88;
    parameter Real kminus14 = 0.001155;
    parameter Real sc_pip = 1000.0;
    parameter Real pip3_basal = 200.0;
    parameter Real k30f = 0.08;
    parameter Real k30r = 0.005;
    parameter Real k31f = 0.00027;
    parameter Real k31r = 0.002;
    parameter Real k34f = 2e-05;
    parameter Real k34r1 = 0.001;
    parameter Real k34r2 = 0.25;
    parameter Real k34r3 = 0.001;
    parameter Real k35f = 450.0;
    parameter Real k35r = 0.12;
    parameter Real k36f = 180.0;
    parameter Real ros_perm = 740000000.0;
    parameter Real membrane_area = 6.5e-09;
    parameter Real k38r = 2.0;
    parameter Real k38f = 0.05;
    parameter Real sc_ros = 1000.0;
    parameter Real k7 = 5.8;
    parameter Real kminus7a = 8.75e-05;
    parameter Real kminus7b = 2.8e-06;
    parameter Real k8 = 2.6e-06;
    parameter Real kminus8 = 1.55;
    parameter Real IRp = 90000.0;
    parameter Real molec_per_fm = 602000000.0;
    parameter Real k2psp = 0.00022;
    parameter Real kcat82 = 3.0;
    parameter Real Km82 = 100.0;
    parameter Real k_irs1_basal_syn = 260.0;
    parameter Real k_irs1_basal_degr = 0.001;
    parameter Real k_irs1_polyserp_degr = 0.01;
    parameter Real kcat51 = 0.87;
    parameter Real kcat52 = 6.95;
    parameter Real Km51 = 100.0;
    parameter Real Km52 = 100.0;
    parameter Real k42f = 5e-05;
    parameter Real k42r = 5e-07;
    parameter Real k43f = 5e-05;
    parameter Real k43r = 5e-07;
    parameter Real alpha_ox = 5.0;
    parameter Real k32f = 0.0006;
    parameter Real k32r = 0.0004;
    parameter Real by_jnk_phos_factor = 2.0;
    parameter Real by_ikk_phos_factor = 3.0;
    parameter Real ksynth_60 = 0.0055;
    parameter Real ktr_61 = 0.181818181818;
    parameter Real ktr_62 = 0.055;
    parameter Real ktr_63 = 0.25;
    parameter Real ktr_64 = 0.125;
    parameter Real ktr_65 = 0.181818181818;
    parameter Real ktr_66 = 0.055;
    parameter Real ktr_67 = 0.25;
    parameter Real ktr_68 = 0.125;
    parameter Real ktr_69 = 1.81818181818;
    parameter Real ktr_70 = 0.0055;
    parameter Real ktr_71 = 0.25;
    parameter Real ktr_72 = 0.125;
    parameter Real ktr_73 = 1.81818181818;
    parameter Real ktr_74 = 0.0055;
    parameter Real ktr_75 = 0.25;
    parameter Real ktr_76 = 0.125;
    parameter Real ktr_77 = 0.0909090909091;
    parameter Real ktr_78 = 0.55;
    parameter Real ktr_79 = 0.25;
    parameter Real ktr_80 = 0.125;
    parameter Real ktr_81 = 0.0909090909091;
    parameter Real ktr_82 = 0.55;
    parameter Real ktr_83 = 0.25;
    parameter Real ktr_84 = 0.125;
    parameter Real ktr_85 = 0.909090909091;
    parameter Real ktr_86 = 0.055;
    parameter Real ktr_87 = 0.25;
    parameter Real ktr_88 = 0.125;
    parameter Real ktr_89 = 0.909090909091;
    parameter Real ktr_90 = 0.055;
    parameter Real ktr_91 = 0.25;
    parameter Real ktr_92 = 0.125;
    parameter Real ktr_93 = 0.0181818181818;
    parameter Real ktr_94 = 0.55;
    parameter Real ktr_95 = 0.125;
    parameter Real ktr_96 = 0.125;
    parameter Real ktr_97 = 0.0181818181818;
    parameter Real ktr_98 = 0.55;
    parameter Real ktr_99 = 0.125;
    parameter Real ktr_100 = 0.125;
    parameter Real ktr_101 = 0.181818181818;
    parameter Real ktr_102 = 0.055;
    parameter Real ktr_103 = 0.125;
    parameter Real ktr_104 = 0.125;
    parameter Real ktr_105 = 0.181818181818;
    parameter Real ktr_106 = 0.055;
    parameter Real ktr_107 = 0.125;
    parameter Real ktr_108 = 0.125;
    parameter Real ktr_109 = 0.00909090909091;
    parameter Real ktr_110 = 5.5;
    parameter Real ktr_111 = 0.125;
    parameter Real ktr_112 = 0.125;
    parameter Real ktr_113 = 0.00909090909091;
    parameter Real ktr_114 = 5.5;
    parameter Real ktr_115 = 0.125;
    parameter Real ktr_116 = 0.125;
    parameter Real ktr_117 = 0.0909090909091;
    parameter Real ktr_118 = 0.55;
    parameter Real ktr_119 = 0.125;
    parameter Real ktr_120 = 0.125;
    parameter Real ktr_121 = 0.0909090909091;
    parameter Real ktr_122 = 0.55;
    parameter Real ktr_123 = 0.125;
    parameter Real ktr_124 = 0.125;
    parameter Real kkin_125 = 0.0003;
    parameter Real kkin_126 = 0.0003;
    parameter Real kkin_127 = 0.0003;
    parameter Real kkin_128 = 0.0003;
    parameter Real kkin_129 = 0.0003;
    parameter Real kkin_130 = 0.0003;
    parameter Real kkin_131 = 0.0003;
    parameter Real kkin_132 = 0.0003;
    parameter Real kkin_133 = 0.0003;
    parameter Real kkin_134 = 0.0003;
    parameter Real kkin_135 = 0.0003;
    parameter Real kkin_136 = 0.0003;
    parameter Real kkin_137 = 0.0003;
    parameter Real kkin_138 = 0.0003;
    parameter Real kkin_139 = 0.0003;
    parameter Real kkin_140 = 0.0003;
    parameter Real kkin_141 = 0.0003;
    parameter Real kkin_142 = 0.0003;
    parameter Real kkin_143 = 0.0003;
    parameter Real kkin_144 = 0.0003;
    parameter Real kkin_145 = 0.0003;
    parameter Real kkin_146 = 0.0003;
    parameter Real kkin_147 = 0.0003;
    parameter Real kkin_148 = 0.0003;
    parameter Real kkin_149 = 0.0003;
    parameter Real kkin_150 = 0.0003;
    parameter Real kkin_151 = 0.0003;
    parameter Real kkin_152 = 0.0003;
    parameter Real kkin_153 = 0.0003;
    parameter Real kkin_154 = 0.0003;
    parameter Real kkin_155 = 0.0003;
    parameter Real kkin_156 = 0.0003;
    parameter Real kkin_157 = 0.0003;
    parameter Real kkin_158 = 0.0003;
    parameter Real kkin_159 = 0.0003;
    parameter Real kkin_160 = 0.0003;
    parameter Real kkin_161 = 0.0003;
    parameter Real kkin_162 = 0.0003;
    parameter Real kkin_163 = 0.0003;
    parameter Real kkin_164 = 0.0003;
    parameter Real kkin_165 = 0.0003;
    parameter Real kkin_166 = 0.0003;
    parameter Real kkin_167 = 0.0003;
    parameter Real kkin_168 = 0.0003;
    parameter Real kkin_169 = 0.0003;
    parameter Real kkin_170 = 0.0003;
    parameter Real kkin_171 = 0.0003;
    parameter Real kkin_172 = 0.0003;
    parameter Real kdephos_173 = 1e-06;
    parameter Real kdephos_174 = 1e-06;
    parameter Real kdephos_175 = 1e-06;
    parameter Real kdephos_176 = 1e-06;
    parameter Real kdephos_177 = 1e-06;
    parameter Real kdephos_178 = 1e-06;
    parameter Real kdephos_179 = 1e-06;
    parameter Real kdephos_180 = 1e-06;
    parameter Real kdephos_181 = 1e-06;
    parameter Real kdephos_182 = 1e-06;
    parameter Real kdephos_183 = 1e-06;
    parameter Real kdephos_184 = 1e-06;
    parameter Real kdephos_185 = 1e-06;
    parameter Real kdephos_186 = 1e-06;
    parameter Real kdephos_187 = 1e-06;
    parameter Real kdephos_188 = 1e-06;
    parameter Real kdephos_189 = 1e-06;
    parameter Real kdephos_190 = 1e-06;
    parameter Real kdephos_191 = 1e-06;
    parameter Real kdephos_192 = 1e-06;
    parameter Real kdephos_193 = 1e-06;
    parameter Real kdephos_194 = 1e-06;
    parameter Real kdephos_195 = 1e-06;
    parameter Real kdephos_196 = 1e-06;
    parameter Real kkin_197 = 5e-05;
    parameter Real kkin_198 = 5e-05;
    parameter Real kkin_199 = 5e-05;
    parameter Real kkin_200 = 5e-05;
    parameter Real kkin_201 = 5e-05;
    parameter Real kkin_202 = 5e-05;
    parameter Real kkin_203 = 5e-05;
    parameter Real kkin_204 = 5e-05;
    parameter Real kkin_205 = 5e-05;
    parameter Real kkin_206 = 5e-05;
    parameter Real kkin_207 = 5e-05;
    parameter Real kkin_208 = 5e-05;
    parameter Real kdephos_209 = 1e-06;
    parameter Real kdephos_210 = 1e-06;
    parameter Real kdephos_211 = 1e-06;
    parameter Real kdephos_212 = 1e-06;
    parameter Real kdephos_213 = 1e-06;
    parameter Real kdephos_214 = 1e-06;
    parameter Real kdephos_215 = 1e-06;
    parameter Real kdephos_216 = 1e-06;
    parameter Real kdephos_217 = 1e-06;
    parameter Real kdephos_218 = 1e-06;
    parameter Real kdephos_219 = 1e-06;
    parameter Real kdephos_220 = 1e-06;
    parameter Real kkin_221 = 5e-05;
    parameter Real kkin_222 = 5e-05;
    parameter Real kkin_223 = 5e-05;
    parameter Real kkin_224 = 5e-05;
    parameter Real kkin_225 = 5e-05;
    parameter Real kkin_226 = 5e-05;
    parameter Real kkin_227 = 5e-05;
    parameter Real kkin_228 = 5e-05;
    parameter Real kkin_229 = 5e-05;
    parameter Real kkin_230 = 5e-05;
    parameter Real kkin_231 = 5e-05;
    parameter Real kkin_232 = 5e-05;
    parameter Real kdephos_233 = 1e-06;
    parameter Real kdephos_234 = 1e-06;
    parameter Real kdephos_235 = 1e-06;
    parameter Real kdephos_236 = 1e-06;
    parameter Real kdephos_237 = 1e-06;
    parameter Real kdephos_238 = 1e-06;
    parameter Real kdephos_239 = 1e-06;
    parameter Real kdephos_240 = 1e-06;
    parameter Real kdephos_241 = 1e-06;
    parameter Real kdephos_242 = 1e-06;
    parameter Real kdephos_243 = 1e-06;
    parameter Real kdephos_244 = 1e-06;
    parameter Real kkin_245 = 5e-05;
    parameter Real kkin_246 = 5e-05;
    parameter Real kkin_247 = 5e-05;
    parameter Real kkin_248 = 5e-05;
    parameter Real kkin_249 = 5e-05;
    parameter Real kkin_250 = 5e-05;
    parameter Real kdephos_251 = 1e-06;
    parameter Real kdephos_252 = 1e-06;
    parameter Real kdephos_253 = 1e-06;
    parameter Real kdephos_254 = 1e-06;
    parameter Real kdephos_255 = 1e-06;
    parameter Real kdephos_256 = 1e-06;
    parameter Real kkin_257 = 5e-05;
    parameter Real kkin_258 = 5e-05;
    parameter Real kkin_259 = 5e-05;
    parameter Real kkin_260 = 5e-05;
    parameter Real kkin_261 = 5e-05;
    parameter Real kkin_262 = 5e-05;
    parameter Real kdephos_263 = 1e-06;
    parameter Real kdephos_264 = 1e-06;
    parameter Real kdephos_265 = 1e-06;
    parameter Real kdephos_266 = 1e-06;
    parameter Real kdephos_267 = 1e-06;
    parameter Real kdephos_268 = 1e-06;
    parameter Real kkin_269 = 5e-05;
    parameter Real kkin_270 = 5e-05;
    parameter Real kkin_271 = 5e-05;
    parameter Real kkin_272 = 5e-05;
    parameter Real kkin_273 = 5e-05;
    parameter Real kkin_274 = 5e-05;
    parameter Real kdephos_275 = 1e-06;
    parameter Real kdephos_276 = 1e-06;
    parameter Real kdephos_277 = 1e-06;
    parameter Real kdephos_278 = 1e-06;
    parameter Real kdephos_279 = 1e-06;
    parameter Real kdephos_280 = 1e-06;
    parameter Real kkin_281 = 5e-05;
    parameter Real kkin_282 = 5e-05;
    parameter Real kkin_283 = 5e-05;
    parameter Real kkin_284 = 5e-05;
    parameter Real kkin_285 = 5e-05;
    parameter Real kkin_286 = 5e-05;
    parameter Real kdephos_287 = 1e-06;
    parameter Real kdephos_288 = 1e-06;
    parameter Real kdephos_289 = 1e-06;
    parameter Real kdephos_290 = 1e-06;
    parameter Real kdephos_291 = 1e-06;
    parameter Real kdephos_292 = 1e-06;
    parameter Real kub_293 = 1e-06;
    parameter Real kub_294 = 1e-06;
    parameter Real kub_295 = 1e-06;
    parameter Real kub_296 = 1e-06;
    parameter Real kub_297 = 1e-06;
    parameter Real kub_298 = 1e-06;
    parameter Real kub_299 = 2.2e-05;
    parameter Real kub_300 = 2.2e-05;
    parameter Real kub_301 = 2.2e-05;
    parameter Real kub_302 = 2.2e-05;
    parameter Real kub_303 = 2.2e-05;
    parameter Real kub_304 = 2.2e-05;
    parameter Real kub_305 = 3e-06;
    parameter Real kub_306 = 3e-06;
    parameter Real kub_307 = 3e-06;
    parameter Real kub_308 = 3e-06;
    parameter Real kub_309 = 3e-06;
    parameter Real kub_310 = 3e-06;
    parameter Real kub_311 = 6.6e-05;
    parameter Real kub_312 = 6.6e-05;
    parameter Real kub_313 = 6.6e-05;
    parameter Real kub_314 = 6.6e-05;
    parameter Real kub_315 = 6.6e-05;
    parameter Real kub_316 = 6.6e-05;
    parameter Real kdeg_317 = 0.0001;
    parameter Real kdeg_318 = 0.0001;
    parameter Real kdeg_319 = 0.0001;
    parameter Real kdeg_320 = 0.0001;
    parameter Real kdeg_321 = 0.0001;
    parameter Real kdeg_322 = 0.0001;
    parameter Real kdeg_323 = 0.0001;
    parameter Real kdeg_324 = 0.0001;
    parameter Real ktranscr_325 = 0.24;
    parameter Real ktranscr_326 = 0.95;
    parameter Real ktranscr_327 = 0.24;
    parameter Real ktranscr_328 = 0.95;
    parameter Real ktranscr_329 = 0.24;
    parameter Real ktranscr_330 = 0.95;
    parameter Real ktranscr_331 = 0.24;
    parameter Real ktranscr_332 = 0.95;
    parameter Real ktranscr_333 = 0.24;
    parameter Real ktranscr_334 = 0.95;
    parameter Real ktranscr_335 = 0.24;
    parameter Real ktranscr_336 = 0.95;
    parameter Real ktranscr_337 = 0.24;
    parameter Real ktranscr_338 = 0.95;
    parameter Real ktranscr_339 = 0.24;
    parameter Real ktranscr_340 = 0.95;
    parameter Real ktranscr_341 = 0.24;
    parameter Real ktranscr_342 = 0.95;
    parameter Real ktranscr_343 = 0.24;
    parameter Real ktranscr_344 = 0.95;
    parameter Real ktranscr_345 = 0.24;
    parameter Real ktranscr_346 = 0.95;
    parameter Real ktranscr_347 = 0.24;
    parameter Real ktranscr_348 = 0.95;
    parameter Real ktranscr_349 = 0.24;
    parameter Real ktranscr_350 = 0.95;
    parameter Real ktranscr_351 = 0.24;
    parameter Real ktranscr_352 = 0.95;
    parameter Real ktranscr_353 = 0.24;
    parameter Real ktranscr_354 = 0.95;
    parameter Real ktranscr_355 = 0.24;
    parameter Real ktranscr_356 = 0.95;
    parameter Real v_357 = 5.0;
    parameter Real kexp_358 = 0.22;
    parameter Real kmdeg_359 = 5.622;
    parameter Real ktransl_360 = 2.46;
    parameter Real kpdeg_361 = 0.0044;
    parameter Real v_362 = 15.0;
    parameter Real kexp_363 = 0.22;
    parameter Real kmdeg_364 = 5.622;
    parameter Real ktransl_365 = 1.23;
    parameter Real kpdeg_366 = 0.0019;
    parameter Real extracellular = 1.0;
    parameter Real cellsurface = 1.0;
    parameter Real cytoplasm = 1.0;
    parameter Real nucleus = 1.0;
    parameter Real dnabound = 1.0;

    Real insconc(start=0.0);
    Real k_ros_perm(start=4.81);
    Real ros_ext_conc(start=0.0);
    Real ros_cyto_conc(start=0.0);
    Real rosconc(start=0.0);

    Real NULL;
    Real Ins;
    Real InR;
    Real Ins_InR;
    Real Ins_InR_P;
    Real Ins_2_InR_P;
    Real cytoplasm_InR;
    Real cytoplasm_Ins_2_InR_P;
    Real cytoplasm_Ins_InR_P;
    Real InR_tot;
    Real InR_bound;
    Real InR_active;
    Real PTP1B;
    Real IRS1_TyrP_PI3K;
    Real PI345P3;
    Real PIP2;
    Real PI345P3_mol;
    Real PIP2_mol;
    Real Akt;
    Real Akt_P2;
    Real PKC;
    Real PKC_P;
    Real AS160;
    Real AS160_P;
    Real cytoplasm_GLUT4;
    Real cellsurface_GLUT4;
    Real PTEN;
    Real PP2A;
    Real extracellular_ROS;
    Real PTP1B_ox;
    Real PTP1B_plus_PTP1B_ox;
    Real PTEN_ox;
    Real PTEN_plus_PTEN_ox;
    Real ROS;
    Real GSH;
    Real GSSG;
    Real cytoplasm_SOD2;
    Real NOX_inact;
    Real NOX;
    Real NOX_deact;
    Real NOX_total;
    Real Mt;
    Real IRS1;
    Real IRS1_TyrP;
    Real IRS1_PolySerP;
    Real IRS1_TyrP_PolySerP;
    Real IRS_total;
    Real PI3K;
    Real JNK_P;
    Real IKK_P;
    Real JNK;
    Real JNK_plus_JNK_P;
    Real IKK;
    Real IKK_plus_IKK_P;
    Real DUSP;
    Real DUSP_ox;
    Real DUSP_plus_DUSP_ox;
    Real null;
    Real degr_Foxo1;
    Real cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0;
    Real nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0;
    Real dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0;
    Real cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1;
    Real nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1;
    Real dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1;
    Real cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0;
    Real nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0;
    Real dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0;
    Real cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1;
    Real nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1;
    Real dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1;
    Real cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0;
    Real nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0;
    Real dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0;
    Real cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1;
    Real nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1;
    Real dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1;
    Real cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0;
    Real nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0;
    Real dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0;
    Real cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1;
    Real nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1;
    Real dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1;
    Real cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0;
    Real nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0;
    Real dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0;
    Real cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1;
    Real nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1;
    Real dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1;
    Real cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0;
    Real nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0;
    Real dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0;
    Real cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1;
    Real nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1;
    Real dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1;
    Real cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0;
    Real nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0;
    Real dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0;
    Real cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1;
    Real nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1;
    Real dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1;
    Real cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0;
    Real nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0;
    Real dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0;
    Real cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1;
    Real nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1;
    Real dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1;
    Real Foxo1_Pa0_tot;
    Real Foxo1_Pa1_tot;
    Real Foxo1_Pd0_tot;
    Real Foxo1_Pd1_tot;
    Real Foxo1_Pe0_tot;
    Real Foxo1_Pe1_tot;
    Real Foxo1_pUb0_tot;
    Real Foxo1_pUb1_tot;
    Real cytoplasm_Foxo1_tot;
    Real nucleus_Foxo1_tot;
    Real dnabound_Foxo1_tot;
    Real Foxo1_all;
    Real nucleus_RNA_InR;
    Real cytoplasm_RNA_InR;
    Real nucleus_RNA_SOD2;
    Real cytoplasm_RNA_SOD2;
    Real E2F1;
    Real SGK;
    Real CDK2;
    Real AMPK;
    Real CBPP300;
    Real SIRT1;
    Real E3;
    Real USP7;
    Real SCF;
    Real Proteasome;

initial equation
    NULL = 0.0;
    Ins = 0.0;
    InR = 90000.0;
    Ins_InR = 0.0;
    Ins_InR_P = 0.0;
    Ins_2_InR_P = 0.0;
    cytoplasm_InR = 10000.0;
    cytoplasm_Ins_2_InR_P = 0.0;
    cytoplasm_Ins_InR_P = 0.0;
    PTP1B = 100000.0;
    IRS1_TyrP_PI3K = 0.0;
    PI345P3 = 1000.0;
    PIP2 = 200000.0;
    Akt = 100000.0;
    Akt_P2 = 0.0;
    PKC = 100000.0;
    PKC_P = 0.0;
    AS160 = 20000.0;
    AS160_P = 0.0;
    cytoplasm_GLUT4 = 96000.0;
    cellsurface_GLUT4 = 4000.0;
    PTEN = 100000.0;
    PP2A = 500000.0;
    extracellular_ROS = 0.0;
    PTP1B_ox = 0.0;
    PTEN_ox = 0.0;
    ROS = 0.0;
    GSH = 100.0;
    GSSG = 0.0;
    cytoplasm_SOD2 = 41700.0;
    NOX_inact = 100.0;
    NOX = 0.0;
    NOX_deact = 0.0;
    Mt = 50.0;
    IRS1 = 100000.0;
    IRS1_TyrP = 0.0;
    IRS1_PolySerP = 0.0;
    IRS1_TyrP_PolySerP = 0.0;
    PI3K = 10000.0;
    JNK_P = 0.0;
    IKK_P = 0.0;
    JNK = 16000.0;
    IKK = 2000.0;
    DUSP = 100000.0;
    DUSP_ox = 0.0;
    null = 0.0;
    degr_Foxo1 = 0.0;
    cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 = 1000.0;
    nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 = 0.0;
    dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 = 0.0;
    cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 = 0.0;
    nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 = 0.0;
    dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 = 0.0;
    cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 = 0.0;
    nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 = 0.0;
    dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 = 0.0;
    cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 = 0.0;
    nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 = 0.0;
    dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 = 0.0;
    cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 = 0.0;
    nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 = 0.0;
    dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 = 0.0;
    cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 = 0.0;
    nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 = 0.0;
    dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 = 0.0;
    cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 = 0.0;
    nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 = 0.0;
    dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 = 0.0;
    cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 = 0.0;
    nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 = 0.0;
    dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 = 0.0;
    cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 = 0.0;
    nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 = 0.0;
    dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 = 0.0;
    cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 = 0.0;
    nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 = 0.0;
    dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 = 0.0;
    cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 = 0.0;
    nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 = 0.0;
    dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 = 0.0;
    cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 = 0.0;
    nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 = 0.0;
    dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 = 0.0;
    cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 = 0.0;
    nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 = 0.0;
    dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 = 0.0;
    cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 = 0.0;
    nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 = 0.0;
    dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 = 0.0;
    cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 = 0.0;
    nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 = 0.0;
    dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 = 0.0;
    cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 = 0.0;
    nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 = 0.0;
    dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 = 0.0;
    nucleus_RNA_InR = 0.0;
    cytoplasm_RNA_InR = 0.0;
    nucleus_RNA_SOD2 = 0.0;
    cytoplasm_RNA_SOD2 = 0.0;
    E2F1 = 300.0;
    SGK = 0.0;
    CDK2 = 0.0;
    AMPK = 0.0;
    CBPP300 = 10.0;
    SIRT1 = 1000.0;
    E3 = 0.0;
    USP7 = 1000.0;
    SCF = 1000.0;
    Proteasome = 1000.0;

equation
    JNK_plus_JNK_P = (JNK * cytoplasm + JNK_P * cytoplasm) / cytoplasm;
    IKK_plus_IKK_P = (IKK * cytoplasm + IKK_P * cytoplasm) / cytoplasm;
    DUSP_plus_DUSP_ox = (DUSP * cytoplasm + DUSP_ox * cytoplasm) / cytoplasm;
    k_ros_perm = ros_perm * membrane_area;
    insconc = Ins * extracellular / (navo * vextracellular);
    Foxo1_Pa0_tot = (cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * cytoplasm + nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * nucleus + dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * dnabound + cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * cytoplasm + nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * nucleus + dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * dnabound + cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * cytoplasm + nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * nucleus + dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * dnabound + cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * cytoplasm + nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * nucleus + dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * dnabound + cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * cytoplasm + nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * nucleus + dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * dnabound + cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * cytoplasm + nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * nucleus + dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * dnabound + cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * cytoplasm + nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * nucleus + dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * dnabound + cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * cytoplasm + nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * nucleus + dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * dnabound) / extracellular;
    Foxo1_Pa1_tot = (cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * cytoplasm + nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * nucleus + dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * dnabound + cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * cytoplasm + nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * nucleus + dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * dnabound + cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * cytoplasm + nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * nucleus + dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * dnabound + cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * cytoplasm + nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * nucleus + dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * dnabound + cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * cytoplasm + nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * nucleus + dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * dnabound + cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * cytoplasm + nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * nucleus + dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * dnabound + cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * cytoplasm + nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * nucleus + dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * dnabound + cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * cytoplasm + nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * nucleus + dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * dnabound) / extracellular;
    Foxo1_Pd0_tot = (cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * cytoplasm + nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * nucleus + dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * dnabound + cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * cytoplasm + nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * nucleus + dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * dnabound + cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * cytoplasm + nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * nucleus + dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * dnabound + cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * cytoplasm + nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * nucleus + dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * dnabound + cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * cytoplasm + nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * nucleus + dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * dnabound + cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * cytoplasm + nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * nucleus + dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * dnabound + cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * cytoplasm + nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * nucleus + dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * dnabound + cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * cytoplasm + nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * nucleus + dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * dnabound) / extracellular;
    Foxo1_Pd1_tot = (cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * cytoplasm + nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * nucleus + dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * dnabound + cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * cytoplasm + nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * nucleus + dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * dnabound + cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * cytoplasm + nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * nucleus + dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * dnabound + cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * cytoplasm + nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * nucleus + dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * dnabound + cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * cytoplasm + nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * nucleus + dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * dnabound + cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * cytoplasm + nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * nucleus + dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * dnabound + cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * cytoplasm + nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * nucleus + dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * dnabound + cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * cytoplasm + nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * nucleus + dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * dnabound) / extracellular;
    Foxo1_Pe0_tot = (cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * cytoplasm + nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * nucleus + dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * dnabound + cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * cytoplasm + nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * nucleus + dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * dnabound + cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * cytoplasm + nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * nucleus + dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * dnabound + cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * cytoplasm + nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * nucleus + dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * dnabound + cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * cytoplasm + nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * nucleus + dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * dnabound + cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * cytoplasm + nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * nucleus + dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * dnabound + cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * cytoplasm + nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * nucleus + dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * dnabound + cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * cytoplasm + nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * nucleus + dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * dnabound) / extracellular;
    Foxo1_Pe1_tot = (cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * cytoplasm + nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * nucleus + dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * dnabound + cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * cytoplasm + nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * nucleus + dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * dnabound + cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * cytoplasm + nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * nucleus + dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * dnabound + cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * cytoplasm + nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * nucleus + dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * dnabound + cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * cytoplasm + nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * nucleus + dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * dnabound + cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * cytoplasm + nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * nucleus + dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * dnabound + cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * cytoplasm + nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * nucleus + dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * dnabound + cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * cytoplasm + nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * nucleus + dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * dnabound) / extracellular;
    Foxo1_pUb0_tot = (cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * cytoplasm + nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * nucleus + dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * dnabound + cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * cytoplasm + nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * nucleus + dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * dnabound + cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * cytoplasm + nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * nucleus + dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * dnabound + cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * cytoplasm + nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * nucleus + dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * dnabound + cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * cytoplasm + nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * nucleus + dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * dnabound + cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * cytoplasm + nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * nucleus + dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * dnabound + cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * cytoplasm + nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * nucleus + dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * dnabound + cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * cytoplasm + nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * nucleus + dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * dnabound) / extracellular;
    Foxo1_pUb1_tot = (cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * cytoplasm + nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * nucleus + dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * dnabound + cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * cytoplasm + nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * nucleus + dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * dnabound + cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * cytoplasm + nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * nucleus + dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * dnabound + cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * cytoplasm + nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * nucleus + dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * dnabound + cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * cytoplasm + nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * nucleus + dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * dnabound + cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * cytoplasm + nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * nucleus + dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * dnabound + cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * cytoplasm + nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * nucleus + dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * dnabound + cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * cytoplasm + nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * nucleus + dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * dnabound) / extracellular;
    cytoplasm_Foxo1_tot = (cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0 * cytoplasm + cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1 * cytoplasm + cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0 * cytoplasm + cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1 * cytoplasm + cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0 * cytoplasm + cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1 * cytoplasm + cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0 * cytoplasm + cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1 * cytoplasm + cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0 * cytoplasm + cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1 * cytoplasm + cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0 * cytoplasm + cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1 * cytoplasm + cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0 * cytoplasm + cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1 * cytoplasm + cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0 * cytoplasm + cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1 * cytoplasm) / extracellular;
    nucleus_Foxo1_tot = (nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0 * nucleus + nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1 * nucleus + nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0 * nucleus + nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1 * nucleus + nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0 * nucleus + nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1 * nucleus + nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0 * nucleus + nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1 * nucleus + nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0 * nucleus + nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1 * nucleus + nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0 * nucleus + nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1 * nucleus + nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0 * nucleus + nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1 * nucleus + nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0 * nucleus + nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1 * nucleus) / extracellular;
    dnabound_Foxo1_tot = (dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0 * dnabound + dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1 * dnabound + dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0 * dnabound + dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1 * dnabound + dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0 * dnabound + dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1 * dnabound + dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0 * dnabound + dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1 * dnabound + dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0 * dnabound + dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1 * dnabound + dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0 * dnabound + dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1 * dnabound + dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0 * dnabound + dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1 * dnabound + dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0 * dnabound + dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1 * dnabound) / extracellular;
    Foxo1_all = (cytoplasm_Foxo1_tot * extracellular + nucleus_Foxo1_tot * extracellular + dnabound_Foxo1_tot * extracellular) / extracellular;
    ros_ext_conc = sc_ros * extracellular_ROS * extracellular / (navo * extracellular);
    ros_cyto_conc = sc_ros * ROS * cytoplasm / (navo * cytoplasm);
    PTP1B_plus_PTP1B_ox = (PTP1B * cytoplasm + PTP1B_ox * cytoplasm) / cytoplasm;
    PTEN_plus_PTEN_ox = (PTEN * cytoplasm + PTEN_ox * cytoplasm) / cytoplasm;
    NOX_total = (NOX_inact * cytoplasm + NOX * cytoplasm + NOX_deact * cytoplasm) / cytoplasm;
    IRS_total = (IRS1 * cytoplasm + IRS1_TyrP * cytoplasm + IRS1_PolySerP * cytoplasm + IRS1_TyrP_PolySerP * cytoplasm) / cytoplasm;
    InR_tot = (InR * cellsurface + Ins_InR * cellsurface + Ins_InR_P * cellsurface + Ins_2_InR_P * cellsurface + cytoplasm_InR * cytoplasm + cytoplasm_Ins_2_InR_P * cytoplasm + cytoplasm_Ins_InR_P * cytoplasm) / cytoplasm;
    InR_bound = (Ins_2_InR_P * cellsurface + Ins_InR_P * cellsurface + Ins_InR * cellsurface) / cytoplasm;
    InR_active = (Ins_2_InR_P * cellsurface + Ins_InR_P * cellsurface) / cytoplasm;
    PI345P3_mol = sc_pip * PI345P3 * cytoplasm / cytoplasm;
    PIP2_mol = sc_pip * PIP2 * cytoplasm / cytoplasm;
    rosconc = ROS * cytoplasm / (navo * vcytoplasm);
    der(NULL) = 0.0;
    der(Ins) = 0.0;
    der(InR) = (function_2(Ins_InR, cellsurface, kminus1)) + (cellsurface * function_6(Ins_InR_P, PTP1B, cellsurface, cytoplasm, kminus3)) + (function_8(cytoplasm, cytoplasm_InR, kminus4)) - (function_1(InR, Ins, cellsurface, extracellular, k1)) - (function_7(InR, cellsurface, k4));
    der(Ins_InR) = (function_1(InR, Ins, cellsurface, extracellular, k1)) - (function_2(Ins_InR, cellsurface, kminus1)) - (cellsurface * function_3(Ins_InR, cellsurface, k3));
    der(Ins_InR_P) = (cellsurface * function_3(Ins_InR, cellsurface, k3)) + (function_5(Ins_2_InR_P, cellsurface, kminus2)) + (function_12(cytoplasm, cytoplasm_Ins_InR_P, kminus4prime)) - (function_4(Ins, Ins_InR_P, cellsurface, extracellular, k2)) - (cellsurface * function_6(Ins_InR_P, PTP1B, cellsurface, cytoplasm, kminus3)) - (function_11(Ins_InR_P, cellsurface, k4prime));
    der(Ins_2_InR_P) = (function_4(Ins, Ins_InR_P, cellsurface, extracellular, k2)) + (function_10(cytoplasm, cytoplasm_Ins_2_InR_P, kminus4prime)) - (function_5(Ins_2_InR_P, cellsurface, kminus2)) - (function_9(Ins_2_InR_P, cellsurface, k4prime));
    der(cytoplasm_InR) = (function_7(InR, cellsurface, k4)) + (cytoplasm * function_13(PTP1B, cytoplasm, cytoplasm_Ins_2_InR_P, k6)) + (cytoplasm * function_14(PTP1B, cytoplasm, cytoplasm_Ins_InR_P, k6)) + (cytoplasm * function_361(cytoplasm, cytoplasm_RNA_InR, ktransl_360)) - (function_8(cytoplasm, cytoplasm_InR, kminus4)) - (cytoplasm * function_362(cytoplasm, cytoplasm_InR, kpdeg_361));
    der(cytoplasm_Ins_2_InR_P) = (function_9(Ins_2_InR_P, cellsurface, k4prime)) - (function_10(cytoplasm, cytoplasm_Ins_2_InR_P, kminus4prime)) - (cytoplasm * function_13(PTP1B, cytoplasm, cytoplasm_Ins_2_InR_P, k6));
    der(cytoplasm_Ins_InR_P) = (function_11(Ins_InR_P, cellsurface, k4prime)) - (function_12(cytoplasm, cytoplasm_Ins_InR_P, kminus4prime)) - (cytoplasm * function_14(PTP1B, cytoplasm, cytoplasm_Ins_InR_P, k6));
    der(PTP1B) = (cytoplasm * function_26(GSH, PTP1B_ox, cytoplasm, k30r)) - (cytoplasm * function_25(PTP1B, ROS, cytoplasm, k30f));
    der(IRS1_TyrP_PI3K) = (cytoplasm * function_46(IRS1_TyrP, PI3K, cyto_vol, cytoplasm, k8)) - (cytoplasm * function_47(IRS1_TyrP_PI3K, cyto_vol, cytoplasm, kminus8));
    der(PI345P3) = (cytoplasm * function_15(IRS1_TyrP_PI3K, PIP2, cytoplasm, k9, k9_basal)) - (cytoplasm * function_16(PI345P3, PTEN, cytoplasm, kminus9, kminus9_basal));
    der(PIP2) = (cytoplasm * function_16(PI345P3, PTEN, cytoplasm, kminus9, kminus9_basal)) - (cytoplasm * function_15(IRS1_TyrP_PI3K, PIP2, cytoplasm, k9, k9_basal));
    der(Akt) = (cytoplasm * function_18(Akt_P2, PP2A, cytoplasm, kminus11)) - (cytoplasm * function_17(Akt, PI345P3, cytoplasm, k11, pip3_basal));
    der(Akt_P2) = (cytoplasm * function_17(Akt, PI345P3, cytoplasm, k11, pip3_basal)) - (cytoplasm * function_18(Akt_P2, PP2A, cytoplasm, kminus11));
    der(PKC) = (cytoplasm * function_22(PKC_P, PP2A, cytoplasm, kminus12)) - (cytoplasm * function_21(PI345P3, PKC, cytoplasm, k12, pip3_basal));
    der(PKC_P) = (cytoplasm * function_21(PI345P3, PKC, cytoplasm, k12, pip3_basal)) - (cytoplasm * function_22(PKC_P, PP2A, cytoplasm, kminus12));
    der(AS160) = (cytoplasm * function_20(AS160_P, PP2A, cytoplasm, kminusr16a)) - (cytoplasm * function_19(AS160, Akt_P2, cytoplasm, kr16a));
    der(AS160_P) = (cytoplasm * function_19(AS160, Akt_P2, cytoplasm, kr16a)) - (cytoplasm * function_20(AS160_P, PP2A, cytoplasm, kminusr16a));
    der(cytoplasm_GLUT4) = (function_24(cellsurface, cellsurface_GLUT4, kminus13)) - (function_23(AS160_P, cytoplasm, cytoplasm_GLUT4, k13, k13_basal));
    der(cellsurface_GLUT4) = (function_23(AS160_P, cytoplasm, cytoplasm_GLUT4, k13, k13_basal)) - (function_24(cellsurface, cellsurface_GLUT4, kminus13));
    der(PTEN) = (cytoplasm * function_28(GSH, PTEN_ox, cytoplasm, k31r)) - (cytoplasm * function_27(PTEN, ROS, cytoplasm, k31f));
    der(PP2A) = 0.0;
    der(extracellular_ROS) = 0.0;
    der(PTP1B_ox) = (cytoplasm * function_25(PTP1B, ROS, cytoplasm, k30f)) - (cytoplasm * function_26(GSH, PTP1B_ox, cytoplasm, k30r));
    der(PTEN_ox) = (cytoplasm * function_27(PTEN, ROS, cytoplasm, k31f)) - (cytoplasm * function_28(GSH, PTEN_ox, cytoplasm, k31r));
    der(ROS) = (cytoplasm * function_25(PTP1B, ROS, cytoplasm, k30f)) + (cytoplasm * function_27(PTEN, ROS, cytoplasm, k31f)) + (cytoplasm * function_33(NOX, cytoplasm, k35f)) + (cytoplasm * function_35(Mt, cytoplasm, k36f)) + (function_36(extracellular, extracellular_ROS, k_ros_perm)) + (cytoplasm * function_59(DUSP, ROS, cytoplasm, k32f)) - (cytoplasm * function_25(PTP1B, ROS, cytoplasm, k30f)) - (cytoplasm * function_27(PTEN, ROS, cytoplasm, k31f)) - (cytoplasm * function_34(ROS, cytoplasm, cytoplasm_SOD2, k35r)) - (function_37(ROS, cytoplasm, extracellular, k_ros_perm)) - (cytoplasm * function_59(DUSP, ROS, cytoplasm, k32f));
    der(GSH) = (cytoplasm * function_26(GSH, PTP1B_ox, cytoplasm, k30r)) + (cytoplasm * function_28(GSH, PTEN_ox, cytoplasm, k31r)) + (cytoplasm * function_39(GSSG, cytoplasm, k38r)) + (cytoplasm * function_60(DUSP_ox, GSH, cytoplasm, k32r)) - (cytoplasm * function_26(GSH, PTP1B_ox, cytoplasm, k30r)) - (cytoplasm * function_28(GSH, PTEN_ox, cytoplasm, k31r)) - (cytoplasm * function_38(GSH, ROS, cytoplasm, k38f)) - (cytoplasm * function_60(DUSP_ox, GSH, cytoplasm, k32r));
    der(GSSG) = (cytoplasm * function_38(GSH, ROS, cytoplasm, k38f)) - (cytoplasm * function_39(GSSG, cytoplasm, k38r));
    der(cytoplasm_SOD2) = (cytoplasm * function_34(ROS, cytoplasm, cytoplasm_SOD2, k35r)) + (cytoplasm * function_365(cytoplasm, cytoplasm_RNA_SOD2, ktransl_365)) - (cytoplasm * function_34(ROS, cytoplasm, cytoplasm_SOD2, k35r)) - (cytoplasm * function_366(cytoplasm, cytoplasm_SOD2, kpdeg_366));
    der(NOX_inact) = (cytoplasm * function_31(NOX, cytoplasm, k34r2)) + (cytoplasm * function_32(NOX_deact, cytoplasm, k34r3)) - (function_29(Ins, NOX_inact, cytoplasm, extracellular, k34f));
    der(NOX) = (function_29(Ins, NOX_inact, cytoplasm, extracellular, k34f)) + (cytoplasm * function_33(NOX, cytoplasm, k35f)) - (cytoplasm * function_30(NOX, cytoplasm, k34r1)) - (cytoplasm * function_31(NOX, cytoplasm, k34r2)) - (cytoplasm * function_33(NOX, cytoplasm, k35f));
    der(NOX_deact) = (cytoplasm * function_30(NOX, cytoplasm, k34r1)) - (cytoplasm * function_32(NOX_deact, cytoplasm, k34r3));
    der(Mt) = 0.0;
    der(IRS1) = (cytoplasm * function_41(IRS1_TyrP, PTP1B, cyto_vol, cytoplasm, kminus7a)) + (cytoplasm * function_43(IRS1_PolySerP, PP2A, cyto_vol, cytoplasm, kminus7b)) + (cytoplasm * function_48(cytoplasm, k_irs1_basal_syn)) - (cytoplasm * function_40(IRS1, IRp, Ins_2_InR_P, Ins_InR_P, cellsurface, cyto_vol, cytoplasm, k7)) - (cytoplasm * function_42(IRS1, PKC_P, cyto_vol, cytoplasm, k2psp)) - (cytoplasm * function_49(IRS1, cytoplasm, k_irs1_basal_degr)) - (cytoplasm * function_53(IKK_P, IRS1, Km51, cytoplasm, kcat51)) - (cytoplasm * function_54(IRS1, JNK_P, Km52, cytoplasm, kcat52));
    der(IRS1_TyrP) = (cytoplasm * function_40(IRS1, IRp, Ins_2_InR_P, Ins_InR_P, cellsurface, cyto_vol, cytoplasm, k7)) + (cytoplasm * function_45(IRS1_TyrP_PolySerP, PP2A, cyto_vol, cytoplasm, kminus7b)) + (cytoplasm * function_47(IRS1_TyrP_PI3K, cyto_vol, cytoplasm, kminus8)) - (cytoplasm * function_41(IRS1_TyrP, PTP1B, cyto_vol, cytoplasm, kminus7a)) - (cytoplasm * function_44(IRS1_TyrP, PKC_P, cyto_vol, cytoplasm, k2psp)) - (cytoplasm * function_46(IRS1_TyrP, PI3K, cyto_vol, cytoplasm, k8)) - (cytoplasm * function_50(IRS1_TyrP, cytoplasm, k_irs1_basal_degr));
    der(IRS1_PolySerP) = (cytoplasm * function_42(IRS1, PKC_P, cyto_vol, cytoplasm, k2psp)) + (cytoplasm * function_53(IKK_P, IRS1, Km51, cytoplasm, kcat51)) + (cytoplasm * function_54(IRS1, JNK_P, Km52, cytoplasm, kcat52)) - (cytoplasm * function_43(IRS1_PolySerP, PP2A, cyto_vol, cytoplasm, kminus7b)) - (cytoplasm * function_51(IRS1_PolySerP, cytoplasm, k_irs1_polyserp_degr));
    der(IRS1_TyrP_PolySerP) = (cytoplasm * function_44(IRS1_TyrP, PKC_P, cyto_vol, cytoplasm, k2psp)) - (cytoplasm * function_45(IRS1_TyrP_PolySerP, PP2A, cyto_vol, cytoplasm, kminus7b)) - (cytoplasm * function_52(IRS1_TyrP_PolySerP, cytoplasm, k_irs1_polyserp_degr));
    der(PI3K) = (cytoplasm * function_47(IRS1_TyrP_PI3K, cyto_vol, cytoplasm, kminus8)) - (cytoplasm * function_46(IRS1_TyrP, PI3K, cyto_vol, cytoplasm, k8));
    der(JNK_P) = (cytoplasm * function_55(JNK, ROS, alpha_ox, cytoplasm, k42f)) - (cytoplasm * function_56(DUSP, JNK_P, cytoplasm, k42r));
    der(IKK_P) = (cytoplasm * function_57(IKK, ROS, cytoplasm, k43f)) - (cytoplasm * function_58(DUSP, IKK_P, cytoplasm, k43r));
    der(JNK) = (cytoplasm * function_56(DUSP, JNK_P, cytoplasm, k42r)) - (cytoplasm * function_55(JNK, ROS, alpha_ox, cytoplasm, k42f));
    der(IKK) = (cytoplasm * function_58(DUSP, IKK_P, cytoplasm, k43r)) - (cytoplasm * function_57(IKK, ROS, cytoplasm, k43f));
    der(DUSP) = (cytoplasm * function_60(DUSP_ox, GSH, cytoplasm, k32r)) - (cytoplasm * function_59(DUSP, ROS, cytoplasm, k32f));
    der(DUSP_ox) = (cytoplasm * function_59(DUSP, ROS, cytoplasm, k32f)) - (cytoplasm * function_60(DUSP_ox, GSH, cytoplasm, k32r));
    der(null) = 0.0;
    der(degr_Foxo1) = (cytoplasm * function_318(Proteasome, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kdeg_317)) + (cytoplasm * function_319(Proteasome, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kdeg_318)) + (cytoplasm * function_320(Proteasome, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kdeg_319)) + (cytoplasm * function_321(Proteasome, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kdeg_320)) + (cytoplasm * function_322(Proteasome, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, kdeg_321)) + (cytoplasm * function_323(Proteasome, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, kdeg_322)) + (cytoplasm * function_324(Proteasome, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, kdeg_323)) + (cytoplasm * function_325(Proteasome, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, kdeg_324)) ;
    der(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0) = (cytoplasm * function_61(E2F1, cytoplasm, ksynth_60)) + (function_63(ktr_62, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)) + (cytoplasm * function_174(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, kdephos_173)) + (cytoplasm * function_210(PP2A, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kdephos_209)) + (cytoplasm * function_252(PP2A, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kdephos_251)) - (function_62(cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, ktr_61)) - (cytoplasm * function_126(Akt_P2, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_125)) - (cytoplasm * function_150(SGK, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_149)) - (cytoplasm * function_198(IKK_P, by_ikk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_197)) - (cytoplasm * function_246(JNK_P, by_jnk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_245)) - (cytoplasm * function_294(SCF, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kub_293));
    der(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0) = (function_62(cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, ktr_61)) + (function_65(dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, ktr_64)) + (nucleus * function_175(PP2A, cytoplasm, kdephos_174, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0)) + (nucleus * function_211(PP2A, cytoplasm, kdephos_210, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)) + (nucleus * function_253(PP2A, cytoplasm, kdephos_252, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)) - (function_63(ktr_62, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)) - (function_64(ktr_63, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)) - (nucleus * function_127(Akt_P2, cytoplasm, kkin_126, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)) - (nucleus * function_151(SGK, cytoplasm, kkin_150, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)) - (nucleus * function_199(IKK_P, by_ikk_phos_factor, cytoplasm, kkin_198, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)) - (nucleus * function_247(JNK_P, by_jnk_phos_factor, cytoplasm, kkin_246, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)) - (nucleus * function_295(SCF, cytoplasm, kub_294, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0));
    der(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0) = (function_64(ktr_63, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)) + (dnabound * function_176(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, kdephos_175)) + (dnabound * function_212(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kdephos_211)) + (dnabound * function_254(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kdephos_253)) - (function_65(dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, ktr_64)) - (dnabound * function_128(Akt_P2, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_127)) - (dnabound * function_152(SGK, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_151)) - (dnabound * function_200(IKK_P, by_ikk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_199)) - (dnabound * function_248(JNK_P, by_jnk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_247)) - (dnabound * function_296(SCF, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kub_295));
    der(cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1) = (function_67(ktr_66, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1)) + (cytoplasm * function_177(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, kdephos_176)) + (cytoplasm * function_213(PP2A, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kdephos_212)) + (cytoplasm * function_255(PP2A, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kdephos_254)) + (cytoplasm * function_294(SCF, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kub_293)) - (function_66(cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, ktr_65)) - (cytoplasm * function_129(Akt_P2, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_128)) - (cytoplasm * function_153(SGK, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_152)) - (cytoplasm * function_201(IKK_P, by_ikk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_200)) - (cytoplasm * function_249(JNK_P, by_jnk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_248)) - (cytoplasm * function_318(Proteasome, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kdeg_317));
    der(nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1) = (function_66(cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, ktr_65)) + (function_69(dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, ktr_68)) + (nucleus * function_178(PP2A, cytoplasm, kdephos_177, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1)) + (nucleus * function_214(PP2A, cytoplasm, kdephos_213, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1)) + (nucleus * function_256(PP2A, cytoplasm, kdephos_255, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1)) + (nucleus * function_295(SCF, cytoplasm, kub_294, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)) - (function_67(ktr_66, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1)) - (function_68(ktr_67, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1)) - (nucleus * function_130(Akt_P2, cytoplasm, kkin_129, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1)) - (nucleus * function_154(SGK, cytoplasm, kkin_153, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1)) - (nucleus * function_202(IKK_P, by_ikk_phos_factor, cytoplasm, kkin_201, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1)) - (nucleus * function_250(JNK_P, by_jnk_phos_factor, cytoplasm, kkin_249, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1));
    der(dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1) = (function_68(ktr_67, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1)) + (dnabound * function_179(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, kdephos_178)) + (dnabound * function_215(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, kdephos_214)) + (dnabound * function_257(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, kdephos_256)) + (dnabound * function_296(SCF, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kub_295)) - (function_69(dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, ktr_68)) - (dnabound * function_131(Akt_P2, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_130)) - (dnabound * function_155(SGK, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_154)) - (dnabound * function_203(IKK_P, by_ikk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_202)) - (dnabound * function_251(JNK_P, by_jnk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_250));
    der(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0) = (function_71(ktr_70, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)) + (cytoplasm * function_180(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, kdephos_179)) + (cytoplasm * function_216(PP2A, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kdephos_215)) + (cytoplasm * function_246(JNK_P, by_jnk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_245)) - (function_70(cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, ktr_69)) - (cytoplasm * function_132(Akt_P2, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_131)) - (cytoplasm * function_156(SGK, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_155)) - (cytoplasm * function_204(IKK_P, by_ikk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_203)) - (cytoplasm * function_252(PP2A, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kdephos_251)) - (cytoplasm * function_297(SCF, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kub_296));
    der(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0) = (function_70(cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, ktr_69)) + (function_73(dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, ktr_72)) + (nucleus * function_181(PP2A, cytoplasm, kdephos_180, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0)) + (nucleus * function_217(PP2A, cytoplasm, kdephos_216, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)) + (nucleus * function_247(JNK_P, by_jnk_phos_factor, cytoplasm, kkin_246, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)) - (function_71(ktr_70, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)) - (function_72(ktr_71, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)) - (nucleus * function_133(Akt_P2, cytoplasm, kkin_132, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)) - (nucleus * function_157(SGK, cytoplasm, kkin_156, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)) - (nucleus * function_205(IKK_P, by_ikk_phos_factor, cytoplasm, kkin_204, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)) - (nucleus * function_253(PP2A, cytoplasm, kdephos_252, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)) - (nucleus * function_298(SCF, cytoplasm, kub_297, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0));
    der(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0) = (function_72(ktr_71, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)) + (dnabound * function_182(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, kdephos_181)) + (dnabound * function_218(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kdephos_217)) + (dnabound * function_248(JNK_P, by_jnk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_247)) - (function_73(dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, ktr_72)) - (dnabound * function_134(Akt_P2, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_133)) - (dnabound * function_158(SGK, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_157)) - (dnabound * function_206(IKK_P, by_ikk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_205)) - (dnabound * function_254(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kdephos_253)) - (dnabound * function_299(SCF, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kub_298));
    der(cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1) = (function_75(ktr_74, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1)) + (cytoplasm * function_183(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, kdephos_182)) + (cytoplasm * function_219(PP2A, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kdephos_218)) + (cytoplasm * function_249(JNK_P, by_jnk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_248)) + (cytoplasm * function_297(SCF, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kub_296)) - (function_74(cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, ktr_73)) - (cytoplasm * function_135(Akt_P2, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_134)) - (cytoplasm * function_159(SGK, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_158)) - (cytoplasm * function_207(IKK_P, by_ikk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_206)) - (cytoplasm * function_255(PP2A, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kdephos_254)) - (cytoplasm * function_319(Proteasome, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kdeg_318));
    der(nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1) = (function_74(cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, ktr_73)) + (function_77(dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, ktr_76)) + (nucleus * function_184(PP2A, cytoplasm, kdephos_183, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1)) + (nucleus * function_220(PP2A, cytoplasm, kdephos_219, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1)) + (nucleus * function_250(JNK_P, by_jnk_phos_factor, cytoplasm, kkin_249, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1)) + (nucleus * function_298(SCF, cytoplasm, kub_297, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)) - (function_75(ktr_74, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1)) - (function_76(ktr_75, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1)) - (nucleus * function_136(Akt_P2, cytoplasm, kkin_135, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1)) - (nucleus * function_160(SGK, cytoplasm, kkin_159, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1)) - (nucleus * function_208(IKK_P, by_ikk_phos_factor, cytoplasm, kkin_207, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1)) - (nucleus * function_256(PP2A, cytoplasm, kdephos_255, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1));
    der(dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1) = (function_76(ktr_75, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1)) + (dnabound * function_185(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, kdephos_184)) + (dnabound * function_221(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, kdephos_220)) + (dnabound * function_251(JNK_P, by_jnk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_250)) + (dnabound * function_299(SCF, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kub_298)) - (function_77(dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, ktr_76)) - (dnabound * function_137(Akt_P2, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_136)) - (dnabound * function_161(SGK, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_160)) - (dnabound * function_209(IKK_P, by_ikk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_208)) - (dnabound * function_257(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, kdephos_256));
    der(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0) = (function_79(ktr_78, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)) + (cytoplasm * function_186(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, kdephos_185)) + (cytoplasm * function_198(IKK_P, by_ikk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_197)) + (cytoplasm * function_264(PP2A, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kdephos_263)) - (function_78(cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, ktr_77)) - (cytoplasm * function_138(Akt_P2, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_137)) - (cytoplasm * function_162(SGK, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_161)) - (cytoplasm * function_210(PP2A, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kdephos_209)) - (cytoplasm * function_258(JNK_P, by_jnk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_257)) - (cytoplasm * function_300(SCF, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kub_299));
    der(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0) = (function_78(cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, ktr_77)) + (function_81(dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, ktr_80)) + (nucleus * function_187(PP2A, cytoplasm, kdephos_186, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0)) + (nucleus * function_199(IKK_P, by_ikk_phos_factor, cytoplasm, kkin_198, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)) + (nucleus * function_265(PP2A, cytoplasm, kdephos_264, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)) - (function_79(ktr_78, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)) - (function_80(ktr_79, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)) - (nucleus * function_139(Akt_P2, cytoplasm, kkin_138, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)) - (nucleus * function_163(SGK, cytoplasm, kkin_162, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)) - (nucleus * function_211(PP2A, cytoplasm, kdephos_210, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)) - (nucleus * function_259(JNK_P, by_jnk_phos_factor, cytoplasm, kkin_258, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)) - (nucleus * function_301(SCF, cytoplasm, kub_300, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0));
    der(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0) = (function_80(ktr_79, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)) + (dnabound * function_188(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, kdephos_187)) + (dnabound * function_200(IKK_P, by_ikk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_199)) + (dnabound * function_266(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kdephos_265)) - (function_81(dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, ktr_80)) - (dnabound * function_140(Akt_P2, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_139)) - (dnabound * function_164(SGK, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_163)) - (dnabound * function_212(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kdephos_211)) - (dnabound * function_260(JNK_P, by_jnk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_259)) - (dnabound * function_302(SCF, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kub_301));
    der(cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1) = (function_83(ktr_82, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1)) + (cytoplasm * function_189(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, kdephos_188)) + (cytoplasm * function_201(IKK_P, by_ikk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_200)) + (cytoplasm * function_267(PP2A, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kdephos_266)) + (cytoplasm * function_300(SCF, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kub_299)) - (function_82(cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, ktr_81)) - (cytoplasm * function_141(Akt_P2, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_140)) - (cytoplasm * function_165(SGK, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_164)) - (cytoplasm * function_213(PP2A, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kdephos_212)) - (cytoplasm * function_261(JNK_P, by_jnk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_260)) - (cytoplasm * function_320(Proteasome, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kdeg_319));
    der(nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1) = (function_82(cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, ktr_81)) + (function_85(dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, ktr_84)) + (nucleus * function_190(PP2A, cytoplasm, kdephos_189, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1)) + (nucleus * function_202(IKK_P, by_ikk_phos_factor, cytoplasm, kkin_201, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1)) + (nucleus * function_268(PP2A, cytoplasm, kdephos_267, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1)) + (nucleus * function_301(SCF, cytoplasm, kub_300, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)) - (function_83(ktr_82, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1)) - (function_84(ktr_83, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1)) - (nucleus * function_142(Akt_P2, cytoplasm, kkin_141, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1)) - (nucleus * function_166(SGK, cytoplasm, kkin_165, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1)) - (nucleus * function_214(PP2A, cytoplasm, kdephos_213, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1)) - (nucleus * function_262(JNK_P, by_jnk_phos_factor, cytoplasm, kkin_261, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1));
    der(dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1) = (function_84(ktr_83, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1)) + (dnabound * function_191(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, kdephos_190)) + (dnabound * function_203(IKK_P, by_ikk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_202)) + (dnabound * function_269(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, kdephos_268)) + (dnabound * function_302(SCF, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kub_301)) - (function_85(dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, ktr_84)) - (dnabound * function_143(Akt_P2, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_142)) - (dnabound * function_167(SGK, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_166)) - (dnabound * function_215(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, kdephos_214)) - (dnabound * function_263(JNK_P, by_jnk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_262));
    der(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0) = (function_87(ktr_86, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)) + (cytoplasm * function_192(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_191)) + (cytoplasm * function_204(IKK_P, by_ikk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_203)) + (cytoplasm * function_258(JNK_P, by_jnk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_257)) - (function_86(cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, ktr_85)) - (cytoplasm * function_144(Akt_P2, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kkin_143)) - (cytoplasm * function_168(SGK, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kkin_167)) - (cytoplasm * function_216(PP2A, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kdephos_215)) - (cytoplasm * function_264(PP2A, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kdephos_263)) - (cytoplasm * function_303(SCF, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kub_302));
    der(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0) = (function_86(cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, ktr_85)) + (function_89(dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, ktr_88)) + (nucleus * function_193(PP2A, cytoplasm, kdephos_192, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0)) + (nucleus * function_205(IKK_P, by_ikk_phos_factor, cytoplasm, kkin_204, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)) + (nucleus * function_259(JNK_P, by_jnk_phos_factor, cytoplasm, kkin_258, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)) - (function_87(ktr_86, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)) - (function_88(ktr_87, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)) - (nucleus * function_145(Akt_P2, cytoplasm, kkin_144, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)) - (nucleus * function_169(SGK, cytoplasm, kkin_168, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)) - (nucleus * function_217(PP2A, cytoplasm, kdephos_216, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)) - (nucleus * function_265(PP2A, cytoplasm, kdephos_264, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)) - (nucleus * function_304(SCF, cytoplasm, kub_303, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0));
    der(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0) = (function_88(ktr_87, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)) + (dnabound * function_194(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_193)) + (dnabound * function_206(IKK_P, by_ikk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_205)) + (dnabound * function_260(JNK_P, by_jnk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_259)) - (function_89(dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, ktr_88)) - (dnabound * function_146(Akt_P2, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kkin_145)) - (dnabound * function_170(SGK, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kkin_169)) - (dnabound * function_218(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kdephos_217)) - (dnabound * function_266(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kdephos_265)) - (dnabound * function_305(SCF, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kub_304));
    der(cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1) = (function_91(ktr_90, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1)) + (cytoplasm * function_195(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_194)) + (cytoplasm * function_207(IKK_P, by_ikk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_206)) + (cytoplasm * function_261(JNK_P, by_jnk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_260)) + (cytoplasm * function_303(SCF, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kub_302)) - (function_90(cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, ktr_89)) - (cytoplasm * function_147(Akt_P2, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kkin_146)) - (cytoplasm * function_171(SGK, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kkin_170)) - (cytoplasm * function_219(PP2A, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kdephos_218)) - (cytoplasm * function_267(PP2A, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kdephos_266)) - (cytoplasm * function_321(Proteasome, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kdeg_320));
    der(nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1) = (function_90(cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, ktr_89)) + (function_93(dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, ktr_92)) + (nucleus * function_196(PP2A, cytoplasm, kdephos_195, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1)) + (nucleus * function_208(IKK_P, by_ikk_phos_factor, cytoplasm, kkin_207, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1)) + (nucleus * function_262(JNK_P, by_jnk_phos_factor, cytoplasm, kkin_261, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1)) + (nucleus * function_304(SCF, cytoplasm, kub_303, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)) - (function_91(ktr_90, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1)) - (function_92(ktr_91, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1)) - (nucleus * function_148(Akt_P2, cytoplasm, kkin_147, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1)) - (nucleus * function_172(SGK, cytoplasm, kkin_171, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1)) - (nucleus * function_220(PP2A, cytoplasm, kdephos_219, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1)) - (nucleus * function_268(PP2A, cytoplasm, kdephos_267, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1));
    der(dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1) = (function_92(ktr_91, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1)) + (dnabound * function_197(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_196)) + (dnabound * function_209(IKK_P, by_ikk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_208)) + (dnabound * function_263(JNK_P, by_jnk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_262)) + (dnabound * function_305(SCF, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kub_304)) - (function_93(dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, ktr_92)) - (dnabound * function_149(Akt_P2, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, kkin_148)) - (dnabound * function_173(SGK, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, kkin_172)) - (dnabound * function_221(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, kdephos_220)) - (dnabound * function_269(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, kdephos_268));
    der(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0) = (function_95(ktr_94, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0)) + (cytoplasm * function_126(Akt_P2, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_125)) + (cytoplasm * function_150(SGK, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_149)) + (cytoplasm * function_234(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, kdephos_233)) + (cytoplasm * function_276(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, kdephos_275)) - (function_94(cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, ktr_93)) - (cytoplasm * function_174(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, kdephos_173)) - (cytoplasm * function_222(IKK_P, by_ikk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, kkin_221)) - (cytoplasm * function_270(JNK_P, by_jnk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, kkin_269)) - (cytoplasm * function_306(SCF, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, kub_305));
    der(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0) = (function_94(cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, ktr_93)) + (function_97(dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, ktr_96)) + (nucleus * function_127(Akt_P2, cytoplasm, kkin_126, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)) + (nucleus * function_151(SGK, cytoplasm, kkin_150, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb0)) + (nucleus * function_235(PP2A, cytoplasm, kdephos_234, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0)) + (nucleus * function_277(PP2A, cytoplasm, kdephos_276, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0)) - (function_95(ktr_94, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0)) - (function_96(ktr_95, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0)) - (nucleus * function_175(PP2A, cytoplasm, kdephos_174, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0)) - (nucleus * function_223(IKK_P, by_ikk_phos_factor, cytoplasm, kkin_222, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0)) - (nucleus * function_271(JNK_P, by_jnk_phos_factor, cytoplasm, kkin_270, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0)) - (nucleus * function_307(SCF, cytoplasm, kub_306, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0));
    der(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0) = (function_96(ktr_95, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0)) + (dnabound * function_128(Akt_P2, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_127)) + (dnabound * function_152(SGK, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, kkin_151)) + (dnabound * function_236(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, kdephos_235)) + (dnabound * function_278(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, kdephos_277)) - (function_97(dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, ktr_96)) - (dnabound * function_176(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, kdephos_175)) - (dnabound * function_224(IKK_P, by_ikk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, kkin_223)) - (dnabound * function_272(JNK_P, by_jnk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, kkin_271)) - (dnabound * function_308(SCF, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, kub_307));
    der(cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1) = (function_99(ktr_98, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1)) + (cytoplasm * function_129(Akt_P2, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_128)) + (cytoplasm * function_153(SGK, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_152)) + (cytoplasm * function_237(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, kdephos_236)) + (cytoplasm * function_279(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, kdephos_278)) + (cytoplasm * function_306(SCF, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, kub_305)) - (function_98(cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, ktr_97)) - (cytoplasm * function_177(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, kdephos_176)) - (cytoplasm * function_225(IKK_P, by_ikk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, kkin_224)) - (cytoplasm * function_273(JNK_P, by_jnk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, kkin_272)) - (cytoplasm * function_322(Proteasome, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, kdeg_321));
    der(nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1) = (function_98(cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, ktr_97)) + (function_101(dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, ktr_100)) + (nucleus * function_130(Akt_P2, cytoplasm, kkin_129, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1)) + (nucleus * function_154(SGK, cytoplasm, kkin_153, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe0_pUb1)) + (nucleus * function_238(PP2A, cytoplasm, kdephos_237, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1)) + (nucleus * function_280(PP2A, cytoplasm, kdephos_279, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1)) + (nucleus * function_307(SCF, cytoplasm, kub_306, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0)) - (function_99(ktr_98, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1)) - (function_100(ktr_99, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1)) - (nucleus * function_178(PP2A, cytoplasm, kdephos_177, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1)) - (nucleus * function_226(IKK_P, by_ikk_phos_factor, cytoplasm, kkin_225, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1)) - (nucleus * function_274(JNK_P, by_jnk_phos_factor, cytoplasm, kkin_273, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1));
    der(dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1) = (function_100(ktr_99, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1)) + (dnabound * function_131(Akt_P2, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_130)) + (dnabound * function_155(SGK, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, kkin_154)) + (dnabound * function_239(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, kdephos_238)) + (dnabound * function_281(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, kdephos_280)) + (dnabound * function_308(SCF, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, kub_307)) - (function_101(dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, ktr_100)) - (dnabound * function_179(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, kdephos_178)) - (dnabound * function_227(IKK_P, by_ikk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, kkin_226)) - (dnabound * function_275(JNK_P, by_jnk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, kkin_274));
    der(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0) = (function_103(ktr_102, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0)) + (cytoplasm * function_132(Akt_P2, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_131)) + (cytoplasm * function_156(SGK, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_155)) + (cytoplasm * function_240(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_239)) + (cytoplasm * function_270(JNK_P, by_jnk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, kkin_269)) - (function_102(cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, ktr_101)) - (cytoplasm * function_180(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, kdephos_179)) - (cytoplasm * function_228(IKK_P, by_ikk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, kkin_227)) - (cytoplasm * function_276(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, kdephos_275)) - (cytoplasm * function_309(SCF, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, kub_308));
    der(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0) = (function_102(cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, ktr_101)) + (function_105(dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, ktr_104)) + (nucleus * function_133(Akt_P2, cytoplasm, kkin_132, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)) + (nucleus * function_157(SGK, cytoplasm, kkin_156, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb0)) + (nucleus * function_241(PP2A, cytoplasm, kdephos_240, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0)) + (nucleus * function_271(JNK_P, by_jnk_phos_factor, cytoplasm, kkin_270, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0)) - (function_103(ktr_102, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0)) - (function_104(ktr_103, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0)) - (nucleus * function_181(PP2A, cytoplasm, kdephos_180, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0)) - (nucleus * function_229(IKK_P, by_ikk_phos_factor, cytoplasm, kkin_228, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0)) - (nucleus * function_277(PP2A, cytoplasm, kdephos_276, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0)) - (nucleus * function_310(SCF, cytoplasm, kub_309, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0));
    der(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0) = (function_104(ktr_103, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0)) + (dnabound * function_134(Akt_P2, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_133)) + (dnabound * function_158(SGK, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, kkin_157)) + (dnabound * function_242(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_241)) + (dnabound * function_272(JNK_P, by_jnk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, kkin_271)) - (function_105(dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, ktr_104)) - (dnabound * function_182(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, kdephos_181)) - (dnabound * function_230(IKK_P, by_ikk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, kkin_229)) - (dnabound * function_278(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, kdephos_277)) - (dnabound * function_311(SCF, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, kub_310));
    der(cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1) = (function_107(ktr_106, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1)) + (cytoplasm * function_135(Akt_P2, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_134)) + (cytoplasm * function_159(SGK, cytoplasm, cytoplasm_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_158)) + (cytoplasm * function_243(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_242)) + (cytoplasm * function_273(JNK_P, by_jnk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, kkin_272)) + (cytoplasm * function_309(SCF, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, kub_308)) - (function_106(cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, ktr_105)) - (cytoplasm * function_183(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, kdephos_182)) - (cytoplasm * function_231(IKK_P, by_ikk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, kkin_230)) - (cytoplasm * function_279(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, kdephos_278)) - (cytoplasm * function_323(Proteasome, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, kdeg_322));
    der(nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1) = (function_106(cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, ktr_105)) + (function_109(dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, ktr_108)) + (nucleus * function_136(Akt_P2, cytoplasm, kkin_135, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1)) + (nucleus * function_160(SGK, cytoplasm, kkin_159, nucleus, nucleus_Foxo1_Pa0_Pd0_Pe1_pUb1)) + (nucleus * function_244(PP2A, cytoplasm, kdephos_243, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1)) + (nucleus * function_274(JNK_P, by_jnk_phos_factor, cytoplasm, kkin_273, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1)) + (nucleus * function_310(SCF, cytoplasm, kub_309, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0)) - (function_107(ktr_106, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1)) - (function_108(ktr_107, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1)) - (nucleus * function_184(PP2A, cytoplasm, kdephos_183, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1)) - (nucleus * function_232(IKK_P, by_ikk_phos_factor, cytoplasm, kkin_231, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1)) - (nucleus * function_280(PP2A, cytoplasm, kdephos_279, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1));
    der(dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1) = (function_108(ktr_107, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1)) + (dnabound * function_137(Akt_P2, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_136)) + (dnabound * function_161(SGK, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, kkin_160)) + (dnabound * function_245(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_244)) + (dnabound * function_275(JNK_P, by_jnk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, kkin_274)) + (dnabound * function_311(SCF, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, kub_310)) - (function_109(dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, ktr_108)) - (dnabound * function_185(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, kdephos_184)) - (dnabound * function_233(IKK_P, by_ikk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, kkin_232)) - (dnabound * function_281(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, kdephos_280));
    der(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0) = (function_111(ktr_110, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0)) + (cytoplasm * function_138(Akt_P2, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_137)) + (cytoplasm * function_162(SGK, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_161)) + (cytoplasm * function_222(IKK_P, by_ikk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb0, kkin_221)) + (cytoplasm * function_288(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_287)) - (function_110(cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, ktr_109)) - (cytoplasm * function_186(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, kdephos_185)) - (cytoplasm * function_234(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, kdephos_233)) - (cytoplasm * function_282(JNK_P, by_jnk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, kkin_281)) - (cytoplasm * function_312(SCF, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, kub_311));
    der(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0) = (function_110(cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, ktr_109)) + (function_113(dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, ktr_112)) + (nucleus * function_139(Akt_P2, cytoplasm, kkin_138, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)) + (nucleus * function_163(SGK, cytoplasm, kkin_162, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb0)) + (nucleus * function_223(IKK_P, by_ikk_phos_factor, cytoplasm, kkin_222, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb0)) + (nucleus * function_289(PP2A, cytoplasm, kdephos_288, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0)) - (function_111(ktr_110, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0)) - (function_112(ktr_111, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0)) - (nucleus * function_187(PP2A, cytoplasm, kdephos_186, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0)) - (nucleus * function_235(PP2A, cytoplasm, kdephos_234, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0)) - (nucleus * function_283(JNK_P, by_jnk_phos_factor, cytoplasm, kkin_282, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0)) - (nucleus * function_313(SCF, cytoplasm, kub_312, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0));
    der(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0) = (function_112(ktr_111, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0)) + (dnabound * function_140(Akt_P2, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_139)) + (dnabound * function_164(SGK, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, kkin_163)) + (dnabound * function_224(IKK_P, by_ikk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, kkin_223)) + (dnabound * function_290(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_289)) - (function_113(dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, ktr_112)) - (dnabound * function_188(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, kdephos_187)) - (dnabound * function_236(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, kdephos_235)) - (dnabound * function_284(JNK_P, by_jnk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, kkin_283)) - (dnabound * function_314(SCF, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, kub_313));
    der(cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1) = (function_115(ktr_114, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1)) + (cytoplasm * function_141(Akt_P2, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_140)) + (cytoplasm * function_165(SGK, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_164)) + (cytoplasm * function_225(IKK_P, by_ikk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe0_pUb1, kkin_224)) + (cytoplasm * function_291(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_290)) + (cytoplasm * function_312(SCF, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, kub_311)) - (function_114(cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, ktr_113)) - (cytoplasm * function_189(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, kdephos_188)) - (cytoplasm * function_237(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, kdephos_236)) - (cytoplasm * function_285(JNK_P, by_jnk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, kkin_284)) - (cytoplasm * function_324(Proteasome, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, kdeg_323));
    der(nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1) = (function_114(cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, ktr_113)) + (function_117(dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, ktr_116)) + (nucleus * function_142(Akt_P2, cytoplasm, kkin_141, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1)) + (nucleus * function_166(SGK, cytoplasm, kkin_165, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe0_pUb1)) + (nucleus * function_226(IKK_P, by_ikk_phos_factor, cytoplasm, kkin_225, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe0_pUb1)) + (nucleus * function_292(PP2A, cytoplasm, kdephos_291, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1)) + (nucleus * function_313(SCF, cytoplasm, kub_312, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0)) - (function_115(ktr_114, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1)) - (function_116(ktr_115, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1)) - (nucleus * function_190(PP2A, cytoplasm, kdephos_189, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1)) - (nucleus * function_238(PP2A, cytoplasm, kdephos_237, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1)) - (nucleus * function_286(JNK_P, by_jnk_phos_factor, cytoplasm, kkin_285, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1));
    der(dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1) = (function_116(ktr_115, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1)) + (dnabound * function_143(Akt_P2, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_142)) + (dnabound * function_167(SGK, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, kkin_166)) + (dnabound * function_227(IKK_P, by_ikk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, kkin_226)) + (dnabound * function_293(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_292)) + (dnabound * function_314(SCF, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, kub_313)) - (function_117(dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, ktr_116)) - (dnabound * function_191(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, kdephos_190)) - (dnabound * function_239(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, kdephos_238)) - (dnabound * function_287(JNK_P, by_jnk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, kkin_286));
    der(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0) = (function_119(ktr_118, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0)) + (cytoplasm * function_144(Akt_P2, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kkin_143)) + (cytoplasm * function_168(SGK, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb0, kkin_167)) + (cytoplasm * function_228(IKK_P, by_ikk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb0, kkin_227)) + (cytoplasm * function_282(JNK_P, by_jnk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb0, kkin_281)) - (function_118(cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, ktr_117)) - (cytoplasm * function_192(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_191)) - (cytoplasm * function_240(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_239)) - (cytoplasm * function_288(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_287)) - (cytoplasm * function_315(SCF, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, kub_314));
    der(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0) = (function_118(cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, ktr_117)) + (function_121(dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, ktr_120)) + (nucleus * function_145(Akt_P2, cytoplasm, kkin_144, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)) + (nucleus * function_169(SGK, cytoplasm, kkin_168, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb0)) + (nucleus * function_229(IKK_P, by_ikk_phos_factor, cytoplasm, kkin_228, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb0)) + (nucleus * function_283(JNK_P, by_jnk_phos_factor, cytoplasm, kkin_282, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb0)) - (function_119(ktr_118, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0)) - (function_120(ktr_119, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0)) - (nucleus * function_193(PP2A, cytoplasm, kdephos_192, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0)) - (nucleus * function_241(PP2A, cytoplasm, kdephos_240, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0)) - (nucleus * function_289(PP2A, cytoplasm, kdephos_288, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0)) - (nucleus * function_316(SCF, cytoplasm, kub_315, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0));
    der(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0) = (function_120(ktr_119, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0)) + (dnabound * function_146(Akt_P2, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kkin_145)) + (dnabound * function_170(SGK, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, kkin_169)) + (dnabound * function_230(IKK_P, by_ikk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, kkin_229)) + (dnabound * function_284(JNK_P, by_jnk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, kkin_283)) - (function_121(dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, ktr_120)) - (dnabound * function_194(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_193)) - (dnabound * function_242(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_241)) - (dnabound * function_290(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, kdephos_289)) - (dnabound * function_317(SCF, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, kub_316));
    der(cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1) = (function_123(ktr_122, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1)) + (cytoplasm * function_147(Akt_P2, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kkin_146)) + (cytoplasm * function_171(SGK, cytoplasm, cytoplasm_Foxo1_Pa0_Pd1_Pe1_pUb1, kkin_170)) + (cytoplasm * function_231(IKK_P, by_ikk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa1_Pd0_Pe1_pUb1, kkin_230)) + (cytoplasm * function_285(JNK_P, by_jnk_phos_factor, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe0_pUb1, kkin_284)) + (cytoplasm * function_315(SCF, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb0, kub_314)) - (function_122(cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, ktr_121)) - (cytoplasm * function_195(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_194)) - (cytoplasm * function_243(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_242)) - (cytoplasm * function_291(PP2A, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_290)) - (cytoplasm * function_325(Proteasome, cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, kdeg_324));
    der(nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1) = (function_122(cytoplasm, cytoplasm_Foxo1_Pa1_Pd1_Pe1_pUb1, ktr_121)) + (function_125(dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, ktr_124)) + (nucleus * function_148(Akt_P2, cytoplasm, kkin_147, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1)) + (nucleus * function_172(SGK, cytoplasm, kkin_171, nucleus, nucleus_Foxo1_Pa0_Pd1_Pe1_pUb1)) + (nucleus * function_232(IKK_P, by_ikk_phos_factor, cytoplasm, kkin_231, nucleus, nucleus_Foxo1_Pa1_Pd0_Pe1_pUb1)) + (nucleus * function_286(JNK_P, by_jnk_phos_factor, cytoplasm, kkin_285, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe0_pUb1)) + (nucleus * function_316(SCF, cytoplasm, kub_315, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb0)) - (function_123(ktr_122, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1)) - (function_124(ktr_123, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1)) - (nucleus * function_196(PP2A, cytoplasm, kdephos_195, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1)) - (nucleus * function_244(PP2A, cytoplasm, kdephos_243, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1)) - (nucleus * function_292(PP2A, cytoplasm, kdephos_291, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1));
    der(dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1) = (function_124(ktr_123, nucleus, nucleus_Foxo1_Pa1_Pd1_Pe1_pUb1)) + (dnabound * function_149(Akt_P2, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, kkin_148)) + (dnabound * function_173(SGK, cytoplasm, dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, kkin_172)) + (dnabound * function_233(IKK_P, by_ikk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, kkin_232)) + (dnabound * function_287(JNK_P, by_jnk_phos_factor, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, kkin_286)) + (dnabound * function_317(SCF, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, kub_316)) - (function_125(dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, ktr_124)) - (dnabound * function_197(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_196)) - (dnabound * function_245(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_244)) - (dnabound * function_293(PP2A, cytoplasm, dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, kdephos_292));
    der(nucleus_RNA_InR) = (function_326(dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, ktranscr_325)) + (function_328(dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, ktranscr_327)) + (function_330(dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, ktranscr_329)) + (function_332(dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, ktranscr_331)) + (function_334(dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, ktranscr_333)) + (function_336(dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, ktranscr_335)) + (function_338(dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, ktranscr_337)) + (function_340(dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, ktranscr_339)) + (function_342(dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, ktranscr_341)) + (function_344(dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, ktranscr_343)) + (function_346(dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, ktranscr_345)) + (function_348(dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, ktranscr_347)) + (function_350(dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, ktranscr_349)) + (function_352(dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, ktranscr_351)) + (function_354(dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, ktranscr_353)) + (function_356(dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, ktranscr_355)) + (function_358(v_357)) - (function_359(kexp_358, nucleus, nucleus_RNA_InR));
    der(cytoplasm_RNA_InR) = (function_359(kexp_358, nucleus, nucleus_RNA_InR)) - (cytoplasm * function_360(cytoplasm, cytoplasm_RNA_InR, kmdeg_359));
    der(nucleus_RNA_SOD2) = (function_327(dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb0, ktranscr_326)) + (function_329(dnabound, dnabound_Foxo1_Pa0_Pd0_Pe0_pUb1, ktranscr_328)) + (function_331(dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb0, ktranscr_330)) + (function_333(dnabound, dnabound_Foxo1_Pa0_Pd0_Pe1_pUb1, ktranscr_332)) + (function_335(dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb0, ktranscr_334)) + (function_337(dnabound, dnabound_Foxo1_Pa0_Pd1_Pe0_pUb1, ktranscr_336)) + (function_339(dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb0, ktranscr_338)) + (function_341(dnabound, dnabound_Foxo1_Pa0_Pd1_Pe1_pUb1, ktranscr_340)) + (function_343(dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb0, ktranscr_342)) + (function_345(dnabound, dnabound_Foxo1_Pa1_Pd0_Pe0_pUb1, ktranscr_344)) + (function_347(dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb0, ktranscr_346)) + (function_349(dnabound, dnabound_Foxo1_Pa1_Pd0_Pe1_pUb1, ktranscr_348)) + (function_351(dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb0, ktranscr_350)) + (function_353(dnabound, dnabound_Foxo1_Pa1_Pd1_Pe0_pUb1, ktranscr_352)) + (function_355(dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb0, ktranscr_354)) + (function_357(dnabound, dnabound_Foxo1_Pa1_Pd1_Pe1_pUb1, ktranscr_356)) + (function_358(v_362)) - (function_363(kexp_363, nucleus, nucleus_RNA_SOD2));
    der(cytoplasm_RNA_SOD2) = (function_363(kexp_363, nucleus, nucleus_RNA_SOD2)) - (cytoplasm * function_364(cytoplasm, cytoplasm_RNA_SOD2, kmdeg_364));
    der(E2F1) = 0.0;
    der(SGK) = 0.0;
    der(CDK2) = 0.0;
    der(AMPK) = 0.0;
    der(CBPP300) = 0.0;
    der(SIRT1) = 0.0;
    der(E3) = 0.0;
    der(USP7) = 0.0;
    der(SCF) = 0.0;
    der(Proteasome) = 0.0;




end BIOMD474;
