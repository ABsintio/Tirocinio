within BIOMD147;
class Parameters

    input Real elmt_IkBe_cytoplasm;
    input Real elmt_IkBeIKKNFkB;
    input Real elmt_IkBaIKK;
    input Real elmt_IkBbIKK;
    input Real elmt_IkBeIKK;
    input Real elmt_IkBb_nucleus;
    input Real elmt_IkBbIKKNFkB;
    input Real elmt_IkBbNFkB_nucleus;
    input Real elmt_IkBaNFkB_nucleus;
    input Real elmt_IkBbNFkB_cytoplasm;
    input Real elmt_IkBaNFkB_cytoplasm;
    input Real elmt_IkBa_cytoplasm;
    input Real elmt_IkBb_cytoplasm;
    input Real elmt_IkBa_nucleus;
    input Real elmt_IkBaIKKNFkB;
    input Real elmt_IkBe_nucleus;
    input Real elmt_IkBeNFkB_cytoplasm;
    input Real elmt_IkBeNFkB_nucleus;

    Real elmt_Total_IkBeps(unit = "") "Total_IkBeps";
    Real elmt_Total_IkBbeta(unit = "") "Total_IkBbeta";
    Real elmt_Total_IkBalpha(unit = "") "Total_IkBalpha";


    initial equation


    equation
        elmt_Total_IkBeps = (elmt_IkBe_cytoplasm + elmt_IkBe_nucleus + elmt_IkBeIKK + elmt_IkBeIKKNFkB + elmt_IkBeNFkB_cytoplasm + elmt_IkBeNFkB_nucleus);
        elmt_Total_IkBbeta = (elmt_IkBb_cytoplasm + elmt_IkBb_nucleus + elmt_IkBbIKK + elmt_IkBbIKKNFkB + elmt_IkBbNFkB_cytoplasm + elmt_IkBbNFkB_nucleus);
        elmt_Total_IkBalpha = (elmt_IkBa_cytoplasm + elmt_IkBa_nucleus + elmt_IkBaIKK + elmt_IkBaIKKNFkB + elmt_IkBaNFkB_cytoplasm + elmt_IkBaNFkB_nucleus);

end Parameters;
