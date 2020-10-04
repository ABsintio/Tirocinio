within BIOMD194;
class Reactions

    input Real elmt_Cytoplasm;
    input Real elmt_beta_T;
    input Real elmt_Cdc20_CMad2;
    input Real elmt_OMad2;
    input Real elmt_Mad1_CMad2_OMad2;
    input Real elmt_gamma_T;
    input Real elmt_Cdc20;
    input Real elmt_alpha_T;
    input Real elmt_u;
    input Real elmt_eta_T;
    input Real elmt_Mad1_CMad2;

    Real elmt_R7(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product6 "";
    Real elmt_product5 "";
    Real elmt_R8(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product9 "";
    Real elmt_product8 "";
    Real elmt_reactant7 "";
    Real elmt_R6(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_R7 = (elmt_Cytoplasm * elmt_u * elmt_gamma_T * elmt_Mad1_CMad2_OMad2 * elmt_Cdc20);
        elmt_R8 = (elmt_Cytoplasm * elmt_eta_T * elmt_Cdc20_CMad2);
        elmt_R6 = (elmt_Cytoplasm * ((elmt_u * elmt_alpha_T * elmt_Mad1_CMad2 * elmt_OMad2) - (elmt_beta_T * elmt_Mad1_CMad2_OMad2)));
        der(elmt_product9) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;

end Reactions;
