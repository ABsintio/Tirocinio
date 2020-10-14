within BIOMD174;
class Reactions

    input Real elmt_R7;
    input Real elmt_r7;
    input Real elmt_R5;
    input Real elmt_r5;
    input Real elmt_endosome;

    Real elmt_reaction_9(unit = "") "hydrolysis of Rab7 (intr.)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_9_elmt_kh(unit "s-1.0") = 0.15 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_reaction_7(unit = "") "extraction of rab7";
    parameter Real elmt_reaction_7_elmt_kminus1(unit "s-1.0") = 0.483 "";
    Real elmt_reactant11 "";
    Real elmt_reaction_8(unit = "") "hydrolysis of Rab5 (intr.)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_8_elmt_kh(unit "s-1.0") = 0.06 "";
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_reaction_5(unit = "") "activation of Rab7 by GEF5";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_5_elmt_kf(unit "m3.0.mol-1.0") = 3.0 "";
    parameter Real elmt_reaction_5_elmt_kg(unit "m-3.0.") = 1.0 "";
    parameter Real elmt_reaction_5_elmt_ke(unit "s-1.0") = 0.021 "";
    Real elmt_product8 "";
    Real elmt_reactant7 "";
    Real elmt_reaction_6(unit = "") "hydrolysis of Rab5 by Rab7";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_6_elmt_kf(unit "m3.0.mol-1.0") = 3.0 "";
    parameter Real elmt_reaction_6_elmt_kg(unit "m-3.0.") = 0.3 "";
    parameter Real elmt_reaction_6_elmt_ke(unit "s-1.0") = 0.31 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_reaction_3(unit = "") "recruitment of Rab7";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_3_elmt_K1(unit "m-3.0..s-1.0") = 0.483 "";
    Real elmt_product4 "";
    Real elmt_reaction_4(unit = "") "activation of Rab7 by GEF7";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_4_elmt_h(unit "") = 3.0 "";
    parameter Real elmt_reaction_4_elmt_kg(unit "") = 0.1 "";
    parameter Real elmt_reaction_4_elmt_ke(unit "s-1.0") = 0.21 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_reaction_1(unit = "") "activation of Rab5 (time)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_1_elmt_kf(unit "m3.0.mol-1.0") = 2.5 "";
    parameter Real elmt_reaction_1_elmt_kg(unit "m-3.0.") = 0.1 "";
    parameter Real elmt_reaction_1_elmt_ke(unit "s-1.0") = 0.3 "";
    Real elmt_reactant1 "";
    Real elmt_product2 "";
    Real elmt_reaction_2(unit = "") "extraction of Rab5";
    parameter Real elmt_reaction_2_elmt_kminus1(unit "s-1.0") = 1.0 "";
    Real elmt_reactant3 "";
    Real elmt_reaction_0(unit = "") "recruitment of Rab5";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction_0_elmt_K1(unit "m-3.0..s-1.0") = 1.0 "";
    Real elmt_product0 "";


    initial equation
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product6 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product2 = 1.0;
        elmt_product15 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product13 = 1.0;


    equation
        elmt_reaction_9 = (elmt_endosome * ((elmt_reaction_9_elmt_kh * elmt_R7)));
        elmt_reaction_7 = (elmt_endosome * ((elmt_reaction_7_elmt_kminus1 * elmt_r7)));
        elmt_reaction_8 = (elmt_endosome * ((elmt_reaction_8_elmt_kh * elmt_R5)));
        elmt_reaction_5 = (elmt_endosome * (((elmt_reaction_5_elmt_ke * elmt_r7) / (1.0 + exp(((elmt_reaction_5_elmt_kg - elmt_R5) * elmt_reaction_5_elmt_kf))))));
        elmt_reaction_6 = (elmt_endosome * (((elmt_reaction_6_elmt_ke * elmt_R5) / (1.0 + exp(((elmt_reaction_6_elmt_kg - elmt_R7) * elmt_reaction_6_elmt_kf))))));
        elmt_reaction_3 = (elmt_endosome * elmt_reaction_3_elmt_K1);
        elmt_reaction_4 = (elmt_endosome * (((elmt_r7 * elmt_reaction_4_elmt_ke * Functions.pow(elmt_R7, elmt_reaction_4_elmt_h)) / (elmt_reaction_4_elmt_kg + Functions.pow(elmt_R7, elmt_reaction_4_elmt_h)))));
        elmt_reaction_1 = (elmt_endosome * (((elmt_r5 * ((elmt_reaction_1_elmt_ke * time) / (100.0 + time))) / (1.0 + exp(((elmt_reaction_1_elmt_kg - elmt_R5) * elmt_reaction_1_elmt_kf))))));
        elmt_reaction_2 = (elmt_endosome * ((elmt_reaction_2_elmt_kminus1 * elmt_r5)));
        elmt_reaction_0 = (elmt_endosome * elmt_reaction_0_elmt_K1);
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product6) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product2) = 0;
        der(elmt_product15) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product13) = 0;

end Reactions;
