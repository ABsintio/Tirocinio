within BIOMD619;
class Class_elmt_VLiver

    input Real elmt_reactant18;
    input Real elmt_J9;
    input Real elmt_J7;
    input Real elmt_reactant14;
    input Real elmt_VTotal;
    input Real elmt_J8;
    input Real elmt_product15;
    input Real elmt_VLiver_fraction_VTotal;
    input Real elmt_product13;
    input Real elmt_J10;
    input Real elmt_product17;

    Real elmt_VLiver(unit = "m3.0") "VLiver";
 annotation(Documentation(info="<annotation>
	</annotation>"));
    Real elmt_CLiver_amount(unit = "");
    Real elmt_CLiver_conc(unit = "m-3.0.");
    Real elmt_CLiver(unit = "") "CLiver";
 annotation(Documentation(info="<annotation>
	</annotation>"));
    Real elmt_CMetabolized_amount(unit = "");
    Real elmt_CMetabolized_conc(unit = "m-3.0.");
    Real elmt_CMetabolized(unit = "") "CMetabolized";
 annotation(Documentation(info="<annotation>
	</annotation>"));

    initial equation
        elmt_VLiver = (elmt_VTotal * elmt_VLiver_fraction_VTotal);
        elmt_CLiver_amount = 0.0;
        elmt_CMetabolized_amount = 0.0;


    equation
        assert(elmt_VLiver >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_VLiver) = 0;
        elmt_CLiver = elmt_CLiver_amount;
        elmt_CMetabolized = elmt_CMetabolized_amount;
        der(elmt_CLiver_amount) = ((elmt_J7 * elmt_product13) + (- (elmt_J8 * elmt_reactant14)) + (elmt_J9 * elmt_product17) + (- (elmt_J10 * elmt_reactant18)));
        der(elmt_CMetabolized_amount) = (elmt_J8 * elmt_product15);

    algorithm
        elmt_CLiver_conc := elmt_CLiver_amount / elmt_VLiver;
        elmt_CMetabolized_conc := elmt_CMetabolized_amount / elmt_VLiver;
end Class_elmt_VLiver;
