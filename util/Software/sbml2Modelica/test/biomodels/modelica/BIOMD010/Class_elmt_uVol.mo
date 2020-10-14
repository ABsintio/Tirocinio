within BIOMD010;
class Class_elmt_uVol

    input Real elmt_product11;
    input Real elmt_reactant18;
    input Real elmt_J9;
    input Real elmt_product9;
    input Real elmt_reactant2;
    input Real elmt_J0;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_reactant6;
    input Real elmt_reactant8;
    input Real elmt_J7;
    input Real elmt_reactant14;
    input Real elmt_product1;
    input Real elmt_J8;
    input Real elmt_reactant16;
    input Real elmt_J5;
    input Real elmt_J6;
    input Real elmt_reactant10;
    input Real elmt_J3;
    input Real elmt_product5;
    input Real elmt_J4;
    input Real elmt_reactant12;
    input Real elmt_reactant0;
    input Real elmt_J1;
    input Real elmt_product3;
    input Real elmt_J2;
    input Real elmt_product15;
    input Real elmt_product13;
    input Real elmt_product19;
    input Real elmt_product17;

    Real elmt_uVol(unit = "") "";
    Real elmt_MAPK_P_conc(unit = "");
    Real elmt_MAPK_P_amount(unit = "");
    Real elmt_MAPK_P(unit = "") "Erk2-P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_MAPK_PP_conc(unit = "");
    Real elmt_MAPK_PP_amount(unit = "");
    Real elmt_MAPK_PP(unit = "") "Erk2-PP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_MKK_P_conc(unit = "");
    Real elmt_MKK_P_amount(unit = "");
    Real elmt_MKK_P(unit = "") "Mek1-P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_MAPK_conc(unit = "");
    Real elmt_MAPK_amount(unit = "");
    Real elmt_MAPK(unit = "") "Erk2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_MKK_PP_conc(unit = "");
    Real elmt_MKK_PP_amount(unit = "");
    Real elmt_MKK_PP(unit = "") "Mek1-PP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_MKKK_conc(unit = "");
    Real elmt_MKKK_amount(unit = "");
    Real elmt_MKKK(unit = "") "Mos";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_MKK_conc(unit = "");
    Real elmt_MKK_amount(unit = "");
    Real elmt_MKK(unit = "") "Mek1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_MKKK_P_conc(unit = "");
    Real elmt_MKKK_P_amount(unit = "");
    Real elmt_MKKK_P(unit = "") "Mos-P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_uVol = 1.0;
        elmt_MAPK_P_conc = 10.0;
        elmt_MAPK_PP_conc = 10.0;
        elmt_MKK_P_conc = 10.0;
        elmt_MAPK_conc = 280.0;
        elmt_MKK_PP_conc = 10.0;
        elmt_MKKK_conc = 90.0;
        elmt_MKK_conc = 280.0;
        elmt_MKKK_P_conc = 10.0;


    equation
        assert(elmt_uVol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_uVol) = 0;
        elmt_MAPK_P = elmt_MAPK_P_conc;
        elmt_MAPK_PP = elmt_MAPK_PP_conc;
        elmt_MKK_P = elmt_MKK_P_conc;
        elmt_MAPK = elmt_MAPK_conc;
        elmt_MKK_PP = elmt_MKK_PP_conc;
        elmt_MKKK = elmt_MKKK_conc;
        elmt_MKK = elmt_MKK_conc;
        elmt_MKKK_P = elmt_MKKK_P_conc;
        der(elmt_MAPK_P_amount) = ((- (elmt_J9 * elmt_reactant18)) + (- (elmt_J7 * elmt_reactant14)) + (elmt_J8 * elmt_product17) + (elmt_J6 * elmt_product13));
        der(elmt_MAPK_PP_amount) = ((elmt_J7 * elmt_product15) + (- (elmt_J8 * elmt_reactant16)));
        der(elmt_MKK_P_amount) = ((- (elmt_J5 * elmt_reactant10)) + (- (elmt_J3 * elmt_reactant6)) + (elmt_J4 * elmt_product9) + (elmt_J2 * elmt_product5));
        der(elmt_MAPK_amount) = ((elmt_J9 * elmt_product19) + (- (elmt_J6 * elmt_reactant12)));
        der(elmt_MKK_PP_amount) = ((elmt_J3 * elmt_product7) + (- (elmt_J4 * elmt_reactant8)));
        der(elmt_MKKK_amount) = ((- (elmt_J0 * elmt_reactant0)) + (elmt_J1 * elmt_product3));
        der(elmt_MKK_amount) = ((elmt_J5 * elmt_product11) + (- (elmt_J2 * elmt_reactant4)));
        der(elmt_MKKK_P_amount) = ((elmt_J0 * elmt_product1) + (- (elmt_J1 * elmt_reactant2)));

    algorithm
        elmt_MAPK_P_conc := elmt_MAPK_P_amount / elmt_uVol;
        elmt_MAPK_PP_conc := elmt_MAPK_PP_amount / elmt_uVol;
        elmt_MKK_P_conc := elmt_MKK_P_amount / elmt_uVol;
        elmt_MAPK_conc := elmt_MAPK_amount / elmt_uVol;
        elmt_MKK_PP_conc := elmt_MKK_PP_amount / elmt_uVol;
        elmt_MKKK_conc := elmt_MKKK_amount / elmt_uVol;
        elmt_MKK_conc := elmt_MKK_amount / elmt_uVol;
        elmt_MKKK_P_conc := elmt_MKKK_P_amount / elmt_uVol;
end Class_elmt_uVol;
