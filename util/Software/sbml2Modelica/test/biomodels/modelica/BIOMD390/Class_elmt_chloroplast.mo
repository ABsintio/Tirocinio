within BIOMD390;
class Class_elmt_chloroplast

    input Real elmt_ATP_S;
    input Real elmt_reactant20;
    input Real elmt_RuBisCO;
    input Real elmt_product10;
    input Real elmt_PGA_red;
    input Real elmt_reactant19;
    input Real elmt_P_0;
    input Real elmt_product9;
    input Real elmt_TPT;
    input Real elmt_reactant1;
    input Real elmt_TP_red;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_product6;
    input Real elmt_reactant3;
    input Real elmt_product21;
    input Real elmt_reactant8;
    input Real elmt_reactant15;
    input Real elmt_RuBP_reg;
    input Real elmt_product5;
    input Real elmt_reactant11;
    input Real elmt_reactant12;
    input Real elmt_product2;
    input Real elmt_product14;
    input Real elmt_product13;
    input Real elmt_product18;

    Real elmt_chloroplast(unit = "") "chloroplast";
    Real elmt_Ru5P_conc(unit = "");
    Real elmt_Ru5P_amount(unit = "");
    Real elmt_Ru5P(unit = "") "Ru5P";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_totRuBP_conc(unit = "");
    Real elmt_totRuBP_amount(unit = "");
    Real elmt_totRuBP(unit = "") "totRuBP";
    Real elmt_ATP_conc(unit = "");
    Real elmt_ATP_amount(unit = "");
    Real elmt_ATP(unit = "") "ATP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ADP_conc(unit = "");
    Real elmt_ADP_amount(unit = "");
    Real elmt_ADP(unit = "") "ADP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RuBP_conc(unit = "");
    Real elmt_RuBP_amount(unit = "");
    Real elmt_RuBP(unit = "") "RuBP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_TP_conc(unit = "");
    Real elmt_TP_amount(unit = "");
    Real elmt_TP(unit = "") "TP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Pi_conc(unit = "");
    Real elmt_Pi_amount(unit = "");
    Real elmt_Pi(unit = "") "Pi";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_E_RuBisCO_conc(unit = "");
    Real elmt_E_RuBisCO_amount(unit = "");
    Real elmt_E_RuBisCO(unit = "") "RuBisCo";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PGA_conc(unit = "");
    Real elmt_PGA_amount(unit = "");
    Real elmt_PGA(unit = "") "PGA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_chloroplast = 1.0;
        elmt_Ru5P_conc = 0.0500747384155456;
        elmt_ATP_conc = 0.68;
        elmt_ADP_conc = 0.82;
        elmt_RuBP_conc = 2.0;
        elmt_TP_conc = 0.5;
        elmt_Pi_conc = 5.0;
        elmt_E_RuBisCO_conc = 3.56;
        elmt_PGA_conc = 2.4;


    equation
        assert(elmt_chloroplast >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_chloroplast) = 0;
        elmt_Ru5P = elmt_Ru5P_conc;
        elmt_totRuBP = elmt_totRuBP_conc;
        elmt_ATP = elmt_ATP_conc;
        elmt_ADP = elmt_ADP_conc;
        elmt_RuBP = elmt_RuBP_conc;
        elmt_TP = elmt_TP_conc;
        elmt_Pi = elmt_Pi_conc;
        elmt_E_RuBisCO = elmt_E_RuBisCO_conc;
        elmt_PGA = elmt_PGA_conc;
        elmt_totRuBP_amount = ((1.0 / 2.0) * (elmt_P_0 - (elmt_PGA + elmt_TP + elmt_Ru5P + elmt_Pi + elmt_ATP))) * elmt_chloroplast;
        der(elmt_E_RuBisCO_amount) = 0;
        der(elmt_Ru5P_amount) = ((elmt_TP_red * elmt_product9) + (- (elmt_RuBP_reg * elmt_reactant11)));
        der(elmt_ATP_amount) = ((elmt_ATP_S * elmt_product21) + (- (elmt_RuBP_reg * elmt_reactant12)) + (- (elmt_PGA_red * elmt_reactant4)));
        der(elmt_ADP_amount) = ((- (elmt_ATP_S * elmt_reactant19)) + (elmt_RuBP_reg * elmt_product14) + (elmt_PGA_red * elmt_product5));
        der(elmt_RuBP_amount) = ((- (elmt_RuBisCO * elmt_reactant1)) + (elmt_RuBP_reg * elmt_product13));
        der(elmt_TP_amount) = ((- (elmt_TPT * elmt_reactant15)) + (- (elmt_TP_red * elmt_reactant8)) + (elmt_PGA_red * elmt_product6));
        der(elmt_Pi_amount) = ((elmt_TPT * elmt_product18) + (elmt_TP_red * elmt_product10) + (- (elmt_ATP_S * elmt_reactant20)) + (elmt_PGA_red * elmt_product7));
        der(elmt_PGA_amount) = ((elmt_RuBisCO * elmt_product2) + (- (elmt_PGA_red * elmt_reactant3)));

    algorithm
        elmt_Ru5P_conc := elmt_Ru5P_amount / elmt_chloroplast;
        elmt_totRuBP_conc := elmt_totRuBP_amount / elmt_chloroplast;
        elmt_ATP_conc := elmt_ATP_amount / elmt_chloroplast;
        elmt_ADP_conc := elmt_ADP_amount / elmt_chloroplast;
        elmt_RuBP_conc := elmt_RuBP_amount / elmt_chloroplast;
        elmt_TP_conc := elmt_TP_amount / elmt_chloroplast;
        elmt_Pi_conc := elmt_Pi_amount / elmt_chloroplast;
        elmt_E_RuBisCO_conc := elmt_E_RuBisCO_amount / elmt_chloroplast;
        elmt_PGA_conc := elmt_PGA_amount / elmt_chloroplast;
end Class_elmt_chloroplast;
