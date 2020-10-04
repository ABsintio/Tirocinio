within BIOMD041;
class Class_elmt_CYT

    input Real elmt_product9;
    input Real elmt_ADP_diffusion;
    input Real elmt_Pi_diffusion;
    input Real elmt_product12;
    input Real elmt_product23;
    input Real elmt_ATPase;
    input Real elmt_reactant8;
    input Real elmt_product21;
    input Real elmt_product10;
    input Real elmt_reactant7;
    input Real elmt_PCr_diffusion;
    input Real elmt_reactant11;
    input Real elmt_ATP_diffusion;
    input Real elmt_MMCK;
    input Real elmt_Cr_diffusion;
    input Real elmt_product15;
    input Real elmt_product13;
    input Real elmt_product19;
    input Real elmt_product17;

    Real elmt_CYT(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P_conc(unit = "");
    Real elmt_P_amount(unit = "");
    Real elmt_P(unit = "") "Pi";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Cr_conc(unit = "");
    Real elmt_Cr_amount(unit = "");
    Real elmt_Cr(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PCr_conc(unit = "");
    Real elmt_PCr_amount(unit = "");
    Real elmt_PCr(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ADP_conc(unit = "");
    Real elmt_ADP_amount(unit = "");
    Real elmt_ADP(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ATP_conc(unit = "");
    Real elmt_ATP_amount(unit = "");
    Real elmt_ATP(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_CYT = 0.75;
        elmt_P_conc = 0.0;
        elmt_Cr_conc = 26000.0;
        elmt_PCr_conc = 0.0;
        elmt_ADP_conc = 0.0;
        elmt_ATP_conc = 9700.0;


    equation
        assert(elmt_CYT >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_CYT) = 0;
        elmt_P = elmt_P_conc;
        elmt_Cr = elmt_Cr_conc;
        elmt_PCr = elmt_PCr_conc;
        elmt_ADP = elmt_ADP_conc;
        elmt_ATP = elmt_ATP_conc;
        der(elmt_P_amount) = ((elmt_Pi_diffusion * elmt_product15) + (elmt_ATPase * elmt_product13));
        der(elmt_Cr_amount) = ((elmt_Cr_diffusion * elmt_product17) + (- (elmt_MMCK * elmt_reactant8)));
        der(elmt_PCr_amount) = ((elmt_PCr_diffusion * elmt_product21) + (elmt_MMCK * elmt_product9));
        der(elmt_ADP_amount) = ((elmt_ADP_diffusion * elmt_product19) + (elmt_ATPase * elmt_product12) + (elmt_MMCK * elmt_product10));
        der(elmt_ATP_amount) = ((- (elmt_ATPase * elmt_reactant11)) + (elmt_ATP_diffusion * elmt_product23) + (- (elmt_MMCK * elmt_reactant7)));

    algorithm
        elmt_P_conc := elmt_P_amount / elmt_CYT;
        elmt_Cr_conc := elmt_Cr_amount / elmt_CYT;
        elmt_PCr_conc := elmt_PCr_amount / elmt_CYT;
        elmt_ADP_conc := elmt_ADP_amount / elmt_CYT;
        elmt_ATP_conc := elmt_ATP_amount / elmt_CYT;
end Class_elmt_CYT;
