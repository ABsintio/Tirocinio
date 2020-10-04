within BIOMD456;
class Reactions

    input Real elmt_y7;
    input Real elmt_x3;
    input Real elmt_y4;
    input Real elmt_y5;
    input Real elmt_x1;
    input Real elmt_y2;
    input Real elmt_y3;
    input Real elmt_x2;
    input Real elmt_y1;

    Real elmt_v7(unit = "") "v7";
    parameter Real elmt_v7_elmt_e7(unit "") = 1.0 "";
    parameter Real elmt_v7_elmt_p7(unit "") = 1.0 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_v6(unit = "") "v6";
    parameter Real elmt_v6_elmt_p6(unit "") = 1.0 "";
    parameter Real elmt_v6_elmt_e6(unit "") = 1.0 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_v3(unit = "") "v3";
    parameter Real elmt_v3_elmt_p3(unit "") = 50.0 "";
    parameter Real elmt_v3_elmt_e3(unit "") = 1.0 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_v4(unit = "") "v4";
    parameter Real elmt_v4_elmt_p4(unit "") = 10.0 "";
    parameter Real elmt_v4_elmt_e4(unit "") = 1.0 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_v1(unit = "") "v1";
    parameter Real elmt_v1_elmt_p1(unit "") = 10.0 "";
    parameter Real elmt_v1_elmt_e1(unit "") = 1.0 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";
    Real elmt_v2(unit = "") "v2";
    parameter Real elmt_v2_elmt_p2(unit "") = 10.0 "";
    parameter Real elmt_v2_elmt_e2(unit "") = 1.0 "";
    Real elmt_reactant4 "";
    Real elmt_product7 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_product6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_product2 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_v7 = (elmt_v7_elmt_e7 * elmt_v7_elmt_p7);
        elmt_v6 = (elmt_v6_elmt_e6 * elmt_v6_elmt_p6 * elmt_y7);
        elmt_v3 = ((elmt_v3_elmt_e3 * ((elmt_v3_elmt_p3 * elmt_x1) - elmt_y2)) / (1.0 + elmt_x1 + elmt_y2));
        elmt_v4 = ((elmt_v4_elmt_e4 * ((elmt_v4_elmt_p4 * elmt_x1) - elmt_y3)) / (1.0 + elmt_x1 + elmt_y3));
        elmt_v1 = ((elmt_v1_elmt_e1 * ((elmt_v1_elmt_p1 * elmt_y1 * elmt_x2) - (elmt_x1 * elmt_x3))) / (1.0 + elmt_y1 + elmt_x2 + elmt_x1 + elmt_x3 + (elmt_y1 * elmt_x2) + (elmt_x1 * elmt_x3)));
        elmt_v2 = ((elmt_v2_elmt_e2 * ((elmt_v2_elmt_p2 * elmt_y4 * elmt_x3) - (elmt_y5 * elmt_x2))) / (1.0 + elmt_x3 + elmt_x2 + elmt_y4 + elmt_y5 + (elmt_x3 * elmt_y4) + (elmt_x2 * elmt_y5)));
        der(elmt_product9) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_product6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;

end Reactions;
