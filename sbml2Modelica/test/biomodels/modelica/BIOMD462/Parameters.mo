within BIOMD462;
class Parameters

    Real elmt_kprod(unit = "") "";
    Real elmt_kdimer(unit = "") "";
    Real elmt_kdedimer(unit = "") "";
    Real elmt_kpg(unit = "") "";
    Real elmt_kpf(unit = "") "";
    Real elmt_kdeg(unit = "") "";
    Real elmt_kdisagg(unit = "") "";
    Real elmt_kpghalf(unit = "") "";
    Real elmt_kdegNep(unit = "") "";


    initial equation
        elmt_kprod = 1.86E-5;
        elmt_kdimer = 1.1783E-7;
        elmt_kdedimer = 8.4655E-6;
        elmt_kpg = 0.00574;
        elmt_kpf = 2.785E-6;
        elmt_kdeg = 2.1E-5;
        elmt_kdisagg = 5.4357E-5;
        elmt_kpghalf = 4.0;
        elmt_kdegNep = 1.8E-10;


    equation
        der(elmt_kprod) = 0;
        der(elmt_kdimer) = 0;
        der(elmt_kdedimer) = 0;
        der(elmt_kpg) = 0;
        der(elmt_kpf) = 0;
        der(elmt_kdeg) = 0;
        der(elmt_kdisagg) = 0;
        der(elmt_kpghalf) = 0;
        der(elmt_kdegNep) = 0;

end Parameters;
