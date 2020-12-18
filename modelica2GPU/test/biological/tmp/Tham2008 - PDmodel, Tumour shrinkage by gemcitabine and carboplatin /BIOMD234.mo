
model BIOMD234 "Tham2008 - PDmodel, Tumour shrinkage by gemcitabine and carboplatin "

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;



    parameter Real Dose = 5203.84;
    parameter Real Dose_Int1 = 0.0;
    parameter Real Dose_Int2 = 1.0;
    parameter Real Dose_Length = 0.44359;
    parameter Real Cycle_Int = 3.0;
    parameter Real N_Cycle = 6.0;
    parameter Real conversion_factor = 604800.0;
    parameter Real AE50 = 10600.0;
    parameter Real Teq = 7.67;
    parameter Real Size_0 = 6.66;
    parameter Real T_Turnover = 21.8;
    parameter Real COMpartment = 1.0;

    Real rem_time(start=0.0);
    Real Exposure(start=0.0);
    Real Size(start=6.66);
    Real Effect(start=0.0);
    Real Keq(start=0.0);
    Real RateIn(start=0.0);
    Real Kover(start=0.0);

    Real Ce;

initial equation
    Ce = 0.0;

equation
    Exposure = piecewise(Dose, and(lt(time, Cycle_Int * N_Cycle), lt(Dose_Int1, rem_time), lt(rem_time, Dose_Length)), Dose, and(lt(time, Cycle_Int * N_Cycle), lt(Dose_Int2, rem_time), lt(rem_time, Dose_Int2 + Dose_Length)), 0);
    rem_time = (time * conversion_factor - floor(time * conversion_factor / (Cycle_Int * conversion_factor)) * Cycle_Int * conversion_factor) / conversion_factor;
    Keq = log(2) / Teq;
    Effect = 1 - Ce / (AE50 + Ce);
    RateIn = Size_0 * Kover;
    Kover = 1 / T_Turnover;
    der(Ce) = Exposure / 1 - Ce * Keq;
    der(Size) = (RateIn * Effect - Kover * Size) * Size;




end BIOMD234;
