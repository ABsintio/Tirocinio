within BIOMD145;
class Class_elmt_Cytosol

    input Real elmt_reactant2;
    input Real elmt_product9;
    input Real elmt_R7;
    input Real elmt_R8;
    input Real elmt_R5;
    input Real elmt_reactant3;
    input Real elmt_R6;
    input Real elmt_product6;
    input Real elmt_R3;
    input Real elmt_product11;
    input Real elmt_R4;
    input Real elmt_reactant5;
    input Real elmt_R10;
    input Real elmt_R1;
    input Real elmt_R11;
    input Real elmt_R2;
    input Real elmt_reactant7;
    input Real elmt_product1;
    input Real elmt_product0;
    input Real elmt_reactant10;
    input Real elmt_product4;
    input Real elmt_R9;
    input Real elmt_Cplc_total;

    Real elmt_Cytosol(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PLC_conc(unit = "");
    Real elmt_PLC_amount(unit = "");
    Real elmt_PLC(unit = "") "PLC";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_DG_conc(unit = "");
    Real elmt_DG_amount(unit = "");
    Real elmt_DG(unit = "") "Diacylglycerol";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Galpha_GTP_conc(unit = "");
    Real elmt_Galpha_GTP_amount(unit = "");
    Real elmt_Galpha_GTP(unit = "") "Galpha_GTP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_APLC_conc(unit = "");
    Real elmt_APLC_amount(unit = "");
    Real elmt_APLC(unit = "") "APLC";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Ca_Cyt_conc(unit = "");
    Real elmt_Ca_Cyt_amount(unit = "");
    Real elmt_Ca_Cyt(unit = "") "Calcium";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IP3_conc(unit = "");
    Real elmt_IP3_amount(unit = "");
    Real elmt_IP3(unit = "") "IP3";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Cytosol = 1.0;
        elmt_Galpha_GTP_conc = 1.0;
        elmt_APLC_conc = 9.0;
        elmt_Ca_Cyt_conc = 200.0;
        elmt_IP3_conc = 1.0;


    equation
        assert(elmt_Cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Cytosol) = 0;
        elmt_PLC = elmt_PLC_conc;
        elmt_DG = elmt_DG_conc;
        elmt_Galpha_GTP = elmt_Galpha_GTP_conc;
        elmt_APLC = elmt_APLC_conc;
        elmt_Ca_Cyt = elmt_Ca_Cyt_conc;
        elmt_IP3 = elmt_IP3_conc;
        elmt_PLC_amount = (elmt_Cplc_total - elmt_APLC) * elmt_Cytosol;
        elmt_DG_amount = elmt_IP3 * elmt_Cytosol;
        der(elmt_Galpha_GTP_amount) = ((- (elmt_R3 * elmt_reactant2)) + (- (elmt_R4 * elmt_reactant3)) + (elmt_R1 * elmt_product0) + (elmt_R2 * elmt_product1));
        der(elmt_APLC_amount) = ((elmt_R5 * elmt_product4) + (- (elmt_R6 * elmt_reactant5)));
        der(elmt_Ca_Cyt_amount) = ((- (elmt_R10 * elmt_reactant10)) + (elmt_R11 * elmt_product11) + (elmt_R9 * elmt_product9));
        der(elmt_IP3_amount) = ((elmt_R7 * elmt_product6) + (- (elmt_R8 * elmt_reactant7)));

    algorithm
        elmt_PLC_conc := elmt_PLC_amount / elmt_Cytosol;
        elmt_DG_conc := elmt_DG_amount / elmt_Cytosol;
        elmt_Galpha_GTP_conc := elmt_Galpha_GTP_amount / elmt_Cytosol;
        elmt_APLC_conc := elmt_APLC_amount / elmt_Cytosol;
        elmt_Ca_Cyt_conc := elmt_Ca_Cyt_amount / elmt_Cytosol;
        elmt_IP3_conc := elmt_IP3_amount / elmt_Cytosol;
end Class_elmt_Cytosol;
