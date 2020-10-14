within BIOMD248;
class Class_elmt_Tissue

    input Real elmt_reactant2;
    input Real elmt_product7;
    input Real elmt_reactant3;
    input Real elmt_Vmax;
    input Real elmt_Km;
    input Real elmt_Kadp;
    input Real elmt_product11;
    input Real elmt_ATPase;
    input Real elmt_product10;
    input Real elmt_reactant8;
    input Real elmt_CFcap;
    input Real elmt_product1;
    input Real elmt_KMb;
    input Real elmt_OxidativePhosphorylation;
    input Real elmt_product4;
    input Real elmt_CreatineKinase;
    input Real elmt_reactant0;
    input Real elmt_DiffusionTransport;
    input Real elmt_CmcMb;
    input Real elmt_reactant9;
    input Real elmt_Wmc;
    input Real elmt_PSm;

    Real elmt_Tissue(unit = "m3.0") "Tissue";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CTtis_conc(unit = "");
    Real elmt_CTtis_amount(unit = "");
    Real elmt_CTtis(unit = "") "CTtis";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CFtis_conc(unit = "");
    Real elmt_CFtis_amount(unit = "");
    Real elmt_CFtis(unit = "") "CFtis";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Cr_conc(unit = "");
    Real elmt_Cr_amount(unit = "");
    Real elmt_Cr(unit = "") "Cr";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PCr_conc(unit = "");
    Real elmt_PCr_amount(unit = "");
    Real elmt_PCr(unit = "") "PCr";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ATP_conc(unit = "");
    Real elmt_ATP_amount(unit = "");
    Real elmt_ATP(unit = "") "ATP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ADP_conc(unit = "");
    Real elmt_ADP_amount(unit = "");
    Real elmt_ADP(unit = "") "ADP";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Pi_conc(unit = "");
    Real elmt_Pi_amount(unit = "");
    Real elmt_Pi(unit = "") "Pi";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Tissue = 27.8721;
        elmt_CTtis_conc = 0.4084824;
        elmt_CFtis_conc = 0.0374;
        elmt_Cr_conc = 1.01056;
        elmt_PCr_conc = 40.98942;
        elmt_ATP_conc = 8.198857;
        elmt_ADP_conc = 0.001142;
        elmt_Pi_conc = 0.5;


    equation
        assert(elmt_Tissue >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Tissue) = 0;
        elmt_CTtis = elmt_CTtis_conc;
        elmt_CFtis = elmt_CFtis_conc;
        elmt_Cr = elmt_Cr_conc;
        elmt_PCr = elmt_PCr_conc;
        elmt_ATP = elmt_ATP_conc;
        elmt_ADP = elmt_ADP_conc;
        elmt_Pi = elmt_Pi_conc;
        der(elmt_CFtis_amount / elmt_Tissue) = ((((elmt_PSm * (elmt_CFcap - elmt_CFtis)) / elmt_Tissue) - (elmt_Vmax * (((elmt_CFtis / (elmt_Km + elmt_CFtis)) * elmt_ADP) / (elmt_Kadp + elmt_ADP)))) / (1.0 + ((elmt_Wmc * elmt_CmcMb * elmt_KMb) / Functions.pow((1.0 + (elmt_KMb * elmt_CFtis)), 2.0))));
        der(elmt_Pi_amount) = 0;
        der(elmt_CTtis_amount) = ((elmt_DiffusionTransport * elmt_product7) + (- (elmt_OxidativePhosphorylation * elmt_reactant3)));
        der(elmt_Cr_amount) = (elmt_CreatineKinase * elmt_product11);
        der(elmt_PCr_amount) = (- (elmt_CreatineKinase * elmt_reactant9));
        der(elmt_ATP_amount) = ((- (elmt_ATPase * elmt_reactant0)) + (elmt_OxidativePhosphorylation * elmt_product4) + (elmt_CreatineKinase * elmt_product10));
        der(elmt_ADP_amount) = ((elmt_ATPase * elmt_product1) + (- (elmt_OxidativePhosphorylation * elmt_reactant2)) + (- (elmt_CreatineKinase * elmt_reactant8)));

    algorithm
        elmt_CTtis_conc := elmt_CTtis_amount / elmt_Tissue;
        elmt_CFtis_conc := elmt_CFtis_amount / elmt_Tissue;
        elmt_Cr_conc := elmt_Cr_amount / elmt_Tissue;
        elmt_PCr_conc := elmt_PCr_amount / elmt_Tissue;
        elmt_ATP_conc := elmt_ATP_amount / elmt_Tissue;
        elmt_ADP_conc := elmt_ADP_amount / elmt_Tissue;
        elmt_Pi_conc := elmt_Pi_amount / elmt_Tissue;
end Class_elmt_Tissue;
