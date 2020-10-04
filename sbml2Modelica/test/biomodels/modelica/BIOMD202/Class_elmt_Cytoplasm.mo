within BIOMD202;
class Class_elmt_Cytoplasm

    input Real elmt_PLC;
    input Real elmt_reactant2;
    input Real elmt_ER_Channel;
    input Real elmt_deg;
    input Real elmt_product6;
    input Real elmt_PMCA;
    input Real elmt_reactant5;
    input Real elmt_reactant7;
    input Real elmt_SERCA;
    input Real elmt_PM_Channel;
    input Real elmt_product1;
    input Real elmt_product4;

    Real elmt_Cytoplasm(unit = "") "";
    Real elmt_IP3_Cyt_conc(unit = "");
    Real elmt_IP3_Cyt_amount(unit = "");
    Real elmt_IP3_Cyt(unit = "") "";
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
        elmt_Cytoplasm = 1.0;
        elmt_IP3_Cyt_conc = 0.0;
        elmt_Ca_Cyt_conc = 0.0;


    equation
        assert(elmt_Cytoplasm >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Cytoplasm) = 0;
        elmt_IP3_Cyt = elmt_IP3_Cyt_conc;
        elmt_Ca_Cyt = elmt_Ca_Cyt_conc;
        der(elmt_IP3_Cyt_amount) = ((elmt_PLC * elmt_product6) + (- (elmt_deg * elmt_reactant7)));
        der(elmt_Ca_Cyt_amount) = ((elmt_ER_Channel * elmt_product1) + (- (elmt_PMCA * elmt_reactant5)) + (- (elmt_SERCA * elmt_reactant2)) + (elmt_PM_Channel * elmt_product4));

    algorithm
        elmt_IP3_Cyt_conc := elmt_IP3_Cyt_amount / elmt_Cytoplasm;
        elmt_Ca_Cyt_conc := elmt_Ca_Cyt_amount / elmt_Cytoplasm;
end Class_elmt_Cytoplasm;
