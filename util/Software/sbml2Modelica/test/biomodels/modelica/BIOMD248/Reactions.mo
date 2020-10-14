within BIOMD248;
class Reactions

    input Real elmt_Kp;
    input Real elmt_Vmax;
    input Real elmt_Kiq;
    input Real elmt_Km;
    input Real elmt_Kadp;
    input Real elmt_CFcap;
    input Real elmt_PCr;
    input Real elmt_Katpase;
    input Real elmt_ATP;
    input Real elmt_VrCK;
    input Real elmt_CTcap;
    input Real elmt_Tissue;
    input Real elmt_VfCK;
    input Real elmt_CFtis;
    input Real elmt_Kia;
    input Real elmt_Kib;
    input Real elmt_Cr;
    input Real elmt_ADP;
    input Real elmt_Qm;
    input Real elmt_CTart;
    input Real elmt_Kb;
    input Real elmt_PSm;

    Real elmt_DiffusionTransport(unit = "") "DiffusionTransport";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_ATPase(unit = "") "ATPase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_OxidativePhosphorylation(unit = "") "OxidativePhosphorylation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_ConvectionTransport(unit = "") "ConvectionTransport";
    Real elmt_product5 "";
    Real elmt_CreatineKinase(unit = "") "CreatineKinase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product11 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";


    initial equation
        elmt_reactant2 = 6.0;
        elmt_product7 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product10 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product5 = 1.0;
        elmt_product4 = 6.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_DiffusionTransport = (elmt_PSm * (elmt_CFcap - elmt_CFtis));
        elmt_ATPase = (elmt_Tissue * elmt_Katpase * elmt_ATP);
        elmt_OxidativePhosphorylation = ((elmt_Tissue * elmt_Vmax * (elmt_CFtis / (elmt_Km + elmt_CFtis)) * elmt_ADP) / (elmt_Kadp + elmt_ADP));
        elmt_ConvectionTransport = (elmt_Qm * (elmt_CTart - elmt_CTcap));
        elmt_CreatineKinase = ((elmt_Tissue * (((elmt_VfCK * elmt_ADP * elmt_PCr) / (elmt_Kb * elmt_Kia)) - ((elmt_VrCK * elmt_Cr * elmt_ATP) / (elmt_Kiq * elmt_Kp)))) / (((elmt_Kia + elmt_ADP) / elmt_Kia) + (elmt_ATP / elmt_Kiq) + (elmt_PCr / elmt_Kib) + ((elmt_ADP * elmt_PCr) / (elmt_Kb * elmt_Kia)) + ((elmt_Cr * elmt_ATP) / (elmt_Kiq * elmt_Kp))));
        der(elmt_reactant2) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product10) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
