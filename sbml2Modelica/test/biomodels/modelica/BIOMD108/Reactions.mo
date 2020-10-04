within BIOMD108;
class Reactions

    input Real elmt_Cu_I_ZnSOD;
    input Real elmt_HO2star;
    input Real elmt_species_0000011;
    input Real elmt_species_0000006;
    input Real elmt_species_0000007;
    input Real elmt_species_0000008;
    input Real elmt_species_0000009;
    input Real elmt_k12;
    input Real elmt_k11;
    input Real elmt_k10;
    input Real elmt_k13a;
    input Real elmt_k1;
    input Real elmt_k13b;
    input Real elmt_k19;
    input Real elmt_k18;
    input Real elmt_compartment_0000001;
    input Real elmt_k17;
    input Real elmt_k9;
    input Real elmt_k6;
    input Real elmt_k7;
    input Real elmt_species_0000002;
    input Real elmt_k4;
    input Real elmt_k5;
    input Real elmt_k2;
    input Real elmt_species_0000001;
    input Real elmt_k3;
    input Real elmt_species_0000017;

    Real elmt_reaction_3(unit = "") "v5";
    Real elmt_product11 "";
    Real elmt_reactant9 "";
    Real elmt_reactant10 "";
    Real elmt_reaction_4(unit = "") "v6";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_reaction_1(unit = "") "v3";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_reaction_2(unit = "") "v4";
    Real elmt_product8 "";
    Real elmt_reactant6 "";
    Real elmt_reactant7 "";
    Real elmt_reaction_0(unit = "") "v2";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant2 "";
    Real elmt_reactant1 "";
    Real elmt_fast(unit = "") "v16";
    Real elmt_reactant29 "";
    Real elmt_reaction_9(unit = "") "v12";
    Real elmt_reactant20 "";
    Real elmt_reaction_14(unit = "") "v19";
    Real elmt_reactant28 "";
    Real elmt_reaction_7(unit = "") "v10";
    Real elmt_product16 "";
    Real elmt_product17 "";
    Real elmt_reaction_8(unit = "") "v11";
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_reaction_5(unit = "") "v7";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant14 "";
    Real elmt_reaction_6(unit = "") "v9";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant15 "";
    Real elmt_reaction_12(unit = "") "v17";
    Real elmt_product24 "";
    Real elmt_reactant23 "";
    Real elmt_reaction_13(unit = "") "v18";
    Real elmt_reactant25 "";
    Real elmt_product27 "";
    Real elmt_product26 "";
    Real elmt_reaction_10(unit = "") "v13a";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product21 "";
    Real elmt_reaction_0000001(unit = "") "v1";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_product0 "";
    Real elmt_reaction_11(unit = "") "v13b";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_reactant22 "";


    initial equation
        elmt_reactant20 = 1.0;
        elmt_product11 = 2.0;
        elmt_reactant25 = 1.0;
        elmt_reactant28 = 2.0;
        elmt_reactant22 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product26 = 1.0;
        elmt_product24 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product5 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product16 = 1.0;
        elmt_product13 = 2.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_reaction_3 = (elmt_compartment_0000001 * elmt_k5 * elmt_species_0000001 * elmt_species_0000006);
        elmt_reaction_4 = (elmt_compartment_0000001 * elmt_k6 * elmt_species_0000006 * elmt_species_0000002);
        elmt_reaction_1 = (elmt_compartment_0000001 * elmt_k3 * elmt_species_0000001 * elmt_Cu_I_ZnSOD);
        elmt_reaction_2 = (elmt_compartment_0000001 * elmt_k4 * elmt_species_0000001 * elmt_species_0000007);
        elmt_reaction_0 = (elmt_compartment_0000001 * elmt_k2 * elmt_species_0000001 * elmt_species_0000002);
        elmt_fast = (elmt_k10 * elmt_HO2star * elmt_compartment_0000001);
        elmt_reaction_9 = (elmt_compartment_0000001 * elmt_k12 * elmt_species_0000009);
        elmt_reaction_14 = (elmt_compartment_0000001 * elmt_k19 * Functions.pow(elmt_species_0000007, 2.0));
        elmt_reaction_7 = (elmt_compartment_0000001 * elmt_k10 * elmt_HO2star);
        elmt_reaction_8 = (elmt_compartment_0000001 * elmt_k11 * elmt_species_0000008);
        elmt_reaction_5 = (elmt_compartment_0000001 * elmt_k7 * elmt_species_0000006 * elmt_species_0000017);
        elmt_reaction_6 = (elmt_compartment_0000001 * elmt_k9 * elmt_species_0000008);
        elmt_reaction_12 = (elmt_compartment_0000001 * elmt_k17 * elmt_species_0000011);
        elmt_reaction_13 = (elmt_compartment_0000001 * elmt_k18 * elmt_species_0000007);
        elmt_reaction_10 = (elmt_compartment_0000001 * elmt_k13a * elmt_Cu_I_ZnSOD);
        elmt_reaction_0000001 = (elmt_compartment_0000001 * elmt_k1);
        elmt_reaction_11 = (elmt_compartment_0000001 * elmt_k13b * elmt_species_0000002);
        der(elmt_reactant20) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product26) = 0;
        der(elmt_product24) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product16) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
