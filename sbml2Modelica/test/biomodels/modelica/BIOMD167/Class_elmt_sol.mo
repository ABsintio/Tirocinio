within BIOMD167;
class Class_elmt_sol

    input Real elmt_reactant4;
    input Real elmt_product6;
    input Real elmt_stat_export;
    input Real elmt_product1;
    input Real elmt_PstatDimer__import;
    input Real elmt_product5;
    input Real elmt_reactant11;
    input Real elmt_reactant0;
    input Real elmt_reactant13;
    input Real elmt_PstatDimerisation;
    input Real elmt_reactant9;
    input Real elmt_statPhosphorylation;
    input Real elmt_stat_import;

    Real elmt_sol(unit = "m3.0") "sol";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PstatDimer_sol_conc(unit = "");
    Real elmt_PstatDimer_sol_amount(unit = "");
    Real elmt_PstatDimer_sol(unit = "") "PstatDimer_sol";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"PstatDimer\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_species_test_conc(unit = "");
    Real elmt_species_test_amount(unit = "");
    Real elmt_species_test(unit = "") "species_test";
    Real elmt_statKinase_sol_conc(unit = "");
    Real elmt_statKinase_sol_amount(unit = "");
    Real elmt_statKinase_sol(unit = "") "statKinase_sol";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"statKinase\"/>
      </VCellInfo>
            </annotation>"));
    Real elmt_stat_sol_conc(unit = "");
    Real elmt_stat_sol_amount(unit = "");
    Real elmt_stat_sol(unit = "") "stat_sol";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"stat\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Pstat_sol_conc(unit = "");
    Real elmt_Pstat_sol_amount(unit = "");
    Real elmt_Pstat_sol(unit = "") "Pstat_sol";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"Pstat\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_sol = 14.625;
        elmt_PstatDimer_sol_conc = 0.0;
        elmt_species_test_conc = 0.0;
        elmt_stat_sol_conc = 1.0;
        elmt_Pstat_sol_conc = 0.0;


    equation
        assert(elmt_sol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_sol) = 0;
        elmt_PstatDimer_sol = elmt_PstatDimer_sol_conc;
        elmt_species_test = elmt_species_test_conc;
        elmt_statKinase_sol = elmt_statKinase_sol_conc;
        elmt_stat_sol = elmt_stat_sol_conc;
        elmt_Pstat_sol = elmt_Pstat_sol_conc;
        elmt_statKinase_sol_amount = (if ((time > 500.0) and (time < 2502.54614894971)) then (0.01 * sin((0.001571 * ((-500.0) + time)))) else 0.0) * elmt_sol;
        der(elmt_PstatDimer_sol_amount) = ((elmt_PstatDimerisation * elmt_product1) + (- (elmt_PstatDimer__import * elmt_reactant9)));
        der(elmt_species_test_amount) = (elmt_statPhosphorylation * elmt_product6);
        der(elmt_stat_sol_amount) = ((- (elmt_stat_export * elmt_reactant11)) + (- (elmt_statPhosphorylation * elmt_reactant4)) + (- (elmt_stat_import * elmt_reactant13)));
        der(elmt_Pstat_sol_amount) = ((- (elmt_PstatDimerisation * elmt_reactant0)) + (elmt_statPhosphorylation * elmt_product5));

    algorithm
        elmt_PstatDimer_sol_conc := elmt_PstatDimer_sol_amount / elmt_sol;
        elmt_species_test_conc := elmt_species_test_amount / elmt_sol;
        elmt_statKinase_sol_conc := elmt_statKinase_sol_amount / elmt_sol;
        elmt_stat_sol_conc := elmt_stat_sol_amount / elmt_sol;
        elmt_Pstat_sol_conc := elmt_Pstat_sol_amount / elmt_sol;
end Class_elmt_sol;
