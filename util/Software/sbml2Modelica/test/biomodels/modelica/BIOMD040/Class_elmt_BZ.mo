within BIOMD040;
class Class_elmt_BZ

    input Real elmt_product9;
    input Real elmt_reactant4;
    input Real elmt_reactant5;
    input Real elmt_reactant8;
    input Real elmt_product10;
    input Real elmt_reactant14;
    input Real elmt_reactant11;
    input Real elmt_reactant0;
    input Real elmt_product2;
    input Real elmt_Reaction5;
    input Real elmt_Reaction4;
    input Real elmt_Reaction3;
    input Real elmt_Reaction2;
    input Real elmt_Reaction1;
    input Real elmt_product15;

    Real elmt_BZ(unit = "") "";
    Real elmt_HBrO2_conc(unit = "");
    Real elmt_HBrO2_amount(unit = "");
    Real elmt_HBrO2(unit = "") "";
    Real elmt_Ce_conc(unit = "");
    Real elmt_Ce_amount(unit = "");
    Real elmt_Ce(unit = "") "Ce4+";
    Real elmt_Br_conc(unit = "");
    Real elmt_Br_amount(unit = "");
    Real elmt_Br(unit = "") "Br-";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_BrO3_conc(unit = "");
    Real elmt_BrO3_amount(unit = "");
    Real elmt_BrO3(unit = "") "BrO3-";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_HOBr_conc(unit = "");
    Real elmt_HOBr_amount(unit = "");
    Real elmt_HOBr(unit = "") "";

    initial equation
        elmt_BZ = 1.0;
        elmt_HBrO2_conc = 5.0E-11;
        elmt_Ce_conc = 0.05;
        elmt_Br_conc = 1.0E-7;
        elmt_BrO3_conc = 0.06;
        elmt_HOBr_conc = 0.0;


    equation
        assert(elmt_BZ >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_BZ) = 0;
        elmt_HBrO2 = elmt_HBrO2_conc;
        elmt_Ce = elmt_Ce_conc;
        elmt_Br = elmt_Br_conc;
        elmt_BrO3 = elmt_BrO3_conc;
        elmt_HOBr = elmt_HOBr_conc;
        der(elmt_BrO3_amount) = 0;
        der(elmt_HOBr_amount) = 0;
        der(elmt_HBrO2_amount) = ((- (elmt_Reaction4 * elmt_reactant11)) + (- (elmt_Reaction3 * elmt_reactant8)) + (elmt_Reaction3 * elmt_product10) + (- (elmt_Reaction2 * elmt_reactant5)) + (elmt_Reaction1 * elmt_product2));
        der(elmt_Ce_amount) = ((- (elmt_Reaction5 * elmt_reactant14)) + (elmt_Reaction3 * elmt_product9));
        der(elmt_Br_amount) = ((elmt_Reaction5 * elmt_product15) + (- (elmt_Reaction2 * elmt_reactant4)) + (- (elmt_Reaction1 * elmt_reactant0)));

    algorithm
        elmt_HBrO2_conc := elmt_HBrO2_amount / elmt_BZ;
        elmt_Ce_conc := elmt_Ce_amount / elmt_BZ;
        elmt_Br_conc := elmt_Br_amount / elmt_BZ;
        elmt_BrO3_conc := elmt_BrO3_amount / elmt_BZ;
        elmt_HOBr_conc := elmt_HOBr_amount / elmt_BZ;
end Class_elmt_BZ;
