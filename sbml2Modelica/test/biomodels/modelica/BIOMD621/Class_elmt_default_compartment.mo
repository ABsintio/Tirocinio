within BIOMD621;
class Class_elmt_default_compartment

    input Real elmt_AnakinraSC_elimination;
    input Real elmt_Proinsulin_elimination;
    input Real elmt_product12;
    input Real elmt_Bcell_apoptosis;
    input Real elmt_product10;
    input Real elmt_TigB_down;
    input Real elmt_Proinsulin_dependent_glucose_uptake;
    input Real elmt_Anakinra_absorption;
    input Real elmt_Insulin_dependent_glucose_uptake;
    input Real elmt_TigB_up;
    input Real elmt_IL1b_degradation;
    input Real elmt_reactant19;
    input Real elmt_Basal_glucose_uptake;
    input Real elmt_reactant9;
    input Real elmt_IL1b_placebo;
    input Real elmt_Glucose_production;
    input Real elmt_Ktr;
    input Real elmt_Kglucose;
    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_product6;
    input Real elmt_reactant3;
    input Real elmt_reactant5;
    input Real elmt_reactant7;
    input Real elmt_proinsulin_sec_down;
    input Real elmt_reactant14;
    input Real elmt_reactant15;
    input Real elmt_product0;
    input Real elmt_reactant17;
    input Real elmt_Anakinra_elimination;
    input Real elmt_Glucose_dependent_insulin_secretion;
    input Real elmt_reactant11;
    input Real elmt_product4;
    input Real elmt_reactant13;
    input Real elmt_Insulin_elimination;
    input Real elmt_product2;
    input Real elmt_IL1b_treatment;
    input Real elmt_product16;
    input Real elmt_Kin;
    input Real elmt_proinsulin_sec_up;
    input Real elmt_Glucose_dependent_proinsulin_secretion;
    input Real elmt_product18;
    input Real elmt_Bcell_replication;
    input Real elmt_lambda;

    input Boolean elmt_Anakinra_Administration_event;

    input Real assign_elmt_Anakinrasc;

    Real elmt_default_compartment(unit = "") "";
    Real elmt_IL1Ra_conc(unit = "");
    Real elmt_IL1Ra_amount(unit = "");
    Real elmt_IL1Ra(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_rbc1_conc(unit = "");
    Real elmt_rbc1_amount(unit = "");
    Real elmt_rbc1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_hba1c_conc(unit = "");
    Real elmt_hba1c_amount(unit = "");
    Real elmt_hba1c(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Proinsulin_conc(unit = "");
    Real elmt_Proinsulin_amount(unit = "");
    Real elmt_Proinsulin(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Insulin_conc(unit = "");
    Real elmt_Insulin_amount(unit = "");
    Real elmt_Insulin(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_f_conc(unit = "");
    Real elmt_f_amount(unit = "");
    Real elmt_f(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IL1b_conc(unit = "");
    Real elmt_IL1b_amount(unit = "");
    Real elmt_IL1b(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_rbc2_conc(unit = "");
    Real elmt_rbc2_amount(unit = "");
    Real elmt_rbc2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_rbc3_conc(unit = "");
    Real elmt_rbc3_amount(unit = "");
    Real elmt_rbc3(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_rbc4_conc(unit = "");
    Real elmt_rbc4_amount(unit = "");
    Real elmt_rbc4(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_rbc5_conc(unit = "");
    Real elmt_rbc5_amount(unit = "");
    Real elmt_rbc5(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_rbc6_conc(unit = "");
    Real elmt_rbc6_amount(unit = "");
    Real elmt_rbc6(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_rbc7_conc(unit = "");
    Real elmt_rbc7_amount(unit = "");
    Real elmt_rbc7(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_rbc8_conc(unit = "");
    Real elmt_rbc8_amount(unit = "");
    Real elmt_rbc8(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_rbc9_conc(unit = "");
    Real elmt_rbc9_amount(unit = "");
    Real elmt_rbc9(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_a1c9_conc(unit = "");
    Real elmt_a1c9_amount(unit = "");
    Real elmt_a1c9(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_a1c8_conc(unit = "");
    Real elmt_a1c8_amount(unit = "");
    Real elmt_a1c8(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_a1c7_conc(unit = "");
    Real elmt_a1c7_amount(unit = "");
    Real elmt_a1c7(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_a1c6_conc(unit = "");
    Real elmt_a1c6_amount(unit = "");
    Real elmt_a1c6(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_a1c5_conc(unit = "");
    Real elmt_a1c5_amount(unit = "");
    Real elmt_a1c5(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_a1c4_conc(unit = "");
    Real elmt_a1c4_amount(unit = "");
    Real elmt_a1c4(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_a1c3_conc(unit = "");
    Real elmt_a1c3_amount(unit = "");
    Real elmt_a1c3(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_B_conc(unit = "");
    Real elmt_B_amount(unit = "");
    Real elmt_B(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_a1c2_conc(unit = "");
    Real elmt_a1c2_amount(unit = "");
    Real elmt_a1c2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_a1c1_conc(unit = "");
    Real elmt_a1c1_amount(unit = "");
    Real elmt_a1c1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Glucose_conc(unit = "");
    Real elmt_Glucose_amount(unit = "");
    Real elmt_Glucose(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_a1c11_conc(unit = "");
    Real elmt_a1c11_amount(unit = "");
    Real elmt_a1c11(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_a1c12_conc(unit = "");
    Real elmt_a1c12_amount(unit = "");
    Real elmt_a1c12(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_a1c10_conc(unit = "");
    Real elmt_a1c10_amount(unit = "");
    Real elmt_a1c10(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Anakinra_conc(unit = "");
    Real elmt_Anakinra_amount(unit = "");
    Real elmt_Anakinra(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_TigB_conc(unit = "");
    Real elmt_TigB_amount(unit = "");
    Real elmt_TigB(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_rbc10_conc(unit = "");
    Real elmt_rbc10_amount(unit = "");
    Real elmt_rbc10(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_rbc11_conc(unit = "");
    Real elmt_rbc11_amount(unit = "");
    Real elmt_rbc11(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Anakinrasc_conc(unit = "");
    Real elmt_Anakinrasc_amount(unit = "");
    Real elmt_Anakinrasc(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_rbc12_conc(unit = "");
    Real elmt_rbc12_amount(unit = "");
    Real elmt_rbc12(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_default_compartment = 1.0;
        elmt_IL1Ra_conc = 25.0;
        elmt_rbc1_conc = 8.627;
        elmt_Proinsulin_conc = 6.5;
        elmt_Insulin_conc = 50.0;
        elmt_f_conc = 0.0427776;
        elmt_IL1b_conc = 0.05;
        elmt_rbc2_conc = 8.50573;
        elmt_rbc3_conc = 8.38617;
        elmt_rbc4_conc = 8.26829;
        elmt_rbc5_conc = 8.15206;
        elmt_rbc6_conc = 8.03747;
        elmt_rbc7_conc = 7.92449;
        elmt_rbc8_conc = 7.8131;
        elmt_rbc9_conc = 7.70327;
        elmt_a1c9_conc = 1.04673;
        elmt_a1c8_conc = 0.936905;
        elmt_a1c7_conc = 0.825512;
        elmt_a1c6_conc = 0.71253;
        elmt_a1c5_conc = 0.597938;
        elmt_a1c4_conc = 0.481712;
        elmt_a1c3_conc = 0.363829;
        elmt_B_conc = 100.0;
        elmt_a1c2_conc = 0.244266;
        elmt_a1c1_conc = 0.122997;
        elmt_Glucose_conc = 5.0;
        elmt_a1c11_conc = 1.26178;
        elmt_a1c12_conc = 1.36704;
        elmt_a1c10_conc = 1.15502;
        elmt_Anakinra_conc = 0.0;
        elmt_TigB_conc = 0.29;
        elmt_rbc10_conc = 7.59498;
        elmt_rbc11_conc = 7.48822;
        elmt_Anakinrasc_conc = 0.0;
        elmt_rbc12_conc = 7.38296;


    equation
        assert(elmt_default_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default_compartment) = 0;
        elmt_IL1Ra = elmt_IL1Ra_conc;
        elmt_rbc1 = elmt_rbc1_conc;
        elmt_hba1c = elmt_hba1c_conc;
        elmt_Proinsulin = elmt_Proinsulin_conc;
        elmt_Insulin = elmt_Insulin_conc;
        elmt_f = elmt_f_conc;
        elmt_IL1b = elmt_IL1b_conc;
        elmt_rbc2 = elmt_rbc2_conc;
        elmt_rbc3 = elmt_rbc3_conc;
        elmt_rbc4 = elmt_rbc4_conc;
        elmt_rbc5 = elmt_rbc5_conc;
        elmt_rbc6 = elmt_rbc6_conc;
        elmt_rbc7 = elmt_rbc7_conc;
        elmt_rbc8 = elmt_rbc8_conc;
        elmt_rbc9 = elmt_rbc9_conc;
        elmt_a1c9 = elmt_a1c9_conc;
        elmt_a1c8 = elmt_a1c8_conc;
        elmt_a1c7 = elmt_a1c7_conc;
        elmt_a1c6 = elmt_a1c6_conc;
        elmt_a1c5 = elmt_a1c5_conc;
        elmt_a1c4 = elmt_a1c4_conc;
        elmt_a1c3 = elmt_a1c3_conc;
        elmt_B = elmt_B_conc;
        elmt_a1c2 = elmt_a1c2_conc;
        elmt_a1c1 = elmt_a1c1_conc;
        elmt_Glucose = elmt_Glucose_conc;
        elmt_a1c11 = elmt_a1c11_conc;
        elmt_a1c12 = elmt_a1c12_conc;
        elmt_a1c10 = elmt_a1c10_conc;
        elmt_Anakinra = elmt_Anakinra_conc;
        elmt_TigB = elmt_TigB_conc;
        elmt_rbc10 = elmt_rbc10_conc;
        elmt_rbc11 = elmt_rbc11_conc;
        elmt_Anakinrasc = elmt_Anakinrasc_conc;
        elmt_rbc12 = elmt_rbc12_conc;
        der(elmt_IL1Ra_amount) = 0;
        der(elmt_rbc1_amount / elmt_default_compartment) = ((elmt_Kin - (elmt_Ktr * elmt_rbc1)) - (elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc1));
        elmt_hba1c_amount = ((100.0 * (elmt_a1c1 + elmt_a1c2 + elmt_a1c3 + elmt_a1c4 + elmt_a1c5 + elmt_a1c6 + elmt_a1c7 + elmt_a1c8 + elmt_a1c9 + elmt_a1c10 + elmt_a1c11 + elmt_a1c12)) / (elmt_a1c1 + elmt_a1c2 + elmt_a1c3 + elmt_a1c4 + elmt_a1c5 + elmt_a1c6 + elmt_a1c7 + elmt_a1c8 + elmt_a1c9 + elmt_a1c10 + elmt_a1c11 + elmt_a1c12 + elmt_rbc1 + elmt_rbc2 + elmt_rbc3 + elmt_rbc4 + elmt_rbc5 + elmt_rbc6 + elmt_rbc7 + elmt_rbc8 + elmt_rbc9 + elmt_rbc10 + elmt_rbc11 + elmt_rbc12)) * elmt_default_compartment;
        der(elmt_rbc2_amount / elmt_default_compartment) = (((elmt_Ktr * elmt_rbc1) - (elmt_Ktr * elmt_rbc2)) - (elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc2));
        der(elmt_rbc3_amount / elmt_default_compartment) = (((elmt_Ktr * elmt_rbc2) - (elmt_Ktr * elmt_rbc3)) - (elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc3));
        der(elmt_rbc4_amount / elmt_default_compartment) = (((elmt_Ktr * elmt_rbc3) - (elmt_Ktr * elmt_rbc4)) - (elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc4));
        der(elmt_rbc5_amount / elmt_default_compartment) = (((elmt_Ktr * elmt_rbc4) - (elmt_Ktr * elmt_rbc5)) - (elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc5));
        der(elmt_rbc6_amount / elmt_default_compartment) = (((elmt_Ktr * elmt_rbc5) - (elmt_Ktr * elmt_rbc6)) - (elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc6));
        der(elmt_rbc7_amount / elmt_default_compartment) = (((elmt_Ktr * elmt_rbc6) - (elmt_Ktr * elmt_rbc7)) - (elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc7));
        der(elmt_rbc8_amount / elmt_default_compartment) = (((elmt_Ktr * elmt_rbc7) - (elmt_Ktr * elmt_rbc8)) - (elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc8));
        der(elmt_rbc9_amount / elmt_default_compartment) = (((elmt_Ktr * elmt_rbc8) - (elmt_Ktr * elmt_rbc9)) - (elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc9));
        der(elmt_a1c9_amount / elmt_default_compartment) = (((elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc9) + (elmt_Ktr * elmt_a1c8)) - (elmt_Ktr * elmt_a1c9));
        der(elmt_a1c8_amount / elmt_default_compartment) = (((elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc8) + (elmt_Ktr * elmt_a1c7)) - (elmt_Ktr * elmt_a1c8));
        der(elmt_a1c7_amount / elmt_default_compartment) = (((elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc7) + (elmt_Ktr * elmt_a1c6)) - (elmt_Ktr * elmt_a1c7));
        der(elmt_a1c6_amount / elmt_default_compartment) = (((elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc6) + (elmt_Ktr * elmt_a1c5)) - (elmt_Ktr * elmt_a1c6));
        der(elmt_a1c5_amount / elmt_default_compartment) = (((elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc5) + (elmt_Ktr * elmt_a1c4)) - (elmt_Ktr * elmt_a1c5));
        der(elmt_a1c4_amount / elmt_default_compartment) = (((elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc4) + (elmt_Ktr * elmt_a1c3)) - (elmt_Ktr * elmt_a1c4));
        der(elmt_a1c3_amount / elmt_default_compartment) = (((elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc3) + (elmt_Ktr * elmt_a1c2)) - (elmt_Ktr * elmt_a1c3));
        der(elmt_a1c2_amount / elmt_default_compartment) = (((elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc2) + (elmt_Ktr * elmt_a1c1)) - (elmt_Ktr * elmt_a1c2));
        der(elmt_a1c1_amount / elmt_default_compartment) = ((elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc1) - (elmt_Ktr * elmt_a1c1));
        der(elmt_a1c11_amount / elmt_default_compartment) = (((elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc11) + (elmt_Ktr * elmt_a1c10)) - (elmt_Ktr * elmt_a1c11));
        der(elmt_a1c12_amount / elmt_default_compartment) = (((elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc12) + (elmt_Ktr * elmt_a1c11)) - (elmt_Ktr * elmt_a1c12));
        der(elmt_a1c10_amount / elmt_default_compartment) = (((elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc10) + (elmt_Ktr * elmt_a1c9)) - (elmt_Ktr * elmt_a1c10));
        der(elmt_rbc10_amount / elmt_default_compartment) = (((elmt_Ktr * elmt_rbc9) - (elmt_Ktr * elmt_rbc10)) - (elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc10));
        der(elmt_rbc11_amount / elmt_default_compartment) = (((elmt_Ktr * elmt_rbc10) - (elmt_Ktr * elmt_rbc11)) - (elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc11));
        der(elmt_rbc12_amount / elmt_default_compartment) = (((elmt_Ktr * elmt_rbc11) - (elmt_Ktr * elmt_rbc12)) - (elmt_Kglucose * Functions.pow(elmt_Glucose, elmt_lambda) * elmt_rbc12));
        der(elmt_IL1b_amount) = ((- (elmt_IL1b_degradation * elmt_reactant7)) + (elmt_IL1b_treatment * elmt_product6) + (elmt_IL1b_placebo * elmt_product8));
        der(elmt_Glucose_amount) = ((- (elmt_Proinsulin_dependent_glucose_uptake * elmt_reactant15)) + (- (elmt_Insulin_dependent_glucose_uptake * elmt_reactant14)) + (- (elmt_Basal_glucose_uptake * elmt_reactant13)) + (elmt_Glucose_production * elmt_product12));
        der(elmt_Proinsulin_amount) = ((- (elmt_Proinsulin_elimination * elmt_reactant19)) + (elmt_Glucose_dependent_proinsulin_secretion * elmt_product18));
        der(elmt_Insulin_amount) = ((elmt_Glucose_dependent_insulin_secretion * elmt_product16) + (- (elmt_Insulin_elimination * elmt_reactant17)));
        der(elmt_Anakinra_amount) = ((elmt_Anakinra_absorption * elmt_product10) + (- (elmt_Anakinra_elimination * elmt_reactant11)));
        der(elmt_f_amount) = ((- (elmt_proinsulin_sec_down * elmt_reactant5)) + (elmt_proinsulin_sec_up * elmt_product4));
        der(elmt_TigB_amount) = ((- (elmt_TigB_down * elmt_reactant1)) + (elmt_TigB_up * elmt_product0));
        der(elmt_B_amount) = ((- (elmt_Bcell_apoptosis * elmt_reactant3)) + (elmt_Bcell_replication * elmt_product2));
        der(elmt_Anakinrasc_amount) = (- (elmt_AnakinraSC_elimination * elmt_reactant9));

        when elmt_Anakinra_Administration_event then
            reinit(elmt_Anakinrasc_amount, assign_elmt_Anakinrasc * pre(elmt_default_compartment));
        end when;
    algorithm
        elmt_IL1Ra_conc := elmt_IL1Ra_amount / elmt_default_compartment;
        elmt_rbc1_conc := elmt_rbc1_amount / elmt_default_compartment;
        elmt_hba1c_conc := elmt_hba1c_amount / elmt_default_compartment;
        elmt_Proinsulin_conc := elmt_Proinsulin_amount / elmt_default_compartment;
        elmt_Insulin_conc := elmt_Insulin_amount / elmt_default_compartment;
        elmt_f_conc := elmt_f_amount / elmt_default_compartment;
        elmt_IL1b_conc := elmt_IL1b_amount / elmt_default_compartment;
        elmt_rbc2_conc := elmt_rbc2_amount / elmt_default_compartment;
        elmt_rbc3_conc := elmt_rbc3_amount / elmt_default_compartment;
        elmt_rbc4_conc := elmt_rbc4_amount / elmt_default_compartment;
        elmt_rbc5_conc := elmt_rbc5_amount / elmt_default_compartment;
        elmt_rbc6_conc := elmt_rbc6_amount / elmt_default_compartment;
        elmt_rbc7_conc := elmt_rbc7_amount / elmt_default_compartment;
        elmt_rbc8_conc := elmt_rbc8_amount / elmt_default_compartment;
        elmt_rbc9_conc := elmt_rbc9_amount / elmt_default_compartment;
        elmt_a1c9_conc := elmt_a1c9_amount / elmt_default_compartment;
        elmt_a1c8_conc := elmt_a1c8_amount / elmt_default_compartment;
        elmt_a1c7_conc := elmt_a1c7_amount / elmt_default_compartment;
        elmt_a1c6_conc := elmt_a1c6_amount / elmt_default_compartment;
        elmt_a1c5_conc := elmt_a1c5_amount / elmt_default_compartment;
        elmt_a1c4_conc := elmt_a1c4_amount / elmt_default_compartment;
        elmt_a1c3_conc := elmt_a1c3_amount / elmt_default_compartment;
        elmt_B_conc := elmt_B_amount / elmt_default_compartment;
        elmt_a1c2_conc := elmt_a1c2_amount / elmt_default_compartment;
        elmt_a1c1_conc := elmt_a1c1_amount / elmt_default_compartment;
        elmt_Glucose_conc := elmt_Glucose_amount / elmt_default_compartment;
        elmt_a1c11_conc := elmt_a1c11_amount / elmt_default_compartment;
        elmt_a1c12_conc := elmt_a1c12_amount / elmt_default_compartment;
        elmt_a1c10_conc := elmt_a1c10_amount / elmt_default_compartment;
        elmt_Anakinra_conc := elmt_Anakinra_amount / elmt_default_compartment;
        elmt_TigB_conc := elmt_TigB_amount / elmt_default_compartment;
        elmt_rbc10_conc := elmt_rbc10_amount / elmt_default_compartment;
        elmt_rbc11_conc := elmt_rbc11_amount / elmt_default_compartment;
        elmt_Anakinrasc_conc := elmt_Anakinrasc_amount / elmt_default_compartment;
        elmt_rbc12_conc := elmt_rbc12_amount / elmt_default_compartment;
end Class_elmt_default_compartment;
