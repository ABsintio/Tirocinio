within BIOMD027;
class Parameters

    Real elmt_Km5(unit = "") "";
    Real elmt_Km3(unit = "") "";
    Real elmt_Km4(unit = "") "";
    Real elmt_Km1(unit = "") "";
    Real elmt_k4cat(unit = "") "";
    Real elmt_Km2(unit = "") "";
    Real elmt_k3cat(unit = "") "";
    Real elmt_k1cat(unit = "") "";
    Real elmt_k2cat(unit = "") "";


    initial equation
        elmt_Km5 = 78.0;
        elmt_Km3 = 22.0;
        elmt_Km4 = 18.0;
        elmt_Km1 = 50.0;
        elmt_k4cat = 0.06;
        elmt_Km2 = 500.0;
        elmt_k3cat = 0.084;
        elmt_k1cat = 0.01;
        elmt_k2cat = 15.0;


    equation
        der(elmt_Km5) = 0;
        der(elmt_Km3) = 0;
        der(elmt_Km4) = 0;
        der(elmt_Km1) = 0;
        der(elmt_k4cat) = 0;
        der(elmt_Km2) = 0;
        der(elmt_k3cat) = 0;
        der(elmt_k1cat) = 0;
        der(elmt_k2cat) = 0;

end Parameters;
