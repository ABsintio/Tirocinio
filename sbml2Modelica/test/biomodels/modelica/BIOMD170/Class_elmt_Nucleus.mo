within BIOMD170;
class Class_elmt_Nucleus

    input Real elmt_nuclear_BMAL1_degradation;
    input Real elmt_BMAL1_activation;
    input Real elmt_reactant20;
    input Real elmt_reactant6;
    input Real elmt_BMAL1_deactivation;
    input Real elmt_product21;
    input Real elmt_BMAL1_nuclear_import;
    input Real elmt_reactant8;
    input Real elmt_reactant15;
    input Real elmt_reactant17;
    input Real elmt_product5;
    input Real elmt_reactant22;
    input Real elmt_nuclear_per2_cry_complex_degradation;
    input Real elmt_per2_cry_nuclear_import;
    input Real elmt_reactant18;
    input Real elmt_product14;
    input Real elmt_Active_BMAL1_degradation;
    input Real elmt_product19;
    input Real elmt_BMAL1_nuclear_export;
    input Real elmt_per2_cry_nuclear_export;

    Real elmt_Nucleus(unit = "") "Nucleus";
    Real elmt_y6_conc(unit = "");
    Real elmt_y6_amount(unit = "");
    Real elmt_y6(unit = "") "BMAL1_nucleus";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_y7_conc(unit = "");
    Real elmt_y7_amount(unit = "");
    Real elmt_y7(unit = "") "Active BMAL1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_y3_conc(unit = "");
    Real elmt_y3_amount(unit = "");
    Real elmt_y3(unit = "") "PER2_CRY_complex_nucleus";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_Nucleus = 1.0;
        elmt_y6_conc = 1.0;
        elmt_y7_conc = 1.05;
        elmt_y3_conc = 1.1;


    equation
        assert(elmt_Nucleus >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_Nucleus) = 0;
        elmt_y6 = elmt_y6_conc;
        elmt_y7 = elmt_y7_conc;
        elmt_y3 = elmt_y3_conc;
        der(elmt_y6_amount) = ((- (elmt_nuclear_BMAL1_degradation * elmt_reactant17)) + (- (elmt_BMAL1_activation * elmt_reactant18)) + (elmt_BMAL1_deactivation * elmt_product21) + (elmt_BMAL1_nuclear_import * elmt_product14) + (- (elmt_BMAL1_nuclear_export * elmt_reactant15)));
        der(elmt_y7_amount) = ((elmt_BMAL1_activation * elmt_product19) + (- (elmt_BMAL1_deactivation * elmt_reactant20)) + (- (elmt_Active_BMAL1_degradation * elmt_reactant22)));
        der(elmt_y3_amount) = ((- (elmt_nuclear_per2_cry_complex_degradation * elmt_reactant8)) + (elmt_per2_cry_nuclear_import * elmt_product5) + (- (elmt_per2_cry_nuclear_export * elmt_reactant6)));

    algorithm
        elmt_y6_conc := elmt_y6_amount / elmt_Nucleus;
        elmt_y7_conc := elmt_y7_amount / elmt_Nucleus;
        elmt_y3_conc := elmt_y3_amount / elmt_Nucleus;
end Class_elmt_Nucleus;
