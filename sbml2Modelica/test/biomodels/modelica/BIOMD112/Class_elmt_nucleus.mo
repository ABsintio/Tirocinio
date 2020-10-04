within BIOMD112;
class Class_elmt_nucleus

    input Real elmt_reactant2;
    input Real elmt_reactant4;
    input Real elmt_product12;
    input Real elmt_product10;
    input Real elmt_reactant14;
    input Real elmt_reaction_3;
    input Real elmt_reaction_4;
    input Real elmt_reactant11;
    input Real elmt_reaction_7;
    input Real elmt_reaction_5;
    input Real elmt_reaction_6;
    input Real elmt_product16;
    input Real elmt_product15;
    input Real elmt_product13;

    Real elmt_nucleus(unit = "") "nucleus";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_smad4_nuc_amount(unit = "");
    Real elmt_smad4_nuc_conc(unit = "");
    Real elmt_smad4_nuc(unit = "") "Smad4_nuc";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_R_smad_P_nuc_amount(unit = "");
    Real elmt_R_smad_P_nuc_conc(unit = "");
    Real elmt_R_smad_P_nuc(unit = "") "R-Smad-P_nuc";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_R_smad_P_smad4_nuc_amount(unit = "");
    Real elmt_R_smad_P_smad4_nuc_conc(unit = "");
    Real elmt_R_smad_P_smad4_nuc(unit = "") "R-Smad-P-Smad4_nuc";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Pi_amount(unit = "");
    Real elmt_Pi_conc(unit = "");
    Real elmt_Pi(unit = "") "Pi";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_R_smad_nuc_amount(unit = "");
    Real elmt_R_smad_nuc_conc(unit = "");
    Real elmt_R_smad_nuc(unit = "") "R-Smad_nuc";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_nucleus = 1.0;
        elmt_smad4_nuc_amount = 30000.0;
        elmt_R_smad_P_nuc_amount = 0.0;
        elmt_R_smad_P_smad4_nuc_amount = 0.0;
        elmt_Pi_amount = 0.0;
        elmt_R_smad_nuc_amount = 18000.0;


    equation
        assert(elmt_nucleus >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_nucleus) = 0;
        elmt_smad4_nuc = elmt_smad4_nuc_amount;
        elmt_R_smad_P_nuc = elmt_R_smad_P_nuc_amount;
        elmt_R_smad_P_smad4_nuc = elmt_R_smad_P_smad4_nuc_amount;
        elmt_Pi = elmt_Pi_amount;
        elmt_R_smad_nuc = elmt_R_smad_nuc_amount;
        der(elmt_smad4_nuc_amount) = ((elmt_reaction_6 * elmt_product12) + (- (elmt_reaction_4 * elmt_reactant4)));
        der(elmt_R_smad_P_nuc_amount) = ((- (elmt_reaction_7 * elmt_reactant14)) + (elmt_reaction_6 * elmt_product13));
        der(elmt_R_smad_P_smad4_nuc_amount) = ((- (elmt_reaction_6 * elmt_reactant11)) + (elmt_reaction_3 * elmt_product10));
        der(elmt_Pi_amount) = (elmt_reaction_7 * elmt_product16);
        der(elmt_R_smad_nuc_amount) = ((elmt_reaction_7 * elmt_product15) + (- (elmt_reaction_5 * elmt_reactant2)));

    algorithm
        elmt_smad4_nuc_conc := elmt_smad4_nuc_amount / elmt_nucleus;
        elmt_R_smad_P_nuc_conc := elmt_R_smad_P_nuc_amount / elmt_nucleus;
        elmt_R_smad_P_smad4_nuc_conc := elmt_R_smad_P_smad4_nuc_amount / elmt_nucleus;
        elmt_Pi_conc := elmt_Pi_amount / elmt_nucleus;
        elmt_R_smad_nuc_conc := elmt_R_smad_nuc_amount / elmt_nucleus;
end Class_elmt_nucleus;
