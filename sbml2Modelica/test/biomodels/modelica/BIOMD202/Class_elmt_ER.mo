within BIOMD202;
class Class_elmt_ER

    input Real elmt_K1;
    input Real elmt_product8;
    input Real elmt_St;
    input Real elmt_product10;
    input Real elmt_reactant11;
    input Real elmt_reactant0;
    input Real elmt_product3;
    input Real elmt_act_apoSTIM1_deg;
    input Real elmt_ER_Channel;
    input Real elmt_act_apoSTIM1_syn;
    input Real elmt_SERCA;
    input Real elmt_reactant9;
    input Real elmt_apoSTIM1_oligo_deg;
    input Real elmt_apoSTIM1_oligo_syn;

    Real elmt_ER(unit = "") "";
    Real elmt_S4_conc(unit = "");
    Real elmt_S4_amount(unit = "");
    Real elmt_S4(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_S2_conc(unit = "");
    Real elmt_S2_amount(unit = "");
    Real elmt_S2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_S2a_conc(unit = "");
    Real elmt_S2a_amount(unit = "");
    Real elmt_S2a(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ca_ER_conc(unit = "");
    Real elmt_Ca_ER_amount(unit = "");
    Real elmt_Ca_ER(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_ER = 0.185;
        elmt_S4_conc = 0.0;
        elmt_S2a_conc = 0.06;
        elmt_Ca_ER_conc = 0.0;


    equation
        assert(elmt_ER >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_ER) = 0;
        elmt_S4 = elmt_S4_conc;
        elmt_S2 = elmt_S2_conc;
        elmt_S2a = elmt_S2a_conc;
        elmt_Ca_ER = elmt_Ca_ER_conc;
        elmt_S2_amount = ((Functions.pow(elmt_K1, 2.0) / (Functions.pow(elmt_Ca_ER, 2.0) + Functions.pow(elmt_K1, 2.0))) * (elmt_St - elmt_S2a)) * elmt_ER;
        der(elmt_S4_amount) = ((- (elmt_apoSTIM1_oligo_deg * elmt_reactant11)) + (elmt_apoSTIM1_oligo_syn * elmt_product10));
        der(elmt_S2a_amount) = ((- (elmt_act_apoSTIM1_deg * elmt_reactant9)) + (elmt_act_apoSTIM1_syn * elmt_product8));
        der(elmt_Ca_ER_amount) = ((- (elmt_ER_Channel * elmt_reactant0)) + (elmt_SERCA * elmt_product3));

    algorithm
        elmt_S4_conc := elmt_S4_amount / elmt_ER;
        elmt_S2_conc := elmt_S2_amount / elmt_ER;
        elmt_S2a_conc := elmt_S2a_amount / elmt_ER;
        elmt_Ca_ER_conc := elmt_Ca_ER_amount / elmt_ER;
end Class_elmt_ER;
