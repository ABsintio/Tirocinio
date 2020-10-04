within BIOMD117;
class Class_elmt_Cytosol

    input Real elmt_reaction_0000006;
    input Real elmt_product7;
    input Real elmt_reactant4;
    input Real elmt_reaction_0000005;
    input Real elmt_reactant8;
    input Real elmt_product1;
    input Real elmt_product0;
    input Real elmt_reaction_0000004;
    input Real elmt_reaction_0000003;
    input Real elmt_product3;
    input Real elmt_reaction_0000002;
    input Real elmt_reaction_0000001;

    Real elmt_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_z_conc(unit = "");
    Real elmt_z_amount(unit = "");
    Real elmt_z(unit = "") "Ca in the cytosol";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_Cytosol = 1.0;
        elmt_z_conc = 0.1;


    equation
        assert(elmt_Cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Cytosol) = 0;
        elmt_z = elmt_z_conc;
        der(elmt_z_amount) = ((- (elmt_reaction_0000006 * elmt_reactant8)) + (elmt_reaction_0000005 * elmt_product7) + (- (elmt_reaction_0000004 * elmt_reactant4)) + (elmt_reaction_0000003 * elmt_product3) + (elmt_reaction_0000002 * elmt_product1) + (elmt_reaction_0000001 * elmt_product0));

    algorithm
        elmt_z_conc := elmt_z_amount / elmt_Cytosol;
end Class_elmt_Cytosol;
