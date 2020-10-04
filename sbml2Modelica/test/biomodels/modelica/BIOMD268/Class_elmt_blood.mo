within BIOMD268;
class Class_elmt_blood

    input Real elmt_V_c_gshHb;
    input Real elmt_b_cys_import;
    input Real elmt_reactant25;
    input Real elmt_reactant27;
    input Real elmt_b_gsg_decomp;
    input Real elmt_b_gsh_decomp;
    input Real elmt_V_b_GLU_c;
    input Real elmt_reactant9;
    input Real elmt_product24;
    input Real elmt_b_cys_cystine_conv;
    input Real elmt_reactant4;
    input Real elmt_b_gsh_loss;
    input Real elmt_product7;
    input Real elmt_product6;
    input Real elmt_V_b_GLY_c;
    input Real elmt_product22;
    input Real elmt_reactant8;
    input Real elmt_product20;
    input Real elmt_product1;
    input Real elmt_aa_input;
    input Real elmt_product5;
    input Real elmt_reactant10;
    input Real elmt_reactant11;
    input Real elmt_b_met_basal;
    input Real elmt_reactant12;
    input Real elmt_reactant0;
    input Real elmt_product3;
    input Real elmt_reactant13;
    input Real elmt_b_cys_loss;
    input Real elmt_product2;
    input Real elmt_b_gly_loss;
    input Real elmt_b_gsg_loss;
    input Real elmt_reactant29;
    input Real elmt_V_b_CYS_c;
    input Real elmt_product16;
    input Real elmt_product15;
    input Real elmt_product14;
    input Real elmt_b_glu_loss;
    input Real elmt_V_c_gsgLb;
    input Real elmt_V_c_gshLb;
    input Real elmt_b_ser_basal;
    input Real elmt_b_glu_import;
    input Real elmt_b_gly_import;
    input Real elmt_product18;
    input Real elmt_V_c_gsgHb;

    Real elmt_blood(unit = "m3.0") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_b_gsg_conc(unit = "m-18.0.");
    Real elmt_b_gsg_amount(unit = "m-15.0.");
    Real elmt_b_gsg(unit = "m-18.0.") "b_GSSG";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_b_cys_conc(unit = "m-15.0.");
    Real elmt_b_cys_amount(unit = "m-12.0.");
    Real elmt_b_cys(unit = "m-15.0.") "b_Cysteine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_b_met_conc(unit = "m-3.0.");
    Real elmt_b_met_amount(unit = "");
    Real elmt_b_met(unit = "m-3.0.") "b_Met";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_b_gsh_conc(unit = "m-21.0.");
    Real elmt_b_gsh_amount(unit = "m-18.0.");
    Real elmt_b_gsh(unit = "m-21.0.") "b_GSH";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_b_ser_conc(unit = "m-6.0.");
    Real elmt_b_ser_amount(unit = "m-3.0.");
    Real elmt_b_ser(unit = "m-6.0.") "b_Ser";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_b_glu_conc(unit = "m-12.0.");
    Real elmt_b_glu_amount(unit = "m-9.0.");
    Real elmt_b_glu(unit = "m-12.0.") "b_Glutamate";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));
    Real elmt_b_gly_conc(unit = "m-9.0.");
    Real elmt_b_gly_amount(unit = "m-6.0.");
    Real elmt_b_gly(unit = "m-9.0.") "b_Glycine";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_blood = 1.0;
        elmt_b_gsg_conc = 0.484328542816829;
        elmt_b_cys_conc = 185.50378543937;
        elmt_b_gsh_conc = 12.6996048211362;
        elmt_b_glu_conc = 60.4330872702655;
        elmt_b_gly_conc = 221.101111778807;


    equation
        assert(elmt_blood >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_blood) = 0;
        elmt_b_gsg = elmt_b_gsg_conc;
        elmt_b_cys = elmt_b_cys_conc;
        elmt_b_met = elmt_b_met_conc;
        elmt_b_gsh = elmt_b_gsh_conc;
        elmt_b_ser = elmt_b_ser_conc;
        elmt_b_glu = elmt_b_glu_conc;
        elmt_b_gly = elmt_b_gly_conc;
        elmt_b_met_amount = (elmt_aa_input * elmt_b_met_basal) * elmt_blood;
        elmt_b_ser_amount = (elmt_aa_input * elmt_b_ser_basal) * elmt_blood;
        der(elmt_b_gsg_amount) = ((- (elmt_b_gsg_decomp * elmt_reactant4)) + (- (elmt_b_gsg_loss * elmt_reactant13)) + (elmt_V_c_gsgLb * elmt_product24) + (elmt_V_c_gsgHb * elmt_product22));
        der(elmt_b_cys_amount) = ((- (elmt_b_cys_cystine_conv * elmt_reactant8)) + (- (elmt_b_cys_loss * elmt_reactant9)) + (- (elmt_V_b_CYS_c * elmt_reactant25)) + (elmt_b_cys_import * elmt_product14) + (elmt_b_gsg_decomp * elmt_product5) + (elmt_b_gsh_decomp * elmt_product1));
        der(elmt_b_gsh_amount) = ((elmt_V_c_gshHb * elmt_product18) + (- (elmt_b_gsh_loss * elmt_reactant12)) + (elmt_V_c_gshLb * elmt_product20) + (- (elmt_b_gsh_decomp * elmt_reactant0)));
        der(elmt_b_glu_amount) = ((elmt_b_glu_import * elmt_product16) + (elmt_b_gsg_decomp * elmt_product7) + (elmt_b_gsh_decomp * elmt_product3) + (- (elmt_V_b_GLU_c * elmt_reactant27)) + (- (elmt_b_glu_loss * elmt_reactant10)));
        der(elmt_b_gly_amount) = ((- (elmt_V_b_GLY_c * elmt_reactant29)) + (- (elmt_b_gly_loss * elmt_reactant11)) + (elmt_b_gly_import * elmt_product15) + (elmt_b_gsg_decomp * elmt_product6) + (elmt_b_gsh_decomp * elmt_product2));

    algorithm
        elmt_b_gsg_conc := elmt_b_gsg_amount / elmt_blood;
        elmt_b_cys_conc := elmt_b_cys_amount / elmt_blood;
        elmt_b_met_conc := elmt_b_met_amount / elmt_blood;
        elmt_b_gsh_conc := elmt_b_gsh_amount / elmt_blood;
        elmt_b_ser_conc := elmt_b_ser_amount / elmt_blood;
        elmt_b_glu_conc := elmt_b_glu_amount / elmt_blood;
        elmt_b_gly_conc := elmt_b_gly_amount / elmt_blood;
end Class_elmt_blood;
