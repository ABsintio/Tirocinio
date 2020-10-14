within BIOMD176;
class Parameters

    Real elmt_fV_ENO(unit = "") "";
    Real elmt_fV_TDH(unit = "") "";
    Real elmt_fV_HXK(unit = "") "";
    Real elmt_WGD_E(unit = "") "WGD enzyme conc change";
    Real elmt_fV_PYK(unit = "") "";
    Real elmt_fV_PGI(unit = "") "";
    Real elmt_fV_HXT(unit = "") "";
    Real elmt_fV_PGK(unit = "") "";
    Real elmt_fV_GPM(unit = "") "";
    Real elmt_fV_PFK(unit = "") "";
    Real elmt_fV_FBA(unit = "") "";


    initial equation
        elmt_fV_ENO = 1.0;
        elmt_fV_TDH = 1.0;
        elmt_fV_HXK = 1.0;
        elmt_WGD_E = 1.0;
        elmt_fV_PYK = 1.0;
        elmt_fV_PGI = 1.0;
        elmt_fV_HXT = 1.0;
        elmt_fV_PGK = 1.0;
        elmt_fV_GPM = 1.0;
        elmt_fV_PFK = 1.0;
        elmt_fV_FBA = 1.0;


    equation
        der(elmt_fV_ENO) = 0;
        der(elmt_fV_TDH) = 0;
        der(elmt_fV_HXK) = 0;
        der(elmt_WGD_E) = 0;
        der(elmt_fV_PYK) = 0;
        der(elmt_fV_PGI) = 0;
        der(elmt_fV_HXT) = 0;
        der(elmt_fV_PGK) = 0;
        der(elmt_fV_GPM) = 0;
        der(elmt_fV_PFK) = 0;
        der(elmt_fV_FBA) = 0;

end Parameters;
