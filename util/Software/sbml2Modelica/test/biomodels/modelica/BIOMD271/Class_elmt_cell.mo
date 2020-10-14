within BIOMD271;
class Class_elmt_cell

    input Real elmt_product9;
    input Real elmt_reaction_7;
    input Real elmt_reaction_8;
    input Real elmt_reaction_5;
    input Real elmt_reaction_6;
    input Real elmt_reactant15;
    input Real elmt_product14;
    input Real elmt_reactant10;
    input Real elmt_reactant13;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_dEpoi_conc(unit = "");
    Real elmt_dEpoi_amount(unit = "");
    Real elmt_dEpoi(unit = "") "dEpoi";
    Real elmt_Epo_EpoRi_conc(unit = "");
    Real elmt_Epo_EpoRi_amount(unit = "");
    Real elmt_Epo_EpoRi(unit = "") "Epo_EpoRi";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_dEpoi_conc = 0.0;
        elmt_Epo_EpoRi_conc = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_dEpoi = elmt_dEpoi_conc;
        elmt_Epo_EpoRi = elmt_Epo_EpoRi_conc;
        der(elmt_dEpoi_amount) = (elmt_reaction_7 * elmt_product14);
        der(elmt_Epo_EpoRi_amount) = ((- (elmt_reaction_7 * elmt_reactant13)) + (- (elmt_reaction_8 * elmt_reactant15)) + (elmt_reaction_5 * elmt_product9) + (- (elmt_reaction_6 * elmt_reactant10)));

    algorithm
        elmt_dEpoi_conc := elmt_dEpoi_amount / elmt_cell;
        elmt_Epo_EpoRi_conc := elmt_Epo_EpoRi_amount / elmt_cell;
end Class_elmt_cell;
