
model BIOMD358 "Stortelder1997 - Thrombin Generation Amidolytic Activity"

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


    function HenriMichaelisMenten_irreversible_kcat
        	input Real kcat;
	input Real enzyme;
	input Real substrate;
	input Real Km;
        output Real y;
    algorithm
        y :=  kcat * enzyme * substrate / (Km + substrate);
    end HenriMichaelisMenten_irreversible_kcat;


    parameter Real kcat_X = 239.1;
    parameter Real km_X = 23.65;
    parameter Real ki_Xa = 4.531;
    parameter Real k_PT = 122.9;
    parameter Real k_PL = 801.4;
    parameter Real kcat_V = 7.844;
    parameter Real km_V = 149.7;
    parameter Real kcat_II = 43.87;
    parameter Real km_II = 62.25;
    parameter Real kcat_2 = 12.4;
    parameter Real km_2 = 0.06148;
    parameter Real ki_IIaAlpha2M = 0.1762;
    parameter Real ki_IIaATIII = 0.7859;
    parameter Real compartment_1 = 1.0;

    Real AmAct(start=0.0);

    Real X;
    Real Xa;
    Real Xa_ATIII;
    Real PL;
    Real PT;
    Real Va;
    Real IIa;
    Real V;
    Real II;
    Real IIa_alpha2M;
    Real IIa_ATIII;
    Real RVV;

initial equation
    X = 81.24998;
    Xa = 0.0;
    Xa_ATIII = 0.0;
    PL = 9.999997;
    PT = 0.0;
    Va = 0.0;
    IIa = 0.0;
    V = 6.711998;
    II = 509.2998;
    IIa_alpha2M = 0.0;
    IIa_ATIII = 0.0;
    RVV = 0.3349999;

equation
    AmAct = IIa + 0.556 * IIa_alpha2M;
    der(X) =  - (compartment_1 * HenriMichaelisMenten_irreversible_kcat(kcat_X, RVV, X, km_X));
    der(Xa) = (compartment_1 * HenriMichaelisMenten_irreversible_kcat(kcat_X, RVV, X, km_X)) - (compartment_1 * ki_Xa * Xa) - (compartment_1 * (k_PT * Va * Xa * PL - k_PL * PT));
    der(Xa_ATIII) = (compartment_1 * ki_Xa * Xa) ;
    der(PL) =  - (compartment_1 * (k_PT * Va * Xa * PL - k_PL * PT));
    der(PT) = (compartment_1 * (k_PT * Va * Xa * PL - k_PL * PT)) ;
    der(Va) = (compartment_1 * HenriMichaelisMenten_irreversible_kcat(kcat_V, IIa, V, km_V)) - (compartment_1 * (k_PT * Va * Xa * PL - k_PL * PT));
    der(IIa) = (compartment_1 * HenriMichaelisMenten_irreversible_kcat(kcat_II, PT, II, km_II)) + (compartment_1 * HenriMichaelisMenten_irreversible_kcat(kcat_2, Xa, II, km_2)) - (compartment_1 * ki_IIaAlpha2M * IIa) - (compartment_1 * ki_IIaATIII * IIa);
    der(V) =  - (compartment_1 * HenriMichaelisMenten_irreversible_kcat(kcat_V, IIa, V, km_V));
    der(II) =  - (compartment_1 * HenriMichaelisMenten_irreversible_kcat(kcat_II, PT, II, km_II)) - (compartment_1 * HenriMichaelisMenten_irreversible_kcat(kcat_2, Xa, II, km_2));
    der(IIa_alpha2M) = (compartment_1 * ki_IIaAlpha2M * IIa) ;
    der(IIa_ATIII) = (compartment_1 * ki_IIaATIII * IIa) ;
    der(RVV) = 0.0;




end BIOMD358;
