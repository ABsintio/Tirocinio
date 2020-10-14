within BIOMD009;
class Parameters

    Real elmt_K_PP_norm_max(unit = "") "";


    initial equation
        elmt_K_PP_norm_max = 0.900049;


    equation
        der(elmt_K_PP_norm_max) = 0;

end Parameters;
