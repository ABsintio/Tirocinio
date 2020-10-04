within BIOMD112;
class Class_elmt_cytoplasm

    input Real elmt_product8;
    input Real elmt_reactant6;
    input Real elmt_reactant7;
    input Real elmt_product1;
    input Real elmt_reaction_3;
    input Real elmt_reaction_4;
    input Real elmt_reaction_1;
    input Real elmt_reaction_2;
    input Real elmt_reactant17;
    input Real elmt_product5;
    input Real elmt_reaction_0;
    input Real elmt_product3;
    input Real elmt_reactant0;
    input Real elmt_reaction_5;
    input Real elmt_reactant9;

    Real elmt_cytoplasm(unit = "") "cytoplasm";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_smad4_cyt_amount(unit = "");
    Real elmt_smad4_cyt_conc(unit = "");
    Real elmt_smad4_cyt(unit = "") "Smad4_cyt";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_receptor_amount(unit = "");
    Real elmt_receptor_conc(unit = "");
    Real elmt_receptor(unit = "") "receptors";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_R_smad_P_cyt_amount(unit = "");
    Real elmt_R_smad_P_cyt_conc(unit = "");
    Real elmt_R_smad_P_cyt(unit = "") "R-Smad-P_cyt";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_R_smad_P_smad4_cyt_amount(unit = "");
    Real elmt_R_smad_P_smad4_cyt_conc(unit = "");
    Real elmt_R_smad_P_smad4_cyt(unit = "") "R-Smad-P-Smad4_cyt";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_R_smad_cyt_amount(unit = "");
    Real elmt_R_smad_cyt_conc(unit = "");
    Real elmt_R_smad_cyt(unit = "") "R-Smad_cyt";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cytoplasm = 1.0;
        elmt_smad4_cyt_amount = 120000.0;
        elmt_receptor_amount = 10000.0;
        elmt_R_smad_P_cyt_amount = 0.0;
        elmt_R_smad_P_smad4_cyt_amount = 0.0;
        elmt_R_smad_cyt_amount = 162000.0;


    equation
        assert(elmt_cytoplasm >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytoplasm) = 0;
        elmt_smad4_cyt = elmt_smad4_cyt_amount;
        elmt_receptor = elmt_receptor_amount;
        elmt_R_smad_P_cyt = elmt_R_smad_P_cyt_amount;
        elmt_R_smad_P_smad4_cyt = elmt_R_smad_P_smad4_cyt_amount;
        elmt_R_smad_cyt = elmt_R_smad_cyt_amount;
        der(elmt_smad4_cyt_amount) = ((elmt_reaction_4 * elmt_product5) + (- (elmt_reaction_2 * elmt_reactant7)));
        der(elmt_receptor_amount) = (- (elmt_reaction_0 * elmt_reactant17));
        der(elmt_R_smad_P_cyt_amount) = ((elmt_reaction_1 * elmt_product1) + (- (elmt_reaction_2 * elmt_reactant6)));
        der(elmt_R_smad_P_smad4_cyt_amount) = ((- (elmt_reaction_3 * elmt_reactant9)) + (elmt_reaction_2 * elmt_product8));
        der(elmt_R_smad_cyt_amount) = ((elmt_reaction_5 * elmt_product3) + (- (elmt_reaction_1 * elmt_reactant0)));

    algorithm
        elmt_smad4_cyt_conc := elmt_smad4_cyt_amount / elmt_cytoplasm;
        elmt_receptor_conc := elmt_receptor_amount / elmt_cytoplasm;
        elmt_R_smad_P_cyt_conc := elmt_R_smad_P_cyt_amount / elmt_cytoplasm;
        elmt_R_smad_P_smad4_cyt_conc := elmt_R_smad_P_smad4_cyt_amount / elmt_cytoplasm;
        elmt_R_smad_cyt_conc := elmt_R_smad_cyt_amount / elmt_cytoplasm;
end Class_elmt_cytoplasm;
