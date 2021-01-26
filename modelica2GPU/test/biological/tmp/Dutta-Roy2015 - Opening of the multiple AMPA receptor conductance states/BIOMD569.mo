
model BIOMD569 "Dutta-Roy2015 - Opening of the multiple AMPA receptor conductance states"

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


    function Ligand_Binding_1
        	input Real k;
	input Real R;
	input Real L;
        output Real y;
    algorithm
        y :=  4 * k * R * L;
    end Ligand_Binding_1;


    function Ligand_Binding_2
        	input Real k;
	input Real R;
	input Real L;
        output Real y;
    algorithm
        y :=  3 * k * R * L;
    end Ligand_Binding_2;


    function Ligand_Binding_3
        	input Real k;
	input Real R;
	input Real L;
        output Real y;
    algorithm
        y :=  2 * k * R * L;
    end Ligand_Binding_3;


    function Ligand_Binding_4
        	input Real k;
	input Real R;
	input Real L;
        output Real y;
    algorithm
        y :=  k * R * L;
    end Ligand_Binding_4;


    function Ligand_Unbinding_1
        	input Real k;
	input Real R;
        output Real y;
    algorithm
        y :=  k * R;
    end Ligand_Unbinding_1;


    function Ligand_Unbinding_2
        	input Real k;
	input Real R;
        output Real y;
    algorithm
        y :=  2 * k * R;
    end Ligand_Unbinding_2;


    function Ligand_Unbinding_3
        	input Real k;
	input Real R;
        output Real y;
    algorithm
        y :=  3 * k * R;
    end Ligand_Unbinding_3;


    function Ligand_Unbinding_4
        	input Real k;
	input Real R;
        output Real y;
    algorithm
        y :=  4 * k * R;
    end Ligand_Unbinding_4;


    parameter Real Bkon = 5000000.0;
    parameter Real Bkoff = 4495.0;
    parameter Real Skon = 5000000.0;
    parameter Real Skoff = 270.4;
    parameter Real Mkon = 5000000.0;
    parameter Real Mkoff = 16.65;
    parameter Real Lkon = 5000000.0;
    parameter Real Lkoff = 1.149;
    parameter Real BSk0 = BSk1 * BSc^p;
    parameter Real SBk0 = SBk1 / BSc^p;
    parameter Real BSk1 = BSk2 * BSc^p;
    parameter Real SBk1 = SBk2 / BSc^p;
    parameter Real BSk2 = BSk3 * BSc^p;
    parameter Real SBk2 = SBk3 / BSc^p;
    parameter Real BSk3 = BSk4 * BSc^p;
    parameter Real SBk3 = SBk4 / BSc^p;
    parameter Real BSk4 = 300000.0;
    parameter Real SBk4 = 860.0;
    parameter Real SMk0 = SMk1 * SMc^p;
    parameter Real MSk0 = MSk1 / SMc^p;
    parameter Real SMk1 = SMk2 * SMc^p;
    parameter Real MSk1 = MSk2 / SMc^p;
    parameter Real SMk2 = SMk3 * SMc^p;
    parameter Real MSk2 = MSk3 / SMc^p;
    parameter Real SMk3 = SMk4 * SMc^p;
    parameter Real MSk3 = MSk4 / SMc^p;
    parameter Real SMk4 = 20000.0;
    parameter Real MSk4 = 145.0;
    parameter Real MLk0 = MLk1 * MLc^p;
    parameter Real LMk0 = LMk1 / MLc^p;
    parameter Real MLk1 = MLk2 * MLc^p;
    parameter Real LMk1 = LMk2 / MLc^p;
    parameter Real MLk2 = MLk3 * MLc^p;
    parameter Real LMk2 = LMk3 / MLc^p;
    parameter Real MLk3 = MLk4 * MLc^p;
    parameter Real LMk3 = LMk4 / MLc^p;
    parameter Real MLk4 = 50000.0;
    parameter Real LMk4 = 691.0;
    parameter Real BSc = 0.0601;
    parameter Real SMc = 0.0616;
    parameter Real MLc = 0.069;
    parameter Real p = 0.5;
    parameter Real synapse = 1.0;



    Real B0;
    Real S0;
    Real B1;
    Real S1;
    Real B2;
    Real S2;
    Real B3;
    Real S3;
    Real B4;
    Real S4;
    Real M0;
    Real M1;
    Real M2;
    Real M3;
    Real M4;
    Real L0;
    Real L1;
    Real L2;
    Real L3;
    Real L4;
    Real glu;

initial equation
    B0 = 8.30269391581363e-07;
    S0 = 0.0;
    B1 = 0.0;
    S1 = 0.0;
    B2 = 0.0;
    S2 = 0.0;
    B3 = 0.0;
    S3 = 0.0;
    B4 = 0.0;
    S4 = 0.0;
    M0 = 0.0;
    M1 = 0.0;
    M2 = 0.0;
    M3 = 0.0;
    M4 = 0.0;
    L0 = 0.0;
    L1 = 0.0;
    L2 = 0.0;
    L3 = 0.0;
    L4 = 0.0;
    glu = 0.000830269391581363;

equation

    der(B0) = (synapse * SBk0 * S0) + (synapse * Ligand_Unbinding_1(Bkoff, B1)) - (synapse * BSk0 * B0) - (synapse * Ligand_Binding_1(Bkon, B0, glu));
    der(S0) = (synapse * BSk0 * B0) + (synapse * MSk0 * M0) + (synapse * Ligand_Unbinding_1(Skoff, S1)) - (synapse * SBk0 * S0) - (synapse * SMk0 * S0) - (synapse * Ligand_Binding_1(Skon, S0, glu));
    der(B1) = (synapse * SBk1 * S1) + (synapse * Ligand_Binding_1(Bkon, B0, glu)) + (synapse * Ligand_Unbinding_2(Bkoff, B2)) - (synapse * BSk1 * B1) - (synapse * Ligand_Unbinding_1(Bkoff, B1)) - (synapse * Ligand_Binding_2(Bkon, B1, glu));
    der(S1) = (synapse * BSk1 * B1) + (synapse * MSk1 * M1) + (synapse * Ligand_Binding_1(Skon, S0, glu)) + (synapse * Ligand_Unbinding_2(Skoff, S2)) - (synapse * SBk1 * S1) - (synapse * SMk1 * S1) - (synapse * Ligand_Unbinding_1(Skoff, S1)) - (synapse * Ligand_Binding_2(Skon, S1, glu));
    der(B2) = (synapse * SBk2 * S2) + (synapse * Ligand_Binding_2(Bkon, B1, glu)) + (synapse * Ligand_Unbinding_3(Bkoff, B3)) - (synapse * BSk2 * B2) - (synapse * Ligand_Unbinding_2(Bkoff, B2)) - (synapse * Ligand_Binding_3(Bkon, B2, glu));
    der(S2) = (synapse * BSk2 * B2) + (synapse * MSk2 * M2) + (synapse * Ligand_Binding_2(Skon, S1, glu)) + (synapse * Ligand_Unbinding_3(Skoff, S3)) - (synapse * SBk2 * S2) - (synapse * SMk2 * S2) - (synapse * Ligand_Unbinding_2(Skoff, S2)) - (synapse * Ligand_Binding_3(Skon, S2, glu));
    der(B3) = (synapse * SBk3 * S3) + (synapse * Ligand_Binding_3(Bkon, B2, glu)) + (synapse * Ligand_Unbinding_4(Bkoff, B4)) - (synapse * BSk3 * B3) - (synapse * Ligand_Unbinding_3(Bkoff, B3)) - (synapse * Ligand_Binding_4(Bkon, B3, glu));
    der(S3) = (synapse * BSk3 * B3) + (synapse * MSk3 * M3) + (synapse * Ligand_Binding_3(Skon, S2, glu)) + (synapse * Ligand_Unbinding_4(Skoff, S4)) - (synapse * SBk3 * S3) - (synapse * SMk3 * S3) - (synapse * Ligand_Unbinding_3(Skoff, S3)) - (synapse * Ligand_Binding_4(Skon, S3, glu));
    der(B4) = (synapse * SBk4 * S4) + (synapse * Ligand_Binding_4(Bkon, B3, glu)) - (synapse * BSk4 * B4) - (synapse * Ligand_Unbinding_4(Bkoff, B4));
    der(S4) = (synapse * BSk4 * B4) + (synapse * MSk4 * M4) + (synapse * Ligand_Binding_4(Skon, S3, glu)) - (synapse * SBk4 * S4) - (synapse * SMk4 * S4) - (synapse * Ligand_Unbinding_4(Skoff, S4));
    der(M0) = (synapse * SMk0 * S0) + (synapse * LMk0 * L0) + (synapse * Ligand_Unbinding_1(Mkoff, M1)) - (synapse * MSk0 * M0) - (synapse * MLk0 * M0) - (synapse * Ligand_Binding_1(Mkon, M0, glu));
    der(M1) = (synapse * SMk1 * S1) + (synapse * LMk1 * L1) + (synapse * Ligand_Binding_1(Mkon, M0, glu)) + (synapse * Ligand_Unbinding_2(Mkoff, M2)) - (synapse * MSk1 * M1) - (synapse * MLk1 * M1) - (synapse * Ligand_Unbinding_1(Mkoff, M1)) - (synapse * Ligand_Binding_2(Mkon, M1, glu));
    der(M2) = (synapse * SMk2 * S2) + (synapse * LMk2 * L2) + (synapse * Ligand_Binding_2(Mkon, M1, glu)) + (synapse * Ligand_Unbinding_3(Mkoff, M3)) - (synapse * MSk2 * M2) - (synapse * MLk2 * M2) - (synapse * Ligand_Unbinding_2(Mkoff, M2)) - (synapse * Ligand_Binding_3(Mkon, M2, glu));
    der(M3) = (synapse * SMk3 * S3) + (synapse * LMk3 * L3) + (synapse * Ligand_Binding_3(Mkon, M2, glu)) + (synapse * Ligand_Unbinding_4(Mkoff, M4)) - (synapse * MSk3 * M3) - (synapse * MLk3 * M3) - (synapse * Ligand_Unbinding_3(Mkoff, M3)) - (synapse * Ligand_Unbinding_4(Mkon, M3));
    der(M4) = (synapse * SMk4 * S4) + (synapse * LMk4 * L4) + (synapse * Ligand_Unbinding_4(Mkon, M3)) - (synapse * MSk4 * M4) - (synapse * MLk4 * M4) - (synapse * Ligand_Unbinding_4(Mkoff, M4));
    der(L0) = (synapse * MLk0 * M0) + (synapse * Ligand_Unbinding_1(Lkoff, L1)) - (synapse * LMk0 * L0) - (synapse * Ligand_Binding_1(Lkon, L0, glu));
    der(L1) = (synapse * MLk1 * M1) + (synapse * Ligand_Binding_1(Lkon, L0, glu)) + (synapse * Ligand_Unbinding_2(Lkoff, L2)) - (synapse * LMk1 * L1) - (synapse * Ligand_Unbinding_1(Lkoff, L1)) - (synapse * Ligand_Binding_2(Lkon, L1, glu));
    der(L2) = (synapse * MLk2 * M2) + (synapse * Ligand_Binding_2(Lkon, L1, glu)) + (synapse * Ligand_Unbinding_3(Lkoff, L3)) - (synapse * LMk2 * L2) - (synapse * Ligand_Unbinding_2(Lkoff, L2)) - (synapse * Ligand_Binding_3(Lkon, L2, glu));
    der(L3) = (synapse * MLk3 * M3) + (synapse * Ligand_Binding_3(Lkon, L2, glu)) + (synapse * Ligand_Unbinding_4(Lkoff, L4)) - (synapse * LMk3 * L3) - (synapse * Ligand_Unbinding_3(Lkoff, L3)) - (synapse * Ligand_Binding_4(Lkon, L3, glu));
    der(L4) = (synapse * MLk4 * M4) + (synapse * Ligand_Binding_4(Lkon, L3, glu)) - (synapse * LMk4 * L4) - (synapse * Ligand_Unbinding_4(Lkoff, L4));
    der(glu) = (synapse * Ligand_Unbinding_1(Bkoff, B1)) + (synapse * Ligand_Unbinding_2(Bkoff, B2)) + (synapse * Ligand_Unbinding_3(Bkoff, B3)) + (synapse * Ligand_Unbinding_4(Bkoff, B4)) + (synapse * Ligand_Unbinding_1(Skoff, S1)) + (synapse * Ligand_Unbinding_2(Skoff, S2)) + (synapse * Ligand_Unbinding_3(Skoff, S3)) + (synapse * Ligand_Unbinding_4(Skoff, S4)) + (synapse * Ligand_Unbinding_1(Mkoff, M1)) + (synapse * Ligand_Unbinding_2(Mkoff, M2)) + (synapse * Ligand_Unbinding_3(Mkoff, M3)) + (synapse * Ligand_Unbinding_4(Mkoff, M4)) + (synapse * Ligand_Unbinding_1(Lkoff, L1)) + (synapse * Ligand_Unbinding_2(Lkoff, L2)) + (synapse * Ligand_Unbinding_3(Lkoff, L3)) + (synapse * Ligand_Unbinding_4(Lkoff, L4)) - (synapse * Ligand_Binding_1(Bkon, B0, glu)) - (synapse * Ligand_Binding_2(Bkon, B1, glu)) - (synapse * Ligand_Binding_3(Bkon, B2, glu)) - (synapse * Ligand_Binding_4(Bkon, B3, glu)) - (synapse * Ligand_Binding_1(Skon, S0, glu)) - (synapse * Ligand_Binding_2(Skon, S1, glu)) - (synapse * Ligand_Binding_3(Skon, S2, glu)) - (synapse * Ligand_Binding_4(Skon, S3, glu)) - (synapse * Ligand_Binding_1(Mkon, M0, glu)) - (synapse * Ligand_Binding_2(Mkon, M1, glu)) - (synapse * Ligand_Binding_3(Mkon, M2, glu)) - (synapse * Ligand_Unbinding_4(Mkon, M3)) - (synapse * Ligand_Binding_1(Lkon, L0, glu)) - (synapse * Ligand_Binding_2(Lkon, L1, glu)) - (synapse * Ligand_Binding_3(Lkon, L2, glu)) - (synapse * Ligand_Binding_4(Lkon, L3, glu));




end BIOMD569;
