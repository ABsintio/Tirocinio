within BIOMD459;
class Reactions

    input Real elmt_kxd;
    input Real elmt_kxs;
    input Real elmt_kzd;
    input Real elmt_kzs;
    input Real elmt_lacz;
    input Real elmt_x;
    input Real elmt_sigb;
    input Real elmt_kbd;
    input Real elmt_kbs;
    input Real elmt_IPTG;
    input Real elmt_kzx;

    Real elmt_v3(unit = "") "v3";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_v1(unit = "") "v1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_v2(unit = "") "v2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;


    equation
        elmt_v3 = ((elmt_kxs * elmt_sigb) - (elmt_kxd * elmt_x));
        elmt_v1 = ((elmt_IPTG * elmt_kbs) - (elmt_kbd * elmt_sigb));
        elmt_v2 = ((elmt_kzs * elmt_sigb) - (elmt_lacz * (elmt_kzd + (elmt_kzx * elmt_x))));
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;

end Reactions;
