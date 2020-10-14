within BIOMD253;
class Class_elmt_cell

    input Real elmt_reactant1;
    input Real elmt_product8;
    input Real elmt_PFK;
    input Real elmt_HK;
    input Real elmt_reactant4;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_ATPase;
    input Real elmt_reactant9;
    input Real elmt_product5;
    input Real elmt_lower;
    input Real elmt_product2;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Fru16P2_conc(unit = "");
    Real elmt_Fru16P2_amount(unit = "");
    Real elmt_Fru16P2(unit = "") "fructose 1,6-bisphosphate";
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
    Real elmt_ADP_conc(unit = "");
    Real elmt_ADP_amount(unit = "");
    Real elmt_ADP(unit = "") "ADP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Glc_conc(unit = "");
    Real elmt_Glc_amount(unit = "");
    Real elmt_Glc(unit = "") "glucose";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_HMP_conc(unit = "");
    Real elmt_HMP_amount(unit = "");
    Real elmt_HMP(unit = "") "hexose monophosphate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Tre6P_conc(unit = "");
    Real elmt_Tre6P_amount(unit = "");
    Real elmt_Tre6P(unit = "") "trehalose 6-phosphate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_Fru16P2_conc = 1.0;
        elmt_ATP_conc = 4.0;
        elmt_Glc_conc = 10.0;
        elmt_HMP_conc = 0.1;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_Fru16P2 = elmt_Fru16P2_conc;
        elmt_ATP = elmt_ATP_conc;
        elmt_ADP = elmt_ADP_conc;
        elmt_Glc = elmt_Glc_conc;
        elmt_HMP = elmt_HMP_conc;
        elmt_Tre6P = elmt_Tre6P_conc;
        elmt_ADP_amount = (5.0 - elmt_ATP) * elmt_cell;
        der(elmt_Glc_amount) = 0;
        elmt_Tre6P_amount = Functions.pow(elmt_HMP, 2.0) * elmt_cell;
        der(elmt_Fru16P2_amount) = ((elmt_PFK * elmt_product5) + (- (elmt_lower * elmt_reactant6)));
        der(elmt_ATP_amount) = ((- (elmt_HK * elmt_reactant1)) + (- (elmt_PFK * elmt_reactant4)) + (- (elmt_ATPase * elmt_reactant9)) + (elmt_lower * elmt_product8));
        der(elmt_HMP_amount) = ((elmt_HK * elmt_product2) + (- (elmt_PFK * elmt_reactant3)));

    algorithm
        elmt_Fru16P2_conc := elmt_Fru16P2_amount / elmt_cell;
        elmt_ATP_conc := elmt_ATP_amount / elmt_cell;
        elmt_ADP_conc := elmt_ADP_amount / elmt_cell;
        elmt_Glc_conc := elmt_Glc_amount / elmt_cell;
        elmt_HMP_conc := elmt_HMP_amount / elmt_cell;
        elmt_Tre6P_conc := elmt_Tre6P_amount / elmt_cell;
end Class_elmt_cell;
