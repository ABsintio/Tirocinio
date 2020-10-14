within BIOMD117;
class Class_elmt_intracellular_Ca_storepool

    input Real elmt_reactant2;
    input Real elmt_reaction_0000005;
    input Real elmt_reactant6;
    input Real elmt_reaction_0000004;
    input Real elmt_product5;
    input Real elmt_reaction_0000003;

    Real elmt_intracellular_Ca_storepool(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_y_conc(unit = "");
    Real elmt_y_amount(unit = "");
    Real elmt_y(unit = "") "Ca in the InsP3-insensitive pool";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_intracellular_Ca_storepool = 1.0;
        elmt_y_conc = 1.4;


    equation
        assert(elmt_intracellular_Ca_storepool >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_intracellular_Ca_storepool) = 0;
        elmt_y = elmt_y_conc;
        der(elmt_y_amount) = ((- (elmt_reaction_0000005 * elmt_reactant6)) + (elmt_reaction_0000004 * elmt_product5) + (- (elmt_reaction_0000003 * elmt_reactant2)));

    algorithm
        elmt_y_conc := elmt_y_amount / elmt_intracellular_Ca_storepool;
end Class_elmt_intracellular_Ca_storepool;
