within BIOMD379;
class Class_elmt_Compartment1

    input Real elmt_U_ii;
    input Real elmt_k_empt;
    input Real elmt_p_2U;
    input Real elmt_U_id;
    input Real elmt_k_abs;
    input Real elmt_S;
    input Real elmt_alpha;
    input Real elmt_beta;
    input Real elmt_k_gri;
    input Real elmt_k_i;
    input Real elmt_S_po;
    input Real elmt_I;
    input Real elmt_m_2;
    input Real elmt_G;
    input Real elmt_m_1;
    input Real elmt_E;
    input Real elmt_k_2;
    input Real elmt_k_1;
    input Real elmt_Ra;
    input Real elmt_m_4;
    input Real elmt_m_3;
    input Real elmt_gamma;
    input Real elmt_EGP;
    input Real elmt_I_b;
    input Real elmt_G_b;

    Real elmt_Compartment1(unit = "") "default";
    Real elmt_G_p_conc(unit = "");
    Real elmt_G_p_amount(unit = "");
    Real elmt_G_p(unit = "") "G_p";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_I_l_conc(unit = "");
    Real elmt_I_l_amount(unit = "");
    Real elmt_I_l(unit = "") "I_l";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_I_po_conc(unit = "");
    Real elmt_I_po_amount(unit = "");
    Real elmt_I_po(unit = "") "I_po";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Y_conc(unit = "");
    Real elmt_Y_amount(unit = "");
    Real elmt_Y(unit = "") "Y";
    Real elmt_Q_sto2_conc(unit = "");
    Real elmt_Q_sto2_amount(unit = "");
    Real elmt_Q_sto2(unit = "") "Q_sto2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Q_sto1_conc(unit = "");
    Real elmt_Q_sto1_amount(unit = "");
    Real elmt_Q_sto1(unit = "") "Q_sto1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_X_conc(unit = "");
    Real elmt_X_amount(unit = "");
    Real elmt_X(unit = "") "X";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_I_d_conc(unit = "");
    Real elmt_I_d_amount(unit = "");
    Real elmt_I_d(unit = "") "I_d";
    Real elmt_I_1_conc(unit = "");
    Real elmt_I_1_amount(unit = "");
    Real elmt_I_1(unit = "") "I_1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_G_t_conc(unit = "");
    Real elmt_G_t_amount(unit = "");
    Real elmt_G_t(unit = "") "G_t";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Q_gut_conc(unit = "");
    Real elmt_Q_gut_amount(unit = "");
    Real elmt_Q_gut(unit = "") "Q_gut";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_I_p_conc(unit = "");
    Real elmt_I_p_amount(unit = "");
    Real elmt_I_p(unit = "") "I_p";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_Compartment1 = 1.0;
        elmt_G_p_conc = (178.0 / elmt_Compartment1);
        elmt_I_l_conc = (4.5 / elmt_Compartment1);
        elmt_I_po_conc = (3.6 / elmt_Compartment1);
        elmt_Y_conc = (0.0 / elmt_Compartment1);
        elmt_Q_sto2_conc = (0.0 / elmt_Compartment1);
        elmt_Q_sto1_conc = (78000.0 / elmt_Compartment1);
        elmt_X_conc = (0.0 / elmt_Compartment1);
        elmt_I_d_conc = (25.0 / elmt_Compartment1);
        elmt_I_1_conc = (25.0 / elmt_Compartment1);
        elmt_G_t_conc = (135.0 / elmt_Compartment1);
        elmt_Q_gut_conc = (0.0 / elmt_Compartment1);
        elmt_I_p_conc = (1.25 / elmt_Compartment1);


    equation
        assert(elmt_Compartment1 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Compartment1) = 0;
        elmt_G_p = elmt_G_p_conc;
        elmt_I_l = elmt_I_l_conc;
        elmt_I_po = elmt_I_po_conc;
        elmt_Y = elmt_Y_conc;
        elmt_Q_sto2 = elmt_Q_sto2_conc;
        elmt_Q_sto1 = elmt_Q_sto1_conc;
        elmt_X = elmt_X_conc;
        elmt_I_d = elmt_I_d_conc;
        elmt_I_1 = elmt_I_1_conc;
        elmt_G_t = elmt_G_t_conc;
        elmt_Q_gut = elmt_Q_gut_conc;
        elmt_I_p = elmt_I_p_conc;
        der(elmt_G_p_amount / elmt_Compartment1) = (((((elmt_EGP + elmt_Ra) - elmt_E) - elmt_U_ii) - (elmt_k_1 * elmt_G_p)) + (elmt_k_2 * elmt_G_t));
        der(elmt_I_l_amount / elmt_Compartment1) = ((((- elmt_m_1) * elmt_I_l) - (elmt_m_3 * elmt_I_l)) + (elmt_m_2 * elmt_I_p) + elmt_S);
        der(elmt_I_po_amount / elmt_Compartment1) = (((- elmt_gamma) * elmt_I_po) + elmt_S_po);
        der(elmt_Y_amount / elmt_Compartment1) = ((- elmt_alpha) * (elmt_Y - (elmt_beta * (elmt_G - elmt_G_b))));
        der(elmt_Q_sto2_amount / elmt_Compartment1) = (((- elmt_k_empt) * elmt_Q_sto2) + (elmt_k_gri * elmt_Q_sto1));
        der(elmt_Q_sto1_amount / elmt_Compartment1) = ((- elmt_k_gri) * elmt_Q_sto1);
        der(elmt_X_amount / elmt_Compartment1) = (((- elmt_p_2U) * elmt_X) + (elmt_p_2U * (elmt_I - elmt_I_b)));
        der(elmt_I_d_amount / elmt_Compartment1) = ((- elmt_k_i) * (elmt_I_d - elmt_I_1));
        der(elmt_I_1_amount / elmt_Compartment1) = ((- elmt_k_i) * (elmt_I_1 - elmt_I));
        der(elmt_G_t_amount / elmt_Compartment1) = (((- elmt_U_id) + (elmt_k_1 * elmt_G_p)) - (elmt_k_2 * elmt_G_t));
        der(elmt_Q_gut_amount / elmt_Compartment1) = (((- elmt_k_abs) * elmt_Q_gut) + (elmt_k_empt * elmt_Q_sto2));
        der(elmt_I_p_amount / elmt_Compartment1) = ((((- elmt_m_2) * elmt_I_p) - (elmt_m_4 * elmt_I_p)) + (elmt_m_1 * elmt_I_l));

    algorithm
        elmt_G_p_conc := elmt_G_p_amount / elmt_Compartment1;
        elmt_I_l_conc := elmt_I_l_amount / elmt_Compartment1;
        elmt_I_po_conc := elmt_I_po_amount / elmt_Compartment1;
        elmt_Y_conc := elmt_Y_amount / elmt_Compartment1;
        elmt_Q_sto2_conc := elmt_Q_sto2_amount / elmt_Compartment1;
        elmt_Q_sto1_conc := elmt_Q_sto1_amount / elmt_Compartment1;
        elmt_X_conc := elmt_X_amount / elmt_Compartment1;
        elmt_I_d_conc := elmt_I_d_amount / elmt_Compartment1;
        elmt_I_1_conc := elmt_I_1_amount / elmt_Compartment1;
        elmt_G_t_conc := elmt_G_t_amount / elmt_Compartment1;
        elmt_Q_gut_conc := elmt_Q_gut_amount / elmt_Compartment1;
        elmt_I_p_conc := elmt_I_p_amount / elmt_Compartment1;
end Class_elmt_Compartment1;
