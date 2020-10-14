within BIOMD272;
class Class_elmt_medium

    input Real elmt_reactant2;
    input Real elmt_product6;
    input Real elmt_product11;
    input Real elmt_reaction_8;
    input Real elmt_reaction_6;
    input Real elmt_reaction_3;
    input Real elmt_reaction_4;
    input Real elmt_product15;

    Real elmt_medium(unit = "") "medium";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_SAv_conc(unit = "");
    Real elmt_SAv_amount(unit = "");
    Real elmt_SAv(unit = "") "SAv";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_dSAve_conc(unit = "");
    Real elmt_dSAve_amount(unit = "");
    Real elmt_dSAve(unit = "") "dSAve";

    initial equation
        elmt_medium = 1.0;
        elmt_SAv_conc = 999.293;
        elmt_dSAve_conc = 0.0;


    equation
        assert(elmt_medium >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_medium) = 0;
        elmt_SAv = elmt_SAv_conc;
        elmt_dSAve = elmt_dSAve_conc;
        der(elmt_SAv_amount) = ((elmt_reaction_6 * elmt_product11) + (- (elmt_reaction_3 * elmt_reactant2)) + (elmt_reaction_4 * elmt_product6));
        der(elmt_dSAve_amount) = (elmt_reaction_8 * elmt_product15);

    algorithm
        elmt_SAv_conc := elmt_SAv_amount / elmt_medium;
        elmt_dSAve_conc := elmt_dSAve_amount / elmt_medium;
end Class_elmt_medium;
