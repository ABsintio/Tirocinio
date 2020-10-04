within BIOMD020;
class Parameters

    Real elmt_i_L(unit = "") "i_L";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_m(unit = "") "m";
    Real elmt_i_K(unit = "") "i_K";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_n(unit = "") "n";
    Real elmt_g_L(unit = "") "g_L";
    Real elmt_g_K(unit = "") "g_K";
    Real elmt_h(unit = "") "h";
    Real elmt_Cm(unit = "") "Cm";
    Real elmt_E_Na(unit = "A-1.0..m2.0.s-3.0") "E_Na";
    Real elmt_alpha_m(unit = "") "alpha_m";
    Real elmt_alpha_n(unit = "") "alpha_n";
    Real elmt_i_Na(unit = "") "i_Na";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_V(unit = "A-1.0..m2.0.s-3.0") "V";
    Real elmt_alpha_h(unit = "") "auxiliary alpha_h";
    Real elmt_g_Na(unit = "") "g_Na";
    Real elmt_E_R(unit = "A-1.0..m2.0.s-3.0") "E_R";
    Real elmt_beta_n(unit = "") "beta_n";
    Real elmt_V_neg(unit = "A-1.0..m2.0.s-3.0") "V_neg";
    Real elmt_I(unit = "") "I";
    Real elmt_E_K(unit = "A-1.0..m2.0.s-3.0") "E_K";
    Real elmt_E_L(unit = "A-1.0..m2.0.s-3.0") "E_L";
    Real elmt_E(unit = "A-1.0..m2.0.s-3.0") "E";
    Real elmt_V_L(unit = "A-1.0..m2.0.s-3.0") "V_L";
    Real elmt_V_Na(unit = "A-1.0..m2.0.s-3.0") "V_Na";
    Real elmt_V_K(unit = "A-1.0..m2.0.s-3.0") "V_K";
    Real elmt_beta_h(unit = "") "beta_h";
    Real elmt_beta_m(unit = "") "beta_m";


    initial equation
        elmt_m = 0.052932;
        elmt_n = 0.31768;
        elmt_g_L = 0.3;
        elmt_g_K = 36.0;
        elmt_h = 0.59612;
        elmt_Cm = 1.0;
        elmt_E_Na = (-190.0);
        elmt_V = 0.0;
        elmt_g_Na = 120.0;
        elmt_E_R = (-75.0);
        elmt_I = 0.0;
        elmt_E_K = (-63.0);
        elmt_E_L = (-85.613);


    equation
        elmt_i_L = (elmt_g_L * (elmt_V - elmt_V_L));
        der(elmt_m) = ((elmt_alpha_m * (1.0 - elmt_m)) - (elmt_beta_m * elmt_m));
        elmt_i_K = (elmt_g_K * Functions.pow(elmt_n, 4.0) * (elmt_V - elmt_V_K));
        der(elmt_n) = ((elmt_alpha_n * (1.0 - elmt_n)) - (elmt_beta_n * elmt_n));
        der(elmt_g_L) = 0;
        der(elmt_g_K) = 0;
        der(elmt_h) = ((elmt_alpha_h * (1.0 - elmt_h)) - (elmt_beta_h * elmt_h));
        der(elmt_Cm) = 0;
        der(elmt_E_Na) = 0;
        elmt_alpha_m = ((0.1 * (elmt_V + 25.0)) / (exp(((elmt_V + 25.0) / 10.0)) - 1.0));
        elmt_alpha_n = ((0.01 * (elmt_V + 10.0)) / (exp(((elmt_V + 10.0) / 10.0)) - 1.0));
        elmt_i_Na = (elmt_g_Na * Functions.pow(elmt_m, 3.0) * elmt_h * (elmt_V - elmt_V_Na));
        der(elmt_V) = ((elmt_I - (elmt_i_Na + elmt_i_K + elmt_i_L)) / elmt_Cm);
        elmt_alpha_h = (0.07 * exp((elmt_V / 20.0)));
        der(elmt_g_Na) = 0;
        der(elmt_E_R) = 0;
        elmt_beta_n = (0.125 * exp((elmt_V / 80.0)));
        elmt_V_neg = (- elmt_V);
        der(elmt_I) = 0;
        der(elmt_E_K) = 0;
        der(elmt_E_L) = 0;
        elmt_E = (elmt_V + elmt_E_R);
        elmt_V_L = (elmt_E_L - elmt_E_R);
        elmt_V_Na = (elmt_E_Na - elmt_E_R);
        elmt_V_K = (elmt_E_K - elmt_E_R);
        elmt_beta_h = (1.0 / (exp(((elmt_V + 30.0) / 10.0)) + 1.0));
        elmt_beta_m = (4.0 * exp((elmt_V / 18.0)));

end Parameters;
