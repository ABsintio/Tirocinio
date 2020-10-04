within BIOMD287;
class Class_elmt_cell

    input Real elmt_p21degradation;
    input Real elmt_reactant41;
    input Real elmt_reactant42;
    input Real elmt_product71;
    input Real elmt_DNArepair;
    input Real elmt_p53Synthesis;
    input Real elmt_product76;
    input Real elmt_product75;
    input Real elmt_GADD45degradation;
    input Real elmt_reactant47;
    input Real elmt_reactant48;
    input Real elmt_p38inactivation;
    input Real elmt_DNAdamage;
    input Real elmt_reactant45;
    input Real elmt_ATMactivation;
    input Real elmt_Mdm2mRNASynthesis1;
    input Real elmt_Mdm2mRNASynthesis2;
    input Real elmt_basalROSDNAdamage;
    input Real elmt_product69;
    input Real elmt_product84;
    input Real elmt_reactant51;
    input Real elmt_product82;
    input Real elmt_reactant53;
    input Real elmt_product87;
    input Real elmt_product86;
    input Real elmt_p53phoshorylation;
    input Real elmt_product81;
    input Real elmt_reactant55;
    input Real elmt_reactant57;
    input Real elmt_product95;
    input Real elmt_product94;
    input Real elmt_reactant20;
    input Real elmt_product12;
    input Real elmt_product11;
    input Real elmt_reactant26;
    input Real elmt_reactant27;
    input Real elmt_product92;
    input Real elmt_product91;
    input Real elmt_reactant22;
    input Real elmt_reactant24;
    input Real elmt_Mdm2Pdegradation;
    input Real elmt_p21mRNASynthesis1;
    input Real elmt_GADD45activation2;
    input Real elmt_p53mRNADegradation;
    input Real elmt_Mdm2Degradation;
    input Real elmt_p21mRNASynthesis2;
    input Real elmt_Mdm2Synthesis;
    input Real elmt_product9;
    input Real elmt_product8;
    input Real elmt_product6;
    input Real elmt_product21;
    input Real elmt_product1;
    input Real elmt_Mdm2dephosorylation;
    input Real elmt_reactant37;
    input Real elmt_p21Synthesis1;
    input Real elmt_reactant38;
    input Real elmt_reactant32;
    input Real elmt_product5;
    input Real elmt_p21Synthesis2;
    input Real elmt_reactant35;
    input Real elmt_p21Synthesis3;
    input Real elmt_ROSgenerationP38;
    input Real elmt_reactant29;
    input Real elmt_product19;
    input Real elmt_product18;
    input Real elmt_product30;
    input Real elmt_reactant83;
    input Real elmt_reactant85;
    input Real elmt_product34;
    input Real elmt_reactant80;
    input Real elmt_product33;
    input Real elmt_product31;
    input Real elmt_ATMInactivation;
    input Real elmt_reactant88;
    input Real elmt_ROSDNAdamage;
    input Real elmt_p53mRNASynthesis;
    input Real elmt_product28;
    input Real elmt_product40;
    input Real elmt_reactant90;
    input Real elmt_product44;
    input Real elmt_product43;
    input Real elmt_reactant93;
    input Real elmt_reactant15;
    input Real elmt_reactant17;
    input Real elmt_reactant10;
    input Real elmt_reactant13;
    input Real elmt_Mdm2mRNADegradation;
    input Real elmt_p21mRNADegradation;
    input Real elmt_product39;
    input Real elmt_product52;
    input Real elmt_product50;
    input Real elmt_reactant63;
    input Real elmt_ROSremoval;
    input Real elmt_product56;
    input Real elmt_reactant60;
    input Real elmt_reactant65;
    input Real elmt_p38activation;
    input Real elmt_reactant68;
    input Real elmt_P53_Mdm2Release;
    input Real elmt_P53_Mdm2Binding;
    input Real elmt_product49;
    input Real elmt_product46;
    input Real elmt_reactant2;
    input Real elmt_reactant72;
    input Real elmt_product62;
    input Real elmt_product61;
    input Real elmt_reactant4;
    input Real elmt_reactant74;
    input Real elmt_product67;
    input Real elmt_product66;
    input Real elmt_reactant70;
    input Real elmt_reactant7;
    input Real elmt_reactant77;
    input Real elmt_reactant79;
    input Real elmt_p53dephosorylation;
    input Real elmt_Mdm2phoshorylation;
    input Real elmt_p53Degradation;
    input Real elmt_p53Mdm2IndepDegradation2;
    input Real elmt_p53Mdm2IndepDegradation1;
    input Real elmt_product59;
    input Real elmt_product58;

    input Boolean elmt_stressCell;
    input Boolean elmt_stopStress;

    input Real assign_elmt_IR;

    Real elmt_cell(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GADD45_amount(unit = "");
    Real elmt_GADD45_conc(unit = "");
    Real elmt_GADD45(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ROS_amount(unit = "");
    Real elmt_ROS_conc(unit = "");
    Real elmt_ROS(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_p38_amount(unit = "");
    Real elmt_p38_conc(unit = "");
    Real elmt_p38(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_p53_P_amount(unit = "");
    Real elmt_p53_P_conc(unit = "");
    Real elmt_p53_P(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_p21_basal_amount(unit = "");
    Real elmt_p21_basal_conc(unit = "");
    Real elmt_p21_basal(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_damDNA_amount(unit = "");
    Real elmt_damDNA_conc(unit = "");
    Real elmt_damDNA(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_p53_mRNA_amount(unit = "");
    Real elmt_p53_mRNA_conc(unit = "");
    Real elmt_p53_mRNA(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ATMA_amount(unit = "");
    Real elmt_ATMA_conc(unit = "");
    Real elmt_ATMA(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Source_amount(unit = "");
    Real elmt_Source_conc(unit = "");
    Real elmt_Source(unit = "") "";
    Real elmt_IR_amount(unit = "");
    Real elmt_IR_conc(unit = "");
    Real elmt_IR(unit = "") "";
    Real elmt_basalROS_amount(unit = "");
    Real elmt_basalROS_conc(unit = "");
    Real elmt_basalROS(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_p21_mRNA_amount(unit = "");
    Real elmt_p21_mRNA_conc(unit = "");
    Real elmt_p21_mRNA(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ATMI_amount(unit = "");
    Real elmt_ATMI_conc(unit = "");
    Real elmt_ATMI(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Mdm2_mRNA_amount(unit = "");
    Real elmt_Mdm2_mRNA_conc(unit = "");
    Real elmt_Mdm2_mRNA(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_p21step1_amount(unit = "");
    Real elmt_p21step1_conc(unit = "");
    Real elmt_p21step1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Mdm2_P_amount(unit = "");
    Real elmt_Mdm2_P_conc(unit = "");
    Real elmt_Mdm2_P(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_p21_amount(unit = "");
    Real elmt_p21_conc(unit = "");
    Real elmt_p21(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Mdm2_amount(unit = "");
    Real elmt_Mdm2_conc(unit = "");
    Real elmt_Mdm2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_p53_amount(unit = "");
    Real elmt_p53_conc(unit = "");
    Real elmt_p53(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Mdm2_p53_amount(unit = "");
    Real elmt_Mdm2_p53_conc(unit = "");
    Real elmt_Mdm2_p53(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_p21step2_amount(unit = "");
    Real elmt_p21step2_conc(unit = "");
    Real elmt_p21step2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Sink_amount(unit = "");
    Real elmt_Sink_conc(unit = "");
    Real elmt_Sink(unit = "") "";
    Real elmt_p38_P_amount(unit = "");
    Real elmt_p38_P_conc(unit = "");
    Real elmt_p38_P(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_GADD45_amount = 0.0;
        elmt_ROS_amount = 0.0;
        elmt_p38_amount = 100.0;
        elmt_p53_P_amount = 0.0;
        elmt_p21_basal_amount = 7.0;
        elmt_damDNA_amount = 0.0;
        elmt_p53_mRNA_amount = 10.0;
        elmt_ATMA_amount = 0.0;
        elmt_Source_amount = 1.0;
        elmt_IR_amount = 0.0;
        elmt_basalROS_amount = 10.0;
        elmt_p21_mRNA_amount = 1.0;
        elmt_ATMI_amount = 200.0;
        elmt_Mdm2_mRNA_amount = 10.0;
        elmt_p21step1_amount = 0.0;
        elmt_Mdm2_P_amount = 0.0;
        elmt_p21_amount = 0.0;
        elmt_Mdm2_amount = 5.0;
        elmt_p53_amount = 5.0;
        elmt_Mdm2_p53_amount = 95.0;
        elmt_p21step2_amount = 0.0;
        elmt_Sink_amount = 1.0;
        elmt_p38_P_amount = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_GADD45 = elmt_GADD45_amount;
        elmt_ROS = elmt_ROS_amount;
        elmt_p38 = elmt_p38_amount;
        elmt_p53_P = elmt_p53_P_amount;
        elmt_p21_basal = elmt_p21_basal_amount;
        elmt_damDNA = elmt_damDNA_amount;
        elmt_p53_mRNA = elmt_p53_mRNA_amount;
        elmt_ATMA = elmt_ATMA_amount;
        elmt_Source = elmt_Source_amount;
        elmt_IR = elmt_IR_amount;
        elmt_basalROS = elmt_basalROS_amount;
        elmt_p21_mRNA = elmt_p21_mRNA_amount;
        elmt_ATMI = elmt_ATMI_amount;
        elmt_Mdm2_mRNA = elmt_Mdm2_mRNA_amount;
        elmt_p21step1 = elmt_p21step1_amount;
        elmt_Mdm2_P = elmt_Mdm2_P_amount;
        elmt_p21 = elmt_p21_amount;
        elmt_Mdm2 = elmt_Mdm2_amount;
        elmt_p53 = elmt_p53_amount;
        elmt_Mdm2_p53 = elmt_Mdm2_p53_amount;
        elmt_p21step2 = elmt_p21step2_amount;
        elmt_Sink = elmt_Sink_amount;
        elmt_p38_P = elmt_p38_P_amount;
        der(elmt_p21_basal_amount) = 0;
        der(elmt_Source_amount) = 0;
        der(elmt_Sink_amount) = 0;
        der(elmt_GADD45_amount) = ((- (elmt_GADD45degradation * elmt_reactant77)) + (elmt_p38activation * elmt_product82) + (- (elmt_p38activation * elmt_reactant80)) + (elmt_GADD45activation2 * elmt_product76));
        der(elmt_ROS_amount) = ((- (elmt_ROSremoval * elmt_reactant88)) + (- (elmt_ROSDNAdamage * elmt_reactant90)) + (elmt_ROSDNAdamage * elmt_product91) + (elmt_ROSgenerationP38 * elmt_product87));
        der(elmt_p38_amount) = ((elmt_p38inactivation * elmt_product84) + (- (elmt_p38activation * elmt_reactant79)));
        der(elmt_p53_P_amount) = ((elmt_Mdm2mRNASynthesis2 * elmt_product11) + (- (elmt_Mdm2mRNASynthesis2 * elmt_reactant10)) + (elmt_p21mRNASynthesis2 * elmt_product61) + (- (elmt_p21mRNASynthesis2 * elmt_reactant60)) + (elmt_p53phoshorylation * elmt_product43) + (- (elmt_p53dephosorylation * elmt_reactant45)) + (- (elmt_p53Mdm2IndepDegradation1 * elmt_reactant22)));
        der(elmt_damDNA_amount) = ((- (elmt_DNArepair * elmt_reactant35)) + (elmt_DNAdamage * elmt_product34) + (elmt_ROSDNAdamage * elmt_product92) + (- (elmt_ATMactivation * elmt_reactant37)) + (elmt_ATMactivation * elmt_product39) + (elmt_basalROSDNAdamage * elmt_product95));
        der(elmt_p53_mRNA_amount) = ((- (elmt_p53Synthesis * elmt_reactant17)) + (elmt_p53Synthesis * elmt_product19) + (elmt_p53mRNASynthesis * elmt_product1) + (- (elmt_p53mRNADegradation * elmt_reactant2)));
        der(elmt_ATMA_amount) = ((- (elmt_ATMInactivation * elmt_reactant55)) + (elmt_ATMactivation * elmt_product40) + (- (elmt_p53phoshorylation * elmt_reactant42)) + (elmt_p53phoshorylation * elmt_product44) + (elmt_Mdm2phoshorylation * elmt_product50) + (- (elmt_Mdm2phoshorylation * elmt_reactant48)));
        der(elmt_IR_amount) = ((elmt_DNAdamage * elmt_product33) + (- (elmt_DNAdamage * elmt_reactant32)));
        der(elmt_basalROS_amount) = ((elmt_basalROSDNAdamage * elmt_product94) + (- (elmt_basalROSDNAdamage * elmt_reactant93)));
        der(elmt_p21_mRNA_amount) = ((elmt_p21mRNASynthesis1 * elmt_product59) + (elmt_p21mRNASynthesis2 * elmt_product62) + (elmt_p21Synthesis1 * elmt_product66) + (- (elmt_p21Synthesis1 * elmt_reactant65)) + (- (elmt_p21mRNADegradation * elmt_reactant63)));
        der(elmt_ATMI_amount) = ((elmt_ATMInactivation * elmt_product56) + (- (elmt_ATMactivation * elmt_reactant38)));
        der(elmt_Mdm2_mRNA_amount) = ((elmt_Mdm2mRNASynthesis1 * elmt_product9) + (elmt_Mdm2mRNASynthesis2 * elmt_product12) + (- (elmt_Mdm2Synthesis * elmt_reactant4)) + (elmt_Mdm2Synthesis * elmt_product5) + (- (elmt_Mdm2mRNADegradation * elmt_reactant13)));
        der(elmt_p21step1_amount) = ((elmt_p21Synthesis1 * elmt_product67) + (- (elmt_p21Synthesis2 * elmt_reactant68)));
        der(elmt_Mdm2_P_amount) = ((- (elmt_Mdm2Pdegradation * elmt_reactant53)) + (- (elmt_Mdm2dephosorylation * elmt_reactant51)) + (elmt_Mdm2phoshorylation * elmt_product49));
        der(elmt_p21_amount) = ((- (elmt_p21degradation * elmt_reactant72)) + (- (elmt_GADD45activation2 * elmt_reactant74)) + (elmt_GADD45activation2 * elmt_product75) + (elmt_p21Synthesis3 * elmt_product71));
        der(elmt_Mdm2_amount) = ((elmt_P53_Mdm2Release * elmt_product31) + (- (elmt_P53_Mdm2Binding * elmt_reactant27)) + (- (elmt_Mdm2Degradation * elmt_reactant15)) + (elmt_Mdm2Synthesis * elmt_product6) + (elmt_Mdm2dephosorylation * elmt_product52) + (elmt_p53Degradation * elmt_product21) + (- (elmt_Mdm2phoshorylation * elmt_reactant47)));
        der(elmt_p53_amount) = ((elmt_p53Synthesis * elmt_product18) + (elmt_P53_Mdm2Release * elmt_product30) + (elmt_Mdm2mRNASynthesis1 * elmt_product8) + (- (elmt_Mdm2mRNASynthesis1 * elmt_reactant7)) + (- (elmt_P53_Mdm2Binding * elmt_reactant26)) + (elmt_p21mRNASynthesis1 * elmt_product58) + (- (elmt_p21mRNASynthesis1 * elmt_reactant57)) + (- (elmt_p53phoshorylation * elmt_reactant41)) + (elmt_p53dephosorylation * elmt_product46) + (- (elmt_p53Mdm2IndepDegradation2 * elmt_reactant24)));
        der(elmt_Mdm2_p53_amount) = ((- (elmt_P53_Mdm2Release * elmt_reactant29)) + (elmt_P53_Mdm2Binding * elmt_product28) + (- (elmt_p53Degradation * elmt_reactant20)));
        der(elmt_p21step2_amount) = ((elmt_p21Synthesis2 * elmt_product69) + (- (elmt_p21Synthesis3 * elmt_reactant70)));
        der(elmt_p38_P_amount) = ((- (elmt_p38inactivation * elmt_reactant83)) + (elmt_p38activation * elmt_product81) + (- (elmt_ROSgenerationP38 * elmt_reactant85)) + (elmt_ROSgenerationP38 * elmt_product86));

        when elmt_stressCell then
            reinit(elmt_IR_amount, assign_elmt_IR);
        end when;
        when elmt_stopStress then
            reinit(elmt_IR_amount, assign_elmt_IR);
        end when;
    algorithm
        elmt_GADD45_conc := elmt_GADD45_amount / elmt_cell;
        elmt_ROS_conc := elmt_ROS_amount / elmt_cell;
        elmt_p38_conc := elmt_p38_amount / elmt_cell;
        elmt_p53_P_conc := elmt_p53_P_amount / elmt_cell;
        elmt_p21_basal_conc := elmt_p21_basal_amount / elmt_cell;
        elmt_damDNA_conc := elmt_damDNA_amount / elmt_cell;
        elmt_p53_mRNA_conc := elmt_p53_mRNA_amount / elmt_cell;
        elmt_ATMA_conc := elmt_ATMA_amount / elmt_cell;
        elmt_Source_conc := elmt_Source_amount / elmt_cell;
        elmt_IR_conc := elmt_IR_amount / elmt_cell;
        elmt_basalROS_conc := elmt_basalROS_amount / elmt_cell;
        elmt_p21_mRNA_conc := elmt_p21_mRNA_amount / elmt_cell;
        elmt_ATMI_conc := elmt_ATMI_amount / elmt_cell;
        elmt_Mdm2_mRNA_conc := elmt_Mdm2_mRNA_amount / elmt_cell;
        elmt_p21step1_conc := elmt_p21step1_amount / elmt_cell;
        elmt_Mdm2_P_conc := elmt_Mdm2_P_amount / elmt_cell;
        elmt_p21_conc := elmt_p21_amount / elmt_cell;
        elmt_Mdm2_conc := elmt_Mdm2_amount / elmt_cell;
        elmt_p53_conc := elmt_p53_amount / elmt_cell;
        elmt_Mdm2_p53_conc := elmt_Mdm2_p53_amount / elmt_cell;
        elmt_p21step2_conc := elmt_p21step2_amount / elmt_cell;
        elmt_Sink_conc := elmt_Sink_amount / elmt_cell;
        elmt_p38_P_conc := elmt_p38_P_amount / elmt_cell;
end Class_elmt_cell;
