within BIOMD271;
class Class_elmt_cellsurface

    input Real elmt_reactant1;
    input Real elmt_product7;
    input Real elmt_reactant3;
    input Real elmt_product12;
    input Real elmt_reactant5;
    input Real elmt_reactant8;
    input Real elmt_reaction_3;
    input Real elmt_reaction_4;
    input Real elmt_product0;
    input Real elmt_reaction_1;
    input Real elmt_reaction_2;
    input Real elmt_product4;
    input Real elmt_reaction_5;
    input Real elmt_reaction_6;

    Real elmt_cellsurface(unit = "") "cellsurface";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Epo_EpoR_conc(unit = "");
    Real elmt_Epo_EpoR_amount(unit = "");
    Real elmt_Epo_EpoR(unit = "") "Epo_EpoR";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_EpoR_conc(unit = "");
    Real elmt_EpoR_amount(unit = "");
    Real elmt_EpoR(unit = "") "EpoR";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cellsurface = 1.0;
        elmt_Epo_EpoR_conc = 0.0;
        elmt_EpoR_conc = 516.0;


    equation
        assert(elmt_cellsurface >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cellsurface) = 0;
        elmt_Epo_EpoR = elmt_Epo_EpoR_conc;
        elmt_EpoR = elmt_EpoR_conc;
        der(elmt_Epo_EpoR_amount) = ((- (elmt_reaction_5 * elmt_reactant8)) + (elmt_reaction_3 * elmt_product4) + (- (elmt_reaction_4 * elmt_reactant5)));
        der(elmt_EpoR_amount) = ((elmt_reaction_6 * elmt_product12) + (- (elmt_reaction_3 * elmt_reactant3)) + (elmt_reaction_4 * elmt_product7) + (elmt_reaction_1 * elmt_product0) + (- (elmt_reaction_2 * elmt_reactant1)));

    algorithm
        elmt_Epo_EpoR_conc := elmt_Epo_EpoR_amount / elmt_cellsurface;
        elmt_EpoR_conc := elmt_EpoR_amount / elmt_cellsurface;
end Class_elmt_cellsurface;
