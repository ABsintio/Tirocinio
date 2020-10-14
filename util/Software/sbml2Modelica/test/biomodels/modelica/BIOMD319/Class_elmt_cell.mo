within BIOMD319;
class Class_elmt_cell

    input Real elmt_reactant1;
    input Real elmt_reactant3;
    input Real elmt_r3;
    input Real elmt_r4;
    input Real elmt_reactant5;
    input Real elmt_r1;
    input Real elmt_r2;
    input Real elmt_product0;
    input Real elmt_product4;
    input Real elmt_product2;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_beta_conc(unit = "");
    Real elmt_beta_amount(unit = "");
    Real elmt_beta(unit = "") "beta";
    Real elmt_gamma_conc(unit = "");
    Real elmt_gamma_amount(unit = "");
    Real elmt_gamma(unit = "") "gamma";
    Real elmt_alpha_conc(unit = "");
    Real elmt_alpha_amount(unit = "");
    Real elmt_alpha(unit = "") "alpha";

    initial equation
        elmt_cell = 1.0;
        elmt_beta_conc = 188.8;
        elmt_gamma_conc = 0.3367;
        elmt_alpha_conc = 29.19988;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_beta = elmt_beta_conc;
        elmt_gamma = elmt_gamma_conc;
        elmt_alpha = elmt_alpha_conc;
        der(elmt_beta_amount) = ((- (elmt_r3 * elmt_reactant3)) + (elmt_r2 * elmt_product2));
        der(elmt_gamma_amount) = ((elmt_r3 * elmt_product4) + (- (elmt_r4 * elmt_reactant5)));
        der(elmt_alpha_amount) = ((elmt_r1 * elmt_product0) + (- (elmt_r2 * elmt_reactant1)));

    algorithm
        elmt_beta_conc := elmt_beta_amount / elmt_cell;
        elmt_gamma_conc := elmt_gamma_amount / elmt_cell;
        elmt_alpha_conc := elmt_alpha_amount / elmt_cell;
end Class_elmt_cell;
