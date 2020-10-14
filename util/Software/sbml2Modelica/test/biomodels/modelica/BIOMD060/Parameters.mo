within BIOMD060;
class Parameters

    input Real elmt_Po2;
    input Real elmt_Po1;

    Real elmt_Open_probability(unit = "") "";


    initial equation


    equation
        elmt_Open_probability = (elmt_Po1 + elmt_Po2);

end Parameters;
