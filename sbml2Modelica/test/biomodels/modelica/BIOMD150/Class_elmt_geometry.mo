within BIOMD150;
class Class_elmt_geometry

    input Real elmt_reactant1;
    input Real elmt_Activation;
    input Real elmt_reactant3;
    input Real elmt_Binding;
    input Real elmt_product4;
    input Real elmt_reactant0;
    input Real elmt_product2;

    Real elmt_geometry(unit = "") "";
    Real elmt_CyclinA_conc(unit = "");
    Real elmt_CyclinA_amount(unit = "");
    Real elmt_CyclinA(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_CDK2cycA_star__conc(unit = "");
    Real elmt_CDK2cycA_star__amount(unit = "");
    Real elmt_CDK2cycA_star_(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Cdk2_conc(unit = "");
    Real elmt_Cdk2_amount(unit = "");
    Real elmt_Cdk2(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_CDK2cycA_conc(unit = "");
    Real elmt_CDK2cycA_amount(unit = "");
    Real elmt_CDK2cycA(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_geometry = 1.0E-12;
        elmt_CyclinA_conc = 4.0E-7;
        elmt_CDK2cycA_star__conc = 0.0;
        elmt_Cdk2_conc = 1.0E-7;
        elmt_CDK2cycA_conc = 0.0;


    equation
        assert(elmt_geometry >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_geometry) = 0;
        elmt_CyclinA = elmt_CyclinA_conc;
        elmt_CDK2cycA_star_ = elmt_CDK2cycA_star__conc;
        elmt_Cdk2 = elmt_Cdk2_conc;
        elmt_CDK2cycA = elmt_CDK2cycA_conc;
        der(elmt_CyclinA_amount) = (- (elmt_Binding * elmt_reactant1));
        der(elmt_CDK2cycA_star__amount) = (elmt_Activation * elmt_product4);
        der(elmt_Cdk2_amount) = (- (elmt_Binding * elmt_reactant0));
        der(elmt_CDK2cycA_amount) = ((- (elmt_Activation * elmt_reactant3)) + (elmt_Binding * elmt_product2));

    algorithm
        elmt_CyclinA_conc := elmt_CyclinA_amount / elmt_geometry;
        elmt_CDK2cycA_star__conc := elmt_CDK2cycA_star__amount / elmt_geometry;
        elmt_Cdk2_conc := elmt_Cdk2_amount / elmt_geometry;
        elmt_CDK2cycA_conc := elmt_CDK2cycA_amount / elmt_geometry;
end Class_elmt_geometry;
