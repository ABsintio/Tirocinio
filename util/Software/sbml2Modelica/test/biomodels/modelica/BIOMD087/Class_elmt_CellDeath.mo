within BIOMD087;
class Class_elmt_CellDeath "CellDeath" annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    input Real elmt_Mec1RPAssDNA;
    input Real elmt_RPAssDNA;
    input Real elmt_ssDNA;
    Boolean trigger;
    Real    value_elmt_kalive;

    equation
        trigger = ((elmt_Mec1RPAssDNA + elmt_RPAssDNA + elmt_ssDNA) >= 2000.0);
        algorithm
            value_elmt_kalive := 0.0;
end Class_elmt_CellDeath;
