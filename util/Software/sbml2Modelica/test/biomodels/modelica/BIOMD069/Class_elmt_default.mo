within BIOMD069;
class Class_elmt_default

    input Real elmt_reactant2;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_reactant6;
    input Real elmt_product12;
    input Real elmt_PTP_phosphorylation;
    input Real elmt_reactant8;
    input Real elmt_product10;
    input Real elmt_product1;
    input Real elmt_product5;
    input Real elmt_reactant11;
    input Real elmt_product3;
    input Real elmt_reactant0;
    input Real elmt_reactant13;
    input Real elmt_CSK_translocation;
    input Real elmt_v3;
    input Real elmt_reactant9;
    input Real elmt_v4;
    input Real elmt_v1;
    input Real elmt_product14;
    input Real elmt_v2;
    input Real elmt_Cbp_phosphorylation;

    Real elmt_default(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_srco_conc(unit = "");
    Real elmt_srco_amount(unit = "");
    Real elmt_srco(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_srca_conc(unit = "");
    Real elmt_srca_amount(unit = "");
    Real elmt_srca(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Cbp_conc(unit = "");
    Real elmt_Cbp_amount(unit = "");
    Real elmt_Cbp(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Cbp_P_conc(unit = "");
    Real elmt_Cbp_P_amount(unit = "");
    Real elmt_Cbp_P(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_srcc_conc(unit = "");
    Real elmt_srcc_amount(unit = "");
    Real elmt_srcc(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CSK_cytoplasm_conc(unit = "");
    Real elmt_CSK_cytoplasm_amount(unit = "");
    Real elmt_CSK_cytoplasm(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PTP_conc(unit = "");
    Real elmt_PTP_amount(unit = "");
    Real elmt_PTP(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_srci_conc(unit = "");
    Real elmt_srci_amount(unit = "");
    Real elmt_srci(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Cbp_P_CSK_conc(unit = "");
    Real elmt_Cbp_P_CSK_amount(unit = "");
    Real elmt_Cbp_P_CSK(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PTP_pY789_conc(unit = "");
    Real elmt_PTP_pY789_amount(unit = "");
    Real elmt_PTP_pY789(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_default = 1.0;
        elmt_srco_conc = 0.0;
        elmt_srca_conc = 0.0;
        elmt_Cbp_conc = 1.0;
        elmt_Cbp_P_conc = 0.0;
        elmt_srcc_conc = 0.0;
        elmt_CSK_cytoplasm_conc = 1.0;
        elmt_PTP_conc = 1.0;
        elmt_srci_conc = 1.0;
        elmt_Cbp_P_CSK_conc = 0.0;
        elmt_PTP_pY789_conc = 0.0;


    equation
        assert(elmt_default >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_default) = 0;
        elmt_srco = elmt_srco_conc;
        elmt_srca = elmt_srca_conc;
        elmt_Cbp = elmt_Cbp_conc;
        elmt_Cbp_P = elmt_Cbp_P_conc;
        elmt_srcc = elmt_srcc_conc;
        elmt_CSK_cytoplasm = elmt_CSK_cytoplasm_conc;
        elmt_PTP = elmt_PTP_conc;
        elmt_srci = elmt_srci_conc;
        elmt_Cbp_P_CSK = elmt_Cbp_P_CSK_conc;
        elmt_PTP_pY789 = elmt_PTP_pY789_conc;
        der(elmt_srco_amount) = ((elmt_v1 * elmt_product1) + (- (elmt_v2 * elmt_reactant2)));
        der(elmt_srca_amount) = ((- (elmt_v3 * elmt_reactant4)) + (elmt_v2 * elmt_product3));
        der(elmt_Cbp_amount) = (- (elmt_Cbp_phosphorylation * elmt_reactant13));
        der(elmt_Cbp_P_amount) = ((- (elmt_CSK_translocation * elmt_reactant9)) + (elmt_Cbp_phosphorylation * elmt_product14));
        der(elmt_srcc_amount) = ((elmt_v3 * elmt_product5) + (- (elmt_v4 * elmt_reactant6)));
        der(elmt_CSK_cytoplasm_amount) = (- (elmt_CSK_translocation * elmt_reactant8));
        der(elmt_PTP_amount) = (- (elmt_PTP_phosphorylation * elmt_reactant11));
        der(elmt_srci_amount) = ((elmt_v4 * elmt_product7) + (- (elmt_v1 * elmt_reactant0)));
        der(elmt_Cbp_P_CSK_amount) = (elmt_CSK_translocation * elmt_product10);
        der(elmt_PTP_pY789_amount) = (elmt_PTP_phosphorylation * elmt_product12);

    algorithm
        elmt_srco_conc := elmt_srco_amount / elmt_default;
        elmt_srca_conc := elmt_srca_amount / elmt_default;
        elmt_Cbp_conc := elmt_Cbp_amount / elmt_default;
        elmt_Cbp_P_conc := elmt_Cbp_P_amount / elmt_default;
        elmt_srcc_conc := elmt_srcc_amount / elmt_default;
        elmt_CSK_cytoplasm_conc := elmt_CSK_cytoplasm_amount / elmt_default;
        elmt_PTP_conc := elmt_PTP_amount / elmt_default;
        elmt_srci_conc := elmt_srci_amount / elmt_default;
        elmt_Cbp_P_CSK_conc := elmt_Cbp_P_CSK_amount / elmt_default;
        elmt_PTP_pY789_conc := elmt_PTP_pY789_amount / elmt_default;
end Class_elmt_default;
