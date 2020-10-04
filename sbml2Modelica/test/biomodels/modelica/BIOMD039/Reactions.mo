within BIOMD039;
class Reactions

    input Real elmt_CaPr;
    input Real elmt_Ca_cyt;
    input Real elmt_Cytosol;
    input Real elmt_Pr;
    input Real elmt_Endoplasmic_Reticulum;
    input Real elmt_CaM;
    input Real elmt_Mitochondria;
    input Real elmt_CaER;

    Real elmt_v12(unit = "") "binding of Ca on Pr";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v12_elmt_Kplus(unit "") = 0.1 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_reactant13 "";
    Real elmt_v9(unit = "") "Jin";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v9_elmt_Kin(unit "") = 300.0 "";
    parameter Real elmt_v9_elmt_K2(unit "") = 0.8 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_v11(unit = "") "dissociation of CaPr";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v11_elmt_Kminus(unit "") = 0.01 "";
    Real elmt_product12 "";
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_v7(unit = "") "Jout";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v7_elmt_Kout(unit "") = 125.0 "";
    parameter Real elmt_v7_elmt_Km(unit "") = 0.00625 "";
    parameter Real elmt_v7_elmt_K3(unit "") = 5.0 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_v5(unit = "") "Jpump";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v5_elmt_Kpump(unit "") = 20.0 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_v3(unit = "") "Jleak";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v3_elmt_Kleak(unit "") = 0.05 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_v1(unit = "") "Jch";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v1_elmt_K1(unit "") = 5.0 "";
    parameter Real elmt_v1_elmt_Kch(unit "") = 4100.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";


    initial equation
        elmt_product9 = 0.25;
        elmt_reactant2 = 0.25;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product12 = 1.0;
        elmt_reactant6 = 0.25;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 0.25;
        elmt_product3 = 1.0;
        elmt_reactant0 = 0.25;
        elmt_reactant13 = 1.0;
        elmt_product15 = 1.0;


    equation
        elmt_v12 = (elmt_Cytosol * elmt_v12_elmt_Kplus * elmt_Ca_cyt * elmt_Pr);
        elmt_v9 = (elmt_Mitochondria * ((elmt_v9_elmt_Kin * Functions.pow(elmt_Ca_cyt, 8.0)) / (Functions.pow(elmt_v9_elmt_K2, 8.0) + Functions.pow(elmt_Ca_cyt, 8.0))));
        elmt_v11 = (elmt_Cytosol * elmt_v11_elmt_Kminus * elmt_CaPr);
        elmt_v7 = (elmt_Cytosol * elmt_CaM * (((elmt_v7_elmt_Kout * Functions.pow(elmt_Ca_cyt, 2.0)) / (Functions.pow(elmt_v7_elmt_K3, 2.0) + Functions.pow(elmt_Ca_cyt, 2.0))) + elmt_v7_elmt_Km));
        elmt_v5 = (elmt_Endoplasmic_Reticulum * elmt_v5_elmt_Kpump * elmt_Ca_cyt);
        elmt_v3 = (elmt_Cytosol * elmt_v3_elmt_Kleak * (elmt_CaER - elmt_Ca_cyt));
        elmt_v1 = (elmt_Cytosol * ((elmt_v1_elmt_Kch * Functions.pow(elmt_Ca_cyt, 2.0) * (elmt_CaER - elmt_Ca_cyt)) / (Functions.pow(elmt_v1_elmt_K1, 2.0) + Functions.pow(elmt_Ca_cyt, 2.0))));
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product12) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product15) = 0;

end Reactions;
