within BIOMD202;
class Reactions

    input Real elmt_p;
    input Real elmt_Vs4;
    input Real elmt_kdo;
    input Real elmt_V_PMleak;
    input Real elmt_Ko;
    input Real elmt_Orai1;
    input Real elmt_S4;
    input Real elmt_S2;
    input Real elmt_Ca_Cyt;
    input Real elmt_V_PMCA;
    input Real elmt_O_o;
    input Real elmt_kod;
    input Real elmt_h;
    input Real elmt_V_SERCA;
    input Real elmt_Ca_ec;
    input Real elmt_K_PMCA;
    input Real elmt_l_hill;
    input Real elmt_K2;
    input Real elmt_Ka;
    input Real elmt_Oc;
    input Real elmt_K_SERCA;
    input Real elmt_IP3_Cyt;
    input Real elmt_K_deg;
    input Real elmt_Vcp;
    input Real elmt_S2a;
    input Real elmt_K_PLC;
    input Real elmt_kd_oligo;
    input Real elmt_PM;
    input Real elmt_Ca_ER;
    input Real elmt_Ki;
    input Real elmt_k_a;
    input Real elmt_kop;
    input Real elmt_Kc;
    input Real elmt_Cytoplasm;
    input Real elmt_k_i;
    input Real elmt_L;
    input Real elmt_ER;
    input Real elmt_kdeg;
    input Real elmt_n_hill;
    input Real elmt_P_IP3R;
    input Real elmt_k_soc;
    input Real elmt_V_PLC;
    input Real elmt_kdc;
    input Real elmt_q;

    Real elmt_closed_CRAC_channel_deg(unit = "") "";
    Real elmt_reactant13 "";
    Real elmt_open_CRAC_channel_deg(unit = "") "";
    Real elmt_reactant18 "";
    Real elmt_open_to_closed(unit = "") "";
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_PLC(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product6 "";
    Real elmt_ER_Channel(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_act_apoSTIM1_deg(unit = "") "";
    Real elmt_reactant9 "";
    Real elmt_deg(unit = "") "";
    Real elmt_reactant7 "";
    Real elmt_act_apoSTIM1_syn(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product8 "";
    Real elmt_PMCA(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant5 "";
    Real elmt_open_CRAC_channel_prod(unit = "") "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_close_CRAC_prod(unit = "") "";
    Real elmt_product12 "";
    Real elmt_SERCA(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_PM_Channel(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product4 "";
    Real elmt_apoSTIM1_oligo_deg(unit = "") "";
    Real elmt_reactant11 "";
    Real elmt_apoSTIM1_oligo_syn(unit = "") "";
    Real elmt_product10 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product8 = 1.0;
        elmt_product6 = 1.0;
        elmt_product12 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product15 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_closed_CRAC_channel_deg = (elmt_PM * elmt_kdc * elmt_Oc);
        elmt_open_CRAC_channel_deg = (elmt_PM * elmt_kdo * elmt_O_o);
        elmt_open_to_closed = (elmt_PM * elmt_kod * elmt_O_o);
        elmt_PLC = (elmt_Cytoplasm * ((elmt_V_PLC * Functions.pow(elmt_Ca_Cyt, 2.0)) / (Functions.pow(elmt_K_PLC, 2.0) + Functions.pow(elmt_Ca_Cyt, 2.0))));
        elmt_ER_Channel = (elmt_Cytoplasm * (elmt_L + ((elmt_P_IP3R * Functions.pow(elmt_IP3_Cyt, 3.0) * Functions.pow(elmt_Ca_Cyt, 3.0) * Functions.pow(elmt_h, 3.0)) / (Functions.pow((elmt_IP3_Cyt + elmt_Ki), 3.0) * Functions.pow((elmt_Ca_Cyt + elmt_Ka), 3.0)))) * (elmt_Ca_ER - elmt_Ca_Cyt));
        elmt_act_apoSTIM1_deg = (elmt_ER * elmt_k_i * elmt_S2a);
        elmt_deg = (elmt_Cytoplasm * ((elmt_kdeg * Functions.pow(elmt_Ca_Cyt, 2.0)) / (Functions.pow(elmt_K_deg, 2.0) + Functions.pow(elmt_Ca_Cyt, 2.0))) * elmt_IP3_Cyt);
        elmt_act_apoSTIM1_syn = (elmt_ER * elmt_k_a * elmt_S2);
        elmt_PMCA = (elmt_Cytoplasm * ((elmt_V_PMCA * Functions.pow(elmt_Ca_Cyt, elmt_q)) / (Functions.pow(elmt_K_PMCA, elmt_q) + Functions.pow(elmt_Ca_Cyt, elmt_q))));
        elmt_open_CRAC_channel_prod = (elmt_PM * ((elmt_kop * Functions.pow(elmt_S2a, elmt_l_hill) * elmt_Oc) / (Functions.pow(elmt_Ko, elmt_l_hill) + Functions.pow(elmt_S2a, elmt_l_hill))));
        elmt_close_CRAC_prod = (elmt_PM * ((elmt_Vcp * Functions.pow(elmt_Orai1, elmt_n_hill)) / (Functions.pow(elmt_Kc, elmt_n_hill) + Functions.pow(elmt_Orai1, elmt_n_hill))));
        elmt_SERCA = (elmt_Cytoplasm * ((elmt_V_SERCA * Functions.pow(elmt_Ca_Cyt, elmt_p)) / (Functions.pow(elmt_K_SERCA, elmt_p) + Functions.pow(elmt_Ca_Cyt, elmt_p))));
        elmt_PM_Channel = (elmt_Cytoplasm * ((elmt_k_soc * elmt_O_o) + elmt_V_PMleak) * (elmt_Ca_ec - elmt_Ca_Cyt));
        elmt_apoSTIM1_oligo_deg = (elmt_ER * elmt_kd_oligo * elmt_S4);
        elmt_apoSTIM1_oligo_syn = (elmt_ER * ((elmt_Vs4 * Functions.pow(elmt_S2, 2.0)) / (Functions.pow(elmt_S2, 2.0) + Functions.pow(elmt_K2, 2.0))));
        der(elmt_reactant2) = 0;
        der(elmt_product8) = 0;
        der(elmt_product6) = 0;
        der(elmt_product12) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product15) = 0;
        der(elmt_product17) = 0;

end Reactions;
