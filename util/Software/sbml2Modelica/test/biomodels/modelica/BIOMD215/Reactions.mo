within BIOMD215;
class Reactions

    input Real elmt_Tbet_mRNA;
    input Real elmt_Rec_Prot;
    input Real elmt_Ag;
    input Real elmt_Ifn_Prot;
    input Real elmt_compartment;
    input Real elmt_Tbet_Prot;
    input Real elmt_Ifn_mRNA;
    input Real elmt_Rec_mRNA;

    Real elmt_reaction_3(unit = "") "Tbet mRNA degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_3_elmt_gamma_Tbet(unit "") = 1.0 "";
    Real elmt_reactant3 "";
    Real elmt_reaction_4(unit = "") "Tbet protein degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_4_elmt_delta_Tbet(unit "") = 0.1 "";
    Real elmt_reactant4 "";
    Real elmt_reaction_1(unit = "") "Tbet Receptor dependent transcription";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_1_elmt_a3(unit "") = 5.1E-4 "";
    Real elmt_product1 "";
    Real elmt_reaction_2(unit = "") "Tbet basal expression";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_2_elmt_a1(unit "") = 0.044 "";
    Real elmt_product2 "";
    Real elmt_reaction_9(unit = "") "Tbet Translation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_9_elmt_b(unit "") = 100.0 "";
    Real elmt_product9 "";
    Real elmt_vtrnldeg(unit = "") "Tbet IFN dependend transcription";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_vtrnldeg_elmt_K1(unit "") = 0.46 "";
    parameter Real elmt_vtrnldeg_elmt_a2(unit "") = 0.42 "";
    parameter Real elmt_vtrnldeg_elmt_K2(unit "") = 2.1 "";
    Real elmt_product0 "";
    Real elmt_reaction_7(unit = "") "IFN_mRNA degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_7_elmt_gamma_IFN(unit "") = 1.0 "";
    Real elmt_reactant7 "";
    Real elmt_reaction_8(unit = "") "IFN_Prot degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_8_elmt_delta_IFN(unit "") = 1.0 "";
    Real elmt_reactant8 "";
    Real elmt_reaction_5(unit = "") "Rec_mRNA degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_5_elmt_gamma_Rec(unit "") = 1.0 "";
    Real elmt_reactant5 "";
    Real elmt_reaction_6(unit = "") "Rec_Prot degradation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_6_elmt_delta_Rec(unit "") = 0.1 "";
    Real elmt_reactant6 "";
    Real elmt_reaction_12(unit = "") "Rec Transcription";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_12_elmt_a4(unit "") = 0.0028 "";
    parameter Real elmt_reaction_12_elmt_K4(unit "") = 0.013 "";
    Real elmt_product12 "";
    Real elmt_reaction_13(unit = "") "IFN transcription";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_13_elmt_a5(unit "") = 3.7 "";
    parameter Real elmt_reaction_13_elmt_K6(unit "") = 66.0 "";
    parameter Real elmt_reaction_13_elmt_K7(unit "") = 0.014 "";
    parameter Real elmt_reaction_13_elmt_K5(unit "") = 0.029 "";
    Real elmt_product13 "";
    Real elmt_reaction_10(unit = "") "IFN tranlation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_10_elmt_b(unit "") = 100.0 "";
    Real elmt_product10 "";
    Real elmt_reaction_11(unit = "") "Rec translation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_11_elmt_b(unit "") = 100.0 "";
    Real elmt_product11 "";


    initial equation
        elmt_product9 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product12 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product1 = 1.0;
        elmt_product0 = 1.0;
        elmt_product2 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_reaction_3 = (elmt_compartment * elmt_reaction_3_elmt_gamma_Tbet * elmt_Tbet_mRNA);
        elmt_reaction_4 = (elmt_compartment * elmt_reaction_4_elmt_delta_Tbet * elmt_Tbet_Prot);
        elmt_reaction_1 = (elmt_compartment * ((elmt_reaction_1_elmt_a3 * elmt_Rec_Prot)));
        elmt_reaction_2 = (elmt_compartment * (elmt_reaction_2_elmt_a1));
        elmt_reaction_9 = (elmt_compartment * ((elmt_reaction_9_elmt_b * elmt_Tbet_mRNA)));
        elmt_vtrnldeg = (elmt_compartment * ((elmt_vtrnldeg_elmt_a2 * (elmt_Ag / (elmt_vtrnldeg_elmt_K1 + elmt_Ag)) * (elmt_Ifn_Prot / (elmt_vtrnldeg_elmt_K2 + elmt_Ifn_Prot)))));
        elmt_reaction_7 = (elmt_compartment * elmt_reaction_7_elmt_gamma_IFN * elmt_Ifn_mRNA);
        elmt_reaction_8 = (elmt_compartment * elmt_reaction_8_elmt_delta_IFN * elmt_Ifn_Prot);
        elmt_reaction_5 = (elmt_compartment * elmt_reaction_5_elmt_gamma_Rec * elmt_Rec_mRNA);
        elmt_reaction_6 = (elmt_compartment * elmt_reaction_6_elmt_delta_Rec * elmt_Rec_Prot);
        elmt_reaction_12 = (elmt_compartment * ((elmt_reaction_12_elmt_a4 * elmt_Tbet_Prot * (elmt_reaction_12_elmt_K4 / (elmt_reaction_12_elmt_K4 + elmt_Ag)))));
        elmt_reaction_13 = (elmt_compartment * ((elmt_reaction_13_elmt_a5 * (elmt_Tbet_Prot / (elmt_reaction_13_elmt_K5 + elmt_Tbet_Prot)) * (elmt_Rec_Prot / (elmt_reaction_13_elmt_K6 + elmt_Rec_Prot)) * (elmt_Ag / (elmt_reaction_13_elmt_K7 + elmt_Ag)))));
        elmt_reaction_10 = (elmt_compartment * ((elmt_reaction_10_elmt_b * elmt_Ifn_mRNA)));
        elmt_reaction_11 = (elmt_compartment * ((elmt_reaction_11_elmt_b * elmt_Rec_mRNA)));
        der(elmt_product9) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product12) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product1) = 0;
        der(elmt_product0) = 0;
        der(elmt_product2) = 0;
        der(elmt_product13) = 0;

end Reactions;
