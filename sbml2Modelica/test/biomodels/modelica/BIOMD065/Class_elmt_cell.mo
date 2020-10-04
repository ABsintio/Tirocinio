within BIOMD065;
class Class_elmt_cell

    input Real elmt_r_i3;
    input Real elmt_r_p2_i3;
    input Real elmt_product12;
    input Real elmt_r_a1;
    input Real elmt_r_m3_i1;
    input Real elmt_r_a2;
    input Real elmt_r_m1;
    input Real elmt_r_m2;
    input Real elmt_r_i1;
    input Real elmt_r_a3_l1;
    input Real elmt_r_i2;
    input Real elmt_r_p1;
    input Real elmt_reactant9;
    input Real elmt_reactant2;
    input Real elmt_reactant1;
    input Real elmt_product8;
    input Real elmt_product7;
    input Real elmt_reactant6;
    input Real elmt_r_b1;
    input Real elmt_reactant5;
    input Real elmt_reactant14;
    input Real elmt_product0;
    input Real elmt_reactant16;
    input Real elmt_reactant17;
    input Real elmt_r_l2;
    input Real elmt_reactant10;
    input Real elmt_r_l3;
    input Real elmt_reactant11;
    input Real elmt_product4;
    input Real elmt_product3;
    input Real elmt_r_l4;
    input Real elmt_reactant13;
    input Real elmt_r_b2_i2;
    input Real elmt_product15;
    input Real elmt_product19;
    input Real elmt_product18;

    Real elmt_cell(unit = "") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_P_conc(unit = "");
    Real elmt_P_amount(unit = "");
    Real elmt_P(unit = "") "permease";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_M_conc(unit = "");
    Real elmt_M_amount(unit = "");
    Real elmt_M(unit = "") "mRNA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_L_conc(unit = "");
    Real elmt_L_amount(unit = "");
    Real elmt_L(unit = "") "lactose_internal";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_L_e_conc(unit = "");
    Real elmt_L_e_amount(unit = "");
    Real elmt_L_e(unit = "") "External_Lactose";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_I2_conc(unit = "");
    Real elmt_I2_amount(unit = "");
    Real elmt_I2(unit = "") "PartialBetagalactosidase";
    Real elmt_I3_conc(unit = "");
    Real elmt_I3_amount(unit = "");
    Real elmt_I3(unit = "") "PartialPermease";
    Real elmt_A_conc(unit = "");
    Real elmt_A_amount(unit = "");
    Real elmt_A(unit = "") "allolactose";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_B_conc(unit = "");
    Real elmt_B_amount(unit = "");
    Real elmt_B(unit = "") "Betagalactosidase";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_I1_conc(unit = "");
    Real elmt_I1_amount(unit = "");
    Real elmt_I1(unit = "") "PartialmRNA";

    initial equation
        elmt_cell = 1.0;
        elmt_P_conc = 0.0149;
        elmt_M_conc = 6.26E-4;
        elmt_L_conc = 0.372;
        elmt_L_e_conc = 0.08;
        elmt_I2_conc = 0.0;
        elmt_I3_conc = 0.0;
        elmt_A_conc = 0.038;
        elmt_B_conc = 0.0;
        elmt_I1_conc = 0.0;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_P = elmt_P_conc;
        elmt_M = elmt_M_conc;
        elmt_L = elmt_L_conc;
        elmt_L_e = elmt_L_e_conc;
        elmt_I2 = elmt_I2_conc;
        elmt_I3 = elmt_I3_conc;
        elmt_A = elmt_A_conc;
        elmt_B = elmt_B_conc;
        elmt_I1 = elmt_I1_conc;
        der(elmt_L_e_amount) = 0;
        der(elmt_P_amount) = ((elmt_r_p2_i3 * elmt_product18) + (- (elmt_r_p1 * elmt_reactant16)));
        der(elmt_M_amount) = ((elmt_r_m3_i1 * elmt_product3) + (elmt_r_m1 * elmt_product0) + (- (elmt_r_m2 * elmt_reactant1)));
        der(elmt_L_amount) = ((- (elmt_r_l2 * elmt_reactant13)) + (- (elmt_r_l3 * elmt_reactant14)) + (elmt_r_l4 * elmt_product15) + (- (elmt_r_a3_l1 * elmt_reactant11)));
        der(elmt_I2_amount) = ((elmt_r_i2 * elmt_product8) + (- (elmt_r_b2_i2 * elmt_reactant6)));
        der(elmt_I3_amount) = ((elmt_r_i3 * elmt_product19) + (- (elmt_r_p2_i3 * elmt_reactant17)));
        der(elmt_A_amount) = ((- (elmt_r_a1 * elmt_reactant9)) + (- (elmt_r_a2 * elmt_reactant10)) + (elmt_r_a3_l1 * elmt_product12));
        der(elmt_B_amount) = ((- (elmt_r_b1 * elmt_reactant5)) + (elmt_r_b2_i2 * elmt_product7));
        der(elmt_I1_amount) = ((- (elmt_r_m3_i1 * elmt_reactant2)) + (elmt_r_i1 * elmt_product4));

    algorithm
        elmt_P_conc := elmt_P_amount / elmt_cell;
        elmt_M_conc := elmt_M_amount / elmt_cell;
        elmt_L_conc := elmt_L_amount / elmt_cell;
        elmt_L_e_conc := elmt_L_e_amount / elmt_cell;
        elmt_I2_conc := elmt_I2_amount / elmt_cell;
        elmt_I3_conc := elmt_I3_amount / elmt_cell;
        elmt_A_conc := elmt_A_amount / elmt_cell;
        elmt_B_conc := elmt_B_amount / elmt_cell;
        elmt_I1_conc := elmt_I1_amount / elmt_cell;
end Class_elmt_cell;
