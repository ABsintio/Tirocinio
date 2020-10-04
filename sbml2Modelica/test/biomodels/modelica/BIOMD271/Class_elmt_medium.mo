within BIOMD271;
class Class_elmt_medium

    input Real elmt_reactant2;
    input Real elmt_product6;
    input Real elmt_product11;
    input Real elmt_reaction_8;
    input Real elmt_reaction_6;
    input Real elmt_reaction_3;
    input Real elmt_product16;
    input Real elmt_reaction_4;

    Real elmt_medium(unit = "") "medium";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Epo_conc(unit = "");
    Real elmt_Epo_amount(unit = "");
    Real elmt_Epo(unit = "") "Epo";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_dEpoe_conc(unit = "");
    Real elmt_dEpoe_amount(unit = "");
    Real elmt_dEpoe(unit = "") "dEpoe";

    initial equation
        elmt_medium = 1.0;
        elmt_Epo_conc = 2030.19;
        elmt_dEpoe_conc = 0.0;


    equation
        assert(elmt_medium >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_medium) = 0;
        elmt_Epo = elmt_Epo_conc;
        elmt_dEpoe = elmt_dEpoe_conc;
        der(elmt_Epo_amount) = ((elmt_reaction_6 * elmt_product11) + (- (elmt_reaction_3 * elmt_reactant2)) + (elmt_reaction_4 * elmt_product6));
        der(elmt_dEpoe_amount) = (elmt_reaction_8 * elmt_product16);

    algorithm
        elmt_Epo_conc := elmt_Epo_amount / elmt_medium;
        elmt_dEpoe_conc := elmt_dEpoe_amount / elmt_medium;
end Class_elmt_medium;
