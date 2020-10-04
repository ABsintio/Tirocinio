within BIOMD256;
class Class_elmt_mito

    input Real elmt_reactant152;
    input Real elmt_reactant147;
    input Real elmt_SMAC_release;
    input Real elmt_CytC_release;

    Real elmt_mito(unit = "") "mitochondrium";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CytC_mit_conc(unit = "");
    Real elmt_CytC_mit_amount(unit = "");
    Real elmt_CytC_mit(unit = "") "Cytochrome C in mitochondrium";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_SMAC_mito_conc(unit = "");
    Real elmt_SMAC_mito_amount(unit = "");
    Real elmt_SMAC_mito(unit = "") "SMAC in mitochondrium";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_mito = 1.0;
        elmt_CytC_mit_conc = 10.0;
        elmt_SMAC_mito_conc = 0.126;


    equation
        assert(elmt_mito >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_mito) = 0;
        elmt_CytC_mit = elmt_CytC_mit_conc;
        elmt_SMAC_mito = elmt_SMAC_mito_conc;
        der(elmt_CytC_mit_amount) = (- (elmt_CytC_release * elmt_reactant152));
        der(elmt_SMAC_mito_amount) = (- (elmt_SMAC_release * elmt_reactant147));

    algorithm
        elmt_CytC_mit_conc := elmt_CytC_mit_amount / elmt_mito;
        elmt_SMAC_mito_conc := elmt_SMAC_mito_amount / elmt_mito;
end Class_elmt_mito;
