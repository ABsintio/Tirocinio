within BIOMD311;
class Reactions

    input Real elmt_k0;
    input Real elmt_k1;
    input Real elmt_Ep;
    input Real elmt_E;
    input Real elmt_env;
    input Real elmt_k4;
    input Real elmt_J3;
    input Real elmt_S;
    input Real elmt_J4;
    input Real elmt_k2;
    input Real elmt_R;
    input Real elmt_k3;

    Real elmt_r5(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_r3(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_r4(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_r1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product0 "";
    Real elmt_r2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product1 = 1.0;
        elmt_product0 = 1.0;
        elmt_product4 = 1.0;


    equation
        elmt_r5 = ((elmt_env * elmt_k4 * elmt_Ep) / (elmt_J4 + elmt_Ep));
        elmt_r3 = (elmt_env * elmt_k2 * elmt_R);
        elmt_r4 = ((elmt_env * elmt_k3 * elmt_R * elmt_E) / (elmt_J3 + elmt_E));
        elmt_r1 = (elmt_env * elmt_k0 * elmt_Ep);
        elmt_r2 = (elmt_env * elmt_k1 * elmt_S);
        der(elmt_reactant2) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product1) = 0;
        der(elmt_product0) = 0;
        der(elmt_product4) = 0;

end Reactions;
