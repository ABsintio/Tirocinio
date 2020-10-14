within BIOMD047;
class Class_elmt_Cytosol

    input Real elmt_Jleak;
    input Real elmt_reactant4;
    input Real elmt_Jch;
    input Real elmt_product1;
    input Real elmt_product3;
    input Real elmt_Jpump;

    Real elmt_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ca_Cyt_conc(unit = "");
    Real elmt_Ca_Cyt_amount(unit = "");
    Real elmt_Ca_Cyt(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Cytosol = 1.0;
        elmt_Ca_Cyt_conc = 0.0;


    equation
        assert(elmt_Cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Cytosol) = 0;
        elmt_Ca_Cyt = elmt_Ca_Cyt_conc;
        der(elmt_Ca_Cyt_amount) = ((elmt_Jleak * elmt_product3) + (elmt_Jch * elmt_product1) + (- (elmt_Jpump * elmt_reactant4)));

    algorithm
        elmt_Ca_Cyt_conc := elmt_Ca_Cyt_amount / elmt_Cytosol;
end Class_elmt_Cytosol;
