
model BIOMD576 "Kolodkin2013 - Nuclear receptor-mediated cortisol signalling network"

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


    function mRNA
        	input Real S_RNA;
	input Real Activator;
	input Real Ka;
        output Real y;
    algorithm
        y :=  Ka * S_RNA * Activator;
    end mRNA;


    function ptotein
        	input Real Ka;
	input Real S_PROT;
	input Real Activator;
        output Real y;
    algorithm
        y :=  Ka * S_PROT * Activator;
    end ptotein;


    function LigandDegrOld
        	input Real Act;
	input Real Vm;
	input Real S1;
	input Real Kms1;
	input Real S2;
	input Real Kms2;
	input Real S3;
	input Real Kms3;
        output Real y;
    algorithm
        y :=  Act * (Vm * S1 / Kms1 / (1 + S1 / Kms1 + S2 / Kms2 + S3 / Kms3));
    end LigandDegrOld;


    parameter Real GeneProteinBinding_diff_limited = 60.0;
    parameter Real cypGene_PXRprotein = 1.0;
    parameter Real cypMrna_synt = 0.05;
    parameter Real PXRGene_GRprotein = 200.0;
    parameter Real TATGene_GRprotein = 300.0;
    parameter Real GRGene_GRprotein = 60.0;
    parameter Real grMrna_synt = 1.2e-06;
    parameter Real tatMrna_synt = 0.005;
    parameter Real pxrMrna_synt = 0.00011;
    parameter Real Ka_0 = 0.00321;
    parameter Real k1_1 = 0.04;
    parameter Real Ka_2 = 2.5;
    parameter Real k1_3 = 0.0015;
    parameter Real Ka_4 = 5.52e-05;
    parameter Real k1_5 = 0.006;
    parameter Real Ka_6 = 10.0;
    parameter Real k1_7 = 0.003;
    parameter Real Ka_8 = 3.2e-06;
    parameter Real k1_9 = 0.003;
    parameter Real Ka_10 = 19.98;
    parameter Real k1_11 = 0.001;
    parameter Real Ka_12 = 0.000855;
    parameter Real k1_13 = 0.064;
    parameter Real k1_14 = 60.0;
    parameter Real k2_14 = 600.0;
    parameter Real k1_15 = 0.001;
    parameter Real k1_16 = 60.0;
    parameter Real k2_16 = 600000.0;
    parameter Real k1_17 = 0.0015;
    parameter Real Vm_18 = 0.083;
    parameter Real Kms1_18 = 15000.0;
    parameter Real Kms2_18 = 15000.0;
    parameter Real Kms3_18 = 23000.0;
    parameter Real k1_27 = 0.016;
    parameter Real k2_27 = 0.016;
    parameter Real k1_28 = 0.012;
    parameter Real Ka_29 = 0.5;
    parameter Real k1_30 = 1000.0;
    parameter Real k2_30 = 1000.0;
    parameter Real k1_31 = 60.0;
    parameter Real k2_31 = 600000.0;
    parameter Real k1_32 = 0.0015;
    parameter Real k1_35 = 60.0;
    parameter Real k2_35 = 60.0;
    parameter Real k1_36 = 0.001;
    parameter Real k1_37 = 60.0;
    parameter Real k2_37 = 60000.0;
    parameter Real k1_38 = 0.0015;
    parameter Real Vm_39 = 0.00425;
    parameter Real Kms1_39 = 23000.0;
    parameter Real Kms2_39 = 15000.0;
    parameter Real Kms3_39 = 15000.0;
    parameter Real k1_48 = 100.0;
    parameter Real k2_48 = 100.0;
    parameter Real k1_49 = 60.0;
    parameter Real k2_49 = 270.0;
    parameter Real k1_50 = 60.0;
    parameter Real k2_50 = 900000.0;
    parameter Real k1_51 = 1000.0;
    parameter Real default = 1.0;
    parameter Real blood = 1.0;

    Real GRprotein(start=80.0000237789225);
    Real PXRprotein(start=99.9112936972775);

    Real s28;
    Real s36;
    Real s46;
    Real s32;
    Real s42;
    Real s30;
    Real s40;
    Real s33;
    Real s39;
    Real s114;
    Real s155;
    Real s172;
    Real s173;
    Real s185;
    Real s84;
    Real s165;
    Real s109;
    Real s87;
    Real s119;
    Real s183;
    Real s178;
    Real s10;
    Real Cortisone;
    Real TAT_PROT;
    Real Ligand2;
    Real PXRprot_Ligand2;
    Real CYPgene_PXRprot_Ligand2;
    Real DEX;
    Real GRprot_DEX;
    Real PXRprot_DEX;
    Real DEX_degr;
    Real CYPgene_PXRprot_DEX;
    Real PXRgene_GRprot_DEX;
    Real GRgene_GRprot_DEX;
    Real TATgene_GRprot_DEX;
    Real s2;
    Real DEXout;
    Real CBG;
    Real CBG_CortOUT;
    Real Alb;
    Real Alb_CortOUT;
    Real CortAdded;

initial equation
    s28 = 1.00000029723653;
    s36 = 1.00000029723653;
    s46 = 0.780000231844494;
    s32 = 0.00700000208065571;
    s42 = 99.9000296939294;
    s30 = 0.0;
    s40 = 0.500000148618265;
    s33 = 0.000800000237789224;
    s39 = 47.2400140414537;
    s114 = 1.14000033884965;
    s155 = 0.829760246634984;
    s172 = 104.000030912599;
    s173 = 0.0750000222927398;
    s185 = 0.100000029723653;
    s84 = 0.330000098088055;
    s165 = 0.000240000071336767;
    s109 = 0.0500000148618265;
    s87 = 32.3600096185741;
    s119 = 0.0100000029723653;
    s183 = 0.0200000059447306;
    s178 = 0.81000024076159;
    s10 = 0.0;
    Cortisone = 24.0000071336767;
    TAT_PROT = 0.46202810387596;
    Ligand2 = 100.000029723653;
    PXRprot_Ligand2 = 0.00100000029723653;
    CYPgene_PXRprot_Ligand2 = 2.40000071336767e-05;
    DEX = 0.0;
    GRprot_DEX = 0.0;
    PXRprot_DEX = 0.0;
    DEX_degr = 0.0;
    CYPgene_PXRprot_DEX = 0.0;
    PXRgene_GRprot_DEX = 0.0;
    GRgene_GRprot_DEX = 0.0;
    TATgene_GRprot_DEX = 0.0;
    s2 = 0.0;
    DEXout = 0.0;
    CBG = 550.000163480092;
    CBG_CortOUT = 0.0;
    Alb = 60000.0178341918;
    Alb_CortOUT = 0.0;
    CortAdded = 0.0;

equation
    GRprotein = s39 + s84 + s109 + s87 + s183 + GRprot_DEX + PXRgene_GRprot_DEX + GRgene_GRprot_DEX + TATgene_GRprot_DEX;
    PXRprotein = s42 + s165 + s119 + PXRprot_Ligand2 + CYPgene_PXRprot_Ligand2 + PXRprot_DEX + CYPgene_PXRprot_DEX;
    der(s28) = 0.0;
    der(s36) = 0.0;
    der(s46) =  - (default * (GeneProteinBinding_diff_limited * s46 * s87 - PXRGene_GRprotein * s109)) - (default * (GeneProteinBinding_diff_limited * GRprot_DEX * s46 - PXRGene_GRprotein * PXRgene_GRprot_DEX));
    der(s32) = (default * mRNA(s28, s46, Ka_4)) + (default * mRNA(s28, s109, pxrMrna_synt)) + (default * mRNA(s28, PXRgene_GRprot_DEX, pxrMrna_synt)) - (default * k1_5 * s32);
    der(s42) = (default * ptotein(Ka_6, s36, s32)) - (default * k1_7 * s42) - (default * (k1_16 * s42 * s114 - k2_16 * s119)) - (default * (k1_31 * s42 * Ligand2 - k2_31 * PXRprot_Ligand2)) - (default * (k1_37 * s42 * DEX - k2_37 * PXRprot_DEX));
    der(s30) = 0.0;
    der(s40) =  - (default * (GeneProteinBinding_diff_limited * s40 * s87 - GRGene_GRprotein * s84)) - (default * (GeneProteinBinding_diff_limited * GRprot_DEX * s40 - GRGene_GRprotein * GRgene_GRprot_DEX));
    der(s33) = (default * mRNA(s28, s40, Ka_8)) + (default * mRNA(s28, s84, grMrna_synt)) + (default * mRNA(s28, GRgene_GRprot_DEX, grMrna_synt)) - (default * k1_9 * s33);
    der(s39) = (default * ptotein(Ka_10, s36, s33)) - (default * k1_11 * s39) - (default * (k1_14 * s114 * s39 - k2_14 * s87)) - (default * (k1_35 * s39 * DEX - k2_35 * GRprot_DEX));
    der(s114) = (default * k1_15 * s87) + (default * k1_17 * s119) + (default * (k1_27 * Cortisone - k2_27 * s114)) + (k1_30 * s2 - k2_30 * s114) - (default * (k1_14 * s114 * s39 - k2_14 * s87)) - (default * (k1_16 * s42 * s114 - k2_16 * s119)) - (default * LigandDegrOld(s172, Vm_18, s114, Kms1_18, Ligand2, Kms2_18, DEX, Kms3_18));
    der(s155) =  - (default * (GeneProteinBinding_diff_limited * s155 * s119 - cypGene_PXRprotein * s165)) - (default * (GeneProteinBinding_diff_limited * s155 * PXRprot_Ligand2 - cypGene_PXRprotein * CYPgene_PXRprot_Ligand2)) - (default * (GeneProteinBinding_diff_limited * s155 * PXRprot_DEX - cypGene_PXRprotein * CYPgene_PXRprot_DEX));
    der(s172) = (default * ptotein(Ka_2, s36, s173)) - (default * k1_3 * s172);
    der(s173) = (default * mRNA(s28, s155, Ka_0)) + (default * mRNA(s28, s165, cypMrna_synt)) + (default * mRNA(s28, CYPgene_PXRprot_Ligand2, cypMrna_synt)) + (default * mRNA(s28, CYPgene_PXRprot_DEX, cypMrna_synt)) - (default * k1_1 * s173);
    der(s185) = (default * mRNA(s28, s178, Ka_12)) + (default * mRNA(s28, s183, tatMrna_synt)) + (default * mRNA(s28, TATgene_GRprot_DEX, tatMrna_synt)) - (default * k1_13 * s185);
    der(s84) = (default * (GeneProteinBinding_diff_limited * s40 * s87 - GRGene_GRprotein * s84)) ;
    der(s165) = (default * (GeneProteinBinding_diff_limited * s155 * s119 - cypGene_PXRprotein * s165)) ;
    der(s109) = (default * (GeneProteinBinding_diff_limited * s46 * s87 - PXRGene_GRprotein * s109)) ;
    der(s87) = (default * (k1_14 * s114 * s39 - k2_14 * s87)) - (default * k1_15 * s87) - (default * (GeneProteinBinding_diff_limited * s46 * s87 - PXRGene_GRprotein * s109)) - (default * (GeneProteinBinding_diff_limited * s40 * s87 - GRGene_GRprotein * s84)) - (default * (GeneProteinBinding_diff_limited * s178 * s87 - TATGene_GRprotein * s183));
    der(s119) = (default * (k1_16 * s42 * s114 - k2_16 * s119)) - (default * k1_17 * s119) - (default * (GeneProteinBinding_diff_limited * s155 * s119 - cypGene_PXRprotein * s165));
    der(s183) = (default * (GeneProteinBinding_diff_limited * s178 * s87 - TATGene_GRprotein * s183)) ;
    der(s178) =  - (default * (GeneProteinBinding_diff_limited * s178 * s87 - TATGene_GRprotein * s183)) - (default * (GeneProteinBinding_diff_limited * GRprot_DEX * s178 - TATGene_GRprotein * TATgene_GRprot_DEX));
    der(s10) = 0.0;
    der(Cortisone) = 0.0;
    der(TAT_PROT) = (default * ptotein(Ka_29, s36, s185)) - (default * k1_28 * TAT_PROT);
    der(Ligand2) = (default * k1_32 * PXRprot_Ligand2) - (default * (k1_31 * s42 * Ligand2 - k2_31 * PXRprot_Ligand2));
    der(PXRprot_Ligand2) = (default * (k1_31 * s42 * Ligand2 - k2_31 * PXRprot_Ligand2)) - (default * k1_32 * PXRprot_Ligand2) - (default * (GeneProteinBinding_diff_limited * s155 * PXRprot_Ligand2 - cypGene_PXRprotein * CYPgene_PXRprot_Ligand2));
    der(CYPgene_PXRprot_Ligand2) = (default * (GeneProteinBinding_diff_limited * s155 * PXRprot_Ligand2 - cypGene_PXRprotein * CYPgene_PXRprot_Ligand2)) ;
    der(DEX) = (default * k1_36 * GRprot_DEX) + (default * k1_38 * PXRprot_DEX) + (k1_48 * DEXout - k2_48 * DEX) - (default * (k1_35 * s39 * DEX - k2_35 * GRprot_DEX)) - (default * (k1_37 * s42 * DEX - k2_37 * PXRprot_DEX)) - (default * LigandDegrOld(s172, Vm_39, DEX, Kms1_39, Ligand2, Kms2_39, s114, Kms3_39));
    der(GRprot_DEX) = (default * (k1_35 * s39 * DEX - k2_35 * GRprot_DEX)) - (default * k1_36 * GRprot_DEX) - (default * (GeneProteinBinding_diff_limited * GRprot_DEX * s46 - PXRGene_GRprotein * PXRgene_GRprot_DEX)) - (default * (GeneProteinBinding_diff_limited * GRprot_DEX * s40 - GRGene_GRprotein * GRgene_GRprot_DEX)) - (default * (GeneProteinBinding_diff_limited * GRprot_DEX * s178 - TATGene_GRprotein * TATgene_GRprot_DEX));
    der(PXRprot_DEX) = (default * (k1_37 * s42 * DEX - k2_37 * PXRprot_DEX)) - (default * k1_38 * PXRprot_DEX) - (default * (GeneProteinBinding_diff_limited * s155 * PXRprot_DEX - cypGene_PXRprotein * CYPgene_PXRprot_DEX));
    der(DEX_degr) = 0.0;
    der(CYPgene_PXRprot_DEX) = (default * (GeneProteinBinding_diff_limited * s155 * PXRprot_DEX - cypGene_PXRprotein * CYPgene_PXRprot_DEX)) ;
    der(PXRgene_GRprot_DEX) = (default * (GeneProteinBinding_diff_limited * GRprot_DEX * s46 - PXRGene_GRprotein * PXRgene_GRprot_DEX)) ;
    der(GRgene_GRprot_DEX) = (default * (GeneProteinBinding_diff_limited * GRprot_DEX * s40 - GRGene_GRprotein * GRgene_GRprot_DEX)) ;
    der(TATgene_GRprot_DEX) = (default * (GeneProteinBinding_diff_limited * GRprot_DEX * s178 - TATGene_GRprotein * TATgene_GRprot_DEX)) ;
    der(s2) = (blood * k1_51 * CortAdded) - (k1_30 * s2 - k2_30 * s114) - (blood * (k1_49 * s2 * CBG - k2_49 * CBG_CortOUT)) - (blood * (k1_50 * Alb * s2 - k2_50 * Alb_CortOUT));
    der(DEXout) = 0.0;
    der(CBG) =  - (blood * (k1_49 * s2 * CBG - k2_49 * CBG_CortOUT));
    der(CBG_CortOUT) = (blood * (k1_49 * s2 * CBG - k2_49 * CBG_CortOUT)) ;
    der(Alb) =  - (blood * (k1_50 * Alb * s2 - k2_50 * Alb_CortOUT));
    der(Alb_CortOUT) = (blood * (k1_50 * Alb * s2 - k2_50 * Alb_CortOUT)) ;
    der(CortAdded) = 0.0;




end BIOMD576;
