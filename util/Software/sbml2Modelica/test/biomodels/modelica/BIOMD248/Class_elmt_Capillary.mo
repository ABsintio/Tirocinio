within BIOMD248;
class Class_elmt_Capillary

    input Real elmt_CrbcHb;
    input Real elmt_KHb;
    input Real elmt_CFtis;
    input Real elmt_DiffusionTransport;
    input Real elmt_reactant6;
    input Real elmt_Qm;
    input Real elmt_ConvectionTransport;
    input Real elmt_product5;
    input Real elmt_nH;
    input Real elmt_Hct;
    input Real elmt_CTart;
    input Real elmt_PSm;

    Real elmt_Capillary(unit = "m3.0") "Capillary";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CFcap_conc(unit = "");
    Real elmt_CFcap_amount(unit = "");
    Real elmt_CFcap(unit = "") "CFcap";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CTcap_conc(unit = "");
    Real elmt_CTcap_amount(unit = "");
    Real elmt_CTcap(unit = "") "CTcap";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Capillary = 2.0979;
        elmt_CFcap_conc = 0.03969;
        elmt_CTcap_conc = 5.281527;


    equation
        assert(elmt_Capillary >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Capillary) = 0;
        elmt_CFcap = elmt_CFcap_conc;
        elmt_CTcap = elmt_CTcap_conc;
        der(elmt_CFcap_amount / elmt_Capillary) = ((((elmt_Qm * (elmt_CTart - elmt_CTcap)) - (elmt_PSm * (elmt_CFcap - elmt_CFtis))) * (1.0 / elmt_Capillary)) / (1.0 + ((4.0 * elmt_Hct * elmt_CrbcHb * elmt_KHb * elmt_nH * Functions.pow(elmt_CFcap, (elmt_nH - 1.0))) / Functions.pow((1.0 + (elmt_KHb * Functions.pow(elmt_CFcap, elmt_nH))), 2.0))));
        der(elmt_CTcap_amount) = ((- (elmt_DiffusionTransport * elmt_reactant6)) + (elmt_ConvectionTransport * elmt_product5));

    algorithm
        elmt_CFcap_conc := elmt_CFcap_amount / elmt_Capillary;
        elmt_CTcap_conc := elmt_CTcap_amount / elmt_Capillary;
end Class_elmt_Capillary;
