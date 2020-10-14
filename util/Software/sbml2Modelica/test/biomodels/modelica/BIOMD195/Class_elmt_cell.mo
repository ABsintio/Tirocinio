within BIOMD195;
class Class_elmt_cell

    input Real elmt_Keq;
    input Real elmt_Cdh1degradation;
    input Real elmt_CycBtdegradationviaCdc20a;
    input Real elmt_product11;
    input Real elmt_CKItsynthesis;
    input Real elmt_Cdc20adegradation;
    input Real elmt_Cdc20t_deg;
    input Real elmt_Cdc20activation;
    input Real elmt_Cdc20tsynthesis;
    input Real elmt_reactant19;
    input Real elmt_growth;
    input Real elmt_eq_7;
    input Real elmt_CycBdegradation;
    input Real elmt_IEPdegradation;
    input Real elmt_reactant9;
    input Real elmt_SKdegradation;
    input Real elmt_Cdc20ainhibition;
    input Real elmt_CKItphosphorilationviaSK;
    input Real elmt_reactant2;
    input Real elmt_product8;
    input Real elmt_CycBt_synthesis;
    input Real elmt_reactant1;
    input Real elmt_product6;
    input Real elmt_reactant3;
    input Real elmt_reactant5;
    input Real elmt_reactant7;
    input Real elmt_CKIdegradation;
    input Real elmt_reactant15;
    input Real elmt_product0;
    input Real elmt_reactant16;
    input Real elmt_reactant17;
    input Real elmt_reactant10;
    input Real elmt_product4;
    input Real elmt_reactant12;
    input Real elmt_Cdh1synthesis;
    input Real elmt_product14;
    input Real elmt_product13;
    input Real elmt_IEPsynthesis;
    input Real elmt_SKsynthesis;
    input Real elmt_CycBdegradationviaCdh1;
    input Real elmt_product18;

    input Boolean elmt_event0;

    input Real assign_elmt_m;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Trimer_amount(unit = "");
    Real elmt_Trimer_conc(unit = "");
    Real elmt_Trimer(unit = "") "Trimer";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Cdc20t_amount(unit = "");
    Real elmt_Cdc20t_conc(unit = "");
    Real elmt_Cdc20t(unit = "") "Cdc20t";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_m_amount(unit = "");
    Real elmt_m_conc(unit = "");
    Real elmt_m(unit = "") "m";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CycB_amount(unit = "");
    Real elmt_CycB_conc(unit = "");
    Real elmt_CycB(unit = "") "CycB";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IEP_amount(unit = "");
    Real elmt_IEP_conc(unit = "");
    Real elmt_IEP(unit = "") "IEP";
    Real elmt_CKIt_amount(unit = "");
    Real elmt_CKIt_conc(unit = "");
    Real elmt_CKIt(unit = "") "CKIt";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Cdc20a_amount(unit = "");
    Real elmt_Cdc20a_conc(unit = "");
    Real elmt_Cdc20a(unit = "") "Cdc20a";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Cdh1_amount(unit = "");
    Real elmt_Cdh1_conc(unit = "");
    Real elmt_Cdh1(unit = "") "Cdh1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Mad_amount(unit = "");
    Real elmt_Mad_conc(unit = "");
    Real elmt_Mad(unit = "") "Mad";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CycBt_amount(unit = "");
    Real elmt_CycBt_conc(unit = "");
    Real elmt_CycBt(unit = "") "CycBt";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_SK_amount(unit = "");
    Real elmt_SK_conc(unit = "");
    Real elmt_SK(unit = "") "SK";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_Cdc20t_amount = 0.001;
        elmt_m_amount = 0.5;
        elmt_IEP_amount = 0.001;
        elmt_CKIt_amount = 0.001;
        elmt_Cdc20a_amount = 0.001;
        elmt_Cdh1_amount = 0.001;
        elmt_CycBt_amount = 0.001;
        elmt_SK_amount = 0.001;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_Trimer = elmt_Trimer_amount;
        elmt_Cdc20t = elmt_Cdc20t_amount;
        elmt_m = elmt_m_amount;
        elmt_CycB = elmt_CycB_amount;
        elmt_IEP = elmt_IEP_amount;
        elmt_CKIt = elmt_CKIt_amount;
        elmt_Cdc20a = elmt_Cdc20a_amount;
        elmt_Cdh1 = elmt_Cdh1_amount;
        elmt_Mad = elmt_Mad_amount;
        elmt_CycBt = elmt_CycBt_amount;
        elmt_SK = elmt_SK_amount;
        elmt_Trimer_amount = ((2.0 * elmt_CycBt * elmt_CKIt) / (elmt_CycBt + elmt_CKIt + (1.0 / elmt_Keq) + Functions.pow((Functions.pow((elmt_CycBt + elmt_CKIt + (1.0 / elmt_Keq)), 2.0) - (4.0 * elmt_CycBt * elmt_CKIt)), (1.0 / 2.0))));
        elmt_CycB_amount = (elmt_CycBt - ((2.0 * elmt_CycBt * elmt_CKIt) / (elmt_CycBt + elmt_CKIt + (1.0 / elmt_Keq) + Functions.pow((Functions.pow((elmt_CycBt + elmt_CKIt + (1.0 / elmt_Keq)), 2.0) - (4.0 * elmt_CycBt * elmt_CKIt)), (1.0 / 2.0)))));
        elmt_Mad_amount = 1.0;
        der(elmt_Cdc20t_amount) = ((- (elmt_Cdc20t_deg * elmt_reactant7)) + (elmt_Cdc20tsynthesis * elmt_product6));
        der(elmt_m_amount) = (elmt_growth * elmt_product13);
        der(elmt_IEP_amount) = ((- (elmt_IEPdegradation * elmt_reactant12)) + (elmt_IEPsynthesis * elmt_product11));
        der(elmt_CKIt_amount) = ((- (elmt_CKItphosphorilationviaSK * elmt_reactant16)) + (elmt_CKItsynthesis * elmt_product14) + (- (elmt_CKIdegradation * elmt_reactant15)) + (- (elmt_eq_7 * elmt_reactant17)));
        der(elmt_Cdc20a_amount) = ((- (elmt_Cdc20adegradation * elmt_reactant10)) + (elmt_Cdc20activation * elmt_product8) + (- (elmt_Cdc20ainhibition * elmt_reactant9)));
        der(elmt_Cdh1_amount) = ((- (elmt_Cdh1degradation * elmt_reactant5)) + (elmt_Cdh1synthesis * elmt_product4));
        der(elmt_CycBt_amount) = ((elmt_CycBt_synthesis * elmt_product0) + (- (elmt_CycBtdegradationviaCdc20a * elmt_reactant3)) + (- (elmt_CycBdegradation * elmt_reactant1)) + (- (elmt_CycBdegradationviaCdh1 * elmt_reactant2)));
        der(elmt_SK_amount) = ((elmt_SKsynthesis * elmt_product18) + (- (elmt_SKdegradation * elmt_reactant19)));

        when elmt_event0 then
            reinit(elmt_m_amount, assign_elmt_m);
        end when;
    algorithm
        elmt_Trimer_conc := elmt_Trimer_amount / elmt_cell;
        elmt_Cdc20t_conc := elmt_Cdc20t_amount / elmt_cell;
        elmt_m_conc := elmt_m_amount / elmt_cell;
        elmt_CycB_conc := elmt_CycB_amount / elmt_cell;
        elmt_IEP_conc := elmt_IEP_amount / elmt_cell;
        elmt_CKIt_conc := elmt_CKIt_amount / elmt_cell;
        elmt_Cdc20a_conc := elmt_Cdc20a_amount / elmt_cell;
        elmt_Cdh1_conc := elmt_Cdh1_amount / elmt_cell;
        elmt_Mad_conc := elmt_Mad_amount / elmt_cell;
        elmt_CycBt_conc := elmt_CycBt_amount / elmt_cell;
        elmt_SK_conc := elmt_SK_amount / elmt_cell;
end Class_elmt_cell;
