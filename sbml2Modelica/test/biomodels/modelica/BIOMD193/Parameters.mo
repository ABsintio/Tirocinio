within BIOMD193;
class Parameters

    input Boolean elmt_mt_attachment;
    input Real assign_elmt_u;


    Real elmt_k1f(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_k2f(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_k3f(unit = "s-1.0") "";
    Real elmt_k4f(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_k5f(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_kf6(unit = "m3.0.mol-1.0.s-1.0") "";
    Real elmt_const_val_1(unit = "") "";
    Real elmt_const_val_0(unit = "") "";
    Real elmt_k5r(unit = "s-1.0") "";
    Real elmt_u(unit = "") "";
    Real elmt_k1r(unit = "s-1.0") "";
    Real elmt_k4r(unit = "s-1.0") "";


    initial equation
        elmt_k1f = 200000.0;
        elmt_k2f = 1.0E7;
        elmt_k3f = 0.01;
        elmt_k4f = 1.0E7;
        elmt_k5f = 10000.0;
        elmt_kf6 = 1000.0;
        elmt_const_val_1 = 1.0;
        elmt_const_val_0 = 0.0;
        elmt_k5r = 0.2;
        elmt_u = 1.0;
        elmt_k1r = 0.2;
        elmt_k4r = 0.02;


    equation
        der(elmt_k1f) = 0;
        der(elmt_k2f) = 0;
        der(elmt_k3f) = 0;
        der(elmt_k4f) = 0;
        der(elmt_k5f) = 0;
        der(elmt_kf6) = 0;
        der(elmt_const_val_1) = 0;
        der(elmt_const_val_0) = 0;
        der(elmt_k5r) = 0;
        der(elmt_u) = 0.0;
        der(elmt_k1r) = 0;
        der(elmt_k4r) = 0;

        when elmt_mt_attachment then
            reinit(elmt_u, assign_elmt_u);
        end when;
end Parameters;
