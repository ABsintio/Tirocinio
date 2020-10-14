within BIOMD258;
class Class_elmt_cell

    input Real elmt_reactant2;
    input Real elmt_reactant4;
    input Real elmt_product7;
    input Real elmt_reactant6;
    input Real elmt_v3;
    input Real elmt_product1;
    input Real elmt_v4;
    input Real elmt_v1;
    input Real elmt_v2;
    input Real elmt_product5;
    input Real elmt_reactant0;
    input Real elmt_product3;

    Real elmt_cell(unit = "") "cell";
    Real elmt_beta_conc(unit = "");
    Real elmt_beta_amount(unit = "");
    Real elmt_beta(unit = "") "beta";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_gamma_conc(unit = "");
    Real elmt_gamma_amount(unit = "");
    Real elmt_gamma(unit = "") "gamma";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_alpha_conc(unit = "");
    Real elmt_alpha_amount(unit = "");
    Real elmt_alpha(unit = "") "alpha";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_beta_conc = 0.2;
        elmt_gamma_conc = 0.338;
        elmt_alpha_conc = 0.462;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_beta = elmt_beta_conc;
        elmt_gamma = elmt_gamma_conc;
        elmt_alpha = elmt_alpha_conc;
        der(elmt_beta_amount) = ((- (elmt_v3 * elmt_reactant4)) + (elmt_v4 * elmt_product7) + (elmt_v1 * elmt_product1) + (- (elmt_v2 * elmt_reactant2)));
        der(elmt_gamma_amount) = ((elmt_v3 * elmt_product5) + (- (elmt_v4 * elmt_reactant6)));
        der(elmt_alpha_amount) = ((- (elmt_v1 * elmt_reactant0)) + (elmt_v2 * elmt_product3));

    algorithm
        elmt_beta_conc := elmt_beta_amount / elmt_cell;
        elmt_gamma_conc := elmt_gamma_amount / elmt_cell;
        elmt_alpha_conc := elmt_alpha_amount / elmt_cell;
end Class_elmt_cell;
