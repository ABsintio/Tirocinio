within BIOMD483;
class Class_elmt_default

    input Real elmt_product10;
    input Real elmt_re11;
    input Real elmt_re12;
    input Real elmt_re13;
    input Real elmt_re14;
    input Real elmt_reactant9;
    input Real elmt_reactant2;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_reactant6;
    input Real elmt_reactant8;
    input Real elmt_product1;
    input Real elmt_reactant14;
    input Real elmt_re2;
    input Real elmt_re1;
    input Real elmt_reactant17;
    input Real elmt_product5;
    input Real elmt_reactant11;
    input Real elmt_reactant0;
    input Real elmt_product3;
    input Real elmt_reactant12;
    input Real elmt_re7;
    input Real elmt_re5;
    input Real elmt_product16;
    input Real elmt_product15;
    input Real elmt_product13;
    input Real elmt_product19;
    input Real elmt_product18;

    Real elmt_default(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Pa_conc(unit = "");
    Real elmt_Pa_amount(unit = "");
    Real elmt_Pa(unit = "") "Pa";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ESA_conc(unit = "");
    Real elmt_ESA_amount(unit = "");
    Real elmt_ESA(unit = "") "ESA";
    Real elmt_Pb_conc(unit = "");
    Real elmt_Pb_amount(unit = "");
    Real elmt_Pb(unit = "") "Pb";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ESB_conc(unit = "");
    Real elmt_ESB_amount(unit = "");
    Real elmt_ESB(unit = "") "ESB";
    Real elmt_Da_conc(unit = "");
    Real elmt_Da_amount(unit = "");
    Real elmt_Da(unit = "") "Da";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_BDa_conc(unit = "");
    Real elmt_BDa_amount(unit = "");
    Real elmt_BDa(unit = "") "BDa";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Db_conc(unit = "");
    Real elmt_Db_amount(unit = "");
    Real elmt_Db(unit = "") "Db";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_BDb_conc(unit = "");
    Real elmt_BDb_amount(unit = "");
    Real elmt_BDb(unit = "") "BDb";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_default = 1.0;
        elmt_Pa_conc = (0.0 / elmt_default);
        elmt_ESA_conc = (0.0 / elmt_default);
        elmt_Pb_conc = (0.0 / elmt_default);
        elmt_ESB_conc = (0.0 / elmt_default);
        elmt_Da_conc = (0.0 / elmt_default);
        elmt_BDa_conc = (0.0 / elmt_default);
        elmt_Db_conc = (0.0 / elmt_default);
        elmt_BDb_conc = (0.0 / elmt_default);


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;
        elmt_Pa = elmt_Pa_conc;
        elmt_ESA = elmt_ESA_conc;
        elmt_Pb = elmt_Pb_conc;
        elmt_ESB = elmt_ESB_conc;
        elmt_Da = elmt_Da_conc;
        elmt_BDa = elmt_BDa_conc;
        elmt_Db = elmt_Db_conc;
        elmt_BDb = elmt_BDb_conc;
        der(elmt_Pa_amount) = ((elmt_re2 * elmt_product1) + (- (elmt_re12 * elmt_reactant4)) + (- (elmt_re13 * elmt_reactant8)) + (elmt_re14 * elmt_product18));
        der(elmt_ESA_amount) = ((- (elmt_re2 * elmt_reactant0)) + (elmt_re12 * elmt_product5));
        der(elmt_Pb_amount) = ((elmt_re7 * elmt_product16) + (- (elmt_re5 * elmt_reactant11)) + (elmt_re1 * elmt_product3) + (- (elmt_re11 * elmt_reactant6)));
        der(elmt_ESB_amount) = ((- (elmt_re1 * elmt_reactant2)) + (elmt_re11 * elmt_product7));
        der(elmt_Da_amount) = ((elmt_re7 * elmt_product15) + (- (elmt_re5 * elmt_reactant12)));
        der(elmt_BDa_amount) = ((- (elmt_re7 * elmt_reactant14)) + (elmt_re5 * elmt_product13));
        der(elmt_Db_amount) = ((- (elmt_re13 * elmt_reactant9)) + (elmt_re14 * elmt_product19));
        der(elmt_BDb_amount) = ((elmt_re13 * elmt_product10) + (- (elmt_re14 * elmt_reactant17)));

    algorithm
        elmt_Pa_conc := elmt_Pa_amount / elmt_default;
        elmt_ESA_conc := elmt_ESA_amount / elmt_default;
        elmt_Pb_conc := elmt_Pb_amount / elmt_default;
        elmt_ESB_conc := elmt_ESB_amount / elmt_default;
        elmt_Da_conc := elmt_Da_amount / elmt_default;
        elmt_BDa_conc := elmt_BDa_amount / elmt_default;
        elmt_Db_conc := elmt_Db_amount / elmt_default;
        elmt_BDb_conc := elmt_BDb_amount / elmt_default;
end Class_elmt_default;
