within .;
class Parameters
    extends Modelica.Icons.RecordsPackage;


    Real elmt_k1(unit = "") "k1";
    Real elmt_k2(unit = "") "k2";


    initial equation
        elmt_k1 = 7.5;
        elmt_k2 = 2.5;


    equation
        der(elmt_k1) = 0;
        der(elmt_k2) = 0;

end Parameters;
