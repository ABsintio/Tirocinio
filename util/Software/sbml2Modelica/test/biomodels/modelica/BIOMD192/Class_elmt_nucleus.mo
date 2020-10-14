within BIOMD192;
class Class_elmt_nucleus

    input Real elmt_Cytoplasmic_transfer;
    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_GTP_binding;
    input Real elmt_product11;
    input Real elmt_RanGTP_release;
    input Real elmt_product10;
    input Real elmt_reactant14;
    input Real elmt_product4;
    input Real elmt_reactant0;
    input Real elmt_GDP_dissociation;
    input Real elmt_reactant12;
    input Real elmt_product2;
    input Real elmt_Nucleoplasmic_transfer;
    input Real elmt_reactant9;
    input Real elmt_RCC1_binding;

    Real elmt_nucleus(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RanGDP_nuc_conc(unit = "");
    Real elmt_RanGDP_nuc_amount(unit = "");
    Real elmt_RanGDP_nuc(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GDP_conc(unit = "");
    Real elmt_GDP_amount(unit = "");
    Real elmt_GDP(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GTP_conc(unit = "");
    Real elmt_GTP_amount(unit = "");
    Real elmt_GTP(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RCC1_Ran_conc(unit = "");
    Real elmt_RCC1_Ran_amount(unit = "");
    Real elmt_RCC1_Ran(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RanGTP_nuc_conc(unit = "");
    Real elmt_RanGTP_nuc_amount(unit = "");
    Real elmt_RanGTP_nuc(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RCC1_RanGDP_conc(unit = "");
    Real elmt_RCC1_RanGDP_amount(unit = "");
    Real elmt_RCC1_RanGDP(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RCC1_RanGTP_conc(unit = "");
    Real elmt_RCC1_RanGTP_amount(unit = "");
    Real elmt_RCC1_RanGTP(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RCC1_conc(unit = "");
    Real elmt_RCC1_amount(unit = "");
    Real elmt_RCC1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_nucleus = 1.2E-11;
        elmt_RanGDP_nuc_conc = 0.0;
        elmt_GDP_conc = 1.6;
        elmt_GTP_conc = 500.0;
        elmt_RCC1_Ran_conc = 0.0;
        elmt_RanGTP_nuc_conc = 0.0;
        elmt_RCC1_RanGDP_conc = 0.0;
        elmt_RCC1_RanGTP_conc = 0.0;
        elmt_RCC1_conc = 0.7;


    equation
        assert(elmt_nucleus >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_nucleus) = 0;
        elmt_RanGDP_nuc = elmt_RanGDP_nuc_conc;
        elmt_GDP = elmt_GDP_conc;
        elmt_GTP = elmt_GTP_conc;
        elmt_RCC1_Ran = elmt_RCC1_Ran_conc;
        elmt_RanGTP_nuc = elmt_RanGTP_nuc_conc;
        elmt_RCC1_RanGDP = elmt_RCC1_RanGDP_conc;
        elmt_RCC1_RanGTP = elmt_RCC1_RanGTP_conc;
        elmt_RCC1 = elmt_RCC1_conc;
        der(elmt_GDP_amount) = 0;
        der(elmt_GTP_amount) = 0;
        der(elmt_RanGDP_nuc_amount) = ((- (elmt_Nucleoplasmic_transfer * elmt_reactant14)) + (- (elmt_RCC1_binding * elmt_reactant0)));
        der(elmt_RCC1_Ran_amount) = ((- (elmt_GTP_binding * elmt_reactant6)) + (elmt_GDP_dissociation * elmt_product4));
        der(elmt_RanGTP_nuc_amount) = ((- (elmt_Cytoplasmic_transfer * elmt_reactant12)) + (elmt_RanGTP_release * elmt_product10));
        der(elmt_RCC1_RanGDP_amount) = ((- (elmt_GDP_dissociation * elmt_reactant3)) + (elmt_RCC1_binding * elmt_product2));
        der(elmt_RCC1_RanGTP_amount) = ((elmt_GTP_binding * elmt_product8) + (- (elmt_RanGTP_release * elmt_reactant9)));
        der(elmt_RCC1_amount) = ((elmt_RanGTP_release * elmt_product11) + (- (elmt_RCC1_binding * elmt_reactant1)));

    algorithm
        elmt_RanGDP_nuc_conc := elmt_RanGDP_nuc_amount / elmt_nucleus;
        elmt_GDP_conc := elmt_GDP_amount / elmt_nucleus;
        elmt_GTP_conc := elmt_GTP_amount / elmt_nucleus;
        elmt_RCC1_Ran_conc := elmt_RCC1_Ran_amount / elmt_nucleus;
        elmt_RanGTP_nuc_conc := elmt_RanGTP_nuc_amount / elmt_nucleus;
        elmt_RCC1_RanGDP_conc := elmt_RCC1_RanGDP_amount / elmt_nucleus;
        elmt_RCC1_RanGTP_conc := elmt_RCC1_RanGTP_amount / elmt_nucleus;
        elmt_RCC1_conc := elmt_RCC1_amount / elmt_nucleus;
end Class_elmt_nucleus;
