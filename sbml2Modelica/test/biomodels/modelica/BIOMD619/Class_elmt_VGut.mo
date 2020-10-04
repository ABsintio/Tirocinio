within BIOMD619;
class Class_elmt_VGut

    input Real elmt_J9;
    input Real elmt_product1;
    input Real elmt_VTotal;
    input Real elmt_reactant16;
    input Real elmt_VGut_fraction_VTotal;
    input Real elmt_J1;
    input Real elmt_product3;
    input Real elmt_J2;

    Real elmt_VGut(unit = "m3.0") "VGut";
 annotation(Documentation(info="<annotation>
	</annotation>"));
    Real elmt_CGut_amount(unit = "");
    Real elmt_CGut_conc(unit = "m-3.0.");
    Real elmt_CGut(unit = "") "CGut";
 annotation(Documentation(info="<annotation>
	</annotation>"));

    initial equation
        elmt_VGut = (elmt_VTotal * elmt_VGut_fraction_VTotal);
        elmt_CGut_amount = 0.0;


    equation
        assert(elmt_VGut >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_VGut) = 0;
        elmt_CGut = elmt_CGut_amount;
        der(elmt_CGut_amount) = ((elmt_J1 * elmt_product1) + (elmt_J2 * elmt_product3) + (- (elmt_J9 * elmt_reactant16)));

    algorithm
        elmt_CGut_conc := elmt_CGut_amount / elmt_VGut;
end Class_elmt_VGut;
