within BIOMD438;
class Class_elmt_default

    input Real elmt_reactant2;
    input Real elmt_product9;
    input Real elmt_reactant4;
    input Real elmt_product6;
    input Real elmt_reactant5;
    input Real elmt_product11;
    input Real elmt_reactant8;
    input Real elmt_reactant7;
    input Real elmt_re3;
    input Real elmt_product1;
    input Real elmt_reactant14;
    input Real elmt_re2;
    input Real elmt_re1;
    input Real elmt_reactant10;
    input Real elmt_reactant12;
    input Real elmt_reactant0;
    input Real elmt_product3;
    input Real elmt_re14;
    input Real elmt_re8;
    input Real elmt_re5;
    input Real elmt_re4;
    input Real elmt_product15;
    input Real elmt_product13;

    Real elmt_default(unit = "m3.0") "";
    Real elmt_s16_amount(unit = "");
    Real elmt_s16_conc(unit = "");
    Real elmt_s16(unit = "") "pLuxR";
    Real elmt_s4_conc(unit = "");
    Real elmt_s4_amount(unit = "");
    Real elmt_s4(unit = "") "3OC12HSL";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s45_conc(unit = "");
    Real elmt_s45_amount(unit = "");
    Real elmt_s45(unit = "") "GFP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s5_conc(unit = "");
    Real elmt_s5_amount(unit = "");
    Real elmt_s5(unit = "") "sa6_degraded";
    Real elmt_s2_amount(unit = "");
    Real elmt_s2_conc(unit = "");
    Real elmt_s2(unit = "") "mRNA(LasR)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s3_amount(unit = "");
    Real elmt_s3_conc(unit = "");
    Real elmt_s3(unit = "") "sa3_degraded";
    Real elmt_s42_conc(unit = "");
    Real elmt_s42_amount(unit = "");
    Real elmt_s42(unit = "") "LasR/AHL";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s1_amount(unit = "");
    Real elmt_s1_conc(unit = "");
    Real elmt_s1(unit = "") "Ptet-LasR";
    Real elmt_s19_amount(unit = "");
    Real elmt_s19_conc(unit = "");
    Real elmt_s19(unit = "") "LasR";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_s17_conc(unit = "");
    Real elmt_s17_amount(unit = "");
    Real elmt_s17(unit = "") "A pLux";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_default = 1.0;
        elmt_s16_amount = 1.0E-5;
        elmt_s4_conc = 5.0E-6;
        elmt_s45_conc = (0.0 / elmt_default);
        elmt_s5_conc = (0.0 / elmt_default);
        elmt_s2_amount = 0.0;
        elmt_s3_amount = 0.0;
        elmt_s42_conc = (0.0 / elmt_default);
        elmt_s1_amount = 1.0E-5;
        elmt_s19_amount = 1.0E-6;
        elmt_s17_conc = (0.0 / elmt_default);


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;
        elmt_s16 = elmt_s16_amount;
        elmt_s4 = elmt_s4_conc;
        elmt_s45 = elmt_s45_conc;
        elmt_s5 = elmt_s5_conc;
        elmt_s2 = elmt_s2_amount;
        elmt_s3 = elmt_s3_amount;
        elmt_s42 = elmt_s42_conc;
        elmt_s1 = elmt_s1_amount;
        elmt_s19 = elmt_s19_amount;
        elmt_s17 = elmt_s17_conc;
        der(elmt_s16_amount) = (- (elmt_re5 * elmt_reactant8));
        der(elmt_s4_amount) = ((- (elmt_re8 * elmt_reactant10)) + (- (elmt_re4 * elmt_reactant5)));
        der(elmt_s45_amount) = (elmt_re14 * elmt_product15);
        der(elmt_s5_amount) = (elmt_re8 * elmt_product11);
        der(elmt_s2_amount) = ((- (elmt_re2 * elmt_reactant2)) + (elmt_re1 * elmt_product13));
        der(elmt_s3_amount) = (elmt_re3 * elmt_product1);
        der(elmt_s42_amount) = ((- (elmt_re5 * elmt_reactant7)) + (elmt_re4 * elmt_product6));
        der(elmt_s1_amount) = (- (elmt_re1 * elmt_reactant12));
        der(elmt_s19_amount) = ((- (elmt_re4 * elmt_reactant4)) + (- (elmt_re3 * elmt_reactant0)) + (elmt_re2 * elmt_product3));
        der(elmt_s17_amount) = ((elmt_re5 * elmt_product9) + (- (elmt_re14 * elmt_reactant14)));

    algorithm
        elmt_s16_conc := elmt_s16_amount / elmt_default;
        elmt_s4_conc := elmt_s4_amount / elmt_default;
        elmt_s45_conc := elmt_s45_amount / elmt_default;
        elmt_s5_conc := elmt_s5_amount / elmt_default;
        elmt_s2_conc := elmt_s2_amount / elmt_default;
        elmt_s3_conc := elmt_s3_amount / elmt_default;
        elmt_s42_conc := elmt_s42_amount / elmt_default;
        elmt_s1_conc := elmt_s1_amount / elmt_default;
        elmt_s19_conc := elmt_s19_amount / elmt_default;
        elmt_s17_conc := elmt_s17_amount / elmt_default;
end Class_elmt_default;
