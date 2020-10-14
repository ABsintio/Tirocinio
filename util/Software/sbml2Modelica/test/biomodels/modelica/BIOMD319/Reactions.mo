within BIOMD319;
class Reactions

    input Real elmt_beta;
    input Real elmt_gamma;
    input Real elmt_alpha;

    Real elmt_r3(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r3_elmt_L2(unit "") = 100.0 "";
    parameter Real elmt_r3_elmt_sigma2(unit "s-1.0") = 10.0 "";
    parameter Real elmt_r3_elmt_d(unit "") = 0.0 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_r4(unit = "") "";
    parameter Real elmt_r4_elmt_ks(unit "s-1.0") = 1.99 "";
    Real elmt_reactant5 "";
    Real elmt_r1(unit = "") "";
    parameter Real elmt_r1_elmt_v_Km1(unit "s-1.0") = 0.45 "";
    Real elmt_product0 "";
    Real elmt_r2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_r2_elmt_L1(unit "") = 5.0E8 "";
    parameter Real elmt_r2_elmt_sigma1(unit "s-1.0") = 10.0 "";
    Real elmt_reactant1 "";
    Real elmt_product2 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product0 = 1.0;
        elmt_product4 = 0.02;
        elmt_product2 = 50.0;


    equation
        elmt_r3 = ((elmt_r3_elmt_sigma2 * elmt_beta * (1.0 + (elmt_r3_elmt_d * elmt_beta)) * Functions.pow((1.0 + elmt_gamma), 2.0)) / (elmt_r3_elmt_L2 + (Functions.pow((1.0 + (elmt_r3_elmt_d * elmt_beta)), 2.0) * Functions.pow((1.0 + elmt_gamma), 2.0))));
        elmt_r4 = (elmt_r4_elmt_ks * elmt_gamma);
        elmt_r1 = elmt_r1_elmt_v_Km1;
        elmt_r2 = ((elmt_r2_elmt_sigma1 * elmt_alpha * (1.0 + elmt_alpha) * Functions.pow((1.0 + elmt_beta), 2.0)) / (elmt_r2_elmt_L1 + (Functions.pow((1.0 + elmt_alpha), 2.0) * Functions.pow((1.0 + elmt_beta), 2.0))));
        der(elmt_reactant1) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product0) = 0;
        der(elmt_product4) = 0;
        der(elmt_product2) = 0;

end Reactions;
