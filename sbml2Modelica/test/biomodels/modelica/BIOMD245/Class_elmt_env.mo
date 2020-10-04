within BIOMD245;
class Class_elmt_env

    input Real elmt_r7;
    input Real elmt_r8;
    input Real elmt_r5;
    input Real elmt_r6;
    input Real elmt_s_glu_in;
    input Real elmt_r3;
    input Real elmt_r4;
    input Real elmt_r1;
    input Real elmt_product10;
    input Real elmt_r2;
    input Real elmt_product31;
    input Real elmt_X_AcDH;
    input Real elmt_reactant22;
    input Real elmt_X_a;
    input Real elmt_reactant18;
    input Real elmt_s_acetald_out;
    input Real elmt_reactant9;
    input Real elmt_s_pyr_out;
    input Real elmt_product7;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_product23;
    input Real elmt_s_acetate_out;
    input Real elmt_s_glu_out;
    input Real elmt_product1;
    input Real elmt_reactant36;
    input Real elmt_reactant15;
    input Real elmt_reactant38;
    input Real elmt_reactant32;
    input Real elmt_reactant33;
    input Real elmt_reactant0;
    input Real elmt_reactant12;
    input Real elmt_reactant34;
    input Real elmt_reactant35;
    input Real elmt_s_EtOH_out;
    input Real elmt_x_out;
    input Real elmt_product19;
    input Real elmt_product17;

    Real elmt_env(unit = "") "environment";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_s_acetald_conc(unit = "");
    Real elmt_s_acetald_amount(unit = "");
    Real elmt_s_acetald(unit = "") "Acetaldehyde";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_CO2_conc(unit = "");
    Real elmt_CO2_amount(unit = "");
    Real elmt_CO2(unit = "") "CO2";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_s_pyr_conc(unit = "");
    Real elmt_s_pyr_amount(unit = "");
    Real elmt_s_pyr(unit = "") "Pyruvate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_AcDH_conc(unit = "");
    Real elmt_AcDH_amount(unit = "");
    Real elmt_AcDH(unit = "") "BM(AcDH)";
    Real elmt_Red_conc(unit = "");
    Real elmt_Red_amount(unit = "");
    Real elmt_Red(unit = "") "Red. Equ. (NADH)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_x_conc(unit = "");
    Real elmt_x_amount(unit = "");
    Real elmt_x(unit = "") "BM";
    Real elmt_s_glu_conc(unit = "");
    Real elmt_s_glu_amount(unit = "");
    Real elmt_s_glu(unit = "") "Glucose";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_a_conc(unit = "");
    Real elmt_a_amount(unit = "");
    Real elmt_a(unit = "") "BM(active)";
    Real elmt_S_f_conc(unit = "");
    Real elmt_S_f_amount(unit = "");
    Real elmt_S_f(unit = "") "Glucose(feed)";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_s_acetate_conc(unit = "");
    Real elmt_s_acetate_amount(unit = "");
    Real elmt_s_acetate(unit = "") "Acetate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_s_EtOH_conc(unit = "");
    Real elmt_s_EtOH_amount(unit = "");
    Real elmt_s_EtOH(unit = "") "EtOH";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_env = 1.0;
        elmt_s_acetald_conc = 0.0;
        elmt_CO2_conc = 0.0;
        elmt_s_pyr_conc = 0.0;
        elmt_Red_conc = 0.0;
        elmt_x_conc = 0.002;
        elmt_s_glu_conc = 15.0;
        elmt_S_f_conc = 15.0;
        elmt_s_acetate_conc = 0.0;
        elmt_s_EtOH_conc = 0.0;


    equation
        assert(elmt_env >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_env) = 0;
        elmt_s_acetald = elmt_s_acetald_conc;
        elmt_CO2 = elmt_CO2_conc;
        elmt_s_pyr = elmt_s_pyr_conc;
        elmt_AcDH = elmt_AcDH_conc;
        elmt_Red = elmt_Red_conc;
        elmt_x = elmt_x_conc;
        elmt_s_glu = elmt_s_glu_conc;
        elmt_a = elmt_a_conc;
        elmt_S_f = elmt_S_f_conc;
        elmt_s_acetate = elmt_s_acetate_conc;
        elmt_s_EtOH = elmt_s_EtOH_conc;
        der(elmt_CO2_amount) = 0;
        elmt_AcDH_amount = (elmt_x * elmt_X_AcDH) * elmt_env;
        der(elmt_Red_amount) = 0;
        elmt_a_amount = (elmt_x * elmt_X_a) * elmt_env;
        der(elmt_S_f_amount) = 0;
        der(elmt_s_acetald_amount) = ((- (elmt_r6 * elmt_reactant15)) + (elmt_r3 * elmt_product7) + (- (elmt_r4 * elmt_reactant9)) + (- (elmt_s_acetald_out * elmt_reactant35)));
        der(elmt_s_pyr_amount) = ((- (elmt_r3 * elmt_reactant6)) + (elmt_r1 * elmt_product1) + (- (elmt_r2 * elmt_reactant3)) + (- (elmt_s_pyr_out * elmt_reactant33)));
        der(elmt_x_amount) = ((elmt_r7 * elmt_product19) + (elmt_r8 * elmt_product23) + (- (elmt_x_out * elmt_reactant38)));
        der(elmt_s_glu_amount) = ((- (elmt_r7 * elmt_reactant18)) + (elmt_s_glu_in * elmt_product31) + (- (elmt_r1 * elmt_reactant0)) + (- (elmt_s_glu_out * elmt_reactant32)));
        der(elmt_s_acetate_amount) = ((- (elmt_r8 * elmt_reactant22)) + (- (elmt_r5 * elmt_reactant12)) + (elmt_r4 * elmt_product10) + (- (elmt_s_acetate_out * elmt_reactant34)));
        der(elmt_s_EtOH_amount) = ((elmt_r6 * elmt_product17) + (- (elmt_s_EtOH_out * elmt_reactant36)));

    algorithm
        elmt_s_acetald_conc := elmt_s_acetald_amount / elmt_env;
        elmt_CO2_conc := elmt_CO2_amount / elmt_env;
        elmt_s_pyr_conc := elmt_s_pyr_amount / elmt_env;
        elmt_AcDH_conc := elmt_AcDH_amount / elmt_env;
        elmt_Red_conc := elmt_Red_amount / elmt_env;
        elmt_x_conc := elmt_x_amount / elmt_env;
        elmt_s_glu_conc := elmt_s_glu_amount / elmt_env;
        elmt_a_conc := elmt_a_amount / elmt_env;
        elmt_S_f_conc := elmt_S_f_amount / elmt_env;
        elmt_s_acetate_conc := elmt_s_acetate_amount / elmt_env;
        elmt_s_EtOH_conc := elmt_s_EtOH_amount / elmt_env;
end Class_elmt_env;
