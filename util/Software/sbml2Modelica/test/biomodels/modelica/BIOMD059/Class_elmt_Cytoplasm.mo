within BIOMD059;
class Class_elmt_Cytoplasm

    input Real elmt_product12;
    input Real elmt_ATP_production;
    input Real elmt_Calcium_cyt_Ivca;
    input Real elmt_Na_Ina;
    input Real elmt_reactant18;
    input Real elmt_reactant19;
    input Real elmt_ATP_consumption;
    input Real elmt_Calcium_cyt_sequestration;
    input Real elmt_Na_Inak;
    input Real elmt_reactant9;
    input Real elmt_Na_Icran;
    input Real elmt_ATP_NaKATPase;
    input Real elmt_Calcium_cyt_Inaca;
    input Real elmt_Calcium_cyt_Jerp;
    input Real elmt_reactant2;
    input Real elmt_product8;
    input Real elmt_reactant3;
    input Real elmt_product6;
    input Real elmt_IP3_synthesis;
    input Real elmt_Na_Inaca;
    input Real elmt_ATP_Jerp;
    input Real elmt_reactant7;
    input Real elmt_IP3_degradation;
    input Real elmt_ATP_Capump;
    input Real elmt_product1;
    input Real elmt_reactant15;
    input Real elmt_product0;
    input Real elmt_reactant16;
    input Real elmt_reactant17;
    input Real elmt_reactant10;
    input Real elmt_reactant11;
    input Real elmt_Calcium_cyt_Jout;
    input Real elmt_ATP_Ca_dependent_consumption;
    input Real elmt_product14;
    input Real elmt_product13;
    input Real elmt_Calcium_cyt_Icapump;

    Real elmt_Cytoplasm(unit = "") "cytoplasm";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ADP_cyt_conc(unit = "");
    Real elmt_ADP_cyt_amount(unit = "");
    Real elmt_ADP_cyt(unit = "") "Cytosolic ADP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ATP_cyt_conc(unit = "");
    Real elmt_ATP_cyt_amount(unit = "");
    Real elmt_ATP_cyt(unit = "") "Cytosolic ATP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ca_cyt_conc(unit = "");
    Real elmt_Ca_cyt_amount(unit = "");
    Real elmt_Ca_cyt(unit = "") "Cytosolic Calcium";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IP3_cyt_conc(unit = "");
    Real elmt_IP3_cyt_amount(unit = "");
    Real elmt_IP3_cyt(unit = "") "Cytosolic IP3";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Na_cyt_conc(unit = "");
    Real elmt_Na_cyt_amount(unit = "");
    Real elmt_Na_cyt(unit = "") "Cytosolic Sodium";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Cytoplasm = 7.64E-13;
        elmt_ATP_cyt_conc = 932.1;
        elmt_Ca_cyt_conc = 0.085;
        elmt_IP3_cyt_conc = 0.33;
        elmt_Na_cyt_conc = 9858.0;


    equation
        assert(elmt_Cytoplasm >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Cytoplasm) = 0;
        elmt_ADP_cyt = elmt_ADP_cyt_conc;
        elmt_ATP_cyt = elmt_ATP_cyt_conc;
        elmt_Ca_cyt = elmt_Ca_cyt_conc;
        elmt_IP3_cyt = elmt_IP3_cyt_conc;
        elmt_Na_cyt = elmt_Na_cyt_conc;
        elmt_ADP_cyt_amount = (4000.0 - elmt_ATP_cyt) * elmt_Cytoplasm;
        der(elmt_ATP_cyt_amount) = ((elmt_ATP_production * elmt_product14) + (- (elmt_ATP_Jerp * elmt_reactant17)) + (- (elmt_ATP_Capump * elmt_reactant16)) + (- (elmt_ATP_consumption * elmt_reactant19)) + (- (elmt_ATP_Ca_dependent_consumption * elmt_reactant18)) + (- (elmt_ATP_NaKATPase * elmt_reactant15)));
        der(elmt_Ca_cyt_amount) = ((elmt_Calcium_cyt_Inaca * elmt_product1) + (- (elmt_Calcium_cyt_Jerp * elmt_reactant3)) + (elmt_Calcium_cyt_Ivca * elmt_product0) + (elmt_Calcium_cyt_Jout * elmt_product6) + (- (elmt_Calcium_cyt_sequestration * elmt_reactant7)) + (- (elmt_Calcium_cyt_Icapump * elmt_reactant2)));
        der(elmt_IP3_cyt_amount) = ((elmt_IP3_synthesis * elmt_product8) + (- (elmt_IP3_degradation * elmt_reactant9)));
        der(elmt_Na_cyt_amount) = ((- (elmt_Na_Inaca * elmt_reactant10)) + (elmt_Na_Ina * elmt_product12) + (- (elmt_Na_Inak * elmt_reactant11)) + (elmt_Na_Icran * elmt_product13));

    algorithm
        elmt_ADP_cyt_conc := elmt_ADP_cyt_amount / elmt_Cytoplasm;
        elmt_ATP_cyt_conc := elmt_ATP_cyt_amount / elmt_Cytoplasm;
        elmt_Ca_cyt_conc := elmt_Ca_cyt_amount / elmt_Cytoplasm;
        elmt_IP3_cyt_conc := elmt_IP3_cyt_amount / elmt_Cytoplasm;
        elmt_Na_cyt_conc := elmt_Na_cyt_amount / elmt_Cytoplasm;
end Class_elmt_Cytoplasm;
