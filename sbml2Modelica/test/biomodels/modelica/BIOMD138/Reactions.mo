within BIOMD138;
class Reactions

    input Real elmt_ica;
    input Real elmt_cell;
    input Real elmt_ff;
    input Real elmt_alpha;
    input Real elmt_c;
    input Real elmt_kc;

    Real elmt_reaction_0000004(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product0 "";


    initial equation
        elmt_product0 = 1.0;


    equation
        elmt_reaction_0000004 = ((- elmt_ff) * ((elmt_alpha * elmt_ica) + (elmt_kc * elmt_c)) * elmt_cell);
        der(elmt_product0) = 0;

end Reactions;
