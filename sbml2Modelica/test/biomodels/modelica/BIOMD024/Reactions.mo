within BIOMD024;
class Reactions

    input Real elmt_P;
    input Real elmt_compartment_0000004;
    input Real elmt_M;

    Real elmt_Pd(unit = "") "protein degradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Pd_elmt_qP(unit "") = 0.21 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_TC(unit = "") "mRNA production";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_TC_elmt_n(unit "") = 2.0 "";
    parameter Real elmt_TC_elmt_k(unit "") = 1.0 "";
    parameter Real elmt_TC_elmt_rM(unit "") = 1.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_Md(unit = "") "messenger degradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Md_elmt_qM(unit "") = 0.21 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_TL(unit = "") "protein production";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_TL_elmt_m(unit "") = 3.0 "";
    parameter Real elmt_TL_elmt_parameter_0000009(unit "") = 4.0 "";
    parameter Real elmt_TL_elmt_rP(unit "") = 1.0 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;


    equation
        elmt_Pd = (elmt_compartment_0000004 * elmt_Pd_elmt_qP * elmt_P);
        elmt_TC = (elmt_compartment_0000004 * (elmt_TC_elmt_rM / (1.0 + Functions.pow((elmt_P / elmt_TC_elmt_k), elmt_TC_elmt_n))));
        elmt_Md = (elmt_compartment_0000004 * elmt_Md_elmt_qM * elmt_M);
        elmt_TL = (elmt_compartment_0000004 * elmt_TL_elmt_rP * Functions.pow(delay(elmt_M, elmt_TL_elmt_parameter_0000009, Constants.INFINITY), elmt_TL_elmt_m));
        der(elmt_reactant2) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;

end Reactions;
