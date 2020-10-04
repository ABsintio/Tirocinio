within BIOMD068;
class Reactions

    input Real elmt_AdoMet;
    input Real elmt_compartment;
    input Real elmt_TS;
    input Real elmt_Phi;
    input Real elmt_Phser;
    input Real elmt_CGS;
    input Real elmt_Cys;

    Real elmt_vThr(unit = "") "Threonine Synthase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vThr_elmt_Ki3(unit "m-3.0.") = 1000.0 "";
    Real elmt_product8 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_vCys(unit = "") "Cystathionine gamma-synthase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_vCys_elmt_KmPHSER(unit "m-3.0.") = 2500.0 "";
    parameter Real elmt_vCys_elmt_KmCYS(unit "m-3.0.") = 460.0 "";
    parameter Real elmt_vCys_elmt_Ki2(unit "m-3.0.") = 2000.0 "";
    parameter Real elmt_vCys_elmt_kcat2(unit "m-3.0.") = 30.0 "";
    Real elmt_reactant2 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_v1(unit = "") "Phosphohomoserine synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_v1_elmt_V0(unit "m-3.0..s-1.0") = 1.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product8 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 1.0;


    equation
        elmt_vThr = ((elmt_TS * (5.9E-4 + ((0.062 * Functions.pow(elmt_AdoMet, 2.9)) / (Functions.pow(32.0, 2.9) + Functions.pow(elmt_AdoMet, 2.9)))) * elmt_Phser) / (1.0 + (elmt_Phi / elmt_vThr_elmt_Ki3)));
        elmt_vCys = ((elmt_CGS * (elmt_vCys_elmt_kcat2 / (1.0 + (elmt_vCys_elmt_KmCYS / elmt_Cys))) * elmt_Phser) / (elmt_Phser + ((elmt_vCys_elmt_KmPHSER * (1.0 + (elmt_Phi / elmt_vCys_elmt_Ki2))) / (1.0 + (elmt_vCys_elmt_KmCYS / elmt_Cys)))));
        elmt_v1 = (elmt_compartment * elmt_v1_elmt_V0);
        der(elmt_reactant2) = 0;
        der(elmt_product8) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;

end Reactions;
