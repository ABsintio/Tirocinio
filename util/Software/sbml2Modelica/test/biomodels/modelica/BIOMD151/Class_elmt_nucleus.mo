within BIOMD151;
class Class_elmt_nucleus

    input Real elmt_R38;
    input Real elmt_product95;
    input Real elmt_R39;
    input Real elmt_reactant84;
    input Real elmt_R36;
    input Real elmt_R37;
    input Real elmt_product93;
    input Real elmt_R34;
    input Real elmt_R35;
    input Real elmt_product77;
    input Real elmt_R32;
    input Real elmt_reactant81;
    input Real elmt_R33;
    input Real elmt_reactant82;
    input Real elmt_reactant87;
    input Real elmt_product92;
    input Real elmt_product91;
    input Real elmt_reactant46;
    input Real elmt_R20;
    input Real elmt_product85;
    input Real elmt_reactant94;
    input Real elmt_product83;
    input Real elmt_reactant96;
    input Real elmt_R26;
    input Real elmt_product89;
    input Real elmt_reactant90;
    input Real elmt_product88;
    input Real elmt_product65;
    input Real elmt_product86;
    input Real elmt_reactant76;
    input Real elmt_product80;
    input Real elmt_reactant78;
    input Real elmt_reactant79;
    input Real elmt_R31;

    Real elmt_nucleus(unit = "") "nucleus";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x22_conc(unit = "");
    Real elmt_x22_amount(unit = "");
    Real elmt_x22(unit = "") "STAT3N";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x21_conc(unit = "");
    Real elmt_x21_amount(unit = "");
    Real elmt_x21(unit = "") "STAT3Nast";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x20_conc(unit = "");
    Real elmt_x20_amount(unit = "");
    Real elmt_x20(unit = "") "STAT3Nast-STAT3Nast";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x28_conc(unit = "");
    Real elmt_x28_amount(unit = "");
    Real elmt_x28(unit = "") "PP2-STAT3Nast";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x27_conc(unit = "");
    Real elmt_x27_amount(unit = "");
    Real elmt_x27(unit = "") "PP2-STAT3Nast-STAT3Nast";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x26_conc(unit = "");
    Real elmt_x26_amount(unit = "");
    Real elmt_x26(unit = "") "Mrna-SOCS3C";
    Real elmt_x25_conc(unit = "");
    Real elmt_x25_amount(unit = "");
    Real elmt_x25(unit = "") "Mrna-SOCS3N";
    Real elmt_x24_conc(unit = "");
    Real elmt_x24_amount(unit = "");
    Real elmt_x24(unit = "") "STAT3N-STAT3Nast";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_x23_conc(unit = "");
    Real elmt_x23_amount(unit = "");
    Real elmt_x23(unit = "") "PP2";

    initial equation
        elmt_nucleus = 1.0;
        elmt_x22_conc = 0.0;
        elmt_x21_conc = 0.0;
        elmt_x20_conc = 0.0;
        elmt_x28_conc = 0.0;
        elmt_x27_conc = 0.0;
        elmt_x26_conc = 0.0;
        elmt_x25_conc = 0.0;
        elmt_x24_conc = 0.0;
        elmt_x23_conc = 60.0;


    equation
        assert(elmt_nucleus >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_nucleus) = 0;
        elmt_x22 = elmt_x22_conc;
        elmt_x21 = elmt_x21_conc;
        elmt_x20 = elmt_x20_conc;
        elmt_x28 = elmt_x28_conc;
        elmt_x27 = elmt_x27_conc;
        elmt_x26 = elmt_x26_conc;
        elmt_x25 = elmt_x25_conc;
        elmt_x24 = elmt_x24_conc;
        elmt_x23 = elmt_x23_conc;
        der(elmt_x22_amount) = ((elmt_R34 * elmt_product85) + (elmt_R35 * elmt_product89) + (- (elmt_R20 * elmt_reactant46)));
        der(elmt_x21_amount) = ((elmt_R34 * elmt_product86) + (- (elmt_R33 * elmt_reactant82)) + (elmt_R31 * elmt_product77));
        der(elmt_x20_amount) = ((- (elmt_R32 * elmt_reactant79)) + (elmt_R26 * elmt_product65) + (- (elmt_R31 * elmt_reactant76)));
        der(elmt_x28_amount) = ((- (elmt_R35 * elmt_reactant87)) + (elmt_R33 * elmt_product83));
        der(elmt_x27_amount) = ((- (elmt_R36 * elmt_reactant90)) + (elmt_R32 * elmt_product80));
        der(elmt_x26_amount) = ((elmt_R38 * elmt_product95) + (- (elmt_R39 * elmt_reactant96)));
        der(elmt_x25_amount) = ((- (elmt_R38 * elmt_reactant94)) + (elmt_R37 * elmt_product93));
        der(elmt_x24_amount) = ((elmt_R36 * elmt_product91) + (- (elmt_R34 * elmt_reactant84)));
        der(elmt_x23_amount) = ((elmt_R36 * elmt_product92) + (elmt_R35 * elmt_product88) + (- (elmt_R32 * elmt_reactant78)) + (- (elmt_R33 * elmt_reactant81)));

    algorithm
        elmt_x22_conc := elmt_x22_amount / elmt_nucleus;
        elmt_x21_conc := elmt_x21_amount / elmt_nucleus;
        elmt_x20_conc := elmt_x20_amount / elmt_nucleus;
        elmt_x28_conc := elmt_x28_amount / elmt_nucleus;
        elmt_x27_conc := elmt_x27_amount / elmt_nucleus;
        elmt_x26_conc := elmt_x26_amount / elmt_nucleus;
        elmt_x25_conc := elmt_x25_amount / elmt_nucleus;
        elmt_x24_conc := elmt_x24_amount / elmt_nucleus;
        elmt_x23_conc := elmt_x23_amount / elmt_nucleus;
end Class_elmt_nucleus;
