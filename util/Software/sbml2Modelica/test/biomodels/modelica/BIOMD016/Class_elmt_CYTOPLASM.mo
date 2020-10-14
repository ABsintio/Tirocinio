within BIOMD016;
class Class_elmt_CYTOPLASM

    input Real elmt_product11;
    input Real elmt_rVd;
    input Real elmt_rP21;
    input Real elmt_rmRNAd;
    input Real elmt_rP2n;
    input Real elmt_rPn2;
    input Real elmt_reactant18;
    input Real elmt_rP01;
    input Real elmt_product9;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_reactant6;
    input Real elmt_reactant8;
    input Real elmt_product1;
    input Real elmt_rP10;
    input Real elmt_reactant16;
    input Real elmt_product5;
    input Real elmt_reactant10;
    input Real elmt_reactant12;
    input Real elmt_product3;
    input Real elmt_rP12;
    input Real elmt_Pn;
    input Real elmt_product15;
    input Real elmt_rM;
    input Real elmt_rTL;

    Real elmt_CYTOPLASM(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_M_conc(unit = "");
    Real elmt_M_amount(unit = "");
    Real elmt_M(unit = "") "PER mRNA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Pt_conc(unit = "");
    Real elmt_Pt_amount(unit = "");
    Real elmt_Pt(unit = "") "total PER";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P1_conc(unit = "");
    Real elmt_P1_amount(unit = "");
    Real elmt_P1(unit = "") "monophosphorylated PER";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P2_conc(unit = "");
    Real elmt_P2_amount(unit = "");
    Real elmt_P2(unit = "") "biphosphorylated PER";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P0_conc(unit = "");
    Real elmt_P0_amount(unit = "");
    Real elmt_P0(unit = "") "unphosphorylated PER";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_CYTOPLASM = 1.0E-15;
        elmt_M_conc = 0.1;
        elmt_P1_conc = 0.25;
        elmt_P2_conc = 0.25;
        elmt_P0_conc = 0.25;


    equation
        assert(elmt_CYTOPLASM >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_CYTOPLASM) = 0;
        elmt_M = elmt_M_conc;
        elmt_Pt = elmt_Pt_conc;
        elmt_P1 = elmt_P1_conc;
        elmt_P2 = elmt_P2_conc;
        elmt_P0 = elmt_P0_conc;
        elmt_Pt_amount = (elmt_P0 + elmt_P1 + elmt_P2 + elmt_Pn) * elmt_CYTOPLASM;
        der(elmt_M_amount) = ((elmt_rM * elmt_product1) + (- (elmt_rmRNAd * elmt_reactant16)));
        der(elmt_P1_amount) = ((elmt_rP01 * elmt_product5) + (- (elmt_rP12 * elmt_reactant8)) + (- (elmt_rP10 * elmt_reactant6)) + (elmt_rP21 * elmt_product11));
        der(elmt_P2_amount) = ((elmt_rPn2 * elmt_product15) + (elmt_rP12 * elmt_product9) + (- (elmt_rVd * elmt_reactant18)) + (- (elmt_rP21 * elmt_reactant10)) + (- (elmt_rP2n * elmt_reactant12)));
        der(elmt_P0_amount) = ((- (elmt_rP01 * elmt_reactant4)) + (elmt_rP10 * elmt_product7) + (elmt_rTL * elmt_product3));

    algorithm
        elmt_M_conc := elmt_M_amount / elmt_CYTOPLASM;
        elmt_Pt_conc := elmt_Pt_amount / elmt_CYTOPLASM;
        elmt_P1_conc := elmt_P1_amount / elmt_CYTOPLASM;
        elmt_P2_conc := elmt_P2_amount / elmt_CYTOPLASM;
        elmt_P0_conc := elmt_P0_amount / elmt_CYTOPLASM;
end Class_elmt_CYTOPLASM;
