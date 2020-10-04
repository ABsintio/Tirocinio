within BIOMD388;
class Class_elmt_chloroplast

    input Real elmt_reactant2;
    input Real elmt_product7;
    input Real elmt_reactant6;
    input Real elmt_PGA2sink;
    input Real elmt_product10;
    input Real elmt_RuBisCO;
    input Real elmt_GAP2Ru5P;
    input Real elmt_product1;
    input Real elmt_reactant15;
    input Real elmt_reactant16;
    input Real elmt_product5;
    input Real elmt_GAP_DH;
    input Real elmt_reactant11;
    input Real elmt_reactant0;
    input Real elmt_GAP2sink;
    input Real elmt_Ru5P_K;
    input Real elmt_PGA_K;
    input Real elmt_reactant9;
    input Real elmt_product13;

    Real elmt_chloroplast(unit = "") "chloroplast";
    Real elmt_GAP_conc(unit = "");
    Real elmt_GAP_amount(unit = "");
    Real elmt_GAP(unit = "") "GAP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_DPGA_conc(unit = "");
    Real elmt_DPGA_amount(unit = "");
    Real elmt_DPGA(unit = "") "DPGA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Ru5P_conc(unit = "");
    Real elmt_Ru5P_amount(unit = "");
    Real elmt_Ru5P(unit = "") "Ru5P";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_ADP_conc(unit = "");
    Real elmt_ADP_amount(unit = "");
    Real elmt_ADP(unit = "") "ADP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_ATP_conc(unit = "");
    Real elmt_ATP_amount(unit = "");
    Real elmt_ATP(unit = "") "ATP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_RuBP_conc(unit = "");
    Real elmt_RuBP_amount(unit = "");
    Real elmt_RuBP(unit = "") "RuBP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Pi_conc(unit = "");
    Real elmt_Pi_amount(unit = "");
    Real elmt_Pi(unit = "") "Pi";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_PGA_conc(unit = "");
    Real elmt_PGA_amount(unit = "");
    Real elmt_PGA(unit = "") "PGA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_chloroplast = 1.0;
        elmt_GAP_conc = 0.02;
        elmt_DPGA_conc = 0.0011;
        elmt_Ru5P_conc = 0.0501;
        elmt_ADP_conc = 0.82;
        elmt_ATP_conc = 0.68;
        elmt_RuBP_conc = 2.0;
        elmt_PGA_conc = 2.4;


    equation
        assert(elmt_chloroplast >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_chloroplast) = 0;
        elmt_GAP = elmt_GAP_conc;
        elmt_DPGA = elmt_DPGA_conc;
        elmt_Ru5P = elmt_Ru5P_conc;
        elmt_ADP = elmt_ADP_conc;
        elmt_ATP = elmt_ATP_conc;
        elmt_RuBP = elmt_RuBP_conc;
        elmt_Pi = elmt_Pi_conc;
        elmt_PGA = elmt_PGA_conc;
        der(elmt_ADP_amount) = 0;
        der(elmt_ATP_amount) = 0;
        elmt_Pi_amount = ((15.0 - (2.0 * (elmt_RuBP + elmt_DPGA + elmt_ATP))) - (elmt_PGA + elmt_GAP + elmt_Ru5P + elmt_ADP)) * elmt_chloroplast;
        der(elmt_GAP_amount) = ((- (elmt_GAP2sink * elmt_reactant16)) + (- (elmt_GAP2Ru5P * elmt_reactant9)) + (elmt_GAP_DH * elmt_product7));
        der(elmt_DPGA_amount) = ((elmt_PGA_K * elmt_product5) + (- (elmt_GAP_DH * elmt_reactant6)));
        der(elmt_Ru5P_amount) = ((- (elmt_Ru5P_K * elmt_reactant11)) + (elmt_GAP2Ru5P * elmt_product10));
        der(elmt_RuBP_amount) = ((elmt_Ru5P_K * elmt_product13) + (- (elmt_RuBisCO * elmt_reactant0)));
        der(elmt_PGA_amount) = ((- (elmt_PGA_K * elmt_reactant2)) + (- (elmt_PGA2sink * elmt_reactant15)) + (elmt_RuBisCO * elmt_product1));

    algorithm
        elmt_GAP_conc := elmt_GAP_amount / elmt_chloroplast;
        elmt_DPGA_conc := elmt_DPGA_amount / elmt_chloroplast;
        elmt_Ru5P_conc := elmt_Ru5P_amount / elmt_chloroplast;
        elmt_ADP_conc := elmt_ADP_amount / elmt_chloroplast;
        elmt_ATP_conc := elmt_ATP_amount / elmt_chloroplast;
        elmt_RuBP_conc := elmt_RuBP_amount / elmt_chloroplast;
        elmt_Pi_conc := elmt_Pi_amount / elmt_chloroplast;
        elmt_PGA_conc := elmt_PGA_amount / elmt_chloroplast;
end Class_elmt_chloroplast;
