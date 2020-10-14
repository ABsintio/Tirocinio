within BIOMD211;
class Parameters

    Real elmt_RaHXK(unit = "") "RaHXK";
    Real elmt_RaPGAM(unit = "") "RaPGAM";
    Real elmt_RaPYK(unit = "") "RaPYK";
    Real elmt_RaPFK(unit = "") "RaPFK";
    Real elmt_RaENO(unit = "") "RaENO";


    initial equation
        elmt_RaHXK = 1.0;
        elmt_RaPGAM = 1.0;
        elmt_RaPYK = 1.0;
        elmt_RaPFK = 1.0;
        elmt_RaENO = 1.0;


    equation
        der(elmt_RaHXK) = 0;
        der(elmt_RaPGAM) = 0;
        der(elmt_RaPYK) = 0;
        der(elmt_RaPFK) = 0;
        der(elmt_RaENO) = 0;

end Parameters;
