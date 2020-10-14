within BIOMD025;
class Reactions

    input Real elmt_CELL;
    input Real elmt_dClkF_tau1;
    input Real elmt_K1;
    input Real elmt_kdp;
    input Real elmt_Vsc;
    input Real elmt_dClkF_tau2;
    input Real elmt_Vsp;
    input Real elmt_Per;
    input Real elmt_K2;
    input Real elmt_kdc;
    input Real elmt_dClk;

    Real elmt_rdClk(unit = "") "dClk production";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_rPer(unit = "") "Per production";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_rPerD(unit = "") "Per degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_rdClkD(unit = "") "dClk degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_rdClk = (elmt_CELL * elmt_Vsc * (elmt_K2 / (elmt_K2 + elmt_dClkF_tau2)));
        elmt_rPer = (elmt_Vsp * (elmt_dClkF_tau1 / (elmt_K1 + elmt_dClkF_tau1)) * elmt_CELL);
        elmt_rPerD = (elmt_kdc * elmt_Per * elmt_CELL);
        elmt_rdClkD = (elmt_kdp * elmt_dClk * elmt_CELL);
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
