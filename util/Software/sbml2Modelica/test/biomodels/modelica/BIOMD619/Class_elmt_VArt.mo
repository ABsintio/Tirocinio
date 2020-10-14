within BIOMD619;
class Class_elmt_VArt

    input Real elmt_reactant20;
    input Real elmt_reactant8;
    input Real elmt_VArt_fraction_VTotal;
    input Real elmt_J7;
    input Real elmt_VTotal;
    input Real elmt_J5;
    input Real elmt_J3;
    input Real elmt_product5;
    input Real elmt_reactant12;
    input Real elmt_J1;
    input Real elmt_reactant0;
    input Real elmt_J11;

    Real elmt_VArt(unit = "m3.0") "VArt";
 annotation(Documentation(info="<annotation>
	</annotation>"));
    Real elmt_CArt_amount(unit = "");
    Real elmt_CArt_conc(unit = "m-3.0.");
    Real elmt_CArt(unit = "") "CArt";
 annotation(Documentation(info="<annotation>
	</annotation>"));

    initial equation
        elmt_VArt = (elmt_VTotal * elmt_VArt_fraction_VTotal);
        elmt_CArt_amount = 0.0;


    equation
        assert(elmt_VArt >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_VArt) = 0;
        elmt_CArt = elmt_CArt_amount;
        der(elmt_CArt_amount) = ((- (elmt_J7 * elmt_reactant12)) + (- (elmt_J5 * elmt_reactant8)) + (elmt_J3 * elmt_product5) + (- (elmt_J1 * elmt_reactant0)) + (- (elmt_J11 * elmt_reactant20)));

    algorithm
        elmt_CArt_conc := elmt_CArt_amount / elmt_VArt;
end Class_elmt_VArt;
