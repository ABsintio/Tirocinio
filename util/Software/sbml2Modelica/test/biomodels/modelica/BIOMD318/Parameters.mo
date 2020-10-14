within BIOMD318;
class Parameters

    input Boolean elmt_e2;    input Boolean elmt_e1;
    input Real assign_elmt_S;


    Real elmt_S(unit = "") "S";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));


    initial equation
        elmt_S = 1.0;


    equation
        der(elmt_S) = 0.0;

        when elmt_e2 then
            reinit(elmt_S, assign_elmt_S);
        end when;
        when elmt_e1 then
            reinit(elmt_S, assign_elmt_S);
        end when;
end Parameters;
