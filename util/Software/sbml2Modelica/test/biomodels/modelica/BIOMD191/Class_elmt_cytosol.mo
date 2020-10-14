within BIOMD191;
class Class_elmt_cytosol

    input Real elmt_Ornithine_efflux;
    input Real elmt_reactant4;
    input Real elmt_reactant6;
    input Real elmt_reactant5;
    input Real elmt_NOS;
    input Real elmt_Arginine_transport;
    input Real elmt_product1;
    input Real elmt_Arginase;
    input Real elmt_ODC;
    input Real elmt_product3;
    input Real elmt_reactant0;

    Real elmt_cytosol(unit = "") "cytosol";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ARGin_conc(unit = "");
    Real elmt_ARGin_amount(unit = "");
    Real elmt_ARGin(unit = "") "Arginine in";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ORN_conc(unit = "");
    Real elmt_ORN_amount(unit = "");
    Real elmt_ORN(unit = "") "Ornithine";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cytosol = 1.0;
        elmt_ARGin_conc = 1.0;
        elmt_ORN_conc = 1.0;


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_ARGin = elmt_ARGin_conc;
        elmt_ORN = elmt_ORN_conc;
        der(elmt_ARGin_amount) = ((- (elmt_NOS * elmt_reactant5)) + (elmt_Arginine_transport * elmt_product3) + (- (elmt_Arginase * elmt_reactant0)));
        der(elmt_ORN_amount) = ((- (elmt_Ornithine_efflux * elmt_reactant4)) + (elmt_Arginase * elmt_product1) + (- (elmt_ODC * elmt_reactant6)));

    algorithm
        elmt_ARGin_conc := elmt_ARGin_amount / elmt_cytosol;
        elmt_ORN_conc := elmt_ORN_amount / elmt_cytosol;
end Class_elmt_cytosol;
