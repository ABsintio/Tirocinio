within BIOMD211;
class Class_elmt_compartment_3

    Real elmt_compartment_3(unit = "") "extracellular";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_species_26_conc(unit = "");
    Real elmt_species_26_amount(unit = "");
    Real elmt_species_26(unit = "") "pyruvate external";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_species_27_conc(unit = "");
    Real elmt_species_27_amount(unit = "");
    Real elmt_species_27(unit = "") "glycerol external";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_species_25_conc(unit = "");
    Real elmt_species_25_amount(unit = "");
    Real elmt_species_25(unit = "") "glucose external";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_compartment_3 = 1.0;
        elmt_species_26_conc = 0.0;
        elmt_species_27_conc = 0.0;
        elmt_species_25_conc = 5.0;


    equation
        assert(elmt_compartment_3 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_3) = 0;
        elmt_species_26 = elmt_species_26_conc;
        elmt_species_27 = elmt_species_27_conc;
        elmt_species_25 = elmt_species_25_conc;
        der(elmt_species_26_amount) = 0;
        der(elmt_species_27_amount) = 0;
        der(elmt_species_25_amount) = 0;

    algorithm
        elmt_species_26_conc := elmt_species_26_amount / elmt_compartment_3;
        elmt_species_27_conc := elmt_species_27_amount / elmt_compartment_3;
        elmt_species_25_conc := elmt_species_25_amount / elmt_compartment_3;
end Class_elmt_compartment_3;
