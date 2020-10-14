within BIOMD619;
class Class_elmt_VVen

    input Real elmt_reactant6;
    input Real elmt_VVen_fraction_VTotal;
    input Real elmt_product11;
    input Real elmt_VTotal;
    input Real elmt_product25;
    input Real elmt_J6;
    input Real elmt_J4;
    input Real elmt_J13;
    input Real elmt_product19;
    input Real elmt_J10;

    Real elmt_VVen(unit = "m3.0") "VVen";
 annotation(Documentation(info="<annotation>
	</annotation>"));
    Real elmt_CVen_amount(unit = "");
    Real elmt_CVen_conc(unit = "m-3.0.");
    Real elmt_CVen(unit = "") "CVen";
 annotation(Documentation(info="<annotation>
	</annotation>"));

    initial equation
        elmt_VVen = (elmt_VTotal * elmt_VVen_fraction_VTotal);
        elmt_CVen_amount = 0.0;


    equation
        assert(elmt_VVen >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_VVen) = 0;
        elmt_CVen = elmt_CVen_amount;
        der(elmt_CVen_amount) = ((elmt_J6 * elmt_product11) + (- (elmt_J4 * elmt_reactant6)) + (elmt_J13 * elmt_product25) + (elmt_J10 * elmt_product19));

    algorithm
        elmt_CVen_conc := elmt_CVen_amount / elmt_VVen;
end Class_elmt_VVen;
