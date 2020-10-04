within BIOMD120;
class Reactions

    input Real elmt_m2;
    input Real elmt_k1;
    input Real elmt_n1;
    input Real elmt_n2;
    input Real elmt_m1;
    input Real elmt_n;
    input Real elmt_phosphatase_active;
    input Real elmt_d1;
    input Real elmt_d2;
    input Real elmt_r_l;
    input Real elmt_phosphatase_inactive;
    input Real elmt_d0;
    input Real elmt_lck_inactive;
    input Real elmt_k2;
    input Real elmt_lck_active;

    Real elmt_v9(unit = "") "Phosphatase inactivation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product14 "";
    Real elmt_reactant13 "";
    Real elmt_v10(unit = "") "Active phosphatase diffusion";
    Real elmt_reactant15 "";
    Real elmt_v7(unit = "") "Basal phosphatase activation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_v8(unit = "") "Catalyzed phosphatase activation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product12 "";
    Real elmt_reactant11 "";
    Real elmt_v5(unit = "") "Inactive kinase diffusion";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant7 "";
    Real elmt_v6(unit = "") "Active kinase diffusion";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant8 "";
    Real elmt_v3(unit = "") "Basal kinase activation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_v4(unit = "") "Catalytic kinase activation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_v1(unit = "") "Kinase recruitment to T-cell receptor";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product0 "";
    Real elmt_v2(unit = "") "Kinase inactivation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant1 "";
    Real elmt_product2 "";


    initial equation
        elmt_reactant1 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product6 = 1.0;
        elmt_product12 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product14 = 1.0;


    equation
        elmt_v9 = (elmt_n2 * elmt_phosphatase_active);
        elmt_v10 = (elmt_d2 * elmt_phosphatase_active);
        elmt_v7 = (elmt_k2 * elmt_phosphatase_inactive);
        elmt_v8 = (elmt_m2 * elmt_lck_active * elmt_phosphatase_inactive);
        elmt_v5 = (elmt_d0 * elmt_lck_inactive);
        elmt_v6 = (elmt_d1 * elmt_lck_active);
        elmt_v3 = (elmt_k1 * elmt_lck_inactive);
        elmt_v4 = (elmt_m1 * Functions.pow(elmt_lck_active, elmt_n) * elmt_lck_inactive);
        elmt_v1 = elmt_r_l;
        elmt_v2 = (elmt_n1 * elmt_lck_active * elmt_phosphatase_active);
        der(elmt_reactant1) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product6) = 0;
        der(elmt_product12) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product14) = 0;

end Reactions;
