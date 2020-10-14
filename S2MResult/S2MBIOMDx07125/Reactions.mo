within S2MBIOMDx07125;
class Reactions
    extends Modelica.Icons.SourcesPackage;


    input Real elmt_compartment_0000001;
    input Real elmt_d1;
    input Real elmt_a2;
    input Real elmt_b1;
    input Real elmt_b2;
    input Real elmt_a1;
    input Real elmt_y2;
    input Real elmt_x1;
    input Real elmt_d2y;
    input Real elmt_x2;
    input Real elmt_d2x;
    input Real elmt_y0;
    input Real elmt_x0;

    Real elmt_reaction_0000007(unit = "") "y2 deactivation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant6 "";
    Real elmt_reaction_0000006(unit = "") "x2 deactivation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant5 "";
    Real elmt_reaction_0000005(unit = "") "x1 deactivation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant4 "";
    Real elmt_reaction_0000004(unit = "") "x1 activates y2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product3 "";
    Real elmt_reaction_0000003(unit = "") "x1 activates x2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product2 "";
    Real elmt_reaction_0000002(unit = "") "y0 activates x1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product1 "";
    Real elmt_reaction_0000001(unit = "") "x0 activates x1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product0 "";


    initial equation
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product1 = 1.0;
        elmt_product0 = 1.0;
        elmt_product3 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_reaction_0000007 = (elmt_compartment_0000001 * elmt_d2y * elmt_y2);
        elmt_reaction_0000006 = (elmt_compartment_0000001 * elmt_d2x * elmt_x2);
        elmt_reaction_0000005 = (elmt_compartment_0000001 * elmt_d1 * elmt_x1);
        elmt_reaction_0000004 = (elmt_compartment_0000001 * elmt_x1 * elmt_b2);
        elmt_reaction_0000003 = (elmt_compartment_0000001 * elmt_x1 * elmt_a2);
        elmt_reaction_0000002 = (elmt_compartment_0000001 * elmt_b1 * elmt_y0);
        elmt_reaction_0000001 = (elmt_compartment_0000001 * elmt_a1 * elmt_x0);
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product1) = 0;
        der(elmt_product0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;

end Reactions;
