within BIOMD214;
class Class_elmt_nucleus

    input Real elmt_MFtrn;
    input Real elmt_reactant20;
    input Real elmt_product10;
    input Real elmt_reactant22;
    input Real elmt_E1F;
    input Real elmt_PWLdeg;
    input Real elmt_E1Fp;
    input Real elmt_reactant19;
    input Real elmt_PWdeg;
    input Real elmt_reactant9;
    input Real elmt_E2Fp;
    input Real elmt_MFdeg;
    input Real elmt_MWtrn;
    input Real elmt_E1W;
    input Real elmt_product29;
    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_PFptrl;
    input Real elmt_reactant30;
    input Real elmt_PWtrs;
    input Real elmt_product21;
    input Real elmt_MWdeg;
    input Real elmt_product0;
    input Real elmt_reactant11;
    input Real elmt_E2F;
    input Real elmt_PWtrl;
    input Real elmt_PFdeg;
    input Real elmt_PFtrl;
    input Real elmt_PFpdeg;
    input Real elmt_product18;
    input Real elmt_E2W;

    Real elmt_nucleus(unit = "") "nucleus";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PF_conc(unit = "");
    Real elmt_PF_amount(unit = "");
    Real elmt_PF(unit = "") "s-Frq";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PWL_conc(unit = "");
    Real elmt_PWL_amount(unit = "");
    Real elmt_PWL(unit = "") "WC-1*";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_sFrq_tot_conc(unit = "");
    Real elmt_sFrq_tot_amount(unit = "");
    Real elmt_sFrq_tot(unit = "") "tot s-Frq";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_lFrq_tot_conc(unit = "");
    Real elmt_lFrq_tot_amount(unit = "");
    Real elmt_lFrq_tot(unit = "") "tot l-Frq";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Frq_tot_conc(unit = "");
    Real elmt_Frq_tot_amount(unit = "");
    Real elmt_Frq_tot(unit = "") "tot Frq";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_WC1_tot_conc(unit = "");
    Real elmt_WC1_tot_amount(unit = "");
    Real elmt_WC1_tot(unit = "") "tot WC-1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_MF_conc(unit = "");
    Real elmt_MF_amount(unit = "");
    Real elmt_MF(unit = "") "Frq mRNA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_MW_conc(unit = "");
    Real elmt_MW_amount(unit = "");
    Real elmt_MW(unit = "") "WC-1 mRNA";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PW_conc(unit = "");
    Real elmt_PW_amount(unit = "");
    Real elmt_PW(unit = "") "WC-1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PFp_conc(unit = "");
    Real elmt_PFp_amount(unit = "");
    Real elmt_PFp(unit = "") "l-Frq";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_nucleus = 1.0;
        elmt_PF_conc = 0.06565;
        elmt_PWL_conc = 0.0;
        elmt_MF_conc = 0.6935;
        elmt_MW_conc = 1.2689;
        elmt_PW_conc = 26.4393;
        elmt_PFp_conc = 0.07719;


    equation
        assert(elmt_nucleus >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_nucleus) = 0;
        elmt_PF = elmt_PF_conc;
        elmt_PWL = elmt_PWL_conc;
        elmt_sFrq_tot = elmt_sFrq_tot_conc;
        elmt_lFrq_tot = elmt_lFrq_tot_conc;
        elmt_Frq_tot = elmt_Frq_tot_conc;
        elmt_WC1_tot = elmt_WC1_tot_conc;
        elmt_MF = elmt_MF_conc;
        elmt_MW = elmt_MW_conc;
        elmt_PW = elmt_PW_conc;
        elmt_PFp = elmt_PFp_conc;
        elmt_sFrq_tot_amount = (elmt_PF + elmt_E2F + elmt_E1F) * elmt_nucleus;
        elmt_lFrq_tot_amount = (elmt_PFp + elmt_E2Fp + elmt_E1Fp) * elmt_nucleus;
        elmt_Frq_tot_amount = (elmt_sFrq_tot + elmt_lFrq_tot) * elmt_nucleus;
        elmt_WC1_tot_amount = (elmt_PW + elmt_PWL + elmt_E1W + elmt_E2W) * elmt_nucleus;
        der(elmt_PF_amount) = ((- (elmt_PFdeg * elmt_reactant9)) + (elmt_PFtrl * elmt_product8));
        der(elmt_PWL_amount) = ((- (elmt_PWLdeg * elmt_reactant22)) + (elmt_PWtrs * elmt_product21));
        der(elmt_MF_amount) = ((elmt_MFtrn * elmt_product0) + (- (elmt_MFdeg * elmt_reactant1)));
        der(elmt_MW_amount) = ((elmt_MWtrn * elmt_product10) + (- (elmt_MWdeg * elmt_reactant11)));
        der(elmt_PW_amount) = ((- (elmt_PWdeg * elmt_reactant19)) + (- (elmt_PWtrs * elmt_reactant20)) + (elmt_PWtrl * elmt_product18));
        der(elmt_PFp_amount) = ((elmt_PFptrl * elmt_product29) + (- (elmt_PFpdeg * elmt_reactant30)));

    algorithm
        elmt_PF_conc := elmt_PF_amount / elmt_nucleus;
        elmt_PWL_conc := elmt_PWL_amount / elmt_nucleus;
        elmt_sFrq_tot_conc := elmt_sFrq_tot_amount / elmt_nucleus;
        elmt_lFrq_tot_conc := elmt_lFrq_tot_amount / elmt_nucleus;
        elmt_Frq_tot_conc := elmt_Frq_tot_amount / elmt_nucleus;
        elmt_WC1_tot_conc := elmt_WC1_tot_amount / elmt_nucleus;
        elmt_MF_conc := elmt_MF_amount / elmt_nucleus;
        elmt_MW_conc := elmt_MW_amount / elmt_nucleus;
        elmt_PW_conc := elmt_PW_amount / elmt_nucleus;
        elmt_PFp_conc := elmt_PFp_amount / elmt_nucleus;
end Class_elmt_nucleus;
