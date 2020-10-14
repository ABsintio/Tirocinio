within BIOMD458;
class Reactions

    input Real elmt_php;
    input Real elmt_cell;
    input Real elmt_p3g;
    input Real elmt_pser;
    input Real elmt_ser;
    input Real elmt_serA;
    input Real elmt_serB;
    input Real elmt_serC;

    Real elmt_PDH(unit = "") "phosphoglycerate dehydrogenase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_PDH_elmt_KAphp(unit "m-3.0.") = 0.0032 "";
    parameter Real elmt_PDH_elmt_KAp3g(unit "m-3.0.") = 1.2 "";
    parameter Real elmt_PDH_elmt_KiAser(unit "m-3.0.") = 0.0038 "";
    parameter Real elmt_PDH_elmt_kcatA(unit "s-1.0") = 0.55 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_PSP(unit = "") "phosphoserine phosphatase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_PSP_elmt_KBser(unit "m-3.0.") = 0.15 "";
    parameter Real elmt_PSP_elmt_kcatB(unit "s-1.0") = 1.43 "";
    parameter Real elmt_PSP_elmt_KBpser(unit "m-3.0.") = 0.0015 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_PSA(unit = "") "phosphoserine aminotransferase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_PSA_elmt_KCphp(unit "m-3.0.") = 0.0015 "";
    parameter Real elmt_PSA_elmt_KCpser(unit "m-3.0.") = 0.0017 "";
    parameter Real elmt_PSA_elmt_kcatC(unit "s-1.0") = 1.75 "";
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
        elmt_PDH = (((elmt_cell * elmt_serA * elmt_PDH_elmt_kcatA * (elmt_p3g / elmt_PDH_elmt_KAp3g)) / (1.0 + (elmt_p3g / elmt_PDH_elmt_KAp3g) + (elmt_php / elmt_PDH_elmt_KAphp))) / (1.0 + (elmt_ser / elmt_PDH_elmt_KiAser)));
        elmt_PSP = ((elmt_cell * elmt_serB * elmt_PSP_elmt_kcatB * (elmt_pser / elmt_PSP_elmt_KBpser)) / (1.0 + (elmt_pser / elmt_PSP_elmt_KBpser) + (elmt_ser / elmt_PSP_elmt_KBser)));
        elmt_PSA = ((elmt_cell * elmt_serC * elmt_PSA_elmt_kcatC * (elmt_php / elmt_PSA_elmt_KCphp)) / (1.0 + (elmt_php / elmt_PSA_elmt_KCphp) + (elmt_pser / elmt_PSA_elmt_KCpser)));
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;

end Reactions;
