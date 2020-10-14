within BIOMD418;
class Reactions

    input Real elmt_k0;
    input Real elmt_P;
    input Real elmt_ka;
    input Real elmt_dspspkd;
    input Real elmt_h;
    input Real elmt_ks;

    Real elmt____r2(unit = "") "";
    parameter Real elmt____r2_elmt___RATE__(unit "") = 0.1 "";
    Real elmt_reactant1 "";
    Real elmt____r1(unit = "") "";
    Real elmt_product0 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_product0 = 1.0;


    equation
        elmt____r2 = (elmt____r2_elmt___RATE__ * elmt_P);
        elmt____r1 = ((elmt_ks * (elmt_k0 + Functions.pow((elmt_dspspkd / elmt_ka), elmt_h))) / (1.0 + Functions.pow((elmt_dspspkd / elmt_ka), elmt_h)));
        der(elmt_reactant1) = 0;
        der(elmt_product0) = 0;

end Reactions;
