within BIOMD317;
class Parameters

    input Boolean elmt_e2;    input Boolean elmt_e1;
    input Real assign_elmt_FX;


    Real elmt_FX(unit = "") "";


    initial equation
        elmt_FX = 0.0;


    equation
        der(elmt_FX) = 0.0;

        when elmt_e2 then
            reinit(elmt_FX, assign_elmt_FX);
        end when;
        when elmt_e1 then
            reinit(elmt_FX, assign_elmt_FX);
        end when;
end Parameters;
