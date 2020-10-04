within BIOMD290;
class Class_elmt_body

    input Real elmt_r7;
    input Real elmt_r8;
    input Real elmt_r5;
    input Real elmt_product6;
    input Real elmt_r6;
    input Real elmt_r3;
    input Real elmt_r4;
    input Real elmt_r11;
    input Real elmt_reactant8;
    input Real elmt_r2;
    input Real elmt_reactant7;
    input Real elmt_r10;
    input Real elmt_reactant10;
    input Real elmt_product5;
    input Real elmt_reactant11;
    input Real elmt_product4;
    input Real elmt_product3;
    input Real elmt_r9;
    input Real elmt_reactant0;
    input Real elmt_reactant12;
    input Real elmt_product2;
    input Real elmt_r1b;
    input Real elmt_r1a;
    input Real elmt_reactant9;

    Real elmt_body(unit = "") "";
    Real elmt_A_im_amount(unit = "");
    Real elmt_A_im_conc(unit = "");
    Real elmt_A_im(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_G_amount(unit = "");
    Real elmt_G_conc(unit = "");
    Real elmt_G(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_E_amount(unit = "");
    Real elmt_E_conc(unit = "");
    Real elmt_E(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_A_amount(unit = "");
    Real elmt_A_conc(unit = "");
    Real elmt_A(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_R_amount(unit = "");
    Real elmt_R_conc(unit = "");
    Real elmt_R(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_body = 1.0;
        elmt_A_im_amount = 0.0;
        elmt_G_amount = 1.0E8;
        elmt_E_amount = 0.0;
        elmt_A_amount = 1.0;
        elmt_R_amount = 0.0;


    equation
        assert(elmt_body >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_body) = 0;
        elmt_A_im = elmt_A_im_amount;
        elmt_G = elmt_G_amount;
        elmt_E = elmt_E_amount;
        elmt_A = elmt_A_amount;
        elmt_R = elmt_R_amount;
        der(elmt_A_im_amount) = 0;
        der(elmt_G_amount) = ((elmt_r2 * elmt_product3) + (- (elmt_r9 * elmt_reactant10)) + (- (elmt_r1a * elmt_reactant0)));
        der(elmt_E_amount) = ((- (elmt_r8 * elmt_reactant9)) + (elmt_r5 * elmt_product6));
        der(elmt_A_amount) = ((- (elmt_r6 * elmt_reactant7)) + (- (elmt_r11 * elmt_reactant12)) + (- (elmt_r10 * elmt_reactant11)) + (elmt_r1b * elmt_product2));
        der(elmt_R_amount) = ((- (elmt_r7 * elmt_reactant8)) + (elmt_r3 * elmt_product4) + (elmt_r4 * elmt_product5));

    algorithm
        elmt_A_im_conc := elmt_A_im_amount / elmt_body;
        elmt_G_conc := elmt_G_amount / elmt_body;
        elmt_E_conc := elmt_E_amount / elmt_body;
        elmt_A_conc := elmt_A_amount / elmt_body;
        elmt_R_conc := elmt_R_amount / elmt_body;
end Class_elmt_body;
