within BIOMD391;
class Class_elmt_cytosol

    Real elmt_cytosol(unit = "") "cytosol";
    Real elmt_Pext_conc(unit = "");
    Real elmt_Pext_amount(unit = "");
    Real elmt_Pext(unit = "") "Pext";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cytosol = 1.0;
        elmt_Pext_conc = 0.5;


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_Pext = elmt_Pext_conc;
        der(elmt_Pext_amount) = 0;

    algorithm
        elmt_Pext_conc := elmt_Pext_amount / elmt_cytosol;
end Class_elmt_cytosol;
