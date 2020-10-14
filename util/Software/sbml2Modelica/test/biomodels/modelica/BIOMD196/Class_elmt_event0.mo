within BIOMD196;
class Class_elmt_event0 "cell_division" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    input Real elmt_m;
    input Real elmt_x3;
    Boolean trigger;
    Real    value_elmt_m;

    equation
        trigger = (elmt_x3 < 0.2);
        algorithm
            value_elmt_m := (pre(elmt_m) / 2.0);
end Class_elmt_event0;
