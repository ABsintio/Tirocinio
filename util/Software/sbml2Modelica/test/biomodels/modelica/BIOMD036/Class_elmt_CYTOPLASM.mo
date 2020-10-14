within BIOMD036;
class Class_elmt_CYTOPLASM

    input Real elmt_ProteinD;
    input Real elmt_reactant4;
    input Real elmt_DBT;
    input Real elmt_reactant6;
    input Real elmt_mRNAD;
    input Real elmt_reactant8;
    input Real elmt_TC;
    input Real elmt_product1;
    input Real elmt_product3;
    input Real elmt_TL;

    Real elmt_CYTOPLASM(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P_conc(unit = "");
    Real elmt_P_amount(unit = "");
    Real elmt_P(unit = "") "Pt";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_M_conc(unit = "");
    Real elmt_M_amount(unit = "");
    Real elmt_M(unit = "") "";

    initial equation
        elmt_CYTOPLASM = 1.0;
        elmt_P_conc = (1.0 / elmt_CYTOPLASM);
        elmt_M_conc = (1.0 / elmt_CYTOPLASM);


    equation
        assert(elmt_CYTOPLASM >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_CYTOPLASM) = 0;
        elmt_P = elmt_P_conc;
        elmt_M = elmt_M_conc;
        der(elmt_P_amount) = ((- (elmt_ProteinD * elmt_reactant6)) + (- (elmt_DBT * elmt_reactant8)) + (elmt_TL * elmt_product3));
        der(elmt_M_amount) = ((- (elmt_mRNAD * elmt_reactant4)) + (elmt_TC * elmt_product1));

    algorithm
        elmt_P_conc := elmt_P_amount / elmt_CYTOPLASM;
        elmt_M_conc := elmt_M_amount / elmt_CYTOPLASM;
end Class_elmt_CYTOPLASM;
