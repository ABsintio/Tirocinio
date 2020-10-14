within BIOMD591;
class Class_elmt_nuc

    input Real elmt_reaction7;
    input Real elmt_product8;
    input Real elmt_reaction6;
    input Real elmt_reaction9;
    input Real elmt_reaction8;
    input Real elmt_product12;
    input Real elmt_reactant18;
    input Real elmt_reaction5;
    input Real elmt_product10;
    input Real elmt_reaction4;
    input Real elmt_reactant15;
    input Real elmt_reactant13;

    Real elmt_nuc(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_nucpApA_conc(unit = "");
    Real elmt_nucpApA_amount(unit = "");
    Real elmt_nucpApA(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_nucpApB_conc(unit = "");
    Real elmt_nucpApB_amount(unit = "");
    Real elmt_nucpApB(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_nucpBpB_conc(unit = "");
    Real elmt_nucpBpB_amount(unit = "");
    Real elmt_nucpBpB(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_nuc = 0.45;
        elmt_nucpApA_conc = 0.0;
        elmt_nucpApB_conc = 0.0;
        elmt_nucpBpB_conc = 0.0;


    equation
        assert(elmt_nuc >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_nuc) = 0;
        elmt_nucpApA = elmt_nucpApA_conc;
        elmt_nucpApB = elmt_nucpApB_conc;
        elmt_nucpBpB = elmt_nucpBpB_conc;
        der(elmt_nucpApA_amount) = ((- (elmt_reaction7 * elmt_reactant13)) + (elmt_reaction4 * elmt_product8));
        der(elmt_nucpApB_amount) = ((- (elmt_reaction8 * elmt_reactant15)) + (elmt_reaction5 * elmt_product10));
        der(elmt_nucpBpB_amount) = ((elmt_reaction6 * elmt_product12) + (- (elmt_reaction9 * elmt_reactant18)));

    algorithm
        elmt_nucpApA_conc := elmt_nucpApA_amount / elmt_nuc;
        elmt_nucpApB_conc := elmt_nucpApB_amount / elmt_nuc;
        elmt_nucpBpB_conc := elmt_nucpBpB_amount / elmt_nuc;
end Class_elmt_nuc;
