within BIOMD197;
class Reactions

    input Real elmt_p5;
    input Real elmt_p6;
    input Real elmt_p3;
    input Real elmt_p4;
    input Real elmt_p1;
    input Real elmt_p2;
    input Real elmt_p12;
    input Real elmt_basolat;
    input Real elmt_p9;
    input Real elmt_p7;
    input Real elmt_p8;
    input Real elmt_apical;
    input Real elmt_p11;
    input Real elmt_x5;
    input Real elmt_p10;
    input Real elmt_x3;
    input Real elmt_x4;
    input Real elmt_x1;
    input Real elmt_x2;

    Real elmt_endo_in_bl(unit = "") "endogenous basolateral import";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_cellular_BSP_binding(unit = "") "cellular BSP binding";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_paracell_transp(unit = "") "paracellular transport";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_endo_ex_ap(unit = "") "endogenous apical export";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_OATP1B3(unit = "") "OATP1B3 mediated import";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_bl_BSP_dissoc(unit = "") "basolateral BSP dissoc";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_cellular_BSP_dissoc(unit = "") "cellular BSP dissoc";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_ABCC2(unit = "") "ABCC2 mediated export";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_bl_BSP_binding(unit = "") "basolateral BSP binding";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product11 "";
    Real elmt_reactant10 "";
    Real elmt_endo_ex_bl(unit = "") "endogenous basolateral export";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_endo_in_bl = (elmt_p3 * elmt_x1);
        elmt_cellular_BSP_binding = (elmt_p9 * elmt_x3 * (elmt_p11 - elmt_x4));
        elmt_paracell_transp = (elmt_p12 * ((elmt_x1 / elmt_basolat) - (elmt_x5 / elmt_apical)));
        elmt_endo_ex_ap = (elmt_p5 * elmt_x3);
        elmt_OATP1B3 = (elmt_p1 * elmt_x1);
        elmt_bl_BSP_dissoc = (elmt_p7 * elmt_x2);
        elmt_cellular_BSP_dissoc = (elmt_p10 * elmt_x4);
        elmt_ABCC2 = (elmt_p2 * elmt_x3);
        elmt_bl_BSP_binding = (elmt_p6 * elmt_x1 * (elmt_p8 - elmt_x2));
        elmt_endo_ex_bl = (elmt_p4 * elmt_x3);
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
