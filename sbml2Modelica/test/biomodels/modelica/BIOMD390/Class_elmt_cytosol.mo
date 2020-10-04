within BIOMD390;
class Class_elmt_cytosol

    Real elmt_cytosol(unit = "") "cytosol";
    Real elmt_TPc_conc(unit = "");
    Real elmt_TPc_amount(unit = "");
    Real elmt_TPc(unit = "") "TPc";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Pic_conc(unit = "");
    Real elmt_Pic_amount(unit = "");
    Real elmt_Pic(unit = "") "Pic";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cytosol = 1.0;
        elmt_TPc_conc = 0.2;
        elmt_Pic_conc = 1.4;


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_TPc = elmt_TPc_conc;
        elmt_Pic = elmt_Pic_conc;
        der(elmt_TPc_amount) = 0;
        der(elmt_Pic_amount) = 0;

    algorithm
        elmt_TPc_conc := elmt_TPc_amount / elmt_cytosol;
        elmt_Pic_conc := elmt_Pic_amount / elmt_cytosol;
end Class_elmt_cytosol;
