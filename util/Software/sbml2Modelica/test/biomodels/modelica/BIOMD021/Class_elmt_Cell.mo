within BIOMD021;
class Class_elmt_Cell

    input Real elmt_product30;
    input Real elmt_P1_degradation;
    input Real elmt_P2_degradation;
    input Real elmt_T2_degradation;
    input Real elmt_P1_to_P0;
    input Real elmt_product32;
    input Real elmt_PT_complex_formation;
    input Real elmt_product31;
    input Real elmt_T1_to_T2;
    input Real elmt_P1_to_P2;
    input Real elmt_P0_degradation;
    input Real elmt_Mt_production;
    input Real elmt_T0_degradation;
    input Real elmt_T1_to_T0;
    input Real elmt_T1_degradation;
    input Real elmt_product24;
    input Real elmt_product29;
    input Real elmt_P2_to_P1;
    input Real elmt_reactant14;
    input Real elmt_reactant16;
    input Real elmt_reactant17;
    input Real elmt_reactant10;
    input Real elmt_T2_to_T1;
    input Real elmt_PT_complex_degradation;
    input Real elmt_reactant12;
    input Real elmt_P0_production;
    input Real elmt_T0_production;
    input Real elmt_PT_complex_nucleation;
    input Real elmt_reactant20;
    input Real elmt_product11;
    input Real elmt_Mp_degradation;
    input Real elmt_reactant25;
    input Real elmt_reactant27;
    input Real elmt_reactant21;
    input Real elmt_Mp_production;
    input Real elmt_reactant22;
    input Real elmt_reactant23;
    input Real elmt_reactant18;
    input Real elmt_reactant19;
    input Real elmt_product9;
    input Real elmt_reactant2;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_reactant6;
    input Real elmt_reactant8;
    input Real elmt_product1;
    input Real elmt_product5;
    input Real elmt_reactant33;
    input Real elmt_reactant0;
    input Real elmt_product3;
    input Real elmt_reactant34;
    input Real elmt_Mt_degradation;
    input Real elmt_product15;
    input Real elmt_product13;
    input Real elmt_P0_to_P1;
    input Real elmt_T0_to_T1;

    Real elmt_Cell(unit = "") "cytoplasm";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Mp_conc(unit = "");
    Real elmt_Mp_amount(unit = "");
    Real elmt_Mp(unit = "") "PER mRNA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P1_conc(unit = "");
    Real elmt_P1_amount(unit = "");
    Real elmt_P1(unit = "") "PER Protein (mono-phosphorylated)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P2_conc(unit = "");
    Real elmt_P2_amount(unit = "");
    Real elmt_P2(unit = "") "PER Protein (bi-phosphorylated)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P0_conc(unit = "");
    Real elmt_P0_amount(unit = "");
    Real elmt_P0(unit = "") "PER Protein (unphosphorylated)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CC_conc(unit = "");
    Real elmt_CC_amount(unit = "");
    Real elmt_CC(unit = "") "Cytosolic PER-TIM Complex";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_T1_conc(unit = "");
    Real elmt_T1_amount(unit = "");
    Real elmt_T1(unit = "") "TIM Protein (mono-phosphorylated)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_T2_conc(unit = "");
    Real elmt_T2_amount(unit = "");
    Real elmt_T2(unit = "") "TIM Protein (bi-phosphorylated)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_T0_conc(unit = "");
    Real elmt_T0_amount(unit = "");
    Real elmt_T0(unit = "") "TIM Protein (unphosphorylated)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Mt_conc(unit = "");
    Real elmt_Mt_amount(unit = "");
    Real elmt_Mt(unit = "") "TIM mRNA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Cell = 1.0;
        elmt_Mp_conc = 0.0;
        elmt_P1_conc = 0.0;
        elmt_P2_conc = 0.0;
        elmt_P0_conc = 0.0;
        elmt_CC_conc = 0.0;
        elmt_T1_conc = 0.0;
        elmt_T2_conc = 0.0;
        elmt_T0_conc = 0.0;
        elmt_Mt_conc = 0.0;


    equation
        assert(elmt_Cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Cell) = 0;
        elmt_Mp = elmt_Mp_conc;
        elmt_P1 = elmt_P1_conc;
        elmt_P2 = elmt_P2_conc;
        elmt_P0 = elmt_P0_conc;
        elmt_CC = elmt_CC_conc;
        elmt_T1 = elmt_T1_conc;
        elmt_T2 = elmt_T2_conc;
        elmt_T0 = elmt_T0_conc;
        elmt_Mt = elmt_Mt_conc;
        der(elmt_Mp_amount) = ((- (elmt_Mp_degradation * elmt_reactant33)) + (elmt_Mp_production * elmt_product29));
        der(elmt_P1_amount) = ((- (elmt_P1_degradation * elmt_reactant18)) + (- (elmt_P1_to_P0 * elmt_reactant4)) + (- (elmt_P1_to_P2 * elmt_reactant8)) + (elmt_P2_to_P1 * elmt_product13) + (elmt_P0_to_P1 * elmt_product1));
        der(elmt_P2_amount) = ((- (elmt_P2_degradation * elmt_reactant20)) + (- (elmt_PT_complex_formation * elmt_reactant22)) + (elmt_P1_to_P2 * elmt_product9) + (- (elmt_P2_to_P1 * elmt_reactant12)));
        der(elmt_P0_amount) = ((elmt_P1_to_P0 * elmt_product5) + (- (elmt_P0_degradation * elmt_reactant16)) + (elmt_P0_production * elmt_product31) + (- (elmt_P0_to_P1 * elmt_reactant0)));
        der(elmt_CC_amount) = ((elmt_PT_complex_formation * elmt_product24) + (- (elmt_PT_complex_degradation * elmt_reactant27)) + (- (elmt_PT_complex_nucleation * elmt_reactant25)));
        der(elmt_T1_amount) = ((- (elmt_T1_to_T2 * elmt_reactant10)) + (- (elmt_T1_to_T0 * elmt_reactant6)) + (- (elmt_T1_degradation * elmt_reactant19)) + (elmt_T2_to_T1 * elmt_product15) + (elmt_T0_to_T1 * elmt_product3));
        der(elmt_T2_amount) = ((- (elmt_T2_degradation * elmt_reactant21)) + (elmt_T1_to_T2 * elmt_product11) + (- (elmt_PT_complex_formation * elmt_reactant23)) + (- (elmt_T2_to_T1 * elmt_reactant14)));
        der(elmt_T0_amount) = ((- (elmt_T0_degradation * elmt_reactant17)) + (elmt_T1_to_T0 * elmt_product7) + (elmt_T0_production * elmt_product32) + (- (elmt_T0_to_T1 * elmt_reactant2)));
        der(elmt_Mt_amount) = ((elmt_Mt_production * elmt_product30) + (- (elmt_Mt_degradation * elmt_reactant34)));

    algorithm
        elmt_Mp_conc := elmt_Mp_amount / elmt_Cell;
        elmt_P1_conc := elmt_P1_amount / elmt_Cell;
        elmt_P2_conc := elmt_P2_amount / elmt_Cell;
        elmt_P0_conc := elmt_P0_amount / elmt_Cell;
        elmt_CC_conc := elmt_CC_amount / elmt_Cell;
        elmt_T1_conc := elmt_T1_amount / elmt_Cell;
        elmt_T2_conc := elmt_T2_amount / elmt_Cell;
        elmt_T0_conc := elmt_T0_amount / elmt_Cell;
        elmt_Mt_conc := elmt_Mt_amount / elmt_Cell;
end Class_elmt_Cell;
