within BIOMD199;
class Reactions

    input Real elmt_k1;
    input Real elmt_FeII_star;
    input Real elmt_O2;
    input Real elmt_FeIII_star;
    input Real elmt_FeII;
    input Real elmt_k8;
    input Real elmt_FeIII;
    input Real elmt_k9;
    input Real elmt_k6;
    input Real elmt_k7;
    input Real elmt_cytosol;
    input Real elmt_k4;
    input Real elmt_k5;
    input Real elmt_FeII_NO;
    input Real elmt_k2;
    input Real elmt_k3;
    input Real elmt_FeII_O2;
    input Real elmt_FeIII_NO;
    input Real elmt_FeII_star_O2;
    input Real elmt_k10;

    Real elmt_rG(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product25 "";
    Real elmt_product24 "";
    Real elmt_reactant22 "";
    Real elmt_reactant23 "";
    Real elmt_r5(unit = "") "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_reactant13 "";
    Real elmt_r6(unit = "") "";
    Real elmt_reactant16 "";
    Real elmt_product18 "";
    Real elmt_product17 "";
    Real elmt_rF(unit = "") "";
    Real elmt_reactant19 "";
    Real elmt_product21 "";
    Real elmt_product20 "";
    Real elmt_r3(unit = "") "";
    Real elmt_product8 "";
    Real elmt_reactant7 "";
    Real elmt_r4(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product12 "";
    Real elmt_product11 "";
    Real elmt_reactant9 "";
    Real elmt_reactant10 "";
    Real elmt_r1(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";
    Real elmt_r2(unit = "") "";
    Real elmt_reactant4 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_r10(unit = "") "";
    Real elmt_reactant30 "";
    Real elmt_reactant29 "";
    Real elmt_product32 "";
    Real elmt_product31 "";
    Real elmt_r9(unit = "") "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_product28 "";


    initial equation
        elmt_product12 = 0.5;
        elmt_product11 = 1.0;
        elmt_product32 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant23 = 0.5;
        elmt_reactant19 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product25 = 0.5;
        elmt_product24 = 1.0;
        elmt_product28 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product21 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant10 = 0.5;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product15 = 1.0;
        elmt_product18 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_rG = (elmt_cytosol * elmt_k8 * elmt_FeIII_NO);
        elmt_r5 = (elmt_cytosol * elmt_k5 * elmt_FeII_star * elmt_O2);
        elmt_r6 = (elmt_cytosol * elmt_k6 * elmt_FeII_star_O2);
        elmt_rF = (elmt_cytosol * elmt_k7 * elmt_FeIII_NO);
        elmt_r3 = (elmt_cytosol * elmt_k3 * elmt_FeII_O2);
        elmt_r4 = (elmt_cytosol * elmt_k4 * elmt_FeIII_star);
        elmt_r1 = (elmt_cytosol * elmt_k1 * elmt_FeIII);
        elmt_r2 = (elmt_cytosol * elmt_k2 * elmt_FeII * elmt_O2);
        elmt_r10 = (elmt_cytosol * elmt_k10 * elmt_FeII_NO * elmt_O2);
        elmt_r9 = (elmt_cytosol * elmt_k9 * elmt_FeII_NO);
        der(elmt_product12) = 0;
        der(elmt_product11) = 0;
        der(elmt_product32) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_product24) = 0;
        der(elmt_product28) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product21) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product15) = 0;
        der(elmt_product18) = 0;
        der(elmt_product17) = 0;

end Reactions;
