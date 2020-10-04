within RunningExample;
class Parameters
    extends Modelica.Icons.RecordsPackage;


    input Boolean elmt_e2;    input Boolean elmt_e1;
    input Real assign_elmt_p4;
    input Real assign_elmt_p2;


    Real elmt_p3(unit = "") "";
    Real elmt_p4(unit = "") "";
    Real elmt_p1(unit = "") "";
    Real elmt_p2(unit = "") "";


    initial equation
        elmt_p3 = 0.001;
        elmt_p4 = if elmt_e2 then assign_elmt_p4 else 300.0;
        elmt_p1 = 1.0E-6;
        elmt_p2 = if elmt_e2 or elmt_e1 then assign_elmt_p2 else 1.0;


    equation
        der(elmt_p3) = 0;
        der(elmt_p4) = 0.0;
        der(elmt_p1) = 0;
        der(elmt_p2) = 0.0;

        when elmt_e2 then
            reinit(elmt_p4, assign_elmt_p4);
            reinit(elmt_p2, assign_elmt_p2);
        elsewhen elmt_e1 then
            reinit(elmt_p2, assign_elmt_p2);
        end when;
end Parameters;
