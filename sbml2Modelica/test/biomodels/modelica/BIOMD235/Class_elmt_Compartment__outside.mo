within BIOMD235;
class Class_elmt_Compartment__outside

    Real elmt_Compartment__outside(unit = "m3.0") "Compartment.outside";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));
    Real elmt_none_conc(unit = "m-3.0.");
    Real elmt_none_amount(unit = "");
    Real elmt_none(unit = "m-3.0.") "none";

    initial equation
        elmt_Compartment__outside = 1.0;
        elmt_none_conc = 0.0;


    equation
        assert(elmt_Compartment__outside >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Compartment__outside) = 0;
        elmt_none = elmt_none_conc;
        der(elmt_none_amount) = 0;

    algorithm
        elmt_none_conc := elmt_none_amount / elmt_Compartment__outside;
end Class_elmt_Compartment__outside;
