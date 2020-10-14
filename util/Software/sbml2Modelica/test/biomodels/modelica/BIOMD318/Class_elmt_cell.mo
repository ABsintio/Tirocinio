within BIOMD318;
class Class_elmt_cell

    input Real elmt_r7;
    input Real elmt_r8;
    input Real elmt_r5;
    input Real elmt_reactant20;
    input Real elmt_r6;
    input Real elmt_r3;
    input Real elmt_product11;
    input Real elmt_r4;
    input Real elmt_r1;
    input Real elmt_r2;
    input Real elmt_reactant21;
    input Real elmt_reactant22;
    input Real elmt_r9;
    input Real elmt_reactant18;
    input Real elmt_reactant19;
    input Real elmt_reactant9;
    input Real elmt_r17;
    input Real elmt_product8;
    input Real elmt_r16;
    input Real elmt_product7;
    input Real elmt_r15;
    input Real elmt_r14;
    input Real elmt_reactant6;
    input Real elmt_r13;
    input Real elmt_r12;
    input Real elmt_r11;
    input Real elmt_r10;
    input Real elmt_product1;
    input Real elmt_reactant14;
    input Real elmt_product0;
    input Real elmt_reactant16;
    input Real elmt_reactant17;
    input Real elmt_reactant10;
    input Real elmt_product5;
    input Real elmt_product4;
    input Real elmt_product3;
    input Real elmt_reactant12;
    input Real elmt_product2;
    input Real elmt_product15;
    input Real elmt_product13;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_MC_conc(unit = "");
    Real elmt_MC_amount(unit = "");
    Real elmt_MC(unit = "") "Myc";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RE_conc(unit = "");
    Real elmt_RE_amount(unit = "");
    Real elmt_RE(unit = "") "Rb-E2F complex";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_EF_conc(unit = "");
    Real elmt_EF_amount(unit = "");
    Real elmt_EF(unit = "") "E2F";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CD_conc(unit = "");
    Real elmt_CD_amount(unit = "");
    Real elmt_CD(unit = "") "CycD";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CE_conc(unit = "");
    Real elmt_CE_amount(unit = "");
    Real elmt_CE(unit = "") "CycE";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RB_conc(unit = "");
    Real elmt_RB_amount(unit = "");
    Real elmt_RB(unit = "") "Rb";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RP_conc(unit = "");
    Real elmt_RP_amount(unit = "");
    Real elmt_RP(unit = "") "phosphorylated Rb";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_MC_conc = 0.0;
        elmt_RE_conc = 0.55;
        elmt_EF_conc = 0.0;
        elmt_CD_conc = 0.0;
        elmt_CE_conc = 0.0;
        elmt_RB_conc = 0.0;
        elmt_RP_conc = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_MC = elmt_MC_conc;
        elmt_RE = elmt_RE_conc;
        elmt_EF = elmt_EF_conc;
        elmt_CD = elmt_CD_conc;
        elmt_CE = elmt_CE_conc;
        elmt_RB = elmt_RB_conc;
        elmt_RP = elmt_RP_conc;
        der(elmt_MC_amount) = ((elmt_r1 * elmt_product0) + (- (elmt_r11 * elmt_reactant16)));
        der(elmt_RE_amount) = ((- (elmt_r7 * elmt_reactant6)) + (- (elmt_r17 * elmt_reactant22)) + (elmt_r8 * elmt_product11));
        der(elmt_EF_amount) = ((elmt_r7 * elmt_product7) + (- (elmt_r8 * elmt_reactant9)) + (elmt_r3 * elmt_product2) + (- (elmt_r12 * elmt_reactant17)));
        der(elmt_CD_amount) = ((elmt_r5 * elmt_product4) + (- (elmt_r14 * elmt_reactant19)) + (elmt_r2 * elmt_product1));
        der(elmt_CE_amount) = ((- (elmt_r13 * elmt_reactant18)) + (elmt_r4 * elmt_product3));
        der(elmt_RB_amount) = ((- (elmt_r8 * elmt_reactant10)) + (- (elmt_r15 * elmt_reactant20)) + (elmt_r6 * elmt_product5) + (elmt_r10 * elmt_product15) + (- (elmt_r9 * elmt_reactant12)));
        der(elmt_RP_amount) = ((elmt_r7 * elmt_product8) + (- (elmt_r16 * elmt_reactant21)) + (- (elmt_r10 * elmt_reactant14)) + (elmt_r9 * elmt_product13));

    algorithm
        elmt_MC_conc := elmt_MC_amount / elmt_cell;
        elmt_RE_conc := elmt_RE_amount / elmt_cell;
        elmt_EF_conc := elmt_EF_amount / elmt_cell;
        elmt_CD_conc := elmt_CD_amount / elmt_cell;
        elmt_CE_conc := elmt_CE_amount / elmt_cell;
        elmt_RB_conc := elmt_RB_amount / elmt_cell;
        elmt_RP_conc := elmt_RP_amount / elmt_cell;
end Class_elmt_cell;
