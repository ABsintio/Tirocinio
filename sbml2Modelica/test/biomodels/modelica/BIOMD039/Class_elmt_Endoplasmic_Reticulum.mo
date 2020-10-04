within BIOMD039;
class Class_elmt_Endoplasmic_Reticulum

    input Real elmt_reactant2;
    input Real elmt_v5;
    input Real elmt_v3;
    input Real elmt_v1;
    input Real elmt_product5;
    input Real elmt_reactant0;

    Real elmt_Endoplasmic_Reticulum(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_CaER_conc(unit = "");
    Real elmt_CaER_amount(unit = "");
    Real elmt_CaER(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_Endoplasmic_Reticulum = 1.0;
        elmt_CaER_conc = 0.76;


    equation
        assert(elmt_Endoplasmic_Reticulum >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Endoplasmic_Reticulum) = 0;
        elmt_CaER = elmt_CaER_conc;
        der(elmt_CaER_amount) = ((elmt_v5 * elmt_product5) + (- (elmt_v3 * elmt_reactant2)) + (- (elmt_v1 * elmt_reactant0)));

    algorithm
        elmt_CaER_conc := elmt_CaER_amount / elmt_Endoplasmic_Reticulum;
end Class_elmt_Endoplasmic_Reticulum;
