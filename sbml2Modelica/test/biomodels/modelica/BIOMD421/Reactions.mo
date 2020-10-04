within BIOMD421;
class Reactions

    input Real elmt_k0;
    input Real elmt_ka;
    input Real elmt_P1;
    input Real elmt_Target;
    input Real elmt_h;
    input Real elmt_dsp1p2kd;
    input Real elmt_ks;

    Real elmt____r3(unit = "") "";
    Real elmt_product2 "";
    Real elmt____r2(unit = "") "";
    parameter Real elmt____r2_elmt___RATE__(unit "") = 0.1 "";
    Real elmt_reactant1 "";
    Real elmt____r1(unit = "") "";
    Real elmt_product0 "";
    Real elmt____r4(unit = "") "";
    parameter Real elmt____r4_elmt___RATE__(unit "") = 0.1 "";
    Real elmt_reactant3 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product0 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt____r3 = ((elmt_ks * (elmt_k0 + Functions.pow((elmt_dsp1p2kd / elmt_ka), elmt_h))) / (1.0 + Functions.pow((elmt_dsp1p2kd / elmt_ka), elmt_h)));
        elmt____r2 = (elmt____r2_elmt___RATE__ * elmt_P1);
        elmt____r1 = ((elmt_ks * (elmt_k0 + Functions.pow((elmt_dsp1p2kd / elmt_ka), elmt_h))) / (1.0 + Functions.pow((elmt_dsp1p2kd / elmt_ka), elmt_h)));
        elmt____r4 = (elmt____r4_elmt___RATE__ * elmt_Target);
        der(elmt_reactant1) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product0) = 0;
        der(elmt_product2) = 0;

end Reactions;
