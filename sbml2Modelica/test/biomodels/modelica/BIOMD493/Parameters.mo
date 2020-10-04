within BIOMD493;
class Parameters

    input Boolean elmt__E1;    input Boolean elmt__E0;
    input Real assign_elmt_zD;
    input Real assign_elmt_zO;


    Real elmt_kP(unit = "") "";
    Real elmt_cOC(unit = "") "";
    Real elmt_mP(unit = "") "";
    Real elmt_n(unit = "") "";
    Real elmt_kO(unit = "") "";
    Real elmt_bC(unit = "") "";
    Real elmt_mO(unit = "") "";
    Real elmt_aC(unit = "") "";
    Real elmt_bO(unit = "") "";
    Real elmt_bP(unit = "") "";
    Real elmt_aO(unit = "") "";
    Real elmt_zC(unit = "") "";
    Real elmt_zD(unit = "") "";
    Real elmt_zO(unit = "") "";
    Real elmt_mC(unit = "") "";
    Real elmt_cOP(unit = "") "";
    Real elmt_cPP(unit = "") "";
    Real elmt_cOO(unit = "") "";
    Real elmt_cCC(unit = "") "";
    Real elmt_aP(unit = "") "";
    Real elmt_cCP(unit = "") "";
    Real elmt_cCO(unit = "") "";
    Real elmt_kC(unit = "") "";


    initial equation
        elmt_kP = 0.1;
        elmt_cOC = 0.1;
        elmt_mP = 10.0;
        elmt_n = 2.0;
        elmt_kO = 0.1;
        elmt_bC = 1.0;
        elmt_mO = 1.0;
        elmt_aC = 0.1;
        elmt_bO = 1.0;
        elmt_bP = 0.5;
        elmt_aO = 0.1;
        elmt_zC = 0.0;
        elmt_zD = 0.0;
        elmt_zO = 0.0;
        elmt_mC = 1.0;
        elmt_cOP = 0.5;
        elmt_cPP = 0.1;
        elmt_cOO = 0.1;
        elmt_cCC = 0.1;
        elmt_aP = 0.2;
        elmt_cCP = 0.5;
        elmt_cCO = 0.1;
        elmt_kC = 0.1;


    equation
        der(elmt_kP) = 0;
        der(elmt_cOC) = 0;
        der(elmt_mP) = 0;
        der(elmt_n) = 0;
        der(elmt_kO) = 0;
        der(elmt_bC) = 0;
        der(elmt_mO) = 0;
        der(elmt_aC) = 0;
        der(elmt_bO) = 0;
        der(elmt_bP) = 0;
        der(elmt_aO) = 0;
        der(elmt_zC) = 0;
        der(elmt_zD) = 0.0;
        der(elmt_zO) = 0.0;
        der(elmt_mC) = 0;
        der(elmt_cOP) = 0;
        der(elmt_cPP) = 0;
        der(elmt_cOO) = 0;
        der(elmt_cCC) = 0;
        der(elmt_aP) = 0;
        der(elmt_cCP) = 0;
        der(elmt_cCO) = 0;
        der(elmt_kC) = 0;

        when elmt__E1 then
            reinit(elmt_zD, assign_elmt_zD);
            reinit(elmt_zO, assign_elmt_zO);
        end when;
        when elmt__E0 then
            reinit(elmt_zD, assign_elmt_zD);
            reinit(elmt_zO, assign_elmt_zO);
        end when;
end Parameters;
