within BIOMD007;
class Class_elmt_Cell

    input Real elmt_PG2R_Creation;
    input Real elmt_product30;
    input Real elmt_PG2R_Dissociation_UbE;
    input Real elmt_product33;
    input Real elmt_product32;
    input Real elmt_Cig1;
    input Real elmt_Cdc2Phos;
    input Real elmt_RumDegInG1R;
    input Real elmt_product25;
    input Real elmt_product28;
    input Real elmt_product40;
    input Real elmt_product44;
    input Real elmt_product42;
    input Real elmt_Cdc25_Reaction;
    input Real elmt_G1K_Creation;
    input Real elmt_Rum1Deg;
    input Real elmt_reactant15;
    input Real elmt_G1R_Binding;
    input Real elmt_reactant17;
    input Real elmt_reactant10;
    input Real elmt_reactant12;
    input Real elmt_reactant13;
    input Real elmt_product38;
    input Real elmt_G2R_Creation;
    input Real elmt_Rum1DegInPG2R;
    input Real elmt_product36;
    input Real elmt_IE_Reaction;
    input Real elmt_G2K_Creation;
    input Real elmt_reactant20;
    input Real elmt_Rum1_Deg_SPF;
    input Real elmt_product11;
    input Real elmt_G2K_dissoc;
    input Real elmt_G2R_Dissociation;
    input Real elmt_reactant26;
    input Real elmt_PG2R_Dissociation;
    input Real elmt_reactant27;
    input Real elmt_reactant22;
    input Real elmt_reactant24;
    input Real elmt_reactant18;
    input Real elmt_reactant19;
    input Real elmt_alpha;
    input Real elmt_G2R_Dissociation_UbE;
    input Real elmt_reactant2;
    input Real elmt_product9;
    input Real elmt_beta;
    input Real elmt_reactant4;
    input Real elmt_Wee1_Reaction;
    input Real elmt_product6;
    input Real elmt_reactant31;
    input Real elmt_product23;
    input Real elmt_reactant5;
    input Real elmt_G1R_Dissociation;
    input Real elmt_reactant8;
    input Real elmt_product21;
    input Real elmt_reactant7;
    input Real elmt_product1;
    input Real elmt_product0;
    input Real elmt_PG2_dissoc;
    input Real elmt_UbE2_Reaction;
    input Real elmt_product3;
    input Real elmt_G1K_Dissociation;
    input Real elmt_reactant34;
    input Real elmt_Rum1_Production;
    input Real elmt_Rum1DegInG2R;
    input Real elmt_reactant29;
    input Real elmt_UbE_Reaction;
    input Real elmt_product16;
    input Real elmt_product14;

    Real elmt_Cell(unit = "m3.0") "Cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_UbE_amount(unit = "");
    Real elmt_UbE_conc(unit = "");
    Real elmt_UbE(unit = "") "ubiquitinProtease1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_UbEB_amount(unit = "");
    Real elmt_UbEB_conc(unit = "");
    Real elmt_UbEB(unit = "") "BoundUbiquitinProtease1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_G2K_amount(unit = "");
    Real elmt_G2K_conc(unit = "");
    Real elmt_G2K(unit = "") "Cdc13_Cdc2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PG2_amount(unit = "");
    Real elmt_PG2_conc(unit = "");
    Real elmt_PG2(unit = "") "Cdc13_P-Cdc2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Cdc13Total_amount(unit = "");
    Real elmt_Cdc13Total_conc(unit = "");
    Real elmt_Cdc13Total(unit = "") "TotalCdc13";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Wee1_amount(unit = "");
    Real elmt_Wee1_conc(unit = "");
    Real elmt_Wee1(unit = "") "Wee1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_G2R_amount(unit = "");
    Real elmt_G2R_conc(unit = "");
    Real elmt_G2R(unit = "") "Cdc13_Cdc2_Rum1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PG2R_amount(unit = "");
    Real elmt_PG2R_conc(unit = "");
    Real elmt_PG2R(unit = "") "Cdc13_P-Cdc2_Rum1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_UbE2_amount(unit = "");
    Real elmt_UbE2_conc(unit = "");
    Real elmt_UbE2(unit = "") "ubiquitinProtease2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_G1R_amount(unit = "");
    Real elmt_G1R_conc(unit = "");
    Real elmt_G1R(unit = "") "Cig2_Cdc2_Rum1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Cdc25_amount(unit = "");
    Real elmt_Cdc25_conc(unit = "");
    Real elmt_Cdc25(unit = "") "Cdc25";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IEB_amount(unit = "");
    Real elmt_IEB_conc(unit = "");
    Real elmt_IEB(unit = "") "BoundIntermediaryEnzyme";
    Real elmt_MPF_amount(unit = "");
    Real elmt_MPF_conc(unit = "");
    Real elmt_MPF(unit = "") "M-phasePromotingFactor";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_UbE2B_amount(unit = "");
    Real elmt_UbE2B_conc(unit = "");
    Real elmt_UbE2B(unit = "") "BoundUbiquitinProtease2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_G1K_amount(unit = "");
    Real elmt_G1K_conc(unit = "");
    Real elmt_G1K(unit = "") "Cig2_Cdc2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Wee1B_amount(unit = "");
    Real elmt_Wee1B_conc(unit = "");
    Real elmt_Wee1B(unit = "") "BoundWee1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Rum1Total_amount(unit = "");
    Real elmt_Rum1Total_conc(unit = "");
    Real elmt_Rum1Total(unit = "") "TotalRum1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IE_amount(unit = "");
    Real elmt_IE_conc(unit = "");
    Real elmt_IE(unit = "") "IntermediaryEnzyme";
    Real elmt_Cdc25B_amount(unit = "");
    Real elmt_Cdc25B_conc(unit = "");
    Real elmt_Cdc25B(unit = "") "BoundCdc25";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Cig2Total_amount(unit = "");
    Real elmt_Cig2Total_conc(unit = "");
    Real elmt_Cig2Total(unit = "") "TotalCig2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_R_amount(unit = "");
    Real elmt_R_conc(unit = "");
    Real elmt_R(unit = "") "FreeRum1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_SPF_amount(unit = "");
    Real elmt_SPF_conc(unit = "");
    Real elmt_SPF(unit = "") "S-phasePromotingFactor";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Cell = 1.0;
        elmt_UbE_amount = 0.11;
        elmt_G2K_amount = 0.0;
        elmt_PG2_amount = 0.0;
        elmt_Wee1_amount = 0.0;
        elmt_G2R_amount = 0.0;
        elmt_PG2R_amount = 0.0;
        elmt_UbE2_amount = 0.0;
        elmt_G1R_amount = 0.0;
        elmt_Cdc25_amount = 0.0;
        elmt_G1K_amount = 0.0;
        elmt_IE_amount = 0.0;
        elmt_R_amount = 0.4;


    equation
        assert(elmt_Cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Cell) = 0;
        elmt_UbE = elmt_UbE_amount;
        elmt_UbEB = elmt_UbEB_amount;
        elmt_G2K = elmt_G2K_amount;
        elmt_PG2 = elmt_PG2_amount;
        elmt_Cdc13Total = elmt_Cdc13Total_amount;
        elmt_Wee1 = elmt_Wee1_amount;
        elmt_G2R = elmt_G2R_amount;
        elmt_PG2R = elmt_PG2R_amount;
        elmt_UbE2 = elmt_UbE2_amount;
        elmt_G1R = elmt_G1R_amount;
        elmt_Cdc25 = elmt_Cdc25_amount;
        elmt_IEB = elmt_IEB_amount;
        elmt_MPF = elmt_MPF_amount;
        elmt_UbE2B = elmt_UbE2B_amount;
        elmt_G1K = elmt_G1K_amount;
        elmt_Wee1B = elmt_Wee1B_amount;
        elmt_Rum1Total = elmt_Rum1Total_amount;
        elmt_IE = elmt_IE_amount;
        elmt_Cdc25B = elmt_Cdc25B_amount;
        elmt_Cig2Total = elmt_Cig2Total_amount;
        elmt_R = elmt_R_amount;
        elmt_SPF = elmt_SPF_amount;
        elmt_UbEB_amount = (1.0 - elmt_UbE);
        elmt_Cdc13Total_amount = (elmt_G2K + elmt_G2R + elmt_PG2 + elmt_PG2R);
        elmt_IEB_amount = (1.0 - elmt_IE);
        elmt_MPF_amount = (elmt_G2K + (elmt_beta * elmt_PG2));
        elmt_UbE2B_amount = (1.0 - elmt_UbE2);
        elmt_Wee1B_amount = (1.0 - elmt_Wee1);
        elmt_Rum1Total_amount = (elmt_G1R + elmt_G2R + elmt_PG2R + elmt_R);
        elmt_Cdc25B_amount = (1.0 - elmt_Cdc25);
        elmt_Cig2Total_amount = (elmt_G1K + elmt_G1R);
        elmt_SPF_amount = (elmt_Cig1 + (elmt_alpha * elmt_G1K) + elmt_MPF);
        der(elmt_UbE_amount) = (elmt_UbE_Reaction * elmt_product38);
        der(elmt_Wee1_amount) = (elmt_Wee1_Reaction * elmt_product42);
        der(elmt_G2R_amount) = ((- (elmt_G2R_Dissociation * elmt_reactant22)) + (- (elmt_G2R_Dissociation_UbE * elmt_reactant29)) + (- (elmt_Rum1DegInG2R * elmt_reactant10)) + (elmt_G2R_Creation * elmt_product6));
        der(elmt_PG2R_amount) = ((elmt_PG2R_Creation * elmt_product9) + (- (elmt_PG2R_Dissociation_UbE * elmt_reactant31)) + (- (elmt_PG2R_Dissociation * elmt_reactant20)) + (- (elmt_Rum1DegInPG2R * elmt_reactant13)));
        der(elmt_UbE2_amount) = (elmt_UbE2_Reaction * elmt_product40);
        der(elmt_G1R_amount) = ((- (elmt_RumDegInG1R * elmt_reactant15)) + (- (elmt_G1R_Dissociation * elmt_reactant24)) + (elmt_G1R_Binding * elmt_product28));
        der(elmt_Cdc25_amount) = (elmt_Cdc25_Reaction * elmt_product44);
        der(elmt_G1K_amount) = ((elmt_RumDegInG1R * elmt_product16) + (elmt_G1K_Creation * elmt_product1) + (- (elmt_G1R_Binding * elmt_reactant26)) + (- (elmt_G1K_Dissociation * elmt_reactant19)));
        der(elmt_G2K_amount) = ((elmt_G2K_Creation * elmt_product0) + (- (elmt_G2K_dissoc * elmt_reactant17)) + (- (elmt_Cdc2Phos * elmt_reactant2)) + (elmt_Rum1DegInG2R * elmt_product11) + (- (elmt_G2R_Creation * elmt_reactant4)));
        der(elmt_IE_amount) = (elmt_IE_Reaction * elmt_product36);
        der(elmt_PG2_amount) = ((- (elmt_PG2R_Creation * elmt_reactant7)) + (elmt_Cdc2Phos * elmt_product3) + (- (elmt_PG2_dissoc * elmt_reactant18)) + (elmt_Rum1DegInPG2R * elmt_product14));
        der(elmt_R_amount) = ((- (elmt_PG2R_Creation * elmt_reactant8)) + (elmt_PG2R_Dissociation_UbE * elmt_product32) + (- (elmt_Rum1_Deg_SPF * elmt_reactant34)) + (elmt_G2R_Dissociation * elmt_product23) + (elmt_PG2R_Dissociation * elmt_product21) + (elmt_G2R_Dissociation_UbE * elmt_product30) + (elmt_G1R_Dissociation * elmt_product25) + (- (elmt_Rum1Deg * elmt_reactant12)) + (- (elmt_G1R_Binding * elmt_reactant27)) + (elmt_Rum1_Production * elmt_product33) + (- (elmt_G2R_Creation * elmt_reactant5)));

    algorithm
        elmt_UbE_conc := elmt_UbE_amount / elmt_Cell;
        elmt_UbEB_conc := elmt_UbEB_amount / elmt_Cell;
        elmt_G2K_conc := elmt_G2K_amount / elmt_Cell;
        elmt_PG2_conc := elmt_PG2_amount / elmt_Cell;
        elmt_Cdc13Total_conc := elmt_Cdc13Total_amount / elmt_Cell;
        elmt_Wee1_conc := elmt_Wee1_amount / elmt_Cell;
        elmt_G2R_conc := elmt_G2R_amount / elmt_Cell;
        elmt_PG2R_conc := elmt_PG2R_amount / elmt_Cell;
        elmt_UbE2_conc := elmt_UbE2_amount / elmt_Cell;
        elmt_G1R_conc := elmt_G1R_amount / elmt_Cell;
        elmt_Cdc25_conc := elmt_Cdc25_amount / elmt_Cell;
        elmt_IEB_conc := elmt_IEB_amount / elmt_Cell;
        elmt_MPF_conc := elmt_MPF_amount / elmt_Cell;
        elmt_UbE2B_conc := elmt_UbE2B_amount / elmt_Cell;
        elmt_G1K_conc := elmt_G1K_amount / elmt_Cell;
        elmt_Wee1B_conc := elmt_Wee1B_amount / elmt_Cell;
        elmt_Rum1Total_conc := elmt_Rum1Total_amount / elmt_Cell;
        elmt_IE_conc := elmt_IE_amount / elmt_Cell;
        elmt_Cdc25B_conc := elmt_Cdc25B_amount / elmt_Cell;
        elmt_Cig2Total_conc := elmt_Cig2Total_amount / elmt_Cell;
        elmt_R_conc := elmt_R_amount / elmt_Cell;
        elmt_SPF_conc := elmt_SPF_amount / elmt_Cell;
end Class_elmt_Cell;
