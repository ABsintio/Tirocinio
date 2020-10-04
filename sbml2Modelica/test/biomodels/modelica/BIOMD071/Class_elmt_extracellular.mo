within BIOMD071;
class Class_elmt_extracellular

    Real elmt_extracellular(unit = "") "extracellular";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PyrE_conc(unit = "");
    Real elmt_PyrE_amount(unit = "");
    Real elmt_PyrE(unit = "") "Pyruvate external";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GlcE_conc(unit = "");
    Real elmt_GlcE_amount(unit = "");
    Real elmt_GlcE(unit = "") "Glucose external";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_extracellular = 1.0;
        elmt_PyrE_conc = 0.0;
        elmt_GlcE_conc = 5.0;


    equation
        assert(elmt_extracellular >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_extracellular) = 0;
        elmt_PyrE = elmt_PyrE_conc;
        elmt_GlcE = elmt_GlcE_conc;
        der(elmt_PyrE_amount) = 0;
        der(elmt_GlcE_amount) = 0;

    algorithm
        elmt_PyrE_conc := elmt_PyrE_amount / elmt_extracellular;
        elmt_GlcE_conc := elmt_GlcE_amount / elmt_extracellular;
end Class_elmt_extracellular;
