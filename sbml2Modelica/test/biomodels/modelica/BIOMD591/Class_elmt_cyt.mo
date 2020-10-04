within BIOMD591;
class Class_elmt_cyt

    input Real elmt_reaction7;
    input Real elmt_reactant2;
    input Real elmt_reaction6;
    input Real elmt_reaction9;
    input Real elmt_reaction8;
    input Real elmt_reactant3;
    input Real elmt_product6;
    input Real elmt_reaction3;
    input Real elmt_reactant5;
    input Real elmt_reaction2;
    input Real elmt_ratio;
    input Real elmt_reaction5;
    input Real elmt_reaction4;
    input Real elmt_reactant7;
    input Real elmt_product1;
    input Real elmt_reaction1;
    input Real elmt_product4;
    input Real elmt_reactant11;
    input Real elmt_reactant0;
    input Real elmt_product16;
    input Real elmt_reactant9;
    input Real elmt_product14;
    input Real elmt_product19;
    input Real elmt_product17;

    Real elmt_cyt(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_STAT5B_conc(unit = "");
    Real elmt_STAT5B_amount(unit = "");
    Real elmt_STAT5B(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_pApB_conc(unit = "");
    Real elmt_pApB_amount(unit = "");
    Real elmt_pApB(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_STAT5A_conc(unit = "");
    Real elmt_STAT5A_amount(unit = "");
    Real elmt_STAT5A(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_pBpB_conc(unit = "");
    Real elmt_pBpB_amount(unit = "");
    Real elmt_pBpB(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_pApA_conc(unit = "");
    Real elmt_pApA_amount(unit = "");
    Real elmt_pApA(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cyt = 1.4;
        elmt_STAT5B_conc = (207.6 - (207.6 * elmt_ratio));
        elmt_pApB_conc = 0.0;
        elmt_STAT5A_conc = (207.6 * elmt_ratio);
        elmt_pBpB_conc = 0.0;
        elmt_pApA_conc = 0.0;


    equation
        assert(elmt_cyt >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cyt) = 0;
        elmt_STAT5B = elmt_STAT5B_conc;
        elmt_pApB = elmt_pApB_conc;
        elmt_STAT5A = elmt_STAT5A_conc;
        elmt_pBpB = elmt_pBpB_conc;
        elmt_pApA = elmt_pApA_conc;
        der(elmt_STAT5B_amount) = ((elmt_reaction9 * elmt_product19) + (elmt_reaction8 * elmt_product17) + (- (elmt_reaction3 * elmt_reactant5)) + (- (elmt_reaction2 * elmt_reactant3)));
        der(elmt_pApB_amount) = ((elmt_reaction2 * elmt_product4) + (- (elmt_reaction5 * elmt_reactant9)));
        der(elmt_STAT5A_amount) = ((elmt_reaction7 * elmt_product14) + (elmt_reaction8 * elmt_product16) + (- (elmt_reaction2 * elmt_reactant2)) + (- (elmt_reaction1 * elmt_reactant0)));
        der(elmt_pBpB_amount) = ((- (elmt_reaction6 * elmt_reactant11)) + (elmt_reaction3 * elmt_product6));
        der(elmt_pApA_amount) = ((- (elmt_reaction4 * elmt_reactant7)) + (elmt_reaction1 * elmt_product1));

    algorithm
        elmt_STAT5B_conc := elmt_STAT5B_amount / elmt_cyt;
        elmt_pApB_conc := elmt_pApB_amount / elmt_cyt;
        elmt_STAT5A_conc := elmt_STAT5A_amount / elmt_cyt;
        elmt_pBpB_conc := elmt_pBpB_amount / elmt_cyt;
        elmt_pApA_conc := elmt_pApA_amount / elmt_cyt;
end Class_elmt_cyt;
