within BIOMD239;
class Class_elmt_MT_IMS

    input Real elmt_v24;
    input Real elmt_v34;
    input Real elmt_reactant85;
    input Real elmt_reactant63;
    input Real elmt_product93;
    input Real elmt_reactant92;
    input Real elmt_product87;
    input Real elmt_product65;
    input Real elmt_product91;
    input Real elmt_reactant88;
    input Real elmt_v16;
    input Real elmt_v26;
    input Real elmt_reactant89;
    input Real elmt_product90;
    input Real elmt_v25;
    input Real elmt_reactant121;
    input Real elmt_product123;

    Real elmt_MT_IMS(unit = "") "mitochondrial intermembrane space";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Cytc2p_conc(unit = "");
    Real elmt_Cytc2p_amount(unit = "");
    Real elmt_Cytc2p(unit = "") "ferricytochrome c";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Cytc3p_conc(unit = "");
    Real elmt_Cytc3p_amount(unit = "");
    Real elmt_Cytc3p(unit = "") "ferrocytochrome c";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_QH2_conc(unit = "");
    Real elmt_QH2_amount(unit = "");
    Real elmt_QH2(unit = "") "ubiquinol";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_Q_conc(unit = "");
    Real elmt_Q_amount(unit = "");
    Real elmt_Q(unit = "") "ubiquinone";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_MT_IMS = 1.0;
        elmt_Cytc2p_conc = 1.1E-4;
        elmt_Cytc3p_conc = 0.003;
        elmt_QH2_conc = 0.028;
        elmt_Q_conc = 0.026;


    equation
        assert(elmt_MT_IMS >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_MT_IMS) = 0;
        elmt_Cytc2p = elmt_Cytc2p_conc;
        elmt_Cytc3p = elmt_Cytc3p_conc;
        elmt_QH2 = elmt_QH2_conc;
        elmt_Q = elmt_Q_conc;
        der(elmt_Cytc2p_amount) = ((- (elmt_v26 * elmt_reactant92)) + (elmt_v25 * elmt_product91));
        der(elmt_Cytc3p_amount) = ((elmt_v26 * elmt_product93) + (- (elmt_v25 * elmt_reactant89)));
        der(elmt_QH2_amount) = ((elmt_v24 * elmt_product87) + (- (elmt_v25 * elmt_reactant88)) + (elmt_v34 * elmt_product123) + (elmt_v16 * elmt_product65));
        der(elmt_Q_amount) = ((- (elmt_v24 * elmt_reactant85)) + (elmt_v25 * elmt_product90) + (- (elmt_v34 * elmt_reactant121)) + (- (elmt_v16 * elmt_reactant63)));

    algorithm
        elmt_Cytc2p_conc := elmt_Cytc2p_amount / elmt_MT_IMS;
        elmt_Cytc3p_conc := elmt_Cytc3p_amount / elmt_MT_IMS;
        elmt_QH2_conc := elmt_QH2_amount / elmt_MT_IMS;
        elmt_Q_conc := elmt_Q_amount / elmt_MT_IMS;
end Class_elmt_MT_IMS;
