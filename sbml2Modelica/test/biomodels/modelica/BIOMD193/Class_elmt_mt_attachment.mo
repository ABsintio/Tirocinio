within BIOMD193;
class Class_elmt_mt_attachment "Microtubule attachment" annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    input Real elmt_const_val_0;
    Boolean trigger;
    Real    value_elmt_u;

    equation
        trigger = (time > 2000.0);
        algorithm
            value_elmt_u := elmt_const_val_0;
end Class_elmt_mt_attachment;
