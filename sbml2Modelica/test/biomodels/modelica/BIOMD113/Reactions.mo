within BIOMD113;
class Reactions

    input Real elmt_Kp;
    input Real elmt_p;
    input Real elmt_K1;
    input Real elmt_store;
    input Real elmt_m;
    input Real elmt_n;
    input Real elmt_k;
    input Real elmt_Vm3;
    input Real elmt_cytosol;
    input Real elmt_v1_beta;
    input Real elmt_Vm2;
    input Real elmt_Kr;
    input Real elmt_K2;
    input Real elmt_vk;
    input Real elmt_W_star;
    input Real elmt_Y;
    input Real elmt_Z;
    input Real elmt_Wt;
    input Real elmt_kf;
    input Real elmt_K_A;
    input Real elmt_v0;
    input Real elmt_vp;

    Real elmt_Rf(unit = "") "Calcium leak";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_R3(unit = "") "ATP driven pumping into cytosol";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_R1(unit = "") "InsP3 dependent Ca influx";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";
    Real elmt_R2(unit = "") "ATP driven pumping of Ca into store";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_R0(unit = "") "Calcium influx";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product0 "";
    Real elmt_Protein_Phosphorylation(unit = "") "Protein Phosphorylation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product9 "";
    Real elmt_R_eff(unit = "") "Ca efflux";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant8 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product9 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product1 = 1.0;
        elmt_product0 = 1.0;
        elmt_product5 = 1.0;
        elmt_product3 = 1.0;


    equation
        elmt_Rf = (elmt_store * elmt_kf * elmt_Y);
        elmt_R3 = (elmt_store * ((elmt_Vm3 * Functions.pow(elmt_Y, elmt_m) * Functions.pow(elmt_Z, elmt_p)) / ((Functions.pow(elmt_Kr, elmt_m) + Functions.pow(elmt_Y, elmt_m)) * (Functions.pow(elmt_K_A, elmt_p) + Functions.pow(elmt_Z, elmt_p)))));
        elmt_R1 = (elmt_cytosol * elmt_v1_beta);
        elmt_R2 = (elmt_cytosol * ((elmt_Vm2 * Functions.pow(elmt_Z, elmt_n)) / (Functions.pow(elmt_Kp, elmt_n) + Functions.pow(elmt_Z, elmt_n))));
        elmt_R0 = (elmt_cytosol * elmt_v0);
        elmt_Protein_Phosphorylation = (elmt_cytosol * (elmt_vp / elmt_Wt) * (((elmt_vk / elmt_vp) * ((1.0 - elmt_W_star) / ((elmt_K1 + 1.0) - elmt_W_star))) - (elmt_W_star / (elmt_K2 + elmt_W_star))));
        elmt_R_eff = (elmt_cytosol * elmt_k * elmt_Z);
        der(elmt_reactant2) = 0;
        der(elmt_product9) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product1) = 0;
        der(elmt_product0) = 0;
        der(elmt_product5) = 0;
        der(elmt_product3) = 0;

end Reactions;
