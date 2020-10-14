within BIOMD091;
class Class_elmt_compartment

    input Real elmt_product30;
    input Real elmt_radicalFormation;
    input Real elmt_reactant41;
    input Real elmt_reactant42;
    input Real elmt_product32;
    input Real elmt_reactant47;
    input Real elmt_proteinDegradation;
    input Real elmt_reactant44;
    input Real elmt_product27;
    input Real elmt_HSETriHRelease;
    input Real elmt_deDimerisation;
    input Real elmt_reactant9;
    input Real elmt_product24;
    input Real elmt_product29;
    input Real elmt_reactant50;
    input Real elmt_reactant51;
    input Real elmt_product40;
    input Real elmt_unsuccessulRefolding;
    input Real elmt_Hsp90Degradation;
    input Real elmt_product45;
    input Real elmt_proteinAggregation2;
    input Real elmt_product43;
    input Real elmt_proteinAggregation1;
    input Real elmt_reactant17;
    input Real elmt_reactant55;
    input Real elmt_reactant12;
    input Real elmt_ATPconsumption;
    input Real elmt_reactant57;
    input Real elmt_reactant13;
    input Real elmt_product38;
    input Real elmt_product37;
    input Real elmt_product35;
    input Real elmt_Hsp90Transcription;
    input Real elmt_reactant61;
    input Real elmt_product52;
    input Real elmt_reactant20;
    input Real elmt_product56;
    input Real elmt_product11;
    input Real elmt_product54;
    input Real elmt_product10;
    input Real elmt_reactant25;
    input Real elmt_ATPformation;
    input Real elmt_reactant26;
    input Real elmt_dimerisation;
    input Real elmt_reactant28;
    input Real elmt_reactant22;
    input Real elmt_reactant23;
    input Real elmt_Hsp90MisPBinding;
    input Real elmt_Hsp90HSF1Release;
    input Real elmt_reactant18;
    input Real elmt_proteinSynthesis;
    input Real elmt_countTime;
    input Real elmt_misfolding;
    input Real elmt_product49;
    input Real elmt_product48;
    input Real elmt_HSETriHBinding;
    input Real elmt_product46;
    input Real elmt_refolding;
    input Real elmt_reactant2;
    input Real elmt_product8;
    input Real elmt_product60;
    input Real elmt_reactant3;
    input Real elmt_reactant31;
    input Real elmt_Hsp90HSF1Binding;
    input Real elmt_reactant6;
    input Real elmt_product21;
    input Real elmt_reactant7;
    input Real elmt_reactant36;
    input Real elmt_product1;
    input Real elmt_reactant39;
    input Real elmt_product5;
    input Real elmt_reactant33;
    input Real elmt_product4;
    input Real elmt_reactant34;
    input Real elmt_trimerisation;
    input Real elmt_radicalScavenging;
    input Real elmt_deTrimerisation;
    input Real elmt_product16;
    input Real elmt_product15;
    input Real elmt_product58;
    input Real elmt_product14;
    input Real elmt_product19;

    Real elmt_compartment(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ROS_amount(unit = "");
    Real elmt_ROS_conc(unit = "");
    Real elmt_ROS(unit = "") "ROS";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ATP_amount(unit = "");
    Real elmt_ATP_conc(unit = "");
    Real elmt_ATP(unit = "") "ATP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_source_amount(unit = "");
    Real elmt_source_conc(unit = "");
    Real elmt_source(unit = "") "source";
    Real elmt_HSE_amount(unit = "");
    Real elmt_HSE_conc(unit = "");
    Real elmt_HSE(unit = "") "HSE";
    Real elmt_AggP_amount(unit = "");
    Real elmt_AggP_conc(unit = "");
    Real elmt_AggP(unit = "") "AggP";
    Real elmt_HSF1_amount(unit = "");
    Real elmt_HSF1_conc(unit = "");
    Real elmt_HSF1(unit = "") "HSF1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_MCom_amount(unit = "");
    Real elmt_MCom_conc(unit = "");
    Real elmt_MCom(unit = "") "MCom";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_TriH_amount(unit = "");
    Real elmt_TriH_conc(unit = "");
    Real elmt_TriH(unit = "") "TriH";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_DiH_amount(unit = "");
    Real elmt_DiH_conc(unit = "");
    Real elmt_DiH(unit = "") "DiH";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_NatP_amount(unit = "");
    Real elmt_NatP_conc(unit = "");
    Real elmt_NatP(unit = "") "NatP";
    Real elmt_HSETriH_amount(unit = "");
    Real elmt_HSETriH_conc(unit = "");
    Real elmt_HSETriH(unit = "") "HSETriH";
    Real elmt_X_amount(unit = "");
    Real elmt_X_conc(unit = "");
    Real elmt_X(unit = "") "X";
    Real elmt_ADP_amount(unit = "");
    Real elmt_ADP_conc(unit = "");
    Real elmt_ADP(unit = "") "ADP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_MisP_amount(unit = "");
    Real elmt_MisP_conc(unit = "");
    Real elmt_MisP(unit = "") "MisP";
    Real elmt_HCom_amount(unit = "");
    Real elmt_HCom_conc(unit = "");
    Real elmt_HCom(unit = "") "HCom";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Hsp90_amount(unit = "");
    Real elmt_Hsp90_conc(unit = "");
    Real elmt_Hsp90(unit = "") "Hsp90";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_ROS_amount = 100.0;
        elmt_ATP_amount = 10000.0;
        elmt_source_amount = 0.0;
        elmt_HSE_amount = 1.0;
        elmt_AggP_amount = 0.0;
        elmt_HSF1_amount = 100.0;
        elmt_MCom_amount = 0.0;
        elmt_TriH_amount = 0.0;
        elmt_DiH_amount = 0.0;
        elmt_NatP_amount = 6000000.0;
        elmt_HSETriH_amount = 0.0;
        elmt_X_amount = 0.0;
        elmt_ADP_amount = 1000.0;
        elmt_MisP_amount = 0.0;
        elmt_HCom_amount = 5900.0;
        elmt_Hsp90_amount = 300000.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_ROS = elmt_ROS_amount;
        elmt_ATP = elmt_ATP_amount;
        elmt_source = elmt_source_amount;
        elmt_HSE = elmt_HSE_amount;
        elmt_AggP = elmt_AggP_amount;
        elmt_HSF1 = elmt_HSF1_amount;
        elmt_MCom = elmt_MCom_amount;
        elmt_TriH = elmt_TriH_amount;
        elmt_DiH = elmt_DiH_amount;
        elmt_NatP = elmt_NatP_amount;
        elmt_HSETriH = elmt_HSETriH_amount;
        elmt_X = elmt_X_amount;
        elmt_ADP = elmt_ADP_amount;
        elmt_MisP = elmt_MisP_amount;
        elmt_HCom = elmt_HCom_amount;
        elmt_Hsp90 = elmt_Hsp90_amount;
        der(elmt_source_amount) = 0;
        der(elmt_ROS_amount) = ((elmt_radicalFormation * elmt_product60) + (- (elmt_radicalScavenging * elmt_reactant61)) + (- (elmt_misfolding * elmt_reactant3)) + (elmt_misfolding * elmt_product5));
        der(elmt_ATP_amount) = ((- (elmt_Hsp90Degradation * elmt_reactant51)) + (elmt_ATPformation * elmt_product56) + (- (elmt_proteinDegradation * elmt_reactant18)) + (- (elmt_ATPconsumption * elmt_reactant57)) + (- (elmt_refolding * elmt_reactant13)));
        der(elmt_HSE_amount) = ((elmt_HSETriHRelease * elmt_product45) + (- (elmt_HSETriHBinding * elmt_reactant42)));
        der(elmt_AggP_amount) = ((elmt_proteinAggregation2 * elmt_product24) + (- (elmt_proteinAggregation2 * elmt_reactant23)) + (elmt_proteinAggregation1 * elmt_product21));
        der(elmt_HSF1_amount) = ((- (elmt_Hsp90HSF1Binding * elmt_reactant26)) + (- (elmt_dimerisation * elmt_reactant31)) + (elmt_Hsp90HSF1Release * elmt_product30) + (- (elmt_trimerisation * elmt_reactant33)) + (elmt_deTrimerisation * elmt_product37) + (elmt_deDimerisation * elmt_product40));
        der(elmt_MCom_amount) = ((- (elmt_unsuccessulRefolding * elmt_reactant9)) + (elmt_Hsp90MisPBinding * elmt_product8) + (- (elmt_refolding * elmt_reactant12)));
        der(elmt_TriH_amount) = ((elmt_trimerisation * elmt_product35) + (- (elmt_deTrimerisation * elmt_reactant36)) + (elmt_HSETriHRelease * elmt_product46) + (- (elmt_HSETriHBinding * elmt_reactant41)));
        der(elmt_DiH_amount) = ((elmt_dimerisation * elmt_product32) + (- (elmt_trimerisation * elmt_reactant34)) + (elmt_deTrimerisation * elmt_product38) + (- (elmt_deDimerisation * elmt_reactant39)));
        der(elmt_NatP_amount) = ((elmt_proteinSynthesis * elmt_product1) + (- (elmt_misfolding * elmt_reactant2)) + (elmt_refolding * elmt_product15));
        der(elmt_HSETriH_amount) = ((- (elmt_HSETriHRelease * elmt_reactant44)) + (elmt_HSETriHBinding * elmt_product43) + (- (elmt_Hsp90Transcription * elmt_reactant47)) + (elmt_Hsp90Transcription * elmt_product48));
        der(elmt_X_amount) = (elmt_countTime * elmt_product54);
        der(elmt_ADP_amount) = ((elmt_Hsp90Degradation * elmt_product52) + (- (elmt_ATPformation * elmt_reactant55)) + (elmt_proteinDegradation * elmt_product19) + (elmt_ATPconsumption * elmt_product58) + (elmt_refolding * elmt_product16));
        der(elmt_MisP_amount) = ((elmt_unsuccessulRefolding * elmt_product10) + (- (elmt_proteinAggregation2 * elmt_reactant22)) + (- (elmt_proteinAggregation1 * elmt_reactant20)) + (- (elmt_proteinDegradation * elmt_reactant17)) + (- (elmt_Hsp90MisPBinding * elmt_reactant6)) + (elmt_misfolding * elmt_product4));
        der(elmt_HCom_amount) = ((elmt_Hsp90HSF1Binding * elmt_product27) + (- (elmt_Hsp90HSF1Release * elmt_reactant28)));
        der(elmt_Hsp90_amount) = ((elmt_unsuccessulRefolding * elmt_product11) + (- (elmt_Hsp90HSF1Binding * elmt_reactant25)) + (- (elmt_Hsp90Degradation * elmt_reactant50)) + (- (elmt_Hsp90MisPBinding * elmt_reactant7)) + (elmt_Hsp90HSF1Release * elmt_product29) + (elmt_Hsp90Transcription * elmt_product49) + (elmt_refolding * elmt_product14));

    algorithm
        elmt_ROS_conc := elmt_ROS_amount / elmt_compartment;
        elmt_ATP_conc := elmt_ATP_amount / elmt_compartment;
        elmt_source_conc := elmt_source_amount / elmt_compartment;
        elmt_HSE_conc := elmt_HSE_amount / elmt_compartment;
        elmt_AggP_conc := elmt_AggP_amount / elmt_compartment;
        elmt_HSF1_conc := elmt_HSF1_amount / elmt_compartment;
        elmt_MCom_conc := elmt_MCom_amount / elmt_compartment;
        elmt_TriH_conc := elmt_TriH_amount / elmt_compartment;
        elmt_DiH_conc := elmt_DiH_amount / elmt_compartment;
        elmt_NatP_conc := elmt_NatP_amount / elmt_compartment;
        elmt_HSETriH_conc := elmt_HSETriH_amount / elmt_compartment;
        elmt_X_conc := elmt_X_amount / elmt_compartment;
        elmt_ADP_conc := elmt_ADP_amount / elmt_compartment;
        elmt_MisP_conc := elmt_MisP_amount / elmt_compartment;
        elmt_HCom_conc := elmt_HCom_amount / elmt_compartment;
        elmt_Hsp90_conc := elmt_Hsp90_amount / elmt_compartment;
end Class_elmt_compartment;
