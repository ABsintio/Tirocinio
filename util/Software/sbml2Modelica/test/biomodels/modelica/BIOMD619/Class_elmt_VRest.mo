within BIOMD619;
class Class_elmt_VRest

    input Real elmt_product9;
    input Real elmt_VVen;
    input Real elmt_VLiver;
    input Real elmt_VKidney;
    input Real elmt_VArt;
    input Real elmt_VTotal;
    input Real elmt_VGut;
    input Real elmt_J5;
    input Real elmt_J6;
    input Real elmt_reactant10;
    input Real elmt_VLung;

    Real elmt_VRest(unit = "m3.0") "VRest";
 annotation(Documentation(info="<annotation>
	</annotation>"));
    Real elmt_CRest_amount(unit = "");
    Real elmt_CRest_conc(unit = "m-3.0.");
    Real elmt_CRest(unit = "") "CRest";
 annotation(Documentation(info="<annotation>
	</annotation>"));

    initial equation
        elmt_VRest = ((((((elmt_VTotal - elmt_VArt) - elmt_VGut) - elmt_VKidney) - elmt_VLiver) - elmt_VLung) - elmt_VVen);
        elmt_CRest_amount = 0.0;


    equation
        assert(elmt_VRest >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_VRest) = 0;
        elmt_CRest = elmt_CRest_amount;
        der(elmt_CRest_amount) = ((elmt_J5 * elmt_product9) + (- (elmt_J6 * elmt_reactant10)));

    algorithm
        elmt_CRest_conc := elmt_CRest_amount / elmt_VRest;
end Class_elmt_VRest;
