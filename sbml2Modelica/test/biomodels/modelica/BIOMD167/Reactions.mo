within BIOMD167;
class Reactions

    input Real elmt_PstatDimer_sol;
    input Real elmt_statKinase_sol;
    input Real elmt_nm;
    input Real elmt_sol;
    input Real elmt_stat_sol;
    input Real elmt_Pstat_sol;
    input Real elmt_nuc;
    input Real elmt_PstatDimer_nuc;
    input Real elmt_stat_nuc;
    input Real elmt_Pstat_nuc;
    input Real elmt_statPhosphatase_nuc;

    Real elmt_PstatDimerisationNuc(unit = "") "PstatDimerisationNuc";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"nuc\"/>
        <ReactionRate Name=\"J_PstatDimerisation\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PstatDimerisationNuc_elmt_Kf_PstatDimerisation(unit "m3.0.mol-1.0.s-1.0") = 0.6 "";
    parameter Real elmt_PstatDimerisationNuc_elmt_Kr_PstatDimerisation(unit "s-1.0") = 0.03 "";
    Real elmt_product8 "";
    Real elmt_reactant7 "";
    Real elmt_PstatDimerisation(unit = "") "PstatDimerisation";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"sol\"/>
        <ReactionRate Name=\"J_PstatDimerisation\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PstatDimerisation_elmt_Kf_PstatDimerisation(unit "m3.0.mol-1.0.s-1.0") = 0.6 "";
    parameter Real elmt_PstatDimerisation_elmt_Kr_PstatDimerisation(unit "s-1.0") = 0.03 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_stat_export(unit = "") "stat_export";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <FluxStep FluxCarrier=\"stat\" FluxCarrierValence=\"0\" FluxOption=\"MolecularOnly\" Structure=\"nm\"/>
        <ReactionRate Name=\"J_stat_export\"/>
      </VCellInfo>
            </annotation>"));
    parameter Real elmt_stat_export_elmt_Ks_exp(unit "m-3.0.") = 0.6 "";
    parameter Real elmt_stat_export_elmt_stat_expMax(unit "m-5.0..s-1.0") = -0.06 "";
    Real elmt_product12 "";
    Real elmt_reactant11 "";
    Real elmt_PstatDimer__import(unit = "") "PstatDimer_ import";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <FluxStep FluxCarrier=\"PstatDimer\" FluxCarrierValence=\"1\" FluxOption=\"MolecularOnly\" Structure=\"nm\"/>
        <ReactionRate Name=\"J_PstatDimer_import\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PstatDimer__import_elmt_PstatDimer_impMax(unit "m-5.0..s-1.0") = 0.045 "";
    parameter Real elmt_PstatDimer__import_elmt_Kpsd_imp(unit "m-3.0.") = 0.3 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_statDephosphorylation(unit = "") "statDephosphorylation";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"nuc\"/>
        <ReactionRate Name=\"J_statDephosphorylation\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_statDephosphorylation_elmt_Km_dephos(unit "m-3.0.") = 2.0 "";
    parameter Real elmt_statDephosphorylation_elmt_Kcat_dephos(unit "s-1.0") = 1.0 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_statPhosphorylation(unit = "") "statPhosphorylation";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"sol\"/>
        <ReactionRate Name=\"J_statPhosphorylation\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_statPhosphorylation_elmt_Km_phos(unit "m-3.0.") = 4.0 "";
    parameter Real elmt_statPhosphorylation_elmt_Kcat_phos(unit "s-1.0") = 1.0 "";
    Real elmt_reactant4 "";
    Real elmt_product6 "";
    Real elmt_product5 "";
    Real elmt_stat_import(unit = "") "stat_import";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <FluxStep FluxCarrier=\"stat\" FluxCarrierValence=\"0\" FluxOption=\"MolecularOnly\" Structure=\"nm\"/>
        <ReactionRate Name=\"J_stat_import\"/>
      </VCellInfo>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_stat_import_elmt_stat_impMax(unit "m-5.0..s-1.0") = 0.003 "";
    parameter Real elmt_stat_import_elmt_Ks_imp(unit "m-3.0.") = 3.0 "";
    Real elmt_product14 "";
    Real elmt_reactant13 "";


    initial equation
        elmt_reactant2 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product6 = 1.0;
        elmt_product12 = 1.0;
        elmt_product10 = 1.0;
        elmt_reactant7 = 2.0;
        elmt_product1 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant0 = 2.0;
        elmt_product3 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product14 = 1.0;


    equation
        elmt_PstatDimerisationNuc = (((elmt_PstatDimerisationNuc_elmt_Kf_PstatDimerisation * Functions.pow(elmt_Pstat_nuc, 2.0)) + (- (elmt_PstatDimerisationNuc_elmt_Kr_PstatDimerisation * elmt_PstatDimer_nuc))) * elmt_nuc);
        elmt_PstatDimerisation = (((elmt_PstatDimerisation_elmt_Kf_PstatDimerisation * Functions.pow(elmt_Pstat_sol, 2.0)) + (- (elmt_PstatDimerisation_elmt_Kr_PstatDimerisation * elmt_PstatDimer_sol))) * elmt_sol);
        elmt_stat_export = (elmt_nuc * elmt_stat_export_elmt_stat_expMax * elmt_stat_nuc * (1.0 / (elmt_stat_export_elmt_Ks_exp + elmt_stat_nuc)) * elmt_nm);
        elmt_PstatDimer__import = (elmt_PstatDimer__import_elmt_PstatDimer_impMax * elmt_PstatDimer_sol * (1.0 / (elmt_PstatDimer__import_elmt_Kpsd_imp + elmt_PstatDimer_sol)) * elmt_nm);
        elmt_statDephosphorylation = (elmt_statDephosphorylation_elmt_Kcat_dephos * elmt_statPhosphatase_nuc * elmt_Pstat_nuc * (1.0 / (elmt_statDephosphorylation_elmt_Km_dephos + elmt_Pstat_nuc)) * elmt_nuc);
        elmt_statPhosphorylation = (elmt_statPhosphorylation_elmt_Kcat_phos * elmt_statKinase_sol * elmt_stat_sol * (1.0 / (elmt_statPhosphorylation_elmt_Km_phos + elmt_stat_sol)) * elmt_sol);
        elmt_stat_import = (elmt_nuc * elmt_stat_import_elmt_stat_impMax * elmt_stat_sol * (1.0 / (elmt_stat_import_elmt_Ks_imp + elmt_stat_sol)) * elmt_nm);
        der(elmt_reactant2) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product6) = 0;
        der(elmt_product12) = 0;
        der(elmt_product10) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product1) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product14) = 0;

end Reactions;
