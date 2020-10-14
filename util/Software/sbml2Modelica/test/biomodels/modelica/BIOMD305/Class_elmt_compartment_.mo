within BIOMD305;
class Class_elmt_compartment_

    input Real elmt_product8;
    input Real elmt_product6;
    input Real elmt_Fw_1st_step;
    input Real elmt_reactant5;
    input Real elmt_product11;
    input Real elmt_Fw_2nd_step;
    input Real elmt_reactant14;
    input Real elmt_Bw_1st_step;
    input Real elmt_product4;
    input Real elmt_reactant0;
    input Real elmt_Bw_2nd_step;
    input Real elmt_product2;
    input Real elmt_reactant9;
    input Real elmt_product15;
    input Real elmt_product13;
    input Real elmt_product17;

    Real elmt_compartment_(unit = "") "";
    Real elmt_Pi__conc(unit = "");
    Real elmt_Pi__amount(unit = "");
    Real elmt_Pi_(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_back_step1_amount(unit = "");
    Real elmt_back_step1_conc(unit = "");
    Real elmt_back_step1(unit = "") "";
    Real elmt_back_step2_amount(unit = "");
    Real elmt_back_step2_conc(unit = "");
    Real elmt_back_step2(unit = "") "";
    Real elmt_S0_amount(unit = "");
    Real elmt_S0_conc(unit = "");
    Real elmt_S0(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_S1_amount(unit = "");
    Real elmt_S1_conc(unit = "");
    Real elmt_S1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ATP_conc(unit = "");
    Real elmt_ATP_amount(unit = "");
    Real elmt_ATP(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ADP_conc(unit = "");
    Real elmt_ADP_amount(unit = "");
    Real elmt_ADP(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_fwd_step2_amount(unit = "");
    Real elmt_fwd_step2_conc(unit = "");
    Real elmt_fwd_step2(unit = "") "";
    Real elmt_fwd_step1_amount(unit = "");
    Real elmt_fwd_step1_conc(unit = "");
    Real elmt_fwd_step1(unit = "") "";

    initial equation
        elmt_compartment_ = 1.0E-15;
        elmt_Pi__conc = 0.0;
        elmt_back_step1_amount = 0.0;
        elmt_back_step2_amount = 0.0;
        elmt_S0_amount = 10.0;
        elmt_S1_amount = 0.0;
        elmt_ATP_conc = 20.0;
        elmt_ADP_conc = 0.0;
        elmt_fwd_step2_amount = 0.0;
        elmt_fwd_step1_amount = 0.0;


    equation
        assert(elmt_compartment_ >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_) = 0;
        elmt_Pi_ = elmt_Pi__conc;
        elmt_back_step1 = elmt_back_step1_amount;
        elmt_back_step2 = elmt_back_step2_amount;
        elmt_S0 = elmt_S0_amount;
        elmt_S1 = elmt_S1_amount;
        elmt_ATP = elmt_ATP_conc;
        elmt_ADP = elmt_ADP_conc;
        elmt_fwd_step2 = elmt_fwd_step2_amount;
        elmt_fwd_step1 = elmt_fwd_step1_amount;
        der(elmt_Pi__amount) = 0;
        der(elmt_ATP_amount) = 0;
        der(elmt_ADP_amount) = 0;
        der(elmt_back_step1_amount) = (elmt_Bw_1st_step * elmt_product13);
        der(elmt_back_step2_amount) = (elmt_Bw_2nd_step * elmt_product17);
        der(elmt_S0_amount) = ((- (elmt_Fw_1st_step * elmt_reactant0)) + (elmt_Fw_2nd_step * elmt_product6) + (- (elmt_Bw_1st_step * elmt_reactant9)) + (elmt_Bw_2nd_step * elmt_product15));
        der(elmt_S1_amount) = ((elmt_Fw_1st_step * elmt_product2) + (- (elmt_Fw_2nd_step * elmt_reactant5)) + (elmt_Bw_1st_step * elmt_product11) + (- (elmt_Bw_2nd_step * elmt_reactant14)));
        der(elmt_fwd_step2_amount) = (elmt_Fw_2nd_step * elmt_product8);
        der(elmt_fwd_step1_amount) = (elmt_Fw_1st_step * elmt_product4);

    algorithm
        elmt_Pi__conc := elmt_Pi__amount / elmt_compartment_;
        elmt_back_step1_conc := elmt_back_step1_amount / elmt_compartment_;
        elmt_back_step2_conc := elmt_back_step2_amount / elmt_compartment_;
        elmt_S0_conc := elmt_S0_amount / elmt_compartment_;
        elmt_S1_conc := elmt_S1_amount / elmt_compartment_;
        elmt_ATP_conc := elmt_ATP_amount / elmt_compartment_;
        elmt_ADP_conc := elmt_ADP_amount / elmt_compartment_;
        elmt_fwd_step2_conc := elmt_fwd_step2_amount / elmt_compartment_;
        elmt_fwd_step1_conc := elmt_fwd_step1_amount / elmt_compartment_;
end Class_elmt_compartment_;
