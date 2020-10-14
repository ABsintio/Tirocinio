within BIOMD619;
class Class_elmt_VKidneyTubules

    input Real elmt_product23;
    input Real elmt_J12;

    Real elmt_VKidneyTubules(unit = "m3.0") "VKidneyTubules";
 annotation(Documentation(info="<annotation>
	</annotation>"));
    Real elmt_CTubules_amount(unit = "");
    Real elmt_CTubules_conc(unit = "m-3.0.");
    Real elmt_CTubules(unit = "") "CTubules";
 annotation(Documentation(info="<annotation>
	</annotation>"));

    initial equation
        elmt_VKidneyTubules = 1.0;
        elmt_CTubules_amount = 0.0;


    equation
        assert(elmt_VKidneyTubules >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_VKidneyTubules) = 0;
        elmt_CTubules = elmt_CTubules_amount;
        der(elmt_CTubules_amount) = (elmt_J12 * elmt_product23);

    algorithm
        elmt_CTubules_conc := elmt_CTubules_amount / elmt_VKidneyTubules;
end Class_elmt_VKidneyTubules;
