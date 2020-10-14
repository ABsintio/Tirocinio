within BIOMD184;
class Class_elmt_ER

    input Real elmt_reactant2;
    input Real elmt_R5;
    input Real elmt_reactant6;
    input Real elmt_R3;
    input Real elmt_R4;
    input Real elmt_product5;

    Real elmt_ER(unit = "") "Endoplasmic Reticulum";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Y_conc(unit = "");
    Real elmt_Y_amount(unit = "");
    Real elmt_Y(unit = "") "Calcium in ER";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_ER = 1.0;
        elmt_Y_conc = 1.5;


    equation
        assert(elmt_ER >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_ER) = 0;
        elmt_Y = elmt_Y_conc;
        der(elmt_Y_amount) = ((- (elmt_R5 * elmt_reactant6)) + (- (elmt_R3 * elmt_reactant2)) + (elmt_R4 * elmt_product5));

    algorithm
        elmt_Y_conc := elmt_Y_amount / elmt_ER;
end Class_elmt_ER;
