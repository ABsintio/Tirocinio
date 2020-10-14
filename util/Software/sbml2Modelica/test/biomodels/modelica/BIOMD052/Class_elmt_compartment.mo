within BIOMD052;
class Class_elmt_compartment

    input Real elmt_product11;
    input Real elmt_reactant26;
    input Real elmt_reactant21;
    input Real elmt_reactant23;
    input Real elmt_reactant24;
    input Real elmt__J3;
    input Real elmt__J2;
    input Real elmt__J1;
    input Real elmt_reactant18;
    input Real elmt_product27;
    input Real elmt__J9;
    input Real elmt_product25;
    input Real elmt__J8;
    input Real elmt__J7;
    input Real elmt__J6;
    input Real elmt__J5;
    input Real elmt__J4;
    input Real elmt_product9;
    input Real elmt_reactant2;
    input Real elmt_product8;
    input Real elmt_reactant4;
    input Real elmt__J11;
    input Real elmt_product6;
    input Real elmt__J10;
    input Real elmt_product22;
    input Real elmt_product20;
    input Real elmt_reactant7;
    input Real elmt_product1;
    input Real elmt_reactant15;
    input Real elmt_reactant16;
    input Real elmt_product5;
    input Real elmt_reactant10;
    input Real elmt_reactant12;
    input Real elmt_product3;
    input Real elmt_reactant0;
    input Real elmt_product14;
    input Real elmt_product13;
    input Real elmt_product19;
    input Real elmt_product17;

    Real elmt_compartment(unit = "") "";
    Real elmt_Amadori_conc(unit = "");
    Real elmt_Amadori_amount(unit = "");
    Real elmt_Amadori(unit = "") "";
    Real elmt_Melanoidin_conc(unit = "");
    Real elmt_Melanoidin_amount(unit = "");
    Real elmt_Melanoidin(unit = "") "";
    Real elmt_Formic_acid_conc(unit = "");
    Real elmt_Formic_acid_amount(unit = "");
    Real elmt_Formic_acid(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_AMP_conc(unit = "");
    Real elmt_AMP_amount(unit = "");
    Real elmt_AMP(unit = "") "";
    Real elmt_C5_conc(unit = "");
    Real elmt_C5_amount(unit = "");
    Real elmt_C5(unit = "") "";
    Real elmt_Triose_conc(unit = "");
    Real elmt_Triose_amount(unit = "");
    Real elmt_Triose(unit = "") "";
    Real elmt_Glu_conc(unit = "");
    Real elmt_Glu_amount(unit = "");
    Real elmt_Glu(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Cn_conc(unit = "");
    Real elmt_Cn_amount(unit = "");
    Real elmt_Cn(unit = "") "";
    Real elmt_lys_R_conc(unit = "");
    Real elmt_lys_R_amount(unit = "");
    Real elmt_lys_R(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Fru_conc(unit = "");
    Real elmt_Fru_amount(unit = "");
    Real elmt_Fru(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Acetic_acid_conc(unit = "");
    Real elmt_Acetic_acid_amount(unit = "");
    Real elmt_Acetic_acid(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_Amadori_conc = 0.0;
        elmt_Melanoidin_conc = 0.0;
        elmt_Formic_acid_conc = 0.0;
        elmt_AMP_conc = 0.0;
        elmt_C5_conc = 0.0;
        elmt_Triose_conc = 0.0;
        elmt_Glu_conc = 160.0;
        elmt_Cn_conc = 0.0;
        elmt_lys_R_conc = 15.0;
        elmt_Fru_conc = 0.0;
        elmt_Acetic_acid_conc = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_Amadori = elmt_Amadori_conc;
        elmt_Melanoidin = elmt_Melanoidin_conc;
        elmt_Formic_acid = elmt_Formic_acid_conc;
        elmt_AMP = elmt_AMP_conc;
        elmt_C5 = elmt_C5_conc;
        elmt_Triose = elmt_Triose_conc;
        elmt_Glu = elmt_Glu_conc;
        elmt_Cn = elmt_Cn_conc;
        elmt_lys_R = elmt_lys_R_conc;
        elmt_Fru = elmt_Fru_conc;
        elmt_Acetic_acid = elmt_Acetic_acid_conc;
        der(elmt_Amadori_amount) = ((- (elmt__J9 * elmt_reactant21)) + (- (elmt__J8 * elmt_reactant18)) + (elmt__J7 * elmt_product17));
        der(elmt_Melanoidin_amount) = (elmt__J11 * elmt_product27);
        der(elmt_Formic_acid_amount) = ((elmt__J3 * elmt_product6) + (elmt__J4 * elmt_product9));
        der(elmt_AMP_amount) = ((- (elmt__J11 * elmt_reactant26)) + (elmt__J10 * elmt_product25) + (elmt__J9 * elmt_product22));
        der(elmt_C5_amount) = ((elmt__J3 * elmt_product5) + (elmt__J4 * elmt_product8));
        der(elmt_Triose_amount) = ((- (elmt__J6 * elmt_reactant12)) + (elmt__J5 * elmt_product11));
        der(elmt_Glu_amount) = ((- (elmt__J3 * elmt_reactant4)) + (elmt__J2 * elmt_product3) + (- (elmt__J1 * elmt_reactant0)) + (- (elmt__J7 * elmt_reactant16)));
        der(elmt_Cn_amount) = (elmt__J6 * elmt_product13);
        der(elmt_lys_R_amount) = ((- (elmt__J10 * elmt_reactant23)) + (elmt__J8 * elmt_product20) + (- (elmt__J7 * elmt_reactant15)));
        der(elmt_Fru_amount) = ((- (elmt__J2 * elmt_reactant2)) + (elmt__J1 * elmt_product1) + (- (elmt__J10 * elmt_reactant24)) + (- (elmt__J5 * elmt_reactant10)) + (- (elmt__J4 * elmt_reactant7)));
        der(elmt_Acetic_acid_amount) = ((elmt__J8 * elmt_product19) + (elmt__J6 * elmt_product14));

    algorithm
        elmt_Amadori_conc := elmt_Amadori_amount / elmt_compartment;
        elmt_Melanoidin_conc := elmt_Melanoidin_amount / elmt_compartment;
        elmt_Formic_acid_conc := elmt_Formic_acid_amount / elmt_compartment;
        elmt_AMP_conc := elmt_AMP_amount / elmt_compartment;
        elmt_C5_conc := elmt_C5_amount / elmt_compartment;
        elmt_Triose_conc := elmt_Triose_amount / elmt_compartment;
        elmt_Glu_conc := elmt_Glu_amount / elmt_compartment;
        elmt_Cn_conc := elmt_Cn_amount / elmt_compartment;
        elmt_lys_R_conc := elmt_lys_R_amount / elmt_compartment;
        elmt_Fru_conc := elmt_Fru_amount / elmt_compartment;
        elmt_Acetic_acid_conc := elmt_Acetic_acid_amount / elmt_compartment;
end Class_elmt_compartment;
