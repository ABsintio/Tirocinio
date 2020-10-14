within BIOMD167;
class Class_elmt_nuc

    input Real elmt_PstatDimerisationNuc;
    input Real elmt_reactant2;
    input Real elmt_product8;
    input Real elmt_stat_export;
    input Real elmt_product12;
    input Real elmt_product10;
    input Real elmt_reactant7;
    input Real elmt_product14;
    input Real elmt_PstatDimer__import;
    input Real elmt_statDephosphorylation;
    input Real elmt_stat_import;
    input Real elmt_product3;

    Real elmt_nuc(unit = "m3.0") "nuc";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_PstatDimer_nuc_conc(unit = "");
    Real elmt_PstatDimer_nuc_amount(unit = "");
    Real elmt_PstatDimer_nuc(unit = "") "PstatDimer_nuc";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"PstatDimer\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_stat_nuc_conc(unit = "");
    Real elmt_stat_nuc_amount(unit = "");
    Real elmt_stat_nuc(unit = "") "stat_nuc";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"stat\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_Pstat_nuc_conc(unit = "");
    Real elmt_Pstat_nuc_amount(unit = "");
    Real elmt_Pstat_nuc(unit = "") "Pstat_nuc";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"Pstat\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_statPhosphatase_nuc_conc(unit = "");
    Real elmt_statPhosphatase_nuc_amount(unit = "");
    Real elmt_statPhosphatase_nuc(unit = "") "statPhosphatase_nuc";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <Compound Name=\"statPhosphatase\"/>
      </VCellInfo>
            </annotation>"));

    initial equation
        elmt_nuc = 1.0;
        elmt_PstatDimer_nuc_conc = 0.0;
        elmt_stat_nuc_conc = 0.0;
        elmt_Pstat_nuc_conc = 0.0;
        elmt_statPhosphatase_nuc_conc = 0.05;


    equation
        assert(elmt_nuc >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_nuc) = 0;
        elmt_PstatDimer_nuc = elmt_PstatDimer_nuc_conc;
        elmt_stat_nuc = elmt_stat_nuc_conc;
        elmt_Pstat_nuc = elmt_Pstat_nuc_conc;
        elmt_statPhosphatase_nuc = elmt_statPhosphatase_nuc_conc;
        der(elmt_statPhosphatase_nuc_amount) = 0;
        der(elmt_PstatDimer_nuc_amount) = ((elmt_PstatDimerisationNuc * elmt_product8) + (elmt_PstatDimer__import * elmt_product10));
        der(elmt_stat_nuc_amount) = ((elmt_stat_export * elmt_product12) + (elmt_statDephosphorylation * elmt_product3) + (elmt_stat_import * elmt_product14));
        der(elmt_Pstat_nuc_amount) = ((- (elmt_PstatDimerisationNuc * elmt_reactant7)) + (- (elmt_statDephosphorylation * elmt_reactant2)));

    algorithm
        elmt_PstatDimer_nuc_conc := elmt_PstatDimer_nuc_amount / elmt_nuc;
        elmt_stat_nuc_conc := elmt_stat_nuc_amount / elmt_nuc;
        elmt_Pstat_nuc_conc := elmt_Pstat_nuc_amount / elmt_nuc;
        elmt_statPhosphatase_nuc_conc := elmt_statPhosphatase_nuc_amount / elmt_nuc;
end Class_elmt_nuc;
