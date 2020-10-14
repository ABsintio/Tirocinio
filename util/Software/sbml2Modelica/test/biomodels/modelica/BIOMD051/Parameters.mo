within BIOMD051;
class Parameters

    Real elmt_camp(unit = "m-3.0.") "";
    Real elmt_cnadh(unit = "m-3.0.") "";
    Real elmt_catp(unit = "m-3.0.") "";
    Real elmt_cadp(unit = "m-3.0.") "";
    Real elmt_cnadph(unit = "m-3.0.") "";
    Real elmt_cnad(unit = "m-3.0.") "";
    Real elmt_cnadp(unit = "m-3.0.") "";


    initial equation


    equation
        elmt_camp = (0.123 + (7.25 * (time / (7.25 + (1.47 * time) + (0.17 * Functions.pow(time, 2.0))))) + (1.073 / (1.29 + (8.05 * time))));
        elmt_cnadh = (0.0934 + (0.00111 * Functions.pow(2.371, ((-0.123) * time)) * ((0.844 * time) + (0.104 * Functions.pow(time, 3.0)))));
        elmt_catp = (4.27 - (4.163 * (time / (0.657 + (1.43 * time) + (0.0364 * Functions.pow(time, 2.0))))));
        elmt_cadp = (0.582 + (1.73 * Functions.pow(2.731, ((-0.15) * time)) * ((0.12 * time) + (2.14E-4 * Functions.pow(time, 3.0)))));
        elmt_cnadph = (0.062 + (0.332 * Functions.pow(2.718, ((-0.464) * time)) * ((0.0166 * Functions.pow(time, 1.58)) + (1.66E-4 * Functions.pow(time, 4.73)) + (0.1312 * Functions.pow(10.0, (-9.0)) * Functions.pow(time, 7.89)) + (0.1362 * Functions.pow(10.0, (-12.0)) * Functions.pow(time, 11.0)) + (0.1233 * Functions.pow(10.0, (-15.0)) * Functions.pow(time, 14.2)))));
        elmt_cnad = ((1.314 + (1.314 * Functions.pow(2.73, (((-0.0435) * time) - 0.342)))) - ((time + 7.871) * (Functions.pow(2.73, (((-0.0218) * time) - 0.171)) / (8.481 + time))));
        elmt_cnadp = ((0.159 - (0.00554 * (time / ((2.8 - (0.271 * time)) + (0.01 * Functions.pow(time, 2.0)))))) + (0.182 / (4.82 + (0.526 * time))));

end Parameters;
