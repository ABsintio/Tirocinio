within BIOMD619;
class Class_elmt_VLung

    input Real elmt_VLung_fraction_VTotal;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_VTotal;
    input Real elmt_J3;
    input Real elmt_J4;

    Real elmt_VLung(unit = "m3.0") "VLung";
 annotation(Documentation(info="<annotation>
	</annotation>"));
    Real elmt_CLung_amount(unit = "");
    Real elmt_CLung_conc(unit = "m-3.0.");
    Real elmt_CLung(unit = "") "CLung";
 annotation(Documentation(info="<annotation>
	</annotation>"));

    initial equation
        elmt_VLung = (elmt_VTotal * elmt_VLung_fraction_VTotal);
        elmt_CLung_amount = 0.0;


    equation
        assert(elmt_VLung >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_VLung) = 0;
        elmt_CLung = elmt_CLung_amount;
        der(elmt_CLung_amount) = ((- (elmt_J3 * elmt_reactant4)) + (elmt_J4 * elmt_product7));

    algorithm
        elmt_CLung_conc := elmt_CLung_amount / elmt_VLung;
end Class_elmt_VLung;
