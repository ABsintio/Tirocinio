within BIOMD529;
class Class_elmt_compartment

    input Real elmt_product9;
    input Real elmt_product7;
    input Real elmt_product23;
    input Real elmt_product11;
    input Real elmt_product21;
    input Real elmt_product1;
    input Real elmt_J7;
    input Real elmt_J5;
    input Real elmt_J6;
    input Real elmt_J3;
    input Real elmt_product5;
    input Real elmt_J4;
    input Real elmt_J1;
    input Real elmt_J9;
    input Real elmt_product13;
    input Real elmt_J12;
    input Real elmt_J11;
    input Real elmt_product17;

    Real elmt_compartment(unit = "m3.0") "Cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IRF7m_conc(unit = "");
    Real elmt_IRF7m_amount(unit = "");
    Real elmt_IRF7m(unit = "") "IRF7m";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IFNb_mRNA_conc(unit = "");
    Real elmt_IFNb_mRNA_amount(unit = "");
    Real elmt_IFNb_mRNA(unit = "") "IFNb_mRNA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_SOCS1m_conc(unit = "");
    Real elmt_SOCS1m_amount(unit = "");
    Real elmt_SOCS1m(unit = "") "SOCS1m";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_STATP2n_conc(unit = "");
    Real elmt_STATP2n_amount(unit = "");
    Real elmt_STATP2n(unit = "") "STATP2n";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_w_conc(unit = "");
    Real elmt_w_amount(unit = "");
    Real elmt_w(unit = "") "w";
 annotation(Documentation(info="<annotation/>"));
    Real elmt_STATm_conc(unit = "");
    Real elmt_STATm_amount(unit = "");
    Real elmt_STATm(unit = "") "STATm";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IFNa_mRNA_conc(unit = "");
    Real elmt_IFNa_mRNA_amount(unit = "");
    Real elmt_IFNa_mRNA(unit = "") "IFNa_mRNA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_TNFam_conc(unit = "");
    Real elmt_TNFam_amount(unit = "");
    Real elmt_TNFam(unit = "") "TNFam";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_STAT_conc(unit = "");
    Real elmt_STAT_amount(unit = "");
    Real elmt_STAT(unit = "") "STAT";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IRF7Pn_conc(unit = "");
    Real elmt_IRF7Pn_amount(unit = "");
    Real elmt_IRF7Pn(unit = "") "IRF7Pn";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_IRF7m_conc = 0.0;
        elmt_IFNb_mRNA_conc = 0.0;
        elmt_SOCS1m_conc = 0.0;
        elmt_STATP2n_conc = 0.0;
        elmt_w_conc = 0.0;
        elmt_STATm_conc = 0.0;
        elmt_IFNa_mRNA_conc = 0.0;
        elmt_TNFam_conc = 0.0;
        elmt_STAT_conc = 0.1;
        elmt_IRF7Pn_conc = 0.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_IRF7m = elmt_IRF7m_conc;
        elmt_IFNb_mRNA = elmt_IFNb_mRNA_conc;
        elmt_SOCS1m = elmt_SOCS1m_conc;
        elmt_STATP2n = elmt_STATP2n_conc;
        elmt_w = elmt_w_conc;
        elmt_STATm = elmt_STATm_conc;
        elmt_IFNa_mRNA = elmt_IFNa_mRNA_conc;
        elmt_TNFam = elmt_TNFam_conc;
        elmt_STAT = elmt_STAT_conc;
        elmt_IRF7Pn = elmt_IRF7Pn_conc;
        der(elmt_w_amount) = 0;
        der(elmt_IRF7m_amount) = (elmt_J5 * elmt_product9);
        der(elmt_IFNb_mRNA_amount) = (elmt_J1 * elmt_product1);
        der(elmt_SOCS1m_amount) = (elmt_J4 * elmt_product7);
        der(elmt_STATP2n_amount) = (elmt_J3 * elmt_product5);
        der(elmt_STATm_amount) = (elmt_J11 * elmt_product21);
        der(elmt_IFNa_mRNA_amount) = (elmt_J7 * elmt_product13);
        der(elmt_TNFam_amount) = (elmt_J9 * elmt_product17);
        der(elmt_STAT_amount) = (elmt_J12 * elmt_product23);
        der(elmt_IRF7Pn_amount) = (elmt_J6 * elmt_product11);

    algorithm
        elmt_IRF7m_conc := elmt_IRF7m_amount / elmt_compartment;
        elmt_IFNb_mRNA_conc := elmt_IFNb_mRNA_amount / elmt_compartment;
        elmt_SOCS1m_conc := elmt_SOCS1m_amount / elmt_compartment;
        elmt_STATP2n_conc := elmt_STATP2n_amount / elmt_compartment;
        elmt_w_conc := elmt_w_amount / elmt_compartment;
        elmt_STATm_conc := elmt_STATm_amount / elmt_compartment;
        elmt_IFNa_mRNA_conc := elmt_IFNa_mRNA_amount / elmt_compartment;
        elmt_TNFam_conc := elmt_TNFam_amount / elmt_compartment;
        elmt_STAT_conc := elmt_STAT_amount / elmt_compartment;
        elmt_IRF7Pn_conc := elmt_IRF7Pn_amount / elmt_compartment;
end Class_elmt_compartment;
