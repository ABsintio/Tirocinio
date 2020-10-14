within BIOMD112;
class Reactions

    input Real elmt_smad4_cyt;
    input Real elmt_receptor;
    input Real elmt_smad4_nuc;
    input Real elmt_R_smad_P_nuc;
    input Real elmt_R_smad_P_smad4_nuc;
    input Real elmt_R_smad_P_cyt;
    input Real elmt_R_smad_P_smad4_cyt;
    input Real elmt_R_smad_cyt;
    input Real elmt_R_smad_nuc;

    Real elmt_reaction_7(unit = "") "Dephosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_7_elmt_K7(unit "") = 8950.0 "";
    parameter Real elmt_reaction_7_elmt_Vmax7(unit "s-1.0") = 17100.0 "";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_product15 "";
    Real elmt_reaction_5(unit = "") "R-Smad translocation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_5_elmt_k5cn(unit "s-1.0") = 0.563 "";
    parameter Real elmt_reaction_5_elmt_k5nc(unit "s-1.0") = 5.63 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_reaction_6(unit = "") "Complex in nucleus";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_6_elmt_k6a(unit "s-1.0") = 1.44E-4 "";
    parameter Real elmt_reaction_6_elmt_k6d(unit "s-1.0") = 0.0492 "";
    Real elmt_product12 "";
    Real elmt_product13 "";
    Real elmt_reactant11 "";
    Real elmt_reaction_3(unit = "") "Complex translocation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_3_elmt_k3(unit "s-1.0") = 16.6 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_reaction_4(unit = "") "Smad4 translocation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_4_elmt_k4cn(unit "s-1.0") = 0.00497 "";
    parameter Real elmt_reaction_4_elmt_k4nc(unit "s-1.0") = 0.783 "";
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_reaction_1(unit = "") "Phosphorylation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_1_elmt_K1(unit "") = 289000.0 "";
    parameter Real elmt_reaction_1_elmt_KCAT(unit "s-1.0") = 3.51 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_reaction_2(unit = "") "Complex formation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_2_elmt_k2d(unit "s-1.0") = 0.0399 "";
    parameter Real elmt_reaction_2_elmt_k2a(unit "s-1.0") = 6.5E-5 "";
    Real elmt_product8 "";
    Real elmt_reactant6 "";
    Real elmt_reactant7 "";
    Real elmt_reaction_0(unit = "") "Receptor degradation";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_reactant17 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product12 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product16 = 1.0;
        elmt_product15 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_reaction_7 = ((elmt_reaction_7_elmt_Vmax7 * elmt_R_smad_P_nuc) / (elmt_reaction_7_elmt_K7 + elmt_R_smad_P_nuc));
        elmt_reaction_5 = ((elmt_reaction_5_elmt_k5nc * elmt_R_smad_nuc) - (elmt_reaction_5_elmt_k5cn * elmt_R_smad_cyt));
        elmt_reaction_6 = ((elmt_reaction_6_elmt_k6d * elmt_R_smad_P_smad4_nuc) - (elmt_reaction_6_elmt_k6a * elmt_smad4_nuc * elmt_R_smad_P_nuc));
        elmt_reaction_3 = (elmt_reaction_3_elmt_k3 * elmt_R_smad_P_smad4_cyt);
        elmt_reaction_4 = ((elmt_reaction_4_elmt_k4nc * elmt_smad4_nuc) - (elmt_reaction_4_elmt_k4cn * elmt_smad4_cyt));
        elmt_reaction_1 = ((elmt_reaction_1_elmt_KCAT * elmt_receptor * elmt_R_smad_cyt) / (elmt_reaction_1_elmt_K1 + elmt_R_smad_cyt));
        elmt_reaction_2 = ((elmt_reaction_2_elmt_k2a * elmt_R_smad_P_cyt * elmt_smad4_cyt) - (elmt_reaction_2_elmt_k2d * elmt_R_smad_P_smad4_cyt));
        elmt_reaction_0 = (100.0 * exp(((- time) / 90.0)));
        der(elmt_reactant2) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product12) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product16) = 0;
        der(elmt_product15) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product13) = 0;

end Reactions;
