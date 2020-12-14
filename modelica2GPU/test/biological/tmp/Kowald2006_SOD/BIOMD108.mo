
model BIOMD108 "Kowald2006_SOD"

    function pow
        input  Real x;
        input  Real power;
        output Real y;
        algorithm
            y := x^power;
    end pow;

    parameter Real k1 = 6.6e-07;
    parameter Real k2 = 1600000000.0;
    parameter Real k3 = 1600000000.0;
    parameter Real k4 = 100000.0;
    parameter Real k5 = 20000.0;
    parameter Real k6 = 1.0;
    parameter Real k7 = 34000000.0;
    parameter Real k9 = 1000000.0;
    parameter Real k10 = 1000.0;
    parameter Real k11 = 250000000.0;
    parameter Real k12 = 0.38;
    parameter Real k13a = 0.0087;
    parameter Real k13b = 0.0087;
    parameter Real k17 = 30000.0;
    parameter Real k18 = 7.0;
    parameter Real k19 = 88000.0;
    parameter Real compartment_0000001 = 1.0;

    Real HO2star(start=0.0);
    Real Cu_I_ZnSOD(start=0.0);

    Real species_0000001;
    Real species_0000002;
    Real species_0000006;
    Real species_0000007;
    Real species_0000008;
    Real species_0000009;
    Real species_0000011;
    Real species_0000016;
    Real species_0000017;

initial equation
    species_0000001 = 0.0;
    species_0000002 = 5e-06;
    species_0000006 = 0.0;
    species_0000007 = 0.0;
    species_0000008 = 0.0;
    species_0000009 = 0.0;
    species_0000011 = 0.0;
    species_0000016 = 1e-05;
    species_0000017 = 1e-05;

equation
    HO2star = species_0000001 / 100;
    Cu_I_ZnSOD = species_0000016 - species_0000002;
    der(species_0000001) = (compartment_0000001 * k1) - (compartment_0000001 * k2 * species_0000001 * species_0000002) - (compartment_0000001 * k3 * species_0000001 * Cu_I_ZnSOD) - (compartment_0000001 * k4 * species_0000001 * species_0000007) - (compartment_0000001 * k5 * species_0000001 * species_0000006) - (k10 * HO2star * compartment_0000001);
    der(species_0000002) = (compartment_0000001 * k3 * species_0000001 * Cu_I_ZnSOD) + (compartment_0000001 * k13a * Cu_I_ZnSOD) - (compartment_0000001 * k2 * species_0000001 * species_0000002) - (compartment_0000001 * k13b * species_0000002);
    der(species_0000006) = (compartment_0000001 * k3 * species_0000001 * Cu_I_ZnSOD) + (compartment_0000001 * k10 * HO2star) - (compartment_0000001 * k5 * species_0000001 * species_0000006) - (compartment_0000001 * k6 * species_0000006 * species_0000002) - (compartment_0000001 * k7 * species_0000006 * species_0000017);
    der(species_0000007) = (compartment_0000001 * k17 * species_0000011) - (compartment_0000001 * k4 * species_0000001 * species_0000007) - (compartment_0000001 * k18 * species_0000007) - (2.0 * compartment_0000001 * k19 * species_0000007^2);
    der(species_0000008) = (2.0 * compartment_0000001 * k5 * species_0000001 * species_0000006) + (2.0 * compartment_0000001 * k6 * species_0000006 * species_0000002) - (compartment_0000001 * k9 * species_0000008) - (compartment_0000001 * k11 * species_0000008);
    der(species_0000009) = (compartment_0000001 * k4 * species_0000001 * species_0000007) + (compartment_0000001 * k18 * species_0000007) - (compartment_0000001 * k12 * species_0000009);
    der(species_0000011) = (compartment_0000001 * k10 * HO2star) + (compartment_0000001 * k11 * species_0000008) + (compartment_0000001 * k18 * species_0000007) - (compartment_0000001 * k17 * species_0000011);
    der(species_0000016) = 0.0;
    der(species_0000017) = 0.0;




end BIOMD108;
