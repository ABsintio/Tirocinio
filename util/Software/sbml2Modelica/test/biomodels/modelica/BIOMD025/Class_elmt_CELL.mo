within BIOMD025;
class Class_elmt_CELL

    input Real elmt_reactant4;
    input Real elmt_rdClk;
    input Real elmt_reactant6;
    input Real elmt_product1;
    input Real elmt_rPer;
    input Real elmt_rPerD;
    input Real elmt_product3;
    input Real elmt_rdClkD;

    Real elmt_CELL(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_EmptySet_conc(unit = "");
    Real elmt_EmptySet_amount(unit = "");
    Real elmt_EmptySet(unit = "") "";
    Real elmt_Per_conc(unit = "");
    Real elmt_Per_amount(unit = "");
    Real elmt_Per(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_dClk_conc(unit = "");
    Real elmt_dClk_amount(unit = "");
    Real elmt_dClk(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_dClkF_conc(unit = "");
    Real elmt_dClkF_amount(unit = "");
    Real elmt_dClkF(unit = "") "free dClk";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_CELL = 1.0E-15;
        elmt_EmptySet_conc = 0.0;
        elmt_Per_conc = 5.0E-16;
        elmt_dClk_conc = 1.0E-16;


    equation
        assert(elmt_CELL >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_CELL) = 0;
        elmt_EmptySet = elmt_EmptySet_conc;
        elmt_Per = elmt_Per_conc;
        elmt_dClk = elmt_dClk_conc;
        elmt_dClkF = elmt_dClkF_conc;
        der(elmt_EmptySet_amount) = 0;
        elmt_dClkF_amount = (if ((elmt_dClk - elmt_Per) < 0.0) then 0.0 else (elmt_dClk - elmt_Per)) * elmt_CELL;
        der(elmt_Per_amount) = ((elmt_rPer * elmt_product1) + (- (elmt_rPerD * elmt_reactant4)));
        der(elmt_dClk_amount) = ((elmt_rdClk * elmt_product3) + (- (elmt_rdClkD * elmt_reactant6)));

    algorithm
        elmt_EmptySet_conc := elmt_EmptySet_amount / elmt_CELL;
        elmt_Per_conc := elmt_Per_amount / elmt_CELL;
        elmt_dClk_conc := elmt_dClk_amount / elmt_CELL;
        elmt_dClkF_conc := elmt_dClkF_amount / elmt_CELL;
end Class_elmt_CELL;
