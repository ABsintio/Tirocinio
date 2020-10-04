within BIOMD041;
class Class_elmt_IMS

    input Real elmt_ADP_diffusion;
    input Real elmt_reactant1;
    input Real elmt_MiCK;
    input Real elmt_Pi_diffusion;
    input Real elmt_reactant4;
    input Real elmt_product6;
    input Real elmt_reactant20;
    input Real elmt_reactant3;
    input Real elmt_reactant14;
    input Real elmt_PCr_diffusion;
    input Real elmt_reactant16;
    input Real elmt_product5;
    input Real elmt_reactant22;
    input Real elmt_reactant0;
    input Real elmt_ATP_diffusion;
    input Real elmt_product2;
    input Real elmt_Cr_diffusion;
    input Real elmt_reactant18;
    input Real elmt_OxPhos;

    Real elmt_IMS(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PCri_conc(unit = "");
    Real elmt_PCri_amount(unit = "");
    Real elmt_PCri(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ADPi_conc(unit = "");
    Real elmt_ADPi_amount(unit = "");
    Real elmt_ADPi(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_ATPi_conc(unit = "");
    Real elmt_ATPi_amount(unit = "");
    Real elmt_ATPi(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Pi_conc(unit = "");
    Real elmt_Pi_amount(unit = "");
    Real elmt_Pi(unit = "") "Pii";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Cri_conc(unit = "");
    Real elmt_Cri_amount(unit = "");
    Real elmt_Cri(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_IMS = 0.0625;
        elmt_PCri_conc = 0.0;
        elmt_ADPi_conc = 0.0;
        elmt_ATPi_conc = 0.0;
        elmt_Pi_conc = 32000.0;
        elmt_Cri_conc = 0.0;


    equation
        assert(elmt_IMS >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_IMS) = 0;
        elmt_PCri = elmt_PCri_conc;
        elmt_ADPi = elmt_ADPi_conc;
        elmt_ATPi = elmt_ATPi_conc;
        elmt_Pi = elmt_Pi_conc;
        elmt_Cri = elmt_Cri_conc;
        der(elmt_PCri_amount) = ((elmt_MiCK * elmt_product6) + (- (elmt_PCr_diffusion * elmt_reactant20)));
        der(elmt_ADPi_amount) = ((- (elmt_ADP_diffusion * elmt_reactant18)) + (elmt_MiCK * elmt_product5) + (- (elmt_OxPhos * elmt_reactant0)));
        der(elmt_ATPi_amount) = ((- (elmt_MiCK * elmt_reactant3)) + (elmt_OxPhos * elmt_product2) + (- (elmt_ATP_diffusion * elmt_reactant22)));
        der(elmt_Pi_amount) = ((- (elmt_Pi_diffusion * elmt_reactant14)) + (- (elmt_OxPhos * elmt_reactant1)));
        der(elmt_Cri_amount) = ((- (elmt_Cr_diffusion * elmt_reactant16)) + (- (elmt_MiCK * elmt_reactant4)));

    algorithm
        elmt_PCri_conc := elmt_PCri_amount / elmt_IMS;
        elmt_ADPi_conc := elmt_ADPi_amount / elmt_IMS;
        elmt_ATPi_conc := elmt_ATPi_amount / elmt_IMS;
        elmt_Pi_conc := elmt_Pi_amount / elmt_IMS;
        elmt_Cri_conc := elmt_Cri_amount / elmt_IMS;
end Class_elmt_IMS;
