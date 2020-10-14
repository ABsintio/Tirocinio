within BIOMD272;
class Class_elmt_cell

    input Real elmt_product9;
    input Real elmt_reaction_7;
    input Real elmt_reaction_8;
    input Real elmt_reaction_5;
    input Real elmt_reaction_6;
    input Real elmt_reactant14;
    input Real elmt_product13;
    input Real elmt_reactant10;
    input Real elmt_reactant12;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_SAv_EpoRi_conc(unit = "");
    Real elmt_SAv_EpoRi_amount(unit = "");
    Real elmt_SAv_EpoRi(unit = "") "SAv_EpoRi";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_dSAvi_conc(unit = "");
    Real elmt_dSAvi_amount(unit = "");
    Real elmt_dSAvi(unit = "") "dSAvi";

    initial equation
        elmt_cell = 1.0;
        elmt_SAv_EpoRi_conc = 0.0;
        elmt_dSAvi_conc = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_SAv_EpoRi = elmt_SAv_EpoRi_conc;
        elmt_dSAvi = elmt_dSAvi_conc;
        der(elmt_SAv_EpoRi_amount) = ((- (elmt_reaction_7 * elmt_reactant12)) + (- (elmt_reaction_8 * elmt_reactant14)) + (elmt_reaction_5 * elmt_product9) + (- (elmt_reaction_6 * elmt_reactant10)));
        der(elmt_dSAvi_amount) = (elmt_reaction_7 * elmt_product13);

    algorithm
        elmt_SAv_EpoRi_conc := elmt_SAv_EpoRi_amount / elmt_cell;
        elmt_dSAvi_conc := elmt_dSAvi_amount / elmt_cell;
end Class_elmt_cell;
