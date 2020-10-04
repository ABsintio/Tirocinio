within BIOMD039;
class Class_elmt_Mitochondria

    input Real elmt_product9;
    input Real elmt_v9;
    input Real elmt_v7;
    input Real elmt_reactant6;

    Real elmt_Mitochondria(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_CaM_conc(unit = "");
    Real elmt_CaM_amount(unit = "");
    Real elmt_CaM(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_Mitochondria = 1.0;
        elmt_CaM_conc = 0.29;


    equation
        assert(elmt_Mitochondria >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Mitochondria) = 0;
        elmt_CaM = elmt_CaM_conc;
        der(elmt_CaM_amount) = ((elmt_v9 * elmt_product9) + (- (elmt_v7 * elmt_reactant6)));

    algorithm
        elmt_CaM_conc := elmt_CaM_amount / elmt_Mitochondria;
end Class_elmt_Mitochondria;
