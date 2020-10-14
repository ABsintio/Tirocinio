within BIOMD483;
class Parameters

    Real elmt_sb(unit = "") "";
    Real elmt_ba(unit = "") "";
    Real elmt_bb(unit = "") "";
    Real elmt_da(unit = "") "";
    Real elmt_ub(unit = "") "";
    Real elmt_db(unit = "") "";
    Real elmt_sa(unit = "") "";
    Real elmt_ua(unit = "") "";


    initial equation
        elmt_sb = 100.0;
        elmt_ba = 1.0E-5;
        elmt_bb = 1.0E-5;
        elmt_da = 1.0;
        elmt_ub = 0.1;
        elmt_db = 1.0;
        elmt_sa = 100.0;
        elmt_ua = 0.1;


    equation
        der(elmt_sb) = 0;
        der(elmt_ba) = 0;
        der(elmt_bb) = 0;
        der(elmt_da) = 0;
        der(elmt_ub) = 0;
        der(elmt_db) = 0;
        der(elmt_sa) = 0;
        der(elmt_ua) = 0;

end Parameters;
