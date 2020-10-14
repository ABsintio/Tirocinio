within BIOMD619;
class Class_elmt_VGutLumen

    input Real elmt_reactant2;
    input Real elmt_APAP_Dose;
    input Real elmt_J2;

    Real elmt_VGutLumen(unit = "m3.0") "VGutLumen";
 annotation(Documentation(info="<annotation>
	</annotation>"));
    Real elmt_AGutlumen_amount(unit = "");
    Real elmt_AGutlumen_conc(unit = "m-3.0.");
    Real elmt_AGutlumen(unit = "") "AGutlumen";
 annotation(Documentation(info="<annotation>
	</annotation>"));

    initial equation
        elmt_VGutLumen = 1.0;
        elmt_AGutlumen_amount = elmt_APAP_Dose;


    equation
        assert(elmt_VGutLumen >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_VGutLumen) = 0;
        elmt_AGutlumen = elmt_AGutlumen_amount;
        der(elmt_AGutlumen_amount) = (- (elmt_J2 * elmt_reactant2));

    algorithm
        elmt_AGutlumen_conc := elmt_AGutlumen_amount / elmt_VGutLumen;
end Class_elmt_VGutLumen;
