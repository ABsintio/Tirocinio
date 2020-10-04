within BIOMD192;
class Class_elmt_cytoplasm

    input Real elmt_Cytoplasmic_transfer;
    input Real elmt_product23;
    input Real elmt_product21;
    input Real elmt_product20;
    input Real elmt_reactant16;
    input Real elmt_reactant17;
    input Real elmt_reactant22;
    input Real elmt_RanBP1_RanGDP;
    input Real elmt_Nucleoplasmic_transfer;
    input Real elmt_reactant19;
    input Real elmt_RanGAP_RanGDP;
    input Real elmt_product15;
    input Real elmt_product13;
    input Real elmt_RanGTP_binding;
    input Real elmt_product18;

    Real elmt_cytoplasm(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RanGAP_conc(unit = "");
    Real elmt_RanGAP_amount(unit = "");
    Real elmt_RanGAP(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RanGDP_cy_conc(unit = "");
    Real elmt_RanGDP_cy_amount(unit = "");
    Real elmt_RanGDP_cy(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RanGTP_cy_conc(unit = "");
    Real elmt_RanGTP_cy_amount(unit = "");
    Real elmt_RanGTP_cy(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RanBP1_conc(unit = "");
    Real elmt_RanBP1_amount(unit = "");
    Real elmt_RanBP1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_RanGTP_RanBP1_conc(unit = "");
    Real elmt_RanGTP_RanBP1_amount(unit = "");
    Real elmt_RanGTP_RanBP1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cytoplasm = 1.8E-11;
        elmt_RanGAP_conc = 0.7;
        elmt_RanGDP_cy_conc = 5.0;
        elmt_RanGTP_cy_conc = 0.0;
        elmt_RanBP1_conc = 2.0;
        elmt_RanGTP_RanBP1_conc = 0.0;


    equation
        assert(elmt_cytoplasm >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytoplasm) = 0;
        elmt_RanGAP = elmt_RanGAP_conc;
        elmt_RanGDP_cy = elmt_RanGDP_cy_conc;
        elmt_RanGTP_cy = elmt_RanGTP_cy_conc;
        elmt_RanBP1 = elmt_RanBP1_conc;
        elmt_RanGTP_RanBP1 = elmt_RanGTP_RanBP1_conc;
        der(elmt_RanGAP_amount) = 0;
        der(elmt_RanGDP_cy_amount) = ((elmt_RanBP1_RanGDP * elmt_product20) + (elmt_Nucleoplasmic_transfer * elmt_product15) + (elmt_RanGAP_RanGDP * elmt_product23));
        der(elmt_RanGTP_cy_amount) = ((elmt_Cytoplasmic_transfer * elmt_product13) + (- (elmt_RanGAP_RanGDP * elmt_reactant22)) + (- (elmt_RanGTP_binding * elmt_reactant16)));
        der(elmt_RanBP1_amount) = ((elmt_RanBP1_RanGDP * elmt_product21) + (- (elmt_RanGTP_binding * elmt_reactant17)));
        der(elmt_RanGTP_RanBP1_amount) = ((- (elmt_RanBP1_RanGDP * elmt_reactant19)) + (elmt_RanGTP_binding * elmt_product18));

    algorithm
        elmt_RanGAP_conc := elmt_RanGAP_amount / elmt_cytoplasm;
        elmt_RanGDP_cy_conc := elmt_RanGDP_cy_amount / elmt_cytoplasm;
        elmt_RanGTP_cy_conc := elmt_RanGTP_cy_amount / elmt_cytoplasm;
        elmt_RanBP1_conc := elmt_RanBP1_amount / elmt_cytoplasm;
        elmt_RanGTP_RanBP1_conc := elmt_RanGTP_RanBP1_amount / elmt_cytoplasm;
end Class_elmt_cytoplasm;
