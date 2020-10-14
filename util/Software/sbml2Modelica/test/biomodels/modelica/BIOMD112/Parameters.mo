within BIOMD112;
class Parameters

    input Real elmt_smad4_cyt;
    input Real elmt_smad4_nuc;
    input Real elmt_R_smad_P_nuc;
    input Real elmt_R_smad_P_smad4_nuc;
    input Real elmt_R_smad_P_cyt;
    input Real elmt_R_smad_P_smad4_cyt;
    input Real elmt_R_smad_cyt;
    input Real elmt_R_smad_nuc;

    Real elmt_sum_R_smad_cyt(unit = "") "sum_R_smad_cyt";
    Real elmt_sum_smad4_cyt(unit = "") "sum_Smad4_cyt";
    Real elmt_sum_R_smad_nuc(unit = "") "sum_R_smad_nuc";
    Real elmt_sum_smad4_nuc(unit = "") "sum_Smad4_nuc";


    initial equation


    equation
        elmt_sum_R_smad_cyt = (elmt_R_smad_cyt + elmt_R_smad_P_cyt + elmt_R_smad_P_smad4_cyt);
        elmt_sum_smad4_cyt = (elmt_smad4_cyt + elmt_R_smad_P_smad4_cyt);
        elmt_sum_R_smad_nuc = (elmt_R_smad_nuc + elmt_R_smad_P_nuc + elmt_R_smad_P_smad4_nuc);
        elmt_sum_smad4_nuc = (elmt_smad4_nuc + elmt_R_smad_P_smad4_nuc);

end Parameters;
