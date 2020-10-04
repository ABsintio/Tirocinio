within BIOMD232;
class Reactions

    input Real elmt_NAD;
    input Real elmt_Jresp;
    input Real elmt_ATP;
    input Real elmt_AcCoA;
    input Real elmt_JATP;
    input Real elmt_Jleak;
    input Real elmt_At;
    input Real elmt_mitochondrion;
    input Real elmt_OAA;
    input Real elmt_KG;
    input Real elmt_JANT;
    input Real elmt_Cit;
    input Real elmt_Pyr;

    Real elmt_v7(unit = "") "v7";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_v7_elmt_k7(unit "m3.0.mol-1.0.s-1.0") = 0.04 "";
    Real elmt_reactant20 "";
    Real elmt_product23 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_v8(unit = "") "v8";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_v8_elmt_k8(unit "s-1.0") = 3.6 "";
    Real elmt_reactant24 "";
    Real elmt_v5(unit = "") "v5";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_v5_elmt_k5(unit "m6.0.mol-2.0.s-1.0") = 0.082361 "";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_product15 "";
    Real elmt_reactant12 "";
    Real elmt_reactant13 "";
    Real elmt_product17 "";
    Real elmt_v6(unit = "") "v6";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_v6_elmt_Keq(unit "") = 0.3975 "";
    parameter Real elmt_v6_elmt_k6(unit "s-1.0") = 0.0032 "";
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_vANT(unit = "") "vANT";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_vresp(unit = "") "vresp";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_product30 "";
    Real elmt_reactant25 "";
    Real elmt_reactant26 "";
    Real elmt_reactant27 "";
    Real elmt_product29 "";
    Real elmt_product28 "";
    Real elmt_vATP(unit = "") "vATP";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
        </rdf:RDF>
      </annotation>"));
    Real elmt_reactant31 "";
    Real elmt_product34 "";
    Real elmt_product36 "";
    Real elmt_product35 "";
    Real elmt_reactant32 "";
    Real elmt_reactant33 "";
    Real elmt_vleak(unit = "") "vleak";
    Real elmt_product40 "";
    Real elmt_reactant39 "";
    Real elmt_v3(unit = "") "v3";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_v3_elmt_k3(unit "m3.0.mol-1.0.s-1.0") = 57.142 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reactant5 "";
    Real elmt_v4(unit = "") "v4";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_v4_elmt_k4(unit "m3.0.mol-1.0.s-1.0") = 0.053 "";
    Real elmt_product11 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_v1(unit = "") "v1";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_v1_elmt_k1(unit "m-3.0..s-1.0") = 0.038 "";
    Real elmt_product0 "";
    Real elmt_v2(unit = "") "v2";
 annotation(Documentation(info="<annotation>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
        </rdf:RDF>
      </annotation>"));
    parameter Real elmt_v2_elmt_k2(unit "m3.0.mol-1.0.s-1.0") = 0.152 "";
    Real elmt_reactant2 "";
    Real elmt_reactant1 "";
    Real elmt_product4 "";
    Real elmt_product3 "";


    initial equation
        elmt_product30 = 10.0;
        elmt_reactant20 = 1.0;
        elmt_product34 = 1.0;
        elmt_product11 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_reactant26 = 0.5;
        elmt_reactant27 = 11.0;
        elmt_reactant21 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product29 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product40 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product22 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant14 = 2.0;
        elmt_reactant37 = 1.0;
        elmt_product0 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_reactant33 = 3.0;
        elmt_product4 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product16 = 1.0;
        elmt_product38 = 1.0;
        elmt_product15 = 1.0;
        elmt_product36 = 3.0;
        elmt_product35 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 2.0;


    equation
        elmt_v7 = (elmt_mitochondrion * elmt_v7_elmt_k7 * elmt_Pyr * elmt_ATP);
        elmt_v8 = (elmt_mitochondrion * elmt_v8_elmt_k8 * elmt_OAA);
        elmt_v5 = (elmt_mitochondrion * elmt_v5_elmt_k5 * elmt_KG * elmt_NAD * (elmt_At - elmt_ATP));
        elmt_v6 = (elmt_mitochondrion * elmt_v6_elmt_k6 * (elmt_OAA - (elmt_KG / elmt_v6_elmt_Keq)));
        elmt_vANT = (elmt_mitochondrion * elmt_JANT);
        elmt_vresp = (elmt_mitochondrion * elmt_Jresp);
        elmt_vATP = (elmt_mitochondrion * elmt_JATP);
        elmt_vleak = (elmt_mitochondrion * elmt_Jleak);
        elmt_v3 = (elmt_mitochondrion * elmt_v3_elmt_k3 * elmt_OAA * elmt_AcCoA);
        elmt_v4 = (elmt_mitochondrion * elmt_v4_elmt_k4 * elmt_Cit * elmt_NAD);
        elmt_v1 = (elmt_mitochondrion * elmt_v1_elmt_k1);
        elmt_v2 = (elmt_mitochondrion * elmt_v2_elmt_k2 * elmt_Pyr * elmt_NAD);
        der(elmt_product30) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product34) = 0;
        der(elmt_product11) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product29) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product40) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product22) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_product0) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product16) = 0;
        der(elmt_product38) = 0;
        der(elmt_product15) = 0;
        der(elmt_product36) = 0;
        der(elmt_product35) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
