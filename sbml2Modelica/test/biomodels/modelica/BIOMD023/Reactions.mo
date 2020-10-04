within BIOMD023;
class Reactions

    input Real elmt_Glcex;
    input Real elmt_compartment;
    input Real elmt_HexP;
    input Real elmt_Suc;
    input Real elmt_UDP;
    input Real elmt_Suc6P;
    input Real elmt_ATP;
    input Real elmt_ADP;
    input Real elmt_phos;
    input Real elmt_Glc;
    input Real elmt_Fruex;
    input Real elmt_Fru;

    Real elmt_v9(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v9_elmt_Ki9Fru(unit "") = 15.0 "";
    parameter Real elmt_v9_elmt_Km9Suc(unit "") = 10.0 "";
    parameter Real elmt_v9_elmt_Ki9Glc(unit "") = 15.0 "";
    parameter Real elmt_v9_elmt_Vmax9(unit "") = 0.372 "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_product28 "";
    Real elmt_v11(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v11_elmt_Km11Suc(unit "") = 100.0 "";
    parameter Real elmt_v11_elmt_Vmax11(unit "") = 1.0 "";
    Real elmt_reactant31 "";
    Real elmt_product32 "";
    Real elmt_v10(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v10_elmt_Km10F6P(unit "") = 0.2 "";
    parameter Real elmt_v10_elmt_Vmax10(unit "") = 0.1 "";
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_v7(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v7_elmt_Km7Suc6P(unit "") = 0.1 "";
    parameter Real elmt_v7_elmt_Vmax7(unit "") = 0.5 "";
    Real elmt_reactant19 "";
    Real elmt_product21 "";
    Real elmt_product20 "";
    Real elmt_v8(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v8_elmt_Km8Fru(unit "") = 4.0 "";
    parameter Real elmt_v8_elmt_Keq8(unit "") = 5.0 "";
    parameter Real elmt_v8_elmt_Km8Suc(unit "") = 50.0 "";
    parameter Real elmt_v8_elmt_Km8UDP(unit "") = 0.3 "";
    parameter Real elmt_v8_elmt_Ki8UDP(unit "") = 0.3 "";
    parameter Real elmt_v8_elmt_Km8UDPGlc(unit "") = 0.3 "";
    parameter Real elmt_v8_elmt_Ki8Suc(unit "") = 40.0 "";
    parameter Real elmt_v8_elmt_Vmax8r(unit "") = 0.3 "";
    parameter Real elmt_v8_elmt_Vmax8f(unit "") = 0.677 "";
    parameter Real elmt_v8_elmt_Ki8Fru(unit "") = 4.0 "";
    Real elmt_product25 "";
    Real elmt_product24 "";
    Real elmt_reactant22 "";
    Real elmt_reactant23 "";
    Real elmt_v5(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v5_elmt_Vmax5(unit "") = 0.164 "";
    parameter Real elmt_v5_elmt_Km5Fru(unit "") = 0.1 "";
    parameter Real elmt_v5_elmt_Ki5ADP(unit "") = 2.0 "";
    parameter Real elmt_v5_elmt_Ki5Fru(unit "") = 12.0 "";
    parameter Real elmt_v5_elmt_Km5ATP(unit "") = 0.085 "";
    Real elmt_product15 "";
    Real elmt_product14 "";
    Real elmt_reactant12 "";
    Real elmt_reactant13 "";
    Real elmt_v6(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v6_elmt_Ki6Suc6P(unit "") = 0.07 "";
    parameter Real elmt_v6_elmt_Ki6UDPGlc(unit "") = 1.4 "";
    parameter Real elmt_v6_elmt_Km6Suc6P(unit "") = 0.1 "";
    parameter Real elmt_v6_elmt_Keq6(unit "") = 10.0 "";
    parameter Real elmt_v6_elmt_Ki6F6P(unit "") = 0.4 "";
    parameter Real elmt_v6_elmt_Ki6Pi(unit "") = 3.0 "";
    parameter Real elmt_v6_elmt_Km6UDPGlc(unit "") = 1.8 "";
    parameter Real elmt_v6_elmt_Km6UDP(unit "") = 0.3 "";
    parameter Real elmt_v6_elmt_Km6F6P(unit "") = 0.6 "";
    parameter Real elmt_v6_elmt_Vmax6r(unit "") = 0.2 "";
    parameter Real elmt_v6_elmt_Vmax6f(unit "") = 0.379 "";
    Real elmt_reactant16 "";
    Real elmt_product18 "";
    Real elmt_product17 "";
    Real elmt_v3(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v3_elmt_Ki3G6P(unit "") = 0.1 "";
    parameter Real elmt_v3_elmt_Vmax3(unit "") = 0.197 "";
    parameter Real elmt_v3_elmt_Ki4F6P(unit "") = 10.0 "";
    parameter Real elmt_v3_elmt_Km3ATP(unit "") = 0.25 "";
    parameter Real elmt_v3_elmt_Km3Glc(unit "") = 0.07 "";
    parameter Real elmt_v3_elmt_Km4Fru(unit "") = 10.0 "";
    Real elmt_reactant4 "";
    Real elmt_product7 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_v4(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v4_elmt_Ki3G6P(unit "") = 0.1 "";
    parameter Real elmt_v4_elmt_Vmax4(unit "") = 0.197 "";
    parameter Real elmt_v4_elmt_Ki4F6P(unit "") = 10.0 "";
    parameter Real elmt_v4_elmt_Km4ATP(unit "") = 0.25 "";
    parameter Real elmt_v4_elmt_Km3Glc(unit "") = 0.07 "";
    parameter Real elmt_v4_elmt_Km4Fru(unit "") = 10.0 "";
    Real elmt_product11 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_v1(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v1_elmt_Km1Fruex(unit "") = 0.2 "";
    parameter Real elmt_v1_elmt_Vmax1(unit "") = 0.286 "";
    parameter Real elmt_v1_elmt_Ki1Fru(unit "") = 1.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_v2(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_v2_elmt_Vmax2(unit "") = 0.286 "";
    parameter Real elmt_v2_elmt_Ki2Glc(unit "") = 1.0 "";
    parameter Real elmt_v2_elmt_Km2Glcex(unit "") = 0.2 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";


    initial equation
        elmt_product30 = 1.0;
        elmt_product11 = 1.0;
        elmt_product32 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product25 = 1.0;
        elmt_product24 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product20 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant16 = 2.0;
        elmt_reactant12 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product15 = 1.0;
        elmt_product14 = 1.0;
        elmt_product18 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_v9 = (elmt_compartment * (((elmt_v9_elmt_Vmax9 / (1.0 + (elmt_Glc / elmt_v9_elmt_Ki9Glc))) * elmt_Suc) / ((elmt_v9_elmt_Km9Suc * (1.0 + (elmt_Fru / elmt_v9_elmt_Ki9Fru))) + elmt_Suc)));
        elmt_v11 = (elmt_compartment * ((elmt_v11_elmt_Vmax11 * elmt_Suc) / (elmt_v11_elmt_Km11Suc + elmt_Suc)));
        elmt_v10 = (elmt_compartment * ((elmt_v10_elmt_Vmax10 * 0.0575 * elmt_HexP) / (elmt_v10_elmt_Km10F6P + (0.0575 * elmt_HexP))));
        elmt_v7 = (elmt_compartment * ((elmt_v7_elmt_Vmax7 * elmt_Suc6P) / (elmt_v7_elmt_Km7Suc6P + elmt_Suc6P)));
        elmt_v8 = (elmt_compartment * (((- elmt_v8_elmt_Vmax8f) * ((elmt_Suc * elmt_UDP) - ((elmt_Fru * 0.8231 * elmt_HexP) / elmt_v8_elmt_Keq8))) / ((elmt_Suc * elmt_UDP * (1.0 + (elmt_Fru / elmt_v8_elmt_Ki8Fru))) + (elmt_v8_elmt_Km8Suc * (elmt_UDP + elmt_v8_elmt_Ki8UDP)) + (elmt_v8_elmt_Km8UDP * elmt_Suc) + ((elmt_v8_elmt_Vmax8f / (elmt_v8_elmt_Vmax8r * elmt_v8_elmt_Keq8)) * ((elmt_v8_elmt_Km8UDPGlc * elmt_Fru * (1.0 + (elmt_UDP / elmt_v8_elmt_Ki8UDP))) + (0.8231 * elmt_HexP * ((elmt_v8_elmt_Km8Fru * (1.0 + ((elmt_v8_elmt_Km8UDP * elmt_Suc) / (elmt_v8_elmt_Ki8UDP * elmt_v8_elmt_Km8Suc)))) + (elmt_Fru * (1.0 + (elmt_Suc / elmt_v8_elmt_Ki8Suc))))))))));
        elmt_v5 = (elmt_compartment * (((elmt_v5_elmt_Vmax5 / (1.0 + (elmt_Fru / elmt_v5_elmt_Ki5Fru))) * (elmt_Fru / elmt_v5_elmt_Km5Fru) * (elmt_ATP / elmt_v5_elmt_Km5ATP)) / (1.0 + (elmt_Fru / elmt_v5_elmt_Km5Fru) + (elmt_ATP / elmt_v5_elmt_Km5ATP) + ((elmt_Fru * elmt_ATP) / (elmt_v5_elmt_Km5Fru * elmt_v5_elmt_Km5ATP)) + (elmt_ADP / elmt_v5_elmt_Ki5ADP))));
        elmt_v6 = (elmt_compartment * ((elmt_v6_elmt_Vmax6f * ((0.0575 * elmt_HexP * 0.8231 * elmt_HexP) - ((elmt_Suc6P * elmt_UDP) / elmt_v6_elmt_Keq6))) / ((0.0575 * elmt_HexP * 0.8231 * elmt_HexP * (1.0 + (elmt_Suc6P / elmt_v6_elmt_Ki6Suc6P))) + (elmt_v6_elmt_Km6F6P * (1.0 + (elmt_phos / elmt_v6_elmt_Ki6Pi)) * ((0.8231 * elmt_HexP) + elmt_v6_elmt_Ki6UDPGlc)) + (elmt_v6_elmt_Km6UDPGlc * 0.0575 * elmt_HexP) + ((elmt_v6_elmt_Vmax6f / (elmt_v6_elmt_Vmax6r * elmt_v6_elmt_Keq6)) * ((elmt_v6_elmt_Km6UDP * elmt_Suc6P * (1.0 + ((0.8231 * elmt_HexP) / elmt_v6_elmt_Ki6UDPGlc))) + (elmt_UDP * ((elmt_v6_elmt_Km6Suc6P * (1.0 + ((elmt_v6_elmt_Km6UDPGlc * 0.0575 * elmt_HexP) / (elmt_v6_elmt_Ki6UDPGlc * elmt_v6_elmt_Km6F6P * (1.0 + (elmt_phos / elmt_v6_elmt_Ki6Pi)))))) + (elmt_Suc6P * (1.0 + ((0.0575 * elmt_HexP) / elmt_v6_elmt_Ki6F6P))))))))));
        elmt_v3 = (elmt_compartment * ((elmt_v3_elmt_Vmax3 * (elmt_Glc / elmt_v3_elmt_Km3Glc) * (elmt_ATP / elmt_v3_elmt_Km3ATP)) / ((1.0 + (elmt_ATP / elmt_v3_elmt_Km3ATP)) * (1.0 + (elmt_Glc / elmt_v3_elmt_Km3Glc) + (elmt_Fru / elmt_v3_elmt_Km4Fru) + ((0.113 * elmt_HexP) / elmt_v3_elmt_Ki3G6P) + ((0.0575 * elmt_HexP) / elmt_v3_elmt_Ki4F6P)))));
        elmt_v4 = (elmt_compartment * ((elmt_v4_elmt_Vmax4 * (elmt_Fru / elmt_v4_elmt_Km4Fru) * (elmt_ATP / elmt_v4_elmt_Km4ATP)) / ((1.0 + (elmt_ATP / elmt_v4_elmt_Km4ATP)) * (1.0 + (elmt_Glc / elmt_v4_elmt_Km3Glc) + (elmt_Fru / elmt_v4_elmt_Km4Fru) + ((0.113 * elmt_HexP) / elmt_v4_elmt_Ki3G6P) + ((0.0575 * elmt_HexP) / elmt_v4_elmt_Ki4F6P)))));
        elmt_v1 = (elmt_compartment * ((elmt_v1_elmt_Vmax1 * elmt_Fruex) / ((elmt_v1_elmt_Km1Fruex * (1.0 + (elmt_Fru / elmt_v1_elmt_Ki1Fru))) + elmt_Fruex)));
        elmt_v2 = (elmt_compartment * ((elmt_v2_elmt_Vmax2 * elmt_Glcex) / ((elmt_v2_elmt_Km2Glcex * (1.0 + (elmt_Glc / elmt_v2_elmt_Ki2Glc))) + elmt_Glcex)));
        der(elmt_product30) = 0;
        der(elmt_product11) = 0;
        der(elmt_product32) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_product24) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product20) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product15) = 0;
        der(elmt_product14) = 0;
        der(elmt_product18) = 0;
        der(elmt_product17) = 0;

end Reactions;
