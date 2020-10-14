within BIOMD069;
class Reactions

    input Real elmt_k1;
    input Real elmt_p3;
    input Real elmt_kCSKoff;
    input Real elmt_p1;
    input Real elmt_p2;
    input Real elmt_srca;
    input Real elmt_Cbp;
    input Real elmt_CSK_cytoplasm;
    input Real elmt_default;
    input Real elmt_k4;
    input Real elmt_src_activity;
    input Real elmt_k2;
    input Real elmt_k3;
    input Real elmt_kCbp;
    input Real elmt_srco;
    input Real elmt_kPTP;
    input Real elmt_ptp_activity;
    input Real elmt_Cbp_P;
    input Real elmt_srcc;
    input Real elmt_PTP;
    input Real elmt_srci;
    input Real elmt_PTP_pY789;
    input Real elmt_kCSKon;
    input Real elmt_Cbp_P_CSK;

    Real elmt_PTP_phosphorylation(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product12 "";
    Real elmt_reactant11 "";
    Real elmt_CSK_translocation(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_v3(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant4 "";
    Real elmt_product5 "";
    Real elmt_v4(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_v1(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_v2(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_Cbp_phosphorylation(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product14 "";
    Real elmt_reactant13 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product7 = 1.0;
        elmt_product12 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product10 = 1.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product14 = 1.0;


    equation
        elmt_PTP_phosphorylation = (elmt_default * ((((elmt_kPTP * elmt_src_activity) + elmt_p3) * elmt_PTP) - (elmt_p2 * elmt_PTP_pY789)));
        elmt_CSK_translocation = (((elmt_Cbp_P * elmt_kCSKon * elmt_CSK_cytoplasm) - (elmt_kCSKoff * elmt_Cbp_P_CSK)) * elmt_default);
        elmt_v3 = (((elmt_k1 * elmt_Cbp_P_CSK * elmt_srca) - (elmt_k2 * elmt_ptp_activity * elmt_srcc)) * elmt_default);
        elmt_v4 = (elmt_default * elmt_k4 * elmt_p1 * elmt_srcc);
        elmt_v1 = (((elmt_k2 * elmt_ptp_activity * elmt_srci) - (elmt_k1 * elmt_Cbp_P_CSK * elmt_srco)) * elmt_default);
        elmt_v2 = (((elmt_k3 * elmt_src_activity * elmt_srco) - (elmt_p1 * elmt_srca)) * elmt_default);
        elmt_Cbp_phosphorylation = (elmt_kCbp * elmt_src_activity * elmt_Cbp * elmt_default);
        der(elmt_reactant2) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product7) = 0;
        der(elmt_product12) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product10) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product14) = 0;

end Reactions;
