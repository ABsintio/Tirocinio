within BIOMD101;
class Class_elmt_PM

    input Real elmt_v9;
    input Real elmt_v7;
    input Real elmt_product12;
    input Real elmt_v8;
    input Real elmt_v5;
    input Real elmt_v6;
    input Real elmt_reactant18;
    input Real elmt_v3;
    input Real elmt_v4;
    input Real elmt_reactant9;
    input Real elmt_v1;
    input Real elmt_v2;
    input Real elmt_v13;
    input Real elmt_v12;
    input Real elmt_reactant1;
    input Real elmt_reactant4;
    input Real elmt_v11;
    input Real elmt_product7;
    input Real elmt_reactant3;
    input Real elmt_v10;
    input Real elmt_reactant5;
    input Real elmt_product21;
    input Real elmt_reactant8;
    input Real elmt_reactant17;
    input Real elmt_reactant0;
    input Real elmt_product2;
    input Real elmt_product16;
    input Real elmt_product15;
    input Real elmt_product14;

    Real elmt_PM(unit = "") "Plasma membrane";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_lRIRII_amount(unit = "");
    Real elmt_lRIRII_conc(unit = "");
    Real elmt_lRIRII(unit = "") "ligand receptor complex-plasma membrane";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_RII_amount(unit = "");
    Real elmt_RII_conc(unit = "");
    Real elmt_RII(unit = "") "Receptor 2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_RI_amount(unit = "");
    Real elmt_RI_conc(unit = "");
    Real elmt_RI(unit = "") "Receptor 1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_PM = 1.0;
        elmt_lRIRII_amount = 0.0;
        elmt_RII_amount = 20.0;
        elmt_RI_amount = 20.0;


    equation
        assert(elmt_PM >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_PM) = 0;
        elmt_lRIRII = elmt_lRIRII_amount;
        elmt_RII = elmt_RII_amount;
        elmt_RI = elmt_RI_amount;
        der(elmt_lRIRII_amount) = ((- (elmt_v3 * elmt_reactant4)) + (- (elmt_v4 * elmt_reactant5)) + (elmt_v1 * elmt_product2) + (- (elmt_v2 * elmt_reactant3)));
        der(elmt_RII_amount) = ((elmt_v13 * elmt_product21) + (- (elmt_v12 * elmt_reactant18)) + (elmt_v9 * elmt_product15) + (- (elmt_v11 * elmt_reactant17)) + (elmt_v10 * elmt_product16) + (- (elmt_v1 * elmt_reactant0)));
        der(elmt_RI_amount) = ((elmt_v9 * elmt_product14) + (- (elmt_v7 * elmt_reactant9)) + (elmt_v8 * elmt_product12) + (elmt_v5 * elmt_product7) + (- (elmt_v6 * elmt_reactant8)) + (- (elmt_v1 * elmt_reactant1)));

    algorithm
        elmt_lRIRII_conc := elmt_lRIRII_amount / elmt_PM;
        elmt_RII_conc := elmt_RII_amount / elmt_PM;
        elmt_RI_conc := elmt_RI_amount / elmt_PM;
end Class_elmt_PM;
