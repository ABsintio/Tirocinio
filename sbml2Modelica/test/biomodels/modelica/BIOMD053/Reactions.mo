within BIOMD053;
class Reactions

    input Real elmt_Amadori;
    input Real elmt_compartment;
    input Real elmt_Glucose;
    input Real elmt_Lysine;
    input Real elmt_Schiff;
    input Real elmt_Glyoxal;

    Real elmt_v5(unit = "") "";
    parameter Real elmt_v5_elmt_p5(unit "") = 1.0 "";
    parameter Real elmt_v5_elmt_ox(unit "") = 1.0 "";
    parameter Real elmt_v5_elmt_k5(unit "") = 0.019 "";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_v6(unit = "") "";
    parameter Real elmt_v6_elmt_p6(unit "") = 2.7 "";
    parameter Real elmt_v6_elmt_ox(unit "") = 1.0 "";
    parameter Real elmt_v6_elmt_k3(unit "") = 7.92E-7 "";
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_v7a(unit = "") "";
    parameter Real elmt_v7a_elmt_ox(unit "") = 1.0 "";
    parameter Real elmt_v7a_elmt_p7(unit "") = 60.0 "";
    parameter Real elmt_v7a_elmt_k3(unit "") = 7.92E-7 "";
    Real elmt_product20 "";
    Real elmt_v1b(unit = "") "";
    parameter Real elmt_v1b_elmt_k1b(unit "") = 0.36 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_v1a(unit = "") "";
    parameter Real elmt_v1a_elmt_p1(unit "") = 0.115 "";
    parameter Real elmt_v1a_elmt_k1a(unit "") = 0.09 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_v2b(unit = "") "";
    parameter Real elmt_v2b_elmt_p2(unit "") = 0.75 "";
    parameter Real elmt_v2b_elmt_k2b(unit "") = 0.0012 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_v2a(unit = "") "";
    parameter Real elmt_v2a_elmt_p2(unit "") = 0.75 "";
    parameter Real elmt_v2a_elmt_k2a(unit "") = 0.033 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_v5b(unit = "") "";
    parameter Real elmt_v5b_elmt_k5b(unit "") = 0.0017 "";
    Real elmt_reactant17 "";
    Real elmt_v7c(unit = "") "";
    parameter Real elmt_v7c_elmt_ox(unit "") = 1.0 "";
    parameter Real elmt_v7c_elmt_p7(unit "") = 60.0 "";
    parameter Real elmt_v7c_elmt_k3(unit "") = 7.92E-7 "";
    Real elmt_reactant22 "";
    Real elmt_v7b(unit = "") "";
    parameter Real elmt_v7b_elmt_ox(unit "") = 1.0 "";
    parameter Real elmt_v7b_elmt_p7(unit "") = 60.0 "";
    parameter Real elmt_v7b_elmt_k3(unit "") = 7.92E-7 "";
    Real elmt_product21 "";
    Real elmt_v3(unit = "") "";
    parameter Real elmt_v3_elmt_p3(unit "") = 1.0 "";
    parameter Real elmt_v3_elmt_ox(unit "") = 1.0 "";
    parameter Real elmt_v3_elmt_k3(unit "") = 7.92E-7 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_v4(unit = "") "";
    parameter Real elmt_v4_elmt_p4(unit "") = 1.0 "";
    parameter Real elmt_v4_elmt_ox(unit "") = 1.0 "";
    parameter Real elmt_v4_elmt_k4(unit "") = 8.6E-5 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product21 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product16 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;


    equation
        elmt_v5 = (elmt_compartment * elmt_v5_elmt_ox * elmt_v5_elmt_p5 * elmt_v5_elmt_k5 * elmt_Glyoxal * elmt_Lysine);
        elmt_v6 = (elmt_compartment * elmt_v6_elmt_ox * elmt_v6_elmt_p6 * elmt_v6_elmt_k3 * Functions.pow((elmt_Schiff / 0.25), 0.36));
        elmt_v7a = (elmt_compartment * 0.05 * elmt_v7a_elmt_ox * elmt_v7a_elmt_p7 * elmt_v7a_elmt_k3 * Functions.pow((elmt_Schiff / 0.25), 0.36));
        elmt_v1b = (elmt_compartment * elmt_v1b_elmt_k1b * elmt_Schiff);
        elmt_v1a = (elmt_compartment * elmt_v1a_elmt_p1 * elmt_v1a_elmt_k1a * elmt_Glucose * elmt_Lysine);
        elmt_v2b = (elmt_compartment * elmt_v2b_elmt_p2 * elmt_v2b_elmt_k2b * elmt_Amadori);
        elmt_v2a = (elmt_compartment * elmt_v2a_elmt_p2 * elmt_v2a_elmt_k2a * elmt_Schiff);
        elmt_v5b = (elmt_compartment * elmt_v5b_elmt_k5b * elmt_Glyoxal);
        elmt_v7c = (elmt_compartment * elmt_v7c_elmt_ox * elmt_v7c_elmt_p7 * elmt_v7c_elmt_k3 * Functions.pow((elmt_Schiff / 0.25), 0.36));
        elmt_v7b = (elmt_compartment * 0.005 * elmt_v7b_elmt_ox * elmt_v7b_elmt_p7 * elmt_v7b_elmt_k3 * Functions.pow((elmt_Schiff / 0.25), 0.36));
        elmt_v3 = (elmt_compartment * elmt_v3_elmt_ox * elmt_v3_elmt_p3 * elmt_v3_elmt_k3 * Functions.pow((elmt_Glucose / 0.25), 0.36));
        elmt_v4 = (elmt_compartment * elmt_v4_elmt_ox * elmt_v4_elmt_p4 * elmt_v4_elmt_k4 * elmt_Amadori);
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product21) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product16) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;

end Reactions;
