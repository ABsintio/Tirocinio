
model BIOMD526 "Kallenberger2014 - CD95L induced apoptosis initiated by caspase-8, wild-type HeLa cells (cis_trans-cis_trans variant)"

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



    parameter Real kon_FADD = 0.00108871858684363;
    parameter Real koff_FADD = 0.00130854998177646;
    parameter Real kDISC = 0.000364965874405544;
    parameter Real kD216 = 0.00639775937416746;
    parameter Real kD216trans_p55 = 0.000223246421372882;
    parameter Real kD216trans_p43 = 5.29906975294056e-05;
    parameter Real kD374 = 0.000644612643975149;
    parameter Real kD374trans_p55 = 0.000543518631342483;
    parameter Real kD374trans_p43 = 0.00413530054938906;
    parameter Real kdiss_p18 = 0.064713651554491;
    parameter Real kBid = 0.00052134055139547;
    parameter Real kD374probe = 0.00153710001025539;
    parameter Real KDR = 57.2050013008496;
    parameter Real KDL = 30.0060394758199;
    parameter Real cell = 1.0;

    Real CD95act(start=0.0);

    Real CD95;
    Real FADD;
    Real p55free;
    Real Bid;
    Real PrNES_mCherry;
    Real PrER_mGFP;
    Real DISC;
    Real DISCp55;
    Real p30;
    Real p43;
    Real p18;
    Real p18inactive;
    Real tBid;
    Real PrNES;
    Real mCherry;
    Real PrER;
    Real mGFP;
    Real CD95L;

initial equation
    CD95 = 12.0;
    FADD = 90.0;
    p55free = 127.0;
    Bid = 224.0;
    PrNES_mCherry = 1909.0;
    PrER_mGFP = 3316.0;
    DISC = 0.0;
    DISCp55 = 0.0;
    p30 = 0.0;
    p43 = 0.0;
    p18 = 0.0;
    p18inactive = 0.0;
    tBid = 0.0;
    PrNES = 0.0;
    mCherry = 0.0;
    PrER = 0.0;
    mGFP = 0.0;
    CD95L = 16.6;

equation
    CD95act = pow(CD95, 3) * pow(KDL, 2) * CD95L / ((CD95L + KDL) * (pow(CD95, 2) * pow(KDL, 2) + KDR * pow(CD95L, 2) + 2 * KDR * KDL * CD95L + KDR * pow(KDL, 2)));
    der(CD95) = 0.0;
    der(FADD) = (koff_FADD * DISC * cell) - (kon_FADD * CD95act * FADD * cell);
    der(p55free) =  - (kDISC * p55free * DISC * cell);
    der(Bid) =  - (kBid * Bid * (p43 + p18) * cell);
    der(PrNES_mCherry) =  - (kD374probe * PrNES_mCherry * (p43 + p18) * cell);
    der(PrER_mGFP) =  - (kD374probe * PrER_mGFP * p18 * cell);
    der(DISC) = (kon_FADD * CD95act * FADD * cell) + (kD216 * p43 * cell) + (kD216trans_p55 * p43 * (DISCp55 + p30) * cell) + (kD216trans_p43 * p43 * p43 * cell) + (kD374 * p30 * cell) + (kD374trans_p55 * p30 * (DISCp55 + p30) * cell) + (kD374trans_p43 * p30 * p43 * cell) - (koff_FADD * DISC * cell) - (kDISC * p55free * DISC * cell);
    der(DISCp55) = (kDISC * p55free * DISC * cell) - (kD216 * DISCp55 * cell) - (kD216trans_p55 * DISCp55 * (DISCp55 + p30) * cell) - (kD216trans_p43 * DISCp55 * p43 * cell) - (kD374 * DISCp55 * cell) - (kD374trans_p55 * DISCp55 * (DISCp55 + p30) * cell) - (kD374trans_p43 * DISCp55 * p43 * cell);
    der(p30) = (kD216 * DISCp55 * cell) + (kD216trans_p55 * DISCp55 * (DISCp55 + p30) * cell) + (kD216trans_p43 * DISCp55 * p43 * cell) - (kD374 * p30 * cell) - (kD374trans_p55 * p30 * (DISCp55 + p30) * cell) - (kD374trans_p43 * p30 * p43 * cell);
    der(p43) = (kD374 * DISCp55 * cell) + (kD374trans_p55 * DISCp55 * (DISCp55 + p30) * cell) + (kD374trans_p43 * DISCp55 * p43 * cell) - (kD216 * p43 * cell) - (kD216trans_p55 * p43 * (DISCp55 + p30) * cell) - (kD216trans_p43 * p43 * p43 * cell);
    der(p18) = (kD216 * p43 * cell) + (kD216trans_p55 * p43 * (DISCp55 + p30) * cell) + (kD216trans_p43 * p43 * p43 * cell) + (kD374 * p30 * cell) + (kD374trans_p55 * p30 * (DISCp55 + p30) * cell) + (kD374trans_p43 * p30 * p43 * cell) - (kdiss_p18 * p18 * cell);
    der(p18inactive) = (kdiss_p18 * p18 * cell) ;
    der(tBid) = (kBid * Bid * (p43 + p18) * cell) ;
    der(PrNES) = (kD374probe * PrNES_mCherry * (p43 + p18) * cell) ;
    der(mCherry) = (kD374probe * PrNES_mCherry * (p43 + p18) * cell) ;
    der(PrER) = (kD374probe * PrER_mGFP * p18 * cell) ;
    der(mGFP) = (kD374probe * PrER_mGFP * p18 * cell) ;
    der(CD95L) = 0.0;




end BIOMD526;
