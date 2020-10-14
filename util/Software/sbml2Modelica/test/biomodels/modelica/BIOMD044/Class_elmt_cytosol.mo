within BIOMD044;
class Class_elmt_cytosol

    input Real elmt_reactant2;
    input Real elmt_product7;
    input Real elmt_v7;
    input Real elmt_v8;
    input Real elmt_v5;
    input Real elmt_reactant8;
    input Real elmt_product10;
    input Real elmt_v6;
    input Real elmt_product1;
    input Real elmt_product5;
    input Real elmt_vin;
    input Real elmt_reactant11;
    input Real elmt_reactant12;
    input Real elmt_v3;
    input Real elmt_v4;
    input Real elmt_v2;

    Real elmt_cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Z_conc(unit = "");
    Real elmt_Z_amount(unit = "");
    Real elmt_Z(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_A_conc(unit = "");
    Real elmt_A_amount(unit = "");
    Real elmt_A(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cytosol = 1.0;
        elmt_Z_conc = 0.0;
        elmt_A_conc = 0.45;


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_Z = elmt_Z_conc;
        elmt_A = elmt_A_conc;
        der(elmt_Z_amount) = ((- (elmt_v5 * elmt_reactant8)) + (elmt_v3 * elmt_product5) + (elmt_v4 * elmt_product7) + (- (elmt_v2 * elmt_reactant2)) + (elmt_vin * elmt_product1));
        der(elmt_A_amount) = ((- (elmt_v7 * elmt_reactant11)) + (- (elmt_v8 * elmt_reactant12)) + (elmt_v6 * elmt_product10));

    algorithm
        elmt_Z_conc := elmt_Z_amount / elmt_cytosol;
        elmt_A_conc := elmt_A_amount / elmt_cytosol;
end Class_elmt_cytosol;
