within S2BBIOMDx07125;
class Parameters
    extends Modelica.Icons.RecordsPackage;


    Real elmt_a2(unit = "") "";
    Real elmt_b1(unit = "") "";
    Real elmt_a1(unit = "") "";
    Real elmt_b2(unit = "") "";
    Real elmt_d1(unit = "") "";
    Real elmt_d2y(unit = "") "";
    Real elmt_d2x(unit = "") "";


    initial equation
        elmt_a2 = 2.0;
        elmt_b1 = 1.0;
        elmt_a1 = 2.0;
        elmt_b2 = 1.0;
        elmt_d1 = 1.0;
        elmt_d2y = 1.0;
        elmt_d2x = 1.0;


    equation
        der(elmt_a2) = 0;
        der(elmt_b1) = 0;
        der(elmt_a1) = 0;
        der(elmt_b2) = 0;
        der(elmt_d1) = 0;
        der(elmt_d2y) = 0;
        der(elmt_d2x) = 0;

end Parameters;
