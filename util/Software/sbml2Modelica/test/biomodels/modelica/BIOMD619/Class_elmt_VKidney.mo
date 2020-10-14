within BIOMD619;
class Class_elmt_VKidney

    input Real elmt_product21;
    input Real elmt_VTotal;
    input Real elmt_J12;
    input Real elmt_VKidney_fraction_VTotal;
    input Real elmt_reactant22;
    input Real elmt_J13;
    input Real elmt_reactant24;
    input Real elmt_J11;

    Real elmt_VKidney(unit = "m3.0") "VKidney";
 annotation(Documentation(info="<annotation>
	</annotation>"));
    Real elmt_CKidney_amount(unit = "");
    Real elmt_CKidney_conc(unit = "m-3.0.");
    Real elmt_CKidney(unit = "") "CKidney";
 annotation(Documentation(info="<annotation>
	</annotation>"));

    initial equation
        elmt_VKidney = (elmt_VTotal * elmt_VKidney_fraction_VTotal);
        elmt_CKidney_amount = 0.0;


    equation
        assert(elmt_VKidney >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_VKidney) = 0;
        elmt_CKidney = elmt_CKidney_amount;
        der(elmt_CKidney_amount) = ((- (elmt_J12 * elmt_reactant22)) + (- (elmt_J13 * elmt_reactant24)) + (elmt_J11 * elmt_product21));

    algorithm
        elmt_CKidney_conc := elmt_CKidney_amount / elmt_VKidney;
end Class_elmt_VKidney;
