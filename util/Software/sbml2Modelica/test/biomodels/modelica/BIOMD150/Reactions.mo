within BIOMD150;
class Reactions

    input Real elmt_geometry;
    input Real elmt_CyclinA;
    input Real elmt_CDK2cycA_star_;
    input Real elmt_Cdk2;
    input Real elmt_CDK2cycA;

    Real elmt_Activation(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Activation_elmt_kf(unit "") = 0.813 "";
    parameter Real elmt_Activation_elmt_kb(unit "") = 0.557 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_Binding(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_Binding_elmt_kf(unit "") = 1.9E7 "";
    parameter Real elmt_Binding_elmt_kb(unit "") = 25.0 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_Activation = ((elmt_Activation_elmt_kf * elmt_CDK2cycA * elmt_geometry) - (elmt_Activation_elmt_kb * elmt_CDK2cycA_star_ * elmt_geometry));
        elmt_Binding = ((elmt_Binding_elmt_kf * elmt_Cdk2 * elmt_CyclinA * elmt_geometry) - (elmt_Binding_elmt_kb * elmt_CDK2cycA * elmt_geometry));
        der(elmt_reactant1) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;

end Reactions;
