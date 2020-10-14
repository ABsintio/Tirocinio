within BIOMD113;
class Class_elmt_cytosol

    input Real elmt_product9;
    input Real elmt_reactant2;
    input Real elmt_product7;
    input Real elmt_R3;
    input Real elmt_R1;
    input Real elmt_reactant8;
    input Real elmt_R2;
    input Real elmt_product1;
    input Real elmt_product0;
    input Real elmt_Protein_Phosphorylation;
    input Real elmt_product5;
    input Real elmt_Rf;
    input Real elmt_R0;
    input Real elmt_R_eff;

    Real elmt_cytosol(unit = "") "cytosol";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_W_star_conc(unit = "");
    Real elmt_W_star_amount(unit = "");
    Real elmt_W_star(unit = "") "Phosphorylated protein";
    Real elmt_Z_conc(unit = "");
    Real elmt_Z_amount(unit = "");
    Real elmt_Z(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Wt_conc(unit = "");
    Real elmt_Wt_amount(unit = "");
    Real elmt_Wt(unit = "") "Total Protein";

    initial equation
        elmt_cytosol = 1.0;
        elmt_W_star_conc = 0.0;
        elmt_Z_conc = 0.15;
        elmt_Wt_conc = 1.0;


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_W_star = elmt_W_star_conc;
        elmt_Z = elmt_Z_conc;
        elmt_Wt = elmt_Wt_conc;
        der(elmt_Wt_amount) = 0;
        der(elmt_W_star_amount) = (elmt_Protein_Phosphorylation * elmt_product9);
        der(elmt_Z_amount) = ((elmt_Rf * elmt_product7) + (elmt_R3 * elmt_product5) + (elmt_R1 * elmt_product1) + (- (elmt_R2 * elmt_reactant2)) + (elmt_R0 * elmt_product0) + (- (elmt_R_eff * elmt_reactant8)));

    algorithm
        elmt_W_star_conc := elmt_W_star_amount / elmt_cytosol;
        elmt_Z_conc := elmt_Z_amount / elmt_cytosol;
        elmt_Wt_conc := elmt_Wt_amount / elmt_cytosol;
end Class_elmt_cytosol;
