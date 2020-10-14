within BIOMD231;
class Class_elmt_compartment

    input Real elmt_reactant2;
    input Real elmt_product7;
    input Real elmt_reactant3;
    input Real elmt_product6;
    input Real elmt_reactant5;
    input Real elmt_reactant8;
    input Real elmt_product1;
    input Real elmt_product4;
    input Real elmt_reactant0;
    input Real elmt_v3;
    input Real elmt_v4;
    input Real elmt_reactant9;
    input Real elmt_v1;
    input Real elmt_v2;

    Real elmt_compartment(unit = "") "compartment";
    Real elmt_AMP_conc(unit = "");
    Real elmt_AMP_amount(unit = "");
    Real elmt_AMP(unit = "") "AMP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_ATP_conc(unit = "");
    Real elmt_ATP_amount(unit = "");
    Real elmt_ATP(unit = "") "ATP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_ADP_conc(unit = "");
    Real elmt_ADP_amount(unit = "");
    Real elmt_ADP(unit = "") "ADP";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Lac_conc(unit = "");
    Real elmt_Lac_amount(unit = "");
    Real elmt_Lac(unit = "") "Lac";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Pyr_conc(unit = "");
    Real elmt_Pyr_amount(unit = "");
    Real elmt_Pyr(unit = "") "Pyr";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_NADH_conc(unit = "");
    Real elmt_NADH_amount(unit = "");
    Real elmt_NADH(unit = "") "NADH";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_AMP_conc = 0.0;
        elmt_ATP_conc = 16.3;
        elmt_ADP_conc = 0.0;
        elmt_Lac_conc = 0.0;
        elmt_Pyr_conc = 0.0;
        elmt_NADH_conc = 256.0;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_AMP = elmt_AMP_conc;
        elmt_ATP = elmt_ATP_conc;
        elmt_ADP = elmt_ADP_conc;
        elmt_Lac = elmt_Lac_conc;
        elmt_Pyr = elmt_Pyr_conc;
        elmt_NADH = elmt_NADH_conc;
        der(elmt_Lac_amount) = 0;
        der(elmt_AMP_amount) = ((elmt_v1 * elmt_product1) + (- (elmt_v2 * elmt_reactant3)));
        der(elmt_ATP_amount) = ((elmt_v3 * elmt_product6) + (- (elmt_v1 * elmt_reactant0)) + (- (elmt_v2 * elmt_reactant2)));
        der(elmt_ADP_amount) = ((- (elmt_v3 * elmt_reactant5)) + (elmt_v2 * elmt_product4));
        der(elmt_Pyr_amount) = ((elmt_v3 * elmt_product7) + (- (elmt_v4 * elmt_reactant8)));
        der(elmt_NADH_amount) = (- (elmt_v4 * elmt_reactant9));

    algorithm
        elmt_AMP_conc := elmt_AMP_amount / elmt_compartment;
        elmt_ATP_conc := elmt_ATP_amount / elmt_compartment;
        elmt_ADP_conc := elmt_ADP_amount / elmt_compartment;
        elmt_Lac_conc := elmt_Lac_amount / elmt_compartment;
        elmt_Pyr_conc := elmt_Pyr_amount / elmt_compartment;
        elmt_NADH_conc := elmt_NADH_amount / elmt_compartment;
end Class_elmt_compartment;
