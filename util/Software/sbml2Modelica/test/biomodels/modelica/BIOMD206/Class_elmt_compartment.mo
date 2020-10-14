within BIOMD206;
class Class_elmt_compartment

    input Real elmt_v9;
    input Real elmt_reactant20;
    input Real elmt_v7;
    input Real elmt_product11;
    input Real elmt_v8;
    input Real elmt_v5;
    input Real elmt_product10;
    input Real elmt_v6;
    input Real elmt_reactant18;
    input Real elmt_v3;
    input Real elmt_v4;
    input Real elmt_reactant9;
    input Real elmt_v1;
    input Real elmt_v2;
    input Real elmt_v0;
    input Real elmt_product8;
    input Real elmt_reactant1;
    input Real elmt_product7;
    input Real elmt_v10;
    input Real elmt_reactant3;
    input Real elmt_reactant6;
    input Real elmt_reactant5;
    input Real elmt_product22;
    input Real elmt_product21;
    input Real elmt_reactant14;
    input Real elmt_reactant15;
    input Real elmt_reactant17;
    input Real elmt_product4;
    input Real elmt_reactant12;
    input Real elmt_reactant0;
    input Real elmt_product2;
    input Real elmt_product16;
    input Real elmt_product13;
    input Real elmt_product19;

    Real elmt_compartment(unit = "") "compartment";
    Real elmt_at_conc(unit = "");
    Real elmt_at_amount(unit = "");
    Real elmt_at(unit = "") "ATP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_na_conc(unit = "");
    Real elmt_na_amount(unit = "");
    Real elmt_na(unit = "") "NAD";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_s6_conc(unit = "");
    Real elmt_s6_amount(unit = "");
    Real elmt_s6(unit = "") "Acetaldehyde";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_s4_conc(unit = "");
    Real elmt_s4_amount(unit = "");
    Real elmt_s4(unit = "") "3PG";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_s5_conc(unit = "");
    Real elmt_s5_amount(unit = "");
    Real elmt_s5(unit = "") "Pyruvate";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_s2_conc(unit = "");
    Real elmt_s2_amount(unit = "");
    Real elmt_s2(unit = "") "F16P";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_s3_conc(unit = "");
    Real elmt_s3_amount(unit = "");
    Real elmt_s3(unit = "") "Triose_Gly3Phos_DHAP";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_s1_conc(unit = "");
    Real elmt_s1_amount(unit = "");
    Real elmt_s1(unit = "") "Glucose";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    Real elmt_s6o_conc(unit = "");
    Real elmt_s6o_amount(unit = "");
    Real elmt_s6o(unit = "") "extracellular acetaldehyde";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));

    initial equation
        elmt_compartment = 1.0;
        elmt_at_conc = 2.0;
        elmt_na_conc = 0.6;
        elmt_s6_conc = 0.08;
        elmt_s4_conc = 0.7;
        elmt_s5_conc = 8.0;
        elmt_s2_conc = 5.0;
        elmt_s3_conc = 0.6;
        elmt_s1_conc = 1.0;
        elmt_s6o_conc = 0.02;


    equation
        assert(elmt_compartment >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment) = 0;
        elmt_at = elmt_at_conc;
        elmt_na = elmt_na_conc;
        elmt_s6 = elmt_s6_conc;
        elmt_s4 = elmt_s4_conc;
        elmt_s5 = elmt_s5_conc;
        elmt_s2 = elmt_s2_conc;
        elmt_s3 = elmt_s3_conc;
        elmt_s1 = elmt_s1_conc;
        elmt_s6o = elmt_s6o_conc;
        der(elmt_at_amount) = ((- (elmt_v7 * elmt_reactant14)) + (elmt_v3 * elmt_product8) + (elmt_v4 * elmt_product11) + (- (elmt_v1 * elmt_reactant1)));
        der(elmt_na_amount) = ((elmt_v8 * elmt_product16) + (elmt_v6 * elmt_product21) + (- (elmt_v3 * elmt_reactant6)));
        der(elmt_s6_amount) = ((- (elmt_v10 * elmt_reactant18)) + (elmt_v5 * elmt_product13) + (- (elmt_v6 * elmt_reactant20)));
        der(elmt_s4_amount) = ((elmt_v3 * elmt_product7) + (- (elmt_v4 * elmt_reactant9)));
        der(elmt_s5_amount) = ((- (elmt_v5 * elmt_reactant12)) + (elmt_v4 * elmt_product10));
        der(elmt_s2_amount) = ((elmt_v1 * elmt_product2) + (- (elmt_v2 * elmt_reactant3)));
        der(elmt_s3_amount) = ((- (elmt_v8 * elmt_reactant15)) + (- (elmt_v3 * elmt_reactant5)) + (elmt_v2 * elmt_product4));
        der(elmt_s1_amount) = ((- (elmt_v1 * elmt_reactant0)) + (elmt_v0 * elmt_product22));
        der(elmt_s6o_amount) = ((- (elmt_v9 * elmt_reactant17)) + (elmt_v10 * elmt_product19));

    algorithm
        elmt_at_conc := elmt_at_amount / elmt_compartment;
        elmt_na_conc := elmt_na_amount / elmt_compartment;
        elmt_s6_conc := elmt_s6_amount / elmt_compartment;
        elmt_s4_conc := elmt_s4_amount / elmt_compartment;
        elmt_s5_conc := elmt_s5_amount / elmt_compartment;
        elmt_s2_conc := elmt_s2_amount / elmt_compartment;
        elmt_s3_conc := elmt_s3_amount / elmt_compartment;
        elmt_s1_conc := elmt_s1_amount / elmt_compartment;
        elmt_s6o_conc := elmt_s6o_amount / elmt_compartment;
end Class_elmt_compartment;
