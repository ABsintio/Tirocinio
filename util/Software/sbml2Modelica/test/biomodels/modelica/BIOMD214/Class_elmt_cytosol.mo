within BIOMD214;
class Class_elmt_cytosol

    input Real elmt_product12;
    input Real elmt_E1Wdeg;
    input Real elmt_reactant25;
    input Real elmt_reactant27;
    input Real elmt_reactant28;
    input Real elmt_reactant24;
    input Real elmt_E2Wdeg;
    input Real elmt_product26;
    input Real elmt_PFptrl;
    input Real elmt_E1Ftrl;
    input Real elmt_reactant4;
    input Real elmt_reactant3;
    input Real elmt_E1Fptrl;
    input Real elmt_product23;
    input Real elmt_reactant6;
    input Real elmt_reactant7;
    input Real elmt_reactant14;
    input Real elmt_E2Fpdeg;
    input Real elmt_reactant16;
    input Real elmt_reactant17;
    input Real elmt_E2Fdeg;
    input Real elmt_product5;
    input Real elmt_PWtrl;
    input Real elmt_reactant13;
    input Real elmt_E2Wtrl;
    input Real elmt_product2;
    input Real elmt_E2Ftrl;
    input Real elmt_PFtrl;
    input Real elmt_E1Wtrl;
    input Real elmt_E1Fdeg;
    input Real elmt_product15;
    input Real elmt_E1Fpdeg;
    input Real elmt_E2Fptrl;

    Real elmt_cytosol(unit = "") "cytosol";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E1Fp_conc(unit = "");
    Real elmt_E1Fp_amount(unit = "");
    Real elmt_E1Fp(unit = "") "l-Frq_1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E2Fp_conc(unit = "");
    Real elmt_E2Fp_amount(unit = "");
    Real elmt_E2Fp(unit = "") "l-Frq_2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E1W_conc(unit = "");
    Real elmt_E1W_amount(unit = "");
    Real elmt_E1W(unit = "") "WC-1_1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E2F_conc(unit = "");
    Real elmt_E2F_amount(unit = "");
    Real elmt_E2F(unit = "") "s-Frq_2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E1F_conc(unit = "");
    Real elmt_E1F_amount(unit = "");
    Real elmt_E1F(unit = "") "s-Frq_1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E2W_conc(unit = "");
    Real elmt_E2W_amount(unit = "");
    Real elmt_E2W(unit = "") "WC-1_2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cytosol = 1.0;
        elmt_E1Fp_conc = 0.45583;
        elmt_E2Fp_conc = 0.09872;
        elmt_E1W_conc = 5.84748;
        elmt_E2F_conc = 0.10647;
        elmt_E1F_conc = 0.43076;
        elmt_E2W_conc = 5.70265;


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_E1Fp = elmt_E1Fp_conc;
        elmt_E2Fp = elmt_E2Fp_conc;
        elmt_E1W = elmt_E1W_conc;
        elmt_E2F = elmt_E2F_conc;
        elmt_E1F = elmt_E1F_conc;
        elmt_E2W = elmt_E2W_conc;
        der(elmt_E1Fp_amount) = ((elmt_E1Fptrl * elmt_product23) + (- (elmt_E1Fpdeg * elmt_reactant24)) + (- (elmt_E2Fptrl * elmt_reactant25)));
        der(elmt_E2Fp_amount) = ((- (elmt_PFptrl * elmt_reactant28)) + (- (elmt_E2Fpdeg * elmt_reactant27)) + (elmt_E2Fptrl * elmt_product26));
        der(elmt_E1W_amount) = ((- (elmt_E1Wdeg * elmt_reactant13)) + (- (elmt_E2Wtrl * elmt_reactant14)) + (elmt_E1Wtrl * elmt_product12));
        der(elmt_E2F_amount) = ((- (elmt_E2Fdeg * elmt_reactant6)) + (elmt_E2Ftrl * elmt_product5) + (- (elmt_PFtrl * elmt_reactant7)));
        der(elmt_E1F_amount) = ((elmt_E1Ftrl * elmt_product2) + (- (elmt_E2Ftrl * elmt_reactant4)) + (- (elmt_E1Fdeg * elmt_reactant3)));
        der(elmt_E2W_amount) = ((- (elmt_E2Wdeg * elmt_reactant16)) + (- (elmt_PWtrl * elmt_reactant17)) + (elmt_E2Wtrl * elmt_product15));

    algorithm
        elmt_E1Fp_conc := elmt_E1Fp_amount / elmt_cytosol;
        elmt_E2Fp_conc := elmt_E2Fp_amount / elmt_cytosol;
        elmt_E1W_conc := elmt_E1W_amount / elmt_cytosol;
        elmt_E2F_conc := elmt_E2F_amount / elmt_cytosol;
        elmt_E1F_conc := elmt_E1F_amount / elmt_cytosol;
        elmt_E2W_conc := elmt_E2W_amount / elmt_cytosol;
end Class_elmt_cytosol;
