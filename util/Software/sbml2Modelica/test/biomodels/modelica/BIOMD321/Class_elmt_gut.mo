within BIOMD321;
class Class_elmt_gut

    input Real elmt_reactant2;
    input Real elmt_L_Dopa_per_kg_rat;
    input Real elmt_l_dopa_absorption;
    input Real elmt_rat_body_mass;
    input Real elmt_l_dopa_blood_hepa_clearance;
    input Real elmt_reactant0;

    Real elmt_gut(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_A_dopa_amount(unit = "");
    Real elmt_A_dopa_conc(unit = "");
    Real elmt_A_dopa(unit = "") "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_gut = 1.0;
        elmt_A_dopa_amount = (elmt_L_Dopa_per_kg_rat * elmt_rat_body_mass);


    equation
        assert(elmt_gut >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_gut) = 0;
        elmt_A_dopa = elmt_A_dopa_amount;
        der(elmt_A_dopa_amount) = ((- (elmt_l_dopa_absorption * elmt_reactant0)) + (- (elmt_l_dopa_blood_hepa_clearance * elmt_reactant2)));

    algorithm
        elmt_A_dopa_conc := elmt_A_dopa_amount / elmt_gut;
end Class_elmt_gut;
