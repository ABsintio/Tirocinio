within BIOMD007;
class Class_elmt_Division "Cell Division" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    input Real elmt_kp;
    input Real elmt_UbE;
    input Real elmt_Mass;
    Boolean trigger;
    Real    value_elmt_Mass;
    Real    value_elmt_kp;

    equation
        trigger = (elmt_UbE <= 0.1);
        algorithm
            value_elmt_Mass := (pre(elmt_Mass) / 2.0);
            value_elmt_kp := (2.0 * pre(elmt_kp));
end Class_elmt_Division;
