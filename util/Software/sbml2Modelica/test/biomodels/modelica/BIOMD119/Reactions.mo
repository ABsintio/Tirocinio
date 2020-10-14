within BIOMD119;
class Reactions

    input Real elmt_ICa;
    input Real elmt_uuCa;
    input Real elmt_compartment_0000001;
    input Real elmt_Ca;
    input Real elmt_tauCa;

    Real elmt_reaction_0000001(unit = "") "";
    Real elmt_product0 "";


    initial equation
        elmt_product0 = 1.0;


    equation
        elmt_reaction_0000001 = ((elmt_compartment_0000001 * (((- elmt_uuCa) * elmt_ICa) - elmt_Ca)) / elmt_tauCa);
        der(elmt_product0) = 0;

end Reactions;
