
model BIOMD194 "Ibrahim2008_Cdc20_Sequestring_Template_Model"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real eta_T = 0.01;
    parameter Real gamma_T = 1000000000.0;
    parameter Real alpha_T = 200000.0;
    parameter Real beta_T = 0.2;
    parameter Real const_val_0 = 0.0;
    parameter Real const_val_1 = 1.0;

    Real u(start=1.0);

    Real Mad1_CMad2;
    Real OMad2;
    Real Mad1_CMad2_OMad2;
    Real Cdc20;
    Real Cdc20_CMad2;

initial equation
    Mad1_CMad2 = 5e-08;
    OMad2 = 1.5e-07;
    Mad1_CMad2_OMad2 = 0.0;
    Cdc20 = 2.2e-07;
    Cdc20_CMad2 = 0.0;

equation

    der(Mad1_CMad2) = (1.0 * u * gamma_T * Mad1_CMad2_OMad2 * Cdc20) - (1.0 * (u * alpha_T * Mad1_CMad2 * OMad2 - beta_T * Mad1_CMad2_OMad2));
    der(OMad2) = (1.0 * eta_T * Cdc20_CMad2) - (1.0 * (u * alpha_T * Mad1_CMad2 * OMad2 - beta_T * Mad1_CMad2_OMad2));
    der(Mad1_CMad2_OMad2) = (1.0 * (u * alpha_T * Mad1_CMad2 * OMad2 - beta_T * Mad1_CMad2_OMad2)) - (1.0 * u * gamma_T * Mad1_CMad2_OMad2 * Cdc20);
    der(Cdc20) = (1.0 * eta_T * Cdc20_CMad2) - (1.0 * u * gamma_T * Mad1_CMad2_OMad2 * Cdc20);
    der(Cdc20_CMad2) = (1.0 * u * gamma_T * Mad1_CMad2_OMad2 * Cdc20) - (1.0 * eta_T * Cdc20_CMad2);

    when time > 2000 then
        reinit(u,const_val_0);
    end when;

end BIOMD194;
