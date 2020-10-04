within BIOMD299;
class Class_elmt_Nucleus

    input Real elmt_k1;
    input Real elmt_n;
    input Real elmt_Km;
    input Real elmt_vs;
    input Real elmt_FC;
    input Real elmt_KI;
    input Real elmt_vm;
    input Real elmt_k2;

    Real elmt_Nucleus(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_M_conc(unit = "");
    Real elmt_M_amount(unit = "");
    Real elmt_M(unit = "") "M";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_FN_conc(unit = "");
    Real elmt_FN_amount(unit = "");
    Real elmt_FN(unit = "") "FN";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Nucleus = 1.0;
        elmt_M_conc = 0.1;
        elmt_FN_conc = 0.1;


    equation
        assert(elmt_Nucleus >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Nucleus) = 0;
        elmt_M = elmt_M_conc;
        elmt_FN = elmt_FN_conc;
        der(elmt_M_amount / elmt_Nucleus) = ((elmt_vs * (Functions.pow(elmt_KI, elmt_n) / (Functions.pow(elmt_KI, elmt_n) + Functions.pow(elmt_FN, elmt_n)))) - (elmt_vm * (elmt_M / (elmt_Km + elmt_M))));
        der(elmt_FN_amount / elmt_Nucleus) = ((elmt_k1 * elmt_FC) - (elmt_k2 * elmt_FN));

    algorithm
        elmt_M_conc := elmt_M_amount / elmt_Nucleus;
        elmt_FN_conc := elmt_FN_amount / elmt_Nucleus;
end Class_elmt_Nucleus;
