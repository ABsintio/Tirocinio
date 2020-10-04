within BIOMD150;
class Parameters

    input Real elmt_CDK2cycA_star_;
    input Real elmt_CDK2cycA;

    Real elmt_basal_fluorescence(unit = "") "";
    Real elmt_total_fluorescence(unit = "") "";


    initial equation
        elmt_basal_fluorescence = 1.21210648148148;


    equation
        der(elmt_basal_fluorescence) = 0;
        elmt_total_fluorescence = (((elmt_CDK2cycA * 599990.0 * 1000000.0) / 43200.0) + ((elmt_CDK2cycA_star_ * 599990.0 * 1000000.0) / 43200.0) + elmt_basal_fluorescence);

end Parameters;
