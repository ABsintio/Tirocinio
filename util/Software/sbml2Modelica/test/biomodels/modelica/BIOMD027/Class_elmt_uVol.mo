within BIOMD027;
class Class_elmt_uVol

    input Real elmt_reactant2;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_reactant6;
    input Real elmt_product1;
    input Real elmt_v3;
    input Real elmt_v4;
    input Real elmt_v1;
    input Real elmt_v2;
    input Real elmt_product5;
    input Real elmt_reactant0;
    input Real elmt_product3;

    Real elmt_uVol(unit = "") "";
    Real elmt_M_conc(unit = "");
    Real elmt_M_amount(unit = "");
    Real elmt_M(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Mp_conc(unit = "");
    Real elmt_Mp_amount(unit = "");
    Real elmt_Mp(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_MKP3_conc(unit = "");
    Real elmt_MKP3_amount(unit = "");
    Real elmt_MKP3(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_MAPKK_conc(unit = "");
    Real elmt_MAPKK_amount(unit = "");
    Real elmt_MAPKK(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Mpp_conc(unit = "");
    Real elmt_Mpp_amount(unit = "");
    Real elmt_Mpp(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_uVol = 1.0;
        elmt_M_conc = (500.0 / elmt_uVol);
        elmt_Mp_conc = (0.0 / elmt_uVol);
        elmt_MKP3_conc = (100.0 / elmt_uVol);
        elmt_MAPKK_conc = (50.0 / elmt_uVol);
        elmt_Mpp_conc = (0.0 / elmt_uVol);


    equation
        assert(elmt_uVol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_uVol) = 0;
        elmt_M = elmt_M_conc;
        elmt_Mp = elmt_Mp_conc;
        elmt_MKP3 = elmt_MKP3_conc;
        elmt_MAPKK = elmt_MAPKK_conc;
        elmt_Mpp = elmt_Mpp_conc;
        der(elmt_MKP3_amount) = 0;
        der(elmt_MAPKK_amount) = 0;
        der(elmt_M_amount) = ((elmt_v4 * elmt_product7) + (- (elmt_v1 * elmt_reactant0)));
        der(elmt_Mp_amount) = ((elmt_v3 * elmt_product5) + (- (elmt_v4 * elmt_reactant6)) + (elmt_v1 * elmt_product1) + (- (elmt_v2 * elmt_reactant2)));
        der(elmt_Mpp_amount) = ((- (elmt_v3 * elmt_reactant4)) + (elmt_v2 * elmt_product3));

    algorithm
        elmt_M_conc := elmt_M_amount / elmt_uVol;
        elmt_Mp_conc := elmt_Mp_amount / elmt_uVol;
        elmt_MKP3_conc := elmt_MKP3_amount / elmt_uVol;
        elmt_MAPKK_conc := elmt_MAPKK_amount / elmt_uVol;
        elmt_Mpp_conc := elmt_Mpp_amount / elmt_uVol;
end Class_elmt_uVol;
