within BIOMD021;
class Class_elmt_compartment_0000002

    input Real elmt_PTnucl_complex_degradation;
    input Real elmt_product26;
    input Real elmt_reactant28;
    input Real elmt_PT_complex_nucleation;

    Real elmt_compartment_0000002(unit = "") "nucleus";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Cn_conc(unit = "");
    Real elmt_Cn_amount(unit = "");
    Real elmt_Cn(unit = "") "Nuclear PER-TIM Complex";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_compartment_0000002 = 1.0;
        elmt_Cn_conc = 0.0;


    equation
        assert(elmt_compartment_0000002 >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_compartment_0000002) = 0;
        elmt_Cn = elmt_Cn_conc;
        der(elmt_Cn_amount) = ((- (elmt_PTnucl_complex_degradation * elmt_reactant28)) + (elmt_PT_complex_nucleation * elmt_product26));

    algorithm
        elmt_Cn_conc := elmt_Cn_amount / elmt_compartment_0000002;
end Class_elmt_compartment_0000002;
