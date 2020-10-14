within BIOMD305;
class Reactions

    input Real elmt_k_4;
    input Real elmt_k_3;
    input Real elmt_ATP;
    input Real elmt_k_2;
    input Real elmt_k_1;
    input Real elmt_Force;
    input Real elmt_kT;
    input Real elmt_d;
    input Real elmt_th_3;
    input Real elmt_th_2;
    input Real elmt_th_4;
    input Real elmt_S0;
    input Real elmt_S1;
    input Real elmt_th_1;

    Real elmt_Fw_1st_step(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant1 "";
    Real elmt_product4 "";
    Real elmt_reactant0 "";
    Real elmt_product3 "";
    Real elmt_product2 "";
    Real elmt_Fw_2nd_step(unit = "") "";
    Real elmt_product8 "";
    Real elmt_product7 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_Bw_1st_step(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product12 "";
    Real elmt_product11 "";
    Real elmt_reactant9 "";
    Real elmt_product13 "";
    Real elmt_reactant10 "";
    Real elmt_Bw_2nd_step(unit = "") "";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_product15 "";
    Real elmt_product17 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_product8 = 1.0;
        elmt_product7 = 1.0;
        elmt_product6 = 1.0;
        elmt_product12 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product11 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_product2 = 1.0;
        elmt_product16 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_Fw_1st_step = (elmt_k_1 * elmt_S0 * elmt_ATP * exp((((- elmt_th_1) * elmt_Force * elmt_d) / elmt_kT)));
        elmt_Fw_2nd_step = (elmt_k_2 * elmt_S1 * exp((((- elmt_th_2) * elmt_Force * elmt_d) / elmt_kT)));
        elmt_Bw_1st_step = (elmt_k_3 * elmt_S0 * elmt_ATP * exp(((elmt_th_3 * elmt_Force * elmt_d) / elmt_kT)));
        elmt_Bw_2nd_step = (elmt_k_4 * elmt_S1 * exp(((elmt_th_4 * elmt_Force * elmt_d) / elmt_kT)));
        der(elmt_reactant1) = 0;
        der(elmt_product8) = 0;
        der(elmt_product7) = 0;
        der(elmt_product6) = 0;
        der(elmt_product12) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product11) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;
        der(elmt_product16) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;
        der(elmt_product17) = 0;

end Reactions;
