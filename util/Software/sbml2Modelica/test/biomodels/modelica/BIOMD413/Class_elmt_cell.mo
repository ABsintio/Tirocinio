within BIOMD413;
class Class_elmt_cell

    input Real elmt_auxin_TIR1_VENUSdissociation;
    input Real elmt_product11;
    input Real elmt_auxindecay;
    input Real elmt_product10;
    input Real elmt_auxin_TIR1_VENUSassociation;
    input Real elmt_auxinproduction;
    input Real elmt_reactant9;
    input Real elmt_VENUSproduction;
    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_auxin_TIR1dissociation;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_auxin_TIR1_VENUSdissociationleadingtoubiquitination;
    input Real elmt_reactant7;
    input Real elmt_reactant15;
    input Real elmt_reactant17;
    input Real elmt_product5;
    input Real elmt_product4;
    input Real elmt_reactant0;
    input Real elmt_reactant12;
    input Real elmt_product2;
    input Real elmt_VENUSphotobleachingdecay;
    input Real elmt_product16;
    input Real elmt_auxin_TIR1association;
    input Real elmt_product14;
    input Real elmt_product13;

    Real elmt_cell(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_VENUS_conc(unit = "");
    Real elmt_VENUS_amount(unit = "");
    Real elmt_VENUS(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_auxin_conc(unit = "");
    Real elmt_auxin_amount(unit = "");
    Real elmt_auxin(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_auxinTIR1VENUS_conc(unit = "");
    Real elmt_auxinTIR1VENUS_amount(unit = "");
    Real elmt_auxinTIR1VENUS(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_auxinTIR1_conc(unit = "");
    Real elmt_auxinTIR1_amount(unit = "");
    Real elmt_auxinTIR1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_TIR1_conc(unit = "");
    Real elmt_TIR1_amount(unit = "");
    Real elmt_TIR1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_VENUS_conc = 40.4;
        elmt_auxin_conc = 7.38;
        elmt_auxinTIR1VENUS_conc = 2.78;
        elmt_auxinTIR1_conc = 0.28;
        elmt_TIR1_conc = 15.4;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_VENUS = elmt_VENUS_conc;
        elmt_auxin = elmt_auxin_conc;
        elmt_auxinTIR1VENUS = elmt_auxinTIR1VENUS_conc;
        elmt_auxinTIR1 = elmt_auxinTIR1_conc;
        elmt_TIR1 = elmt_TIR1_conc;
        der(elmt_VENUS_amount) = ((elmt_auxin_TIR1_VENUSdissociation * elmt_product11) + (- (elmt_VENUSphotobleachingdecay * elmt_reactant17)) + (- (elmt_auxin_TIR1_VENUSassociation * elmt_reactant7)) + (elmt_VENUSproduction * elmt_product16));
        der(elmt_auxin_amount) = ((elmt_auxin_TIR1dissociation * elmt_product4) + (- (elmt_auxindecay * elmt_reactant15)) + (- (elmt_auxin_TIR1association * elmt_reactant0)) + (elmt_auxinproduction * elmt_product14));
        der(elmt_auxinTIR1VENUS_amount) = ((- (elmt_auxin_TIR1_VENUSdissociation * elmt_reactant9)) + (- (elmt_auxin_TIR1_VENUSdissociationleadingtoubiquitination * elmt_reactant12)) + (elmt_auxin_TIR1_VENUSassociation * elmt_product8));
        der(elmt_auxinTIR1_amount) = ((elmt_auxin_TIR1_VENUSdissociation * elmt_product10) + (- (elmt_auxin_TIR1dissociation * elmt_reactant3)) + (elmt_auxin_TIR1_VENUSdissociationleadingtoubiquitination * elmt_product13) + (elmt_auxin_TIR1association * elmt_product2) + (- (elmt_auxin_TIR1_VENUSassociation * elmt_reactant6)));
        der(elmt_TIR1_amount) = ((elmt_auxin_TIR1dissociation * elmt_product5) + (- (elmt_auxin_TIR1association * elmt_reactant1)));

    algorithm
        elmt_VENUS_conc := elmt_VENUS_amount / elmt_cell;
        elmt_auxin_conc := elmt_auxin_amount / elmt_cell;
        elmt_auxinTIR1VENUS_conc := elmt_auxinTIR1VENUS_amount / elmt_cell;
        elmt_auxinTIR1_conc := elmt_auxinTIR1_amount / elmt_cell;
        elmt_TIR1_conc := elmt_TIR1_amount / elmt_cell;
end Class_elmt_cell;
