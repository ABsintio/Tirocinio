within BIOMD101;
class Reactions

    input Real elmt_RII_endo;
    input Real elmt_lRIRII;
    input Real elmt_RII;
    input Real elmt_RI_endo;
    input Real elmt_klid;
    input Real elmt_ligand;
    input Real elmt_kr;
    input Real elmt_pRI;
    input Real elmt_ka;
    input Real elmt_lRIRII_endo;
    input Real elmt_pRII;
    input Real elmt_ki;
    input Real elmt_kcd;
    input Real elmt_RI;

    Real elmt_v13(unit = "") "RII recycling";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant20 "";
    Real elmt_product21 "";
    Real elmt_v12(unit = "") "RII internalization";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_v9(unit = "") "Ligand Receptor complex recycling";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product15 "";
    Real elmt_product14 "";
    Real elmt_reactant13 "";
    Real elmt_v11(unit = "") "RII constitutive degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant17 "";
    Real elmt_v10(unit = "") "RII synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product16 "";
    Real elmt_v7(unit = "") "RI internalization";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_v8(unit = "") "RI recycling";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product12 "";
    Real elmt_reactant11 "";
    Real elmt_v5(unit = "") "RI synthesis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product7 "";
    Real elmt_v6(unit = "") "RI constitutive degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant8 "";
    Real elmt_v3(unit = "") "Ligand independent complex degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant4 "";
    Real elmt_v4(unit = "") "Ligand receptor complex internalization";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_v1(unit = "") "Ligand receptor complex formation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_v2(unit = "") "Ligand receptor complex constitutive degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant3 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product12 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product21 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product16 = 1.0;
        elmt_product15 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product14 = 1.0;
        elmt_product19 = 1.0;


    equation
        elmt_v13 = (elmt_kr * elmt_RII_endo);
        elmt_v12 = (elmt_ki * elmt_RII);
        elmt_v9 = (elmt_kr * elmt_lRIRII_endo);
        elmt_v11 = (elmt_kcd * elmt_RII);
        elmt_v10 = elmt_pRII;
        elmt_v7 = (elmt_ki * elmt_RI);
        elmt_v8 = (elmt_kr * elmt_RI_endo);
        elmt_v5 = elmt_pRI;
        elmt_v6 = (elmt_kcd * elmt_RI);
        elmt_v3 = (elmt_klid * elmt_lRIRII);
        elmt_v4 = (elmt_ki * elmt_lRIRII);
        elmt_v1 = (elmt_ka * elmt_ligand * elmt_RI * elmt_RII);
        elmt_v2 = (elmt_kcd * elmt_lRIRII);
        der(elmt_reactant1) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product12) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product21) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product16) = 0;
        der(elmt_product15) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product14) = 0;
        der(elmt_product19) = 0;

end Reactions;
