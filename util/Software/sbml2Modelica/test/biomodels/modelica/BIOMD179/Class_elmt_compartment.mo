within BIOMD179;
class Class_elmt_compartment

    input Real elmt_product12;
    input Real elmt_product10;
    input Real elmt_React11;
    input Real elmt_React12;
    input Real elmt_React10;
    input Real elmt_React17;
    input Real elmt_React15;
    input Real elmt_React16;
    input Real elmt_React13;
    input Real elmt_React14;
    input Real elmt_reactant9;
    input Real elmt_reactant1;
    input Real elmt_product8;
    input Real elmt_reactant3;
    input Real elmt_product6;
    input Real elmt_reactant7;
    input Real elmt_reactant14;
    input Real elmt_product0;
    input Real elmt_reactant16;
    input Real elmt_product5;
    input Real elmt_reactant11;
    input Real elmt_product4;
    input Real elmt_product2;
    input Real elmt_React6;
    input Real elmt_React7;
    input Real elmt_React8;
    input Real elmt_React9;
    input Real elmt_React2;
    input Real elmt_product15;
    input Real elmt_React3;
    input Real elmt_React4;
    input Real elmt_product13;
    input Real elmt_React5;
    input Real elmt_React1;

    Real elmt_compartment(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_P2_prime_amount(unit = "");
    Real elmt_P2_prime_conc(unit = "");
    Real elmt_P2_prime(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_P3_prime_amount(unit = "");
    Real elmt_P3_prime_conc(unit = "");
    Real elmt_P3_prime(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_P1_amount(unit = "");
    Real elmt_P1_conc(unit = "");
    Real elmt_P1(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_P2_amount(unit = "");
    Real elmt_P2_conc(unit = "");
    Real elmt_P2(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_R1_amount(unit = "");
    Real elmt_R1_conc(unit = "");
    Real elmt_R1(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_R2_amount(unit = "");
    Real elmt_R2_conc(unit = "");
    Real elmt_R2(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_P1_prime_amount(unit = "");
    Real elmt_P1_prime_conc(unit = "");
    Real elmt_P1_prime(unit = "") "";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_P2_prime_amount = 1.0;
        elmt_P3_prime_amount = 0.1;
        elmt_P1_amount = 0.1;
        elmt_P2_amount = 1.0;
        elmt_R1_amount = 0.01;
        elmt_R2_amount = 0.1;
        elmt_P1_prime_amount = 0.1;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_P2_prime = elmt_P2_prime_amount;
        elmt_P3_prime = elmt_P3_prime_amount;
        elmt_P1 = elmt_P1_amount;
        elmt_P2 = elmt_P2_amount;
        elmt_R1 = elmt_R1_amount;
        elmt_R2 = elmt_R2_amount;
        elmt_P1_prime = elmt_P1_prime_amount;
        der(elmt_P2_prime_amount) = ((- (elmt_React15 * elmt_reactant14)) + (elmt_React13 * elmt_product12) + (elmt_React14 * elmt_product13));
        der(elmt_P3_prime_amount) = ((- (elmt_React17 * elmt_reactant16)) + (elmt_React16 * elmt_product15));
        der(elmt_P1_amount) = ((elmt_React3 * elmt_product2) + (- (elmt_React4 * elmt_reactant3)));
        der(elmt_P2_amount) = ((elmt_React11 * elmt_product10) + (- (elmt_React12 * elmt_reactant11)));
        der(elmt_R1_amount) = ((- (elmt_React2 * elmt_reactant1)) + (elmt_React1 * elmt_product0));
        der(elmt_R2_amount) = ((- (elmt_React10 * elmt_reactant9)) + (elmt_React9 * elmt_product8));
        der(elmt_P1_prime_amount) = ((elmt_React6 * elmt_product5) + (elmt_React7 * elmt_product6) + (- (elmt_React8 * elmt_reactant7)) + (elmt_React5 * elmt_product4));

    algorithm
        elmt_P2_prime_conc := elmt_P2_prime_amount / elmt_compartment;
        elmt_P3_prime_conc := elmt_P3_prime_amount / elmt_compartment;
        elmt_P1_conc := elmt_P1_amount / elmt_compartment;
        elmt_P2_conc := elmt_P2_amount / elmt_compartment;
        elmt_R1_conc := elmt_R1_amount / elmt_compartment;
        elmt_R2_conc := elmt_R2_amount / elmt_compartment;
        elmt_P1_prime_conc := elmt_P1_prime_amount / elmt_compartment;
end Class_elmt_compartment;
