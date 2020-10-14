within BIOMD085;
class Parameters

    input Real elmt_species_15;
    input Real elmt_species_10;
    input Real elmt_species_5;
    input Real elmt_species_11;

    Real elmt_parameter_1(unit = "") "v";
    Real elmt_parameter_0(unit = "") "Z";


    initial equation


    equation
        elmt_parameter_1 = (((25.0 * elmt_species_15) + (25.0 * elmt_species_11) + (0.013 * elmt_species_10) + (0.013 * elmt_species_5)) / 1.0E-8);
        elmt_parameter_0 = ((elmt_species_5 + elmt_species_10 + elmt_species_15 + elmt_species_11) / 1.0E-8);

end Parameters;
