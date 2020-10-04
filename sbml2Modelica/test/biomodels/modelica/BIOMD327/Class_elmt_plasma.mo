within BIOMD327;
class Class_elmt_plasma

    Real elmt_plasma(unit = "") "plasma";
    Real elmt_nb_conc(unit = "");
    Real elmt_nb_amount(unit = "");
    Real elmt_nb(unit = "") "Na+";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_cb_conc(unit = "");
    Real elmt_cb_amount(unit = "");
    Real elmt_cb(unit = "") "CL-";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_bb_conc(unit = "");
    Real elmt_bb_amount(unit = "");
    Real elmt_bb(unit = "") "HCO3-";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_plasma = 1.0;
        elmt_nb_conc = 140.0;
        elmt_cb_conc = 130.0;
        elmt_bb_conc = 22.0;


    equation
        assert(elmt_plasma >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_plasma) = 0;
        elmt_nb = elmt_nb_conc;
        elmt_cb = elmt_cb_conc;
        elmt_bb = elmt_bb_conc;
        der(elmt_nb_amount) = 0;
        der(elmt_cb_amount) = 0;
        der(elmt_bb_amount) = 0;

    algorithm
        elmt_nb_conc := elmt_nb_amount / elmt_plasma;
        elmt_cb_conc := elmt_cb_amount / elmt_plasma;
        elmt_bb_conc := elmt_bb_amount / elmt_plasma;
end Class_elmt_plasma;
