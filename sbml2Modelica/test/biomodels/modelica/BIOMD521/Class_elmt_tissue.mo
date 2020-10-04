within BIOMD521;
class Class_elmt_tissue

    input Real elmt_delta_QP;
    input Real elmt_k_PQ;
    input Real elmt_Pstar;
    input Real elmt_K;
    input Real elmt_lambda_P;
    input Real elmt_gamma;
    input Real elmt_k_Qp_P;
    input Real elmt_C;
    input Real elmt_KDE;

    Real elmt_tissue(unit = "") "tissue";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P_conc(unit = "");
    Real elmt_P_amount(unit = "");
    Real elmt_P(unit = "") "Proliferative tissue";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Qp_conc(unit = "");
    Real elmt_Qp_amount(unit = "");
    Real elmt_Qp(unit = "") "damaged quiescent cells";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Q_conc(unit = "");
    Real elmt_Q_amount(unit = "");
    Real elmt_Q(unit = "") "nonproliferative quiescent tissue";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_tissue = 1.0;
        elmt_P_conc = 7.13;
        elmt_Qp_conc = 0.0;
        elmt_Q_conc = 41.2;


    equation
        assert(elmt_tissue >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_tissue) = 0;
        elmt_P = elmt_P_conc;
        elmt_Qp = elmt_Qp_conc;
        elmt_Q = elmt_Q_conc;
        der(elmt_P_amount / elmt_tissue) = (((((elmt_lambda_P * elmt_P) * (1.0 - (elmt_Pstar / elmt_K))) + (elmt_k_Qp_P * elmt_Qp)) - (elmt_k_PQ * elmt_P)) - (((elmt_gamma * elmt_C) * elmt_KDE) * elmt_P));
        der(elmt_Qp_amount / elmt_tissue) = (((((elmt_gamma * elmt_C) * elmt_KDE) * elmt_Q) - (elmt_k_Qp_P * elmt_Qp)) - (elmt_delta_QP * elmt_Qp));
        der(elmt_Q_amount / elmt_tissue) = (elmt_k_PQ - (((elmt_gamma * elmt_C) * elmt_KDE) * elmt_Q));

    algorithm
        elmt_P_conc := elmt_P_amount / elmt_tissue;
        elmt_Qp_conc := elmt_Qp_amount / elmt_tissue;
        elmt_Q_conc := elmt_Q_amount / elmt_tissue;
end Class_elmt_tissue;
