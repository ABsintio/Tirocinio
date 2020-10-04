within BIOMD255;
class Class_elmt_medium

    Real elmt_medium(unit = "m3.0") "medium";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
      </rdf:RDF>
    </annotation>"));
    Real elmt_c514_conc(unit = "m-9.0.");
    Real elmt_c514_amount(unit = "m-6.0.");
    Real elmt_c514(unit = "m-9.0.") "HRG";
    Real elmt_c1_conc(unit = "m-3.0.");
    Real elmt_c1_amount(unit = "");
    Real elmt_c1(unit = "m-3.0.") "EGF";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
      </rdf:RDF>
    </annotation>"));
    Real elmt_c285_conc(unit = "m-6.0.");
    Real elmt_c285_amount(unit = "m-3.0.");
    Real elmt_c285(unit = "m-6.0.") "Inh";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_medium = 1.0;
        elmt_c514_conc = 0.0;
        elmt_c1_conc = 1.0E-11;
        elmt_c285_conc = 0.0;


    equation
        assert(elmt_medium >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_medium) = 0;
        elmt_c514 = elmt_c514_conc;
        elmt_c1 = elmt_c1_conc;
        elmt_c285 = elmt_c285_conc;
        der(elmt_c514_amount) = 0;
        der(elmt_c1_amount) = 0;
        der(elmt_c285_amount) = 0;

    algorithm
        elmt_c514_conc := elmt_c514_amount / elmt_medium;
        elmt_c1_conc := elmt_c1_amount / elmt_medium;
        elmt_c285_conc := elmt_c285_amount / elmt_medium;
end Class_elmt_medium;
