within BIOMD036;
class Reactions

    input Real elmt_P;
    input Real elmt_M;
    input Real elmt_CYTOPLASM;

    Real elmt_ProteinD(unit = "") "protein degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_ProteinD_elmt_D(unit "") = 0.1 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_DBT(unit = "") "Per phosphorylation and degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_DBT_elmt_Keq(unit "") = 200.0 "";
    parameter Real elmt_DBT_elmt_k1(unit "") = 10.0 "";
    parameter Real elmt_DBT_elmt_J(unit "") = 0.05 "";
    parameter Real elmt_DBT_elmt_k2(unit "") = 0.03 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_mRNAD(unit = "") "mRNA degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_mRNAD_elmt_D(unit "") = 0.1 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_TC(unit = "") "transcription";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_TC_elmt_Keq(unit "") = 200.0 "";
    parameter Real elmt_TC_elmt_Pcrit(unit "") = 0.1 "";
    parameter Real elmt_TC_elmt_Vm(unit "") = 1.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_TL(unit = "") "translation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_TL_elmt_V(unit "") = 0.5 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;


    equation
        elmt_ProteinD = (elmt_ProteinD_elmt_D * elmt_P * elmt_CYTOPLASM);
        elmt_DBT = (elmt_CYTOPLASM * (((elmt_DBT_elmt_k1 * elmt_P * (2.0 / (1.0 + Functions.pow((1.0 + (8.0 * elmt_DBT_elmt_Keq * elmt_P)), 0.5)))) + (elmt_DBT_elmt_k2 * elmt_P)) / (elmt_DBT_elmt_J + elmt_P)));
        elmt_mRNAD = (elmt_mRNAD_elmt_D * elmt_M * elmt_CYTOPLASM);
        elmt_TC = (elmt_CYTOPLASM * (elmt_TC_elmt_Vm / (1.0 + Functions.pow(((elmt_P * (1.0 - (2.0 / (1.0 + Functions.pow((1.0 + (8.0 * elmt_TC_elmt_Keq * elmt_P)), 0.5))))) / (2.0 * elmt_TC_elmt_Pcrit)), 2.0))));
        elmt_TL = (elmt_TL_elmt_V * elmt_M * elmt_CYTOPLASM);
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;

end Reactions;
