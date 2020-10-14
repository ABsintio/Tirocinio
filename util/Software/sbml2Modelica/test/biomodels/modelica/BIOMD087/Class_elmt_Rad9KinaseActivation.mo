within BIOMD087;
class Class_elmt_Rad9KinaseActivation "Rad9KinaseActivation" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    input Real elmt_Mec1RPAssDNA;
    Boolean trigger;
    Real    value_elmt_Rad9Kin;

    equation
        trigger = (elmt_Mec1RPAssDNA >= 800.0);
        algorithm
            value_elmt_Rad9Kin := 1.0;
end Class_elmt_Rad9KinaseActivation;
