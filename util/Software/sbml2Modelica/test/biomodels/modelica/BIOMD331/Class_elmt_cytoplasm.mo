within BIOMD331;
class Class_elmt_cytoplasm

    input Real elmt_p;
    input Real elmt_Ca_mit;
    input Real elmt_K19;
    input Real elmt_K17;
    input Real elmt_K9;
    input Real elmt_K6;
    input Real elmt_K4;
    input Real elmt_k_enz;
    input Real elmt_Ca_ER;
    input Real elmt_k16;
    input Real elmt_k14;
    input Real elmt_k13;
    input Real elmt_k12;
    input Real elmt_k10;
    input Real elmt_K21;
    input Real elmt_k1;
    input Real elmt_KM;
    input Real elmt_k18;
    input Real elmt_k8;
    input Real elmt_k7;
    input Real elmt_k_rem;
    input Real elmt_k5;
    input Real elmt_k2;
    input Real elmt_k3;
    input Real elmt_k_inact;
    input Real elmt_k_act;
    input Real elmt_K15;
    input Real elmt_K11;
    input Real elmt_k20;

    Real elmt_cytoplasm(unit = "") "cytoplasm";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PLC_conc(unit = "");
    Real elmt_PLC_amount(unit = "");
    Real elmt_PLC(unit = "") "PLC";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Product_conc(unit = "");
    Real elmt_Product_amount(unit = "");
    Real elmt_Product(unit = "") "EnzCatlysedProduct";
    Real elmt_Ca_cyt_conc(unit = "");
    Real elmt_Ca_cyt_amount(unit = "");
    Real elmt_Ca_cyt(unit = "") "Calcium-Cyt";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Enz_conc(unit = "");
    Real elmt_Enz_amount(unit = "");
    Real elmt_Enz(unit = "") "Enzyme";
    Real elmt_G_alpha_conc(unit = "");
    Real elmt_G_alpha_amount(unit = "");
    Real elmt_G_alpha(unit = "") "G-alpha";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cytoplasm = 1.0;
        elmt_PLC_conc = (0.01 / elmt_cytoplasm);
        elmt_Product_conc = 0.0;
        elmt_Ca_cyt_conc = (0.01 / elmt_cytoplasm);
        elmt_Enz_conc = 0.0;
        elmt_G_alpha_conc = 0.01;


    equation
        assert(elmt_cytoplasm >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytoplasm) = 0;
        elmt_PLC = elmt_PLC_conc;
        elmt_Product = elmt_Product_conc;
        elmt_Ca_cyt = elmt_Ca_cyt_conc;
        elmt_Enz = elmt_Enz_conc;
        elmt_G_alpha = elmt_G_alpha_conc;
        der(elmt_PLC_amount / elmt_cytoplasm) = ((elmt_k7 * elmt_G_alpha) - ((elmt_k8 * elmt_PLC) / (elmt_PLC + elmt_K9)));
        der(elmt_Product_amount / elmt_cytoplasm) = ((elmt_k_enz * elmt_Enz) - (elmt_k_rem * elmt_Product));
        der(elmt_Ca_cyt_amount / elmt_cytoplasm) = ((((((((elmt_Ca_ER - elmt_Ca_cyt) * elmt_k10 * elmt_Ca_cyt * Functions.pow(elmt_PLC, 4.0)) / (Functions.pow(elmt_PLC, 4.0) + Functions.pow(elmt_K11, 4.0))) + (elmt_k12 * elmt_PLC) + (elmt_k13 * elmt_G_alpha)) - ((elmt_k14 * elmt_Ca_cyt) / (elmt_Ca_cyt + elmt_K15))) - ((elmt_k16 * elmt_Ca_cyt) / (elmt_Ca_cyt + elmt_K17))) - ((elmt_k18 * Functions.pow(elmt_Ca_cyt, 8.0)) / (Functions.pow(elmt_K19, 8.0) + Functions.pow(elmt_Ca_cyt, 8.0)))) + (((elmt_Ca_mit - elmt_Ca_cyt) * elmt_k20 * elmt_Ca_cyt) / (elmt_Ca_cyt + elmt_K21)));
        der(elmt_Enz_amount / elmt_cytoplasm) = (((elmt_k_act * Functions.pow(elmt_Ca_cyt, elmt_p)) / (Functions.pow(elmt_KM, elmt_p) + Functions.pow(elmt_Ca_cyt, elmt_p))) - (elmt_k_inact * elmt_Enz));
        der(elmt_G_alpha_amount / elmt_cytoplasm) = (((elmt_k1 + (elmt_k2 * elmt_G_alpha)) - ((elmt_k3 * elmt_G_alpha * elmt_PLC) / (elmt_G_alpha + elmt_K4))) - ((elmt_k5 * elmt_G_alpha * elmt_Ca_cyt) / (elmt_G_alpha + elmt_K6)));

    algorithm
        elmt_PLC_conc := elmt_PLC_amount / elmt_cytoplasm;
        elmt_Product_conc := elmt_Product_amount / elmt_cytoplasm;
        elmt_Ca_cyt_conc := elmt_Ca_cyt_amount / elmt_cytoplasm;
        elmt_Enz_conc := elmt_Enz_amount / elmt_cytoplasm;
        elmt_G_alpha_conc := elmt_G_alpha_amount / elmt_cytoplasm;
end Class_elmt_cytoplasm;
