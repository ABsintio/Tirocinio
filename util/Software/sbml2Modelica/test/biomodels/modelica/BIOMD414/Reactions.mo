within BIOMD414;
class Reactions

    input Real elmt_p2;
    input Real elmt_VENUS;
    input Real elmt_lambda_star;
    input Real elmt_qj_star;
    input Real elmt_p1_star;

    Real elmt_VENUSdecayduetoauxin(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_VENUSdecayduetophotobleaching(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant1 "";
    Real elmt_VENUSproduction(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product0 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product0 = 1.0;


    equation
        elmt_VENUSdecayduetoauxin = ((elmt_p2 * elmt_VENUS) / ((elmt_p1_star * elmt_VENUS) + elmt_qj_star));
        elmt_VENUSdecayduetophotobleaching = (elmt_lambda_star * elmt_p2 * elmt_VENUS);
        elmt_VENUSproduction = elmt_p2;
        der(elmt_reactant2) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product0) = 0;

end Reactions;
