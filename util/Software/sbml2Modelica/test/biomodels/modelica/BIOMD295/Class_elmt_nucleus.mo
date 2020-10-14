within BIOMD295;
class Class_elmt_nucleus

    input Real elmt_product9;
    input Real elmt_MFtrn;
    input Real elmt_reactant1;
    input Real elmt_FCtrs;
    input Real elmt_product0;
    input Real elmt_FCptrs;
    input Real elmt_MFdeg;
    input Real elmt_product5;

    Real elmt_nucleus(unit = "") "nucleus";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_FNp_conc(unit = "");
    Real elmt_FNp_amount(unit = "");
    Real elmt_FNp(unit = "") "FNp";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_MF_conc(unit = "");
    Real elmt_MF_amount(unit = "");
    Real elmt_MF(unit = "") "MF";
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
        elmt_nucleus = 1.0;
        elmt_FNp_conc = 2.74224951500791;
        elmt_MF_conc = 0.725579308537909;
        elmt_FN_conc = 1.84400040515923;


    equation
        assert(elmt_nucleus >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_nucleus) = 0;
        elmt_FNp = elmt_FNp_conc;
        elmt_MF = elmt_MF_conc;
        elmt_FN = elmt_FN_conc;
        der(elmt_FNp_amount) = (elmt_FCptrs * elmt_product9);
        der(elmt_MF_amount) = ((elmt_MFtrn * elmt_product0) + (- (elmt_MFdeg * elmt_reactant1)));
        der(elmt_FN_amount) = (elmt_FCtrs * elmt_product5);

    algorithm
        elmt_FNp_conc := elmt_FNp_amount / elmt_nucleus;
        elmt_MF_conc := elmt_MF_amount / elmt_nucleus;
        elmt_FN_conc := elmt_FN_amount / elmt_nucleus;
end Class_elmt_nucleus;
