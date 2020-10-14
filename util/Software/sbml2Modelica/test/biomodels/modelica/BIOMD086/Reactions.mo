within BIOMD086;
class Reactions

    input Real elmt_species_6;
    input Real elmt_species_7;
    input Real elmt_species_4;
    input Real elmt_species_5;
    input Real elmt_species_8;
    input Real elmt_species_9;
    input Real elmt_species_15;
    input Real elmt_species_16;
    input Real elmt_species_2;
    input Real elmt_species_3;
    input Real elmt_species_0;
    input Real elmt_species_1;
    input Real elmt_compartment_0;
    input Real elmt_species_10;
    input Real elmt_species_11;
    input Real elmt_species_12;
    input Real elmt_species_13;
    input Real elmt_species_14;

    Real elmt_reaction_20(unit = "") "RG*AT hydrolysis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_20_elmt_k1(unit "") = 25.0 "";
    parameter Real elmt_reaction_20_elmt_k2(unit "") = 0.00297 "";
    Real elmt_product62 "";
    Real elmt_product61 "";
    Real elmt_reactant60 "";
    Real elmt_reaction_23(unit = "") "RGAD dissociation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_23_elmt_k1(unit "") = 2.75 "";
    parameter Real elmt_reaction_23_elmt_k2(unit "") = 2940.0 "";
    Real elmt_product71 "";
    Real elmt_reactant69 "";
    Real elmt_product70 "";
    Real elmt_reaction_21(unit = "") "RGD binding GAP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_21_elmt_k1(unit "") = 13000.0 "";
    parameter Real elmt_reaction_21_elmt_k2(unit "") = 0.685 "";
    Real elmt_reactant63 "";
    Real elmt_reactant64 "";
    Real elmt_product65 "";
    Real elmt_reaction_22(unit = "") "GAD binding Receptor";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_22_elmt_k1(unit "") = 4.94E7 "";
    parameter Real elmt_reaction_22_elmt_k2(unit "") = 0.00421 "";
    Real elmt_product68 "";
    Real elmt_reactant66 "";
    Real elmt_reactant67 "";
    Real elmt_reaction_3(unit = "") "G*T  hydrolysis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_3_elmt_k1(unit "") = 0.013 "";
    parameter Real elmt_reaction_3_elmt_k2(unit "") = 9.03E-7 "";
    Real elmt_product11 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_reaction_4(unit = "") "GD dissociation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_4_elmt_k1(unit "") = 1.0E-4 "";
    parameter Real elmt_reaction_4_elmt_k2(unit "") = 62.3 "";
    Real elmt_product14 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_reaction_1(unit = "") "G protein binding GTP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_1_elmt_k1(unit "") = 529000.0 "";
    parameter Real elmt_reaction_1_elmt_k2(unit "") = 8.38E-6 "";
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_reaction_2(unit = "") "G binding Receptor";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_2_elmt_k1(unit "") = 6.36E8 "";
    parameter Real elmt_reaction_2_elmt_k2(unit "") = 0.0179 "";
    Real elmt_product8 "";
    Real elmt_reactant6 "";
    Real elmt_reactant7 "";
    Real elmt_reaction_0(unit = "") "G protein binding GAP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_0_elmt_k1(unit "") = 8780000.0 "";
    parameter Real elmt_reaction_0_elmt_k2(unit "") = 8.0 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_reaction_16(unit = "") "GA binding Receptor";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_16_elmt_k1(unit "") = 2.28E7 "";
    parameter Real elmt_reaction_16_elmt_k2(unit "") = 5.43E-5 "";
    Real elmt_product50 "";
    Real elmt_reactant48 "";
    Real elmt_reactant49 "";
    Real elmt_reaction_17(unit = "") "RGA binding  GTP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_17_elmt_k1(unit "") = 1620000.0 "";
    parameter Real elmt_reaction_17_elmt_k2(unit "") = 0.00875 "";
    Real elmt_reactant51 "";
    Real elmt_reactant52 "";
    Real elmt_product53 "";
    Real elmt_reaction_9(unit = "") "GD binding Receptor";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_9_elmt_k1(unit "") = 9.47E7 "";
    parameter Real elmt_reaction_9_elmt_k2(unit "") = 0.00227 "";
    Real elmt_reactant27 "";
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_reaction_14(unit = "") "GAD dissociation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_14_elmt_k1(unit "") = 1.0E-4 "";
    parameter Real elmt_reaction_14_elmt_k2(unit "") = 3.83 "";
    Real elmt_reactant42 "";
    Real elmt_product44 "";
    Real elmt_product43 "";
    Real elmt_reaction_15(unit = "") "RG binding  GAP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_15_elmt_k1(unit "") = 74300.0 "";
    parameter Real elmt_reaction_15_elmt_k2(unit "") = 0.00572 "";
    Real elmt_product47 "";
    Real elmt_reactant45 "";
    Real elmt_reactant46 "";
    Real elmt_reaction_7(unit = "") "G*T binding GAP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_7_elmt_k1(unit "") = 386000.0 "";
    parameter Real elmt_reaction_7_elmt_k2(unit "") = 0.0408 "";
    Real elmt_product23 "";
    Real elmt_reactant21 "";
    Real elmt_reactant22 "";
    Real elmt_reaction_8(unit = "") "GD binding GAP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_8_elmt_k1(unit "") = 64100.0 "";
    parameter Real elmt_reaction_8_elmt_k2(unit "") = 0.95 "";
    Real elmt_reactant25 "";
    Real elmt_product26 "";
    Real elmt_reactant24 "";
    Real elmt_reaction_5(unit = "") "RG binding GTP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_5_elmt_k1(unit "") = 853000.0 "";
    parameter Real elmt_reaction_5_elmt_k2(unit "") = 0.00468 "";
    Real elmt_reactant15 "";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_reaction_18(unit = "") "G*AT binding Receptor";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_18_elmt_k1(unit "") = 6200000.0 "";
    parameter Real elmt_reaction_18_elmt_k2(unit "") = 0.0433 "";
    Real elmt_product56 "";
    Real elmt_reactant54 "";
    Real elmt_reactant55 "";
    Real elmt_reaction_6(unit = "") "G*T binding Receptor";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_6_elmt_k1(unit "") = 1.32E8 "";
    parameter Real elmt_reaction_6_elmt_k2(unit "") = 1.28 "";
    Real elmt_reactant18 "";
    Real elmt_reactant19 "";
    Real elmt_product20 "";
    Real elmt_reaction_19(unit = "") "RG*T binding GAP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_19_elmt_k1(unit "") = 6300000.0 "";
    parameter Real elmt_reaction_19_elmt_k2(unit "") = 0.478 "";
    Real elmt_reactant58 "";
    Real elmt_product59 "";
    Real elmt_reactant57 "";
    Real elmt_reaction_12(unit = "") "GA binding GTP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_12_elmt_k1(unit "") = 44700.0 "";
    parameter Real elmt_reaction_12_elmt_k2(unit "") = 8.32E-8 "";
    Real elmt_reactant36 "";
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_reaction_13(unit = "") "G*AT hydrolysis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_13_elmt_k1(unit "") = 25.0 "";
    parameter Real elmt_reaction_13_elmt_k2(unit "") = 0.244 "";
    Real elmt_product41 "";
    Real elmt_product40 "";
    Real elmt_reactant39 "";
    Real elmt_reaction_10(unit = "") "RG*T hydrolysis";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_10_elmt_k1(unit "") = 0.013 "";
    parameter Real elmt_reaction_10_elmt_k2(unit "") = 2.22E-9 "";
    Real elmt_reactant30 "";
    Real elmt_product32 "";
    Real elmt_product31 "";
    Real elmt_reaction_11(unit = "") "RGD dissociation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_11_elmt_k1(unit "") = 2.0 "";
    parameter Real elmt_reaction_11_elmt_k2(unit "") = 1470000.0 "";
    Real elmt_product34 "";
    Real elmt_product35 "";
    Real elmt_reactant33 "";


    initial equation
        elmt_product71 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product34 = 1.0;
        elmt_product32 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_product70 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product26 = 1.0;
        elmt_product68 = 1.0;
        elmt_product29 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_product40 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_product44 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_product38 = 1.0;
        elmt_product35 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_product50 = 1.0;
        elmt_reactant64 = 1.0;
        elmt_product56 = 1.0;
        elmt_product11 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant60 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant69 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant66 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant67 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product47 = 1.0;
        elmt_product62 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product61 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product23 = 1.0;
        elmt_product65 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product2 = 1.0;
        elmt_product59 = 1.0;
        elmt_product14 = 1.0;
        elmt_product13 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_reaction_20 = (elmt_compartment_0 * ((elmt_reaction_20_elmt_k1 * elmt_species_15) - (elmt_reaction_20_elmt_k2 * elmt_species_16 * elmt_species_7)));
        elmt_reaction_23 = (elmt_compartment_0 * ((elmt_reaction_23_elmt_k1 * elmt_species_16) - (elmt_reaction_23_elmt_k2 * elmt_species_14 * elmt_species_8)));
        elmt_reaction_21 = (elmt_compartment_0 * ((elmt_reaction_21_elmt_k1 * elmt_species_13 * elmt_species_0) - (elmt_reaction_21_elmt_k2 * elmt_species_16)));
        elmt_reaction_22 = (elmt_compartment_0 * ((elmt_reaction_22_elmt_k1 * elmt_species_12 * elmt_species_4) - (elmt_reaction_22_elmt_k2 * elmt_species_16)));
        elmt_reaction_3 = (elmt_compartment_0 * ((elmt_reaction_3_elmt_k1 * elmt_species_5) - (elmt_reaction_3_elmt_k2 * elmt_species_6 * elmt_species_7)));
        elmt_reaction_4 = (elmt_compartment_0 * ((elmt_reaction_4_elmt_k1 * elmt_species_6) - (elmt_reaction_4_elmt_k2 * elmt_species_1 * elmt_species_8)));
        elmt_reaction_1 = (elmt_compartment_0 * ((elmt_reaction_1_elmt_k1 * elmt_species_1 * elmt_species_3) - (elmt_reaction_1_elmt_k2 * elmt_species_5)));
        elmt_reaction_2 = (elmt_compartment_0 * ((elmt_reaction_2_elmt_k1 * elmt_species_1 * elmt_species_4) - (elmt_reaction_2_elmt_k2 * elmt_species_9)));
        elmt_reaction_0 = (elmt_compartment_0 * ((elmt_reaction_0_elmt_k1 * elmt_species_1 * elmt_species_0) - (elmt_reaction_0_elmt_k2 * elmt_species_2)));
        elmt_reaction_16 = (elmt_compartment_0 * ((elmt_reaction_16_elmt_k1 * elmt_species_2 * elmt_species_4) - (elmt_reaction_16_elmt_k2 * elmt_species_14)));
        elmt_reaction_17 = (elmt_compartment_0 * ((elmt_reaction_17_elmt_k1 * elmt_species_14 * elmt_species_3) - (elmt_reaction_17_elmt_k2 * elmt_species_15)));
        elmt_reaction_9 = (elmt_compartment_0 * ((elmt_reaction_9_elmt_k1 * elmt_species_6 * elmt_species_4) - (elmt_reaction_9_elmt_k2 * elmt_species_13)));
        elmt_reaction_14 = (elmt_compartment_0 * ((elmt_reaction_14_elmt_k1 * elmt_species_12) - (elmt_reaction_14_elmt_k2 * elmt_species_2 * elmt_species_8)));
        elmt_reaction_15 = (elmt_compartment_0 * ((elmt_reaction_15_elmt_k1 * elmt_species_9 * elmt_species_0) - (elmt_reaction_15_elmt_k2 * elmt_species_14)));
        elmt_reaction_7 = (elmt_compartment_0 * ((elmt_reaction_7_elmt_k1 * elmt_species_5 * elmt_species_0) - (elmt_reaction_7_elmt_k2 * elmt_species_11)));
        elmt_reaction_8 = (elmt_compartment_0 * ((elmt_reaction_8_elmt_k1 * elmt_species_6 * elmt_species_0) - (elmt_reaction_8_elmt_k2 * elmt_species_12)));
        elmt_reaction_5 = (elmt_compartment_0 * ((elmt_reaction_5_elmt_k1 * elmt_species_9 * elmt_species_3) - (elmt_reaction_5_elmt_k2 * elmt_species_10)));
        elmt_reaction_18 = (elmt_compartment_0 * ((elmt_reaction_18_elmt_k1 * elmt_species_11 * elmt_species_4) - (elmt_reaction_18_elmt_k2 * elmt_species_15)));
        elmt_reaction_6 = (elmt_compartment_0 * ((elmt_reaction_6_elmt_k1 * elmt_species_5 * elmt_species_4) - (elmt_reaction_6_elmt_k2 * elmt_species_10)));
        elmt_reaction_19 = (elmt_compartment_0 * ((elmt_reaction_19_elmt_k1 * elmt_species_10 * elmt_species_0) - (elmt_reaction_19_elmt_k2 * elmt_species_15)));
        elmt_reaction_12 = (elmt_compartment_0 * ((elmt_reaction_12_elmt_k1 * elmt_species_2 * elmt_species_3) - (elmt_reaction_12_elmt_k2 * elmt_species_11)));
        elmt_reaction_13 = (elmt_compartment_0 * ((elmt_reaction_13_elmt_k1 * elmt_species_11) - (elmt_reaction_13_elmt_k2 * elmt_species_12 * elmt_species_7)));
        elmt_reaction_10 = (elmt_compartment_0 * ((elmt_reaction_10_elmt_k1 * elmt_species_10) - (elmt_reaction_10_elmt_k2 * elmt_species_13 * elmt_species_7)));
        elmt_reaction_11 = (elmt_compartment_0 * ((elmt_reaction_11_elmt_k1 * elmt_species_13) - (elmt_reaction_11_elmt_k2 * elmt_species_9 * elmt_species_8)));
        der(elmt_product71) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product34) = 0;
        der(elmt_product32) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_product70) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product26) = 0;
        der(elmt_product68) = 0;
        der(elmt_product29) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_product40) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_product44) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_product38) = 0;
        der(elmt_product35) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_product50) = 0;
        der(elmt_reactant64) = 0;
        der(elmt_product56) = 0;
        der(elmt_product11) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant60) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant69) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant67) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product47) = 0;
        der(elmt_product62) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product61) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product23) = 0;
        der(elmt_product65) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product2) = 0;
        der(elmt_product59) = 0;
        der(elmt_product14) = 0;
        der(elmt_product13) = 0;
        der(elmt_product17) = 0;

end Reactions;
