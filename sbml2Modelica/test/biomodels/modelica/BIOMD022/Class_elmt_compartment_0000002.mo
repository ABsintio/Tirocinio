within BIOMD022;
class Class_elmt_compartment_0000002

    input Real elmt_reactant42;
    input Real elmt_reactant64;
    input Real elmt_reactant14;
    input Real elmt_reactant36;
    input Real elmt_Reaction26;
    input Real elmt_Reaction37;
    input Real elmt_reactant16;
    input Real elmt_Reaction23;
    input Real elmt_Reaction33;
    input Real elmt_reactant56;
    input Real elmt_Reaction10;
    input Real elmt_Reaction9;
    input Real elmt_Reaction8;
    input Real elmt_Reaction7;
    input Real elmt_product13;
    input Real elmt_product19;

    Real elmt_compartment_0000002(unit = "") "nucleus";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CCn_conc(unit = "");
    Real elmt_CCn_amount(unit = "");
    Real elmt_CCn(unit = "") "Clk-Cyc_nuc";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PTn_conc(unit = "");
    Real elmt_PTn_amount(unit = "");
    Real elmt_PTn(unit = "") "Per-Tim_nuc";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment_0000002 = 1.0;
        elmt_CCn_conc = (0.4 / elmt_compartment_0000002);
        elmt_PTn_conc = (1.0 / elmt_compartment_0000002);


    equation
        assert(elmt_compartment_0000002 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_0000002) = 0;
        elmt_CCn = elmt_CCn_conc;
        elmt_PTn = elmt_PTn_conc;
        der(elmt_CCn_amount) = ((- (elmt_Reaction26 * elmt_reactant42)) + (- (elmt_Reaction8 * elmt_reactant14)) + (elmt_Reaction7 * elmt_product13) + (- (elmt_Reaction37 * elmt_reactant64)));
        der(elmt_PTn_amount) = ((- (elmt_Reaction23 * elmt_reactant36)) + (- (elmt_Reaction9 * elmt_reactant16)) + (- (elmt_Reaction33 * elmt_reactant56)) + (elmt_Reaction10 * elmt_product19));

    algorithm
        elmt_CCn_conc := elmt_CCn_amount / elmt_compartment_0000002;
        elmt_PTn_conc := elmt_PTn_amount / elmt_compartment_0000002;
end Class_elmt_compartment_0000002;
