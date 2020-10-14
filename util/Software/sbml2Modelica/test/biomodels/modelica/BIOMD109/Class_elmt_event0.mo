within BIOMD109;
class Class_elmt_event0 "modifier activation" annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
        </rdf:RDF>
      </annotation>"));

    input Real elmt_k1Yact;
    Boolean trigger;
    Real    value_elmt_kYact;

    equation
        trigger = (time > 240.0637);
        algorithm
            value_elmt_kYact := elmt_k1Yact;
end Class_elmt_event0;
