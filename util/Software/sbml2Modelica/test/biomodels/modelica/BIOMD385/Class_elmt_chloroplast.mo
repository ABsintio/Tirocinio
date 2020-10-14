within BIOMD385;
class Class_elmt_chloroplast

    input Real elmt_PGA_prod_Vo;
    input Real elmt_reactant2;
    input Real elmt_Nt;
    input Real elmt_product7;
    input Real elmt_reactant6;
    input Real elmt_PGA_prod_Vc;
    input Real elmt_product11;
    input Real elmt_NADPH_prod;
    input Real elmt_reactant8;
    input Real elmt_PGA_cons;
    input Real elmt_product3;

    Real elmt_chloroplast(unit = "") "chloroplast";
    Real elmt_O2_conc(unit = "");
    Real elmt_O2_amount(unit = "");
    Real elmt_O2(unit = "") "O2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_CO2_conc(unit = "");
    Real elmt_CO2_amount(unit = "");
    Real elmt_CO2(unit = "") "CO2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_NADP_conc(unit = "");
    Real elmt_NADP_amount(unit = "");
    Real elmt_NADP(unit = "") "NADP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_NADPH_conc(unit = "");
    Real elmt_NADPH_amount(unit = "");
    Real elmt_NADPH(unit = "") "NADPH";
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
    Real elmt_PGA_conc(unit = "");
    Real elmt_PGA_amount(unit = "");
    Real elmt_PGA(unit = "") "PGA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_chloroplast = 1.0;
        elmt_O2_conc = 21.0;
        elmt_CO2_conc = 35.0;
        elmt_NADPH_conc = 0.21;
        elmt_RuBP_conc = 2.0;
        elmt_PGA_conc = 2.4;


    equation
        assert(elmt_chloroplast >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_chloroplast) = 0;
        elmt_O2 = elmt_O2_conc;
        elmt_CO2 = elmt_CO2_conc;
        elmt_NADP = elmt_NADP_conc;
        elmt_NADPH = elmt_NADPH_conc;
        elmt_RuBP = elmt_RuBP_conc;
        elmt_PGA = elmt_PGA_conc;
        der(elmt_O2_amount) = 0;
        der(elmt_CO2_amount) = 0;
        elmt_NADP_amount = (elmt_Nt - elmt_NADPH) * elmt_chloroplast;
        der(elmt_RuBP_amount) = 0;
        der(elmt_NADPH_amount) = ((- (elmt_PGA_prod_Vo * elmt_reactant6)) + (- (elmt_PGA_prod_Vc * elmt_reactant2)) + (elmt_NADPH_prod * elmt_product11));
        der(elmt_PGA_amount) = ((elmt_PGA_prod_Vo * elmt_product7) + (elmt_PGA_prod_Vc * elmt_product3) + (- (elmt_PGA_cons * elmt_reactant8)));

    algorithm
        elmt_O2_conc := elmt_O2_amount / elmt_chloroplast;
        elmt_CO2_conc := elmt_CO2_amount / elmt_chloroplast;
        elmt_NADP_conc := elmt_NADP_amount / elmt_chloroplast;
        elmt_NADPH_conc := elmt_NADPH_amount / elmt_chloroplast;
        elmt_RuBP_conc := elmt_RuBP_amount / elmt_chloroplast;
        elmt_PGA_conc := elmt_PGA_amount / elmt_chloroplast;
end Class_elmt_chloroplast;
