within BIOMD045;
class Class_elmt_cytosol

    input Real elmt_reactant2;
    input Real elmt_v2s;
    input Real elmt_v3s;
    input Real elmt_product7;
    input Real elmt_product11;
    input Real elmt_v5;
    input Real elmt_reactant8;
    input Real elmt_v6;
    input Real elmt_product1;
    input Real elmt_product5;
    input Real elmt_vin;
    input Real elmt_reactant12;
    input Real elmt_product15;
    input Real elmt_v4;
    input Real elmt_v2i;
    input Real elmt_v3i;

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

    initial equation
        elmt_cytosol = 1.0;
        elmt_Z_conc = 0.0;


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_Z = elmt_Z_conc;
        der(elmt_Z_amount) = ((- (elmt_v2s * elmt_reactant12)) + (elmt_v3s * elmt_product15) + (- (elmt_v5 * elmt_reactant8)) + (elmt_v6 * elmt_product11) + (elmt_v4 * elmt_product7) + (- (elmt_v2i * elmt_reactant2)) + (elmt_v3i * elmt_product5) + (elmt_vin * elmt_product1));

    algorithm
        elmt_Z_conc := elmt_Z_amount / elmt_cytosol;
end Class_elmt_cytosol;
