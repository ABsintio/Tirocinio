within BIOMD161;
class Reactions

    input Real elmt_CaCAPRI_PM_PM;
    input Real elmt_CAPRI_cyt;
    input Real elmt_PLC_act_PM;
    input Real elmt_cyt;
    input Real elmt_RactCa;
    input Real elmt_SGS_PM;
    input Real elmt_Ras_CaPLCe_GM;
    input Real elmt_RasGDP_Golgi_GM;
    input Real elmt_SosGrb2_cyt;
    input Real elmt_PIP_PM;
    input Real elmt_erMembrane;
    input Real elmt_PM;
    input Real elmt_Ca_ER;
    input Real elmt_Ca;
    input Real elmt_KMOLE;
    input Real elmt_Ca_RasGRP_GM_GM;
    input Real elmt_Ratebasal_PIPsyn_PIP_synthesis;
    input Real elmt_PIP2_PM;
    input Real elmt_Vmax_Shc_phosphorylation;
    input Real elmt_Koff_reaction2;
    input Real elmt_EGFR_PM;
    input Real elmt_PI_PM;
    input Real elmt_Activated_EGFR_PM;
    input Real elmt_RasGDP_depal_cyt;
    input Real elmt_RasGTP_PM;
    input Real elmt_Rate_PIP2Synbasal_PIP2_synthesis;
    input Real elmt_Kon_reaction2;
    input Real elmt_Vmax_CaRasGRP_act_RasGM;
    input Real elmt_PIP2_GM_GM;
    input Real elmt_EGF_EC;
    input Real elmt_RasGTP_Golgi_GM;
    input Real elmt_Grb2_cyt;
    input Real elmt_Rinh;
    input Real elmt_Sos_cyt;
    input Real elmt_IP3;
    input Real elmt_RasGDP_PM;
    input Real elmt_RasGRP_DAG_GM;
    input Real elmt_ER_erMembrane;
    input Real elmt_Vmax_EGF_act_PLCgamma;
    input Real elmt_Shc_PM;
    input Real elmt_ca_buffer_cyt;
    input Real elmt_Ract;
    input Real elmt_RasGRP_cyt;
    input Real elmt_Vmax_CAPRI_GAP;
    input Real elmt_Rate_PIP2SynStim_PIP2_synthesis;
    input Real elmt_Vmax_RasGRP_DAG_GEF;
    input Real elmt_CaCAPRI_cyt;
    input Real elmt_RasGTP_pal_cyt;
    input Real elmt_RinhCa;
    input Real elmt_RasGTP_depal_cyt;
    input Real elmt_Ca_PLCe_cyt;
    input Real elmt_GM;
    input Real elmt_RasGDP_pal_cyt;
    input Real elmt_PLC_PM;
    input Real elmt_serca;
    input Real elmt_Kr_Ca_binds_IP3R;
    input Real elmt_Shc_star_PM;
    input Real elmt_CaRasGRP1_cyt;
    input Real elmt_DAG_GM_GM;
    input Real elmt_PLCe_cyt;
    input Real elmt_Vmax_Sos_act_RasPM;
    input Real elmt_buffer_cyt;
    input Real elmt_Ratestim_PIPsyn_PIP_synthesis;

    Real elmt_CaRasGRP_act_RasGM(unit = "") "CaRasGRP act RasGM";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"GM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_CaRasGRP_act_RasGM_elmt_Km(unit "m-2.0") = 1200.0 "";
    parameter Real elmt_CaRasGRP_act_RasGM_elmt_I(unit ".m-2.0") = 0.0 "";
    Real elmt_product47 "";
    Real elmt_reactant46 "";
    Real elmt_EGFR_binding(unit = "") "EGFR_binding";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"PM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_EGFR_binding_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_EGFR_binding_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 1.0 "";
    parameter Real elmt_EGFR_binding_elmt_Kr(unit "s-1.0") = 0.01 "";
    Real elmt_reactant64 "";
    Real elmt_product66 "";
    Real elmt_reactant65 "";
    Real elmt_CaRasGRP_translocation(unit = "") "CaRasGRP translocation";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"GM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_CaRasGRP_translocation_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_CaRasGRP_translocation_elmt_Kf(unit ".mol-1.0.s-1.0") = 10.0 "";
    parameter Real elmt_CaRasGRP_translocation_elmt_Kr(unit "s-1.0") = 5.0 "";
    Real elmt_reactant75 "";
    Real elmt_product76 "";
    Real elmt_flux2(unit = "") "flux2";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <FluxStep FluxCarrier=\"Calcium\" FluxCarrierValence=\"0\" FluxOption=\"MolecularOnly\" Structure=\"erMembrane\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_flux2_elmt_vL(unit "m3.0.s-1.0") = 3.16E-5 "";
    parameter Real elmt_flux2_elmt_I(unit ".m-2.0") = 0.0 "";
    Real elmt_product93 "";
    Real elmt_reactant92 "";
    Real elmt_RasGRP_DAG_GEF(unit = "") "RasGRP_DAG GEF";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"GM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_RasGRP_DAG_GEF_elmt_Km(unit "m-2.0") = 600.0 "";
    parameter Real elmt_RasGRP_DAG_GEF_elmt_I(unit ".m-2.0") = 0.0 "";
    Real elmt_product14 "";
    Real elmt_reactant13 "";
    Real elmt_Ras_GTP_palm1(unit = "") "Ras GTP palm1";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"GM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Ras_GTP_palm1_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_Ras_GTP_palm1_elmt_Kf(unit "s-1.0") = 1.58489319246111E-4 "";
    parameter Real elmt_Ras_GTP_palm1_elmt_Kr(unit ".mol-1.0.s-1.0") = 1.0E-5 "";
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_RasGDPpal_translocation(unit = "") "RasGDPpal translocation";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"PM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_RasGDPpal_translocation_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_RasGDPpal_translocation_elmt_Kf(unit ".mol-1.0.s-1.0") = 120.0 "";
    parameter Real elmt_RasGDPpal_translocation_elmt_Kr(unit "s-1.0") = 0.01 "";
    Real elmt_reactant30 "";
    Real elmt_product31 "";
    Real elmt_caPLCe_gen_DAG(unit = "") "caPLCe gen DAG";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"GM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_caPLCe_gen_DAG_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_caPLCe_gen_DAG_elmt_kact(unit "m2.0.s-1.0") = 1.18 "";
    Real elmt_product45 "";
    Real elmt_product44 "";
    Real elmt_reactant43 "";
    Real elmt_Sos_activation(unit = "") "Sos activation";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"PM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Sos_activation_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_Sos_activation_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 90.0 "";
    parameter Real elmt_Sos_activation_elmt_Kr(unit "s-1.0") = 0.1 "";
    Real elmt_reactant51 "";
    Real elmt_reactant52 "";
    Real elmt_product53 "";
    Real elmt_Ca_bind_CAPRI(unit = "") "Ca bind CAPRI";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cyt\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Ca_bind_CAPRI_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 0.1 "";
    parameter Real elmt_Ca_bind_CAPRI_elmt_Kr(unit "s-1.0") = 0.5 "";
    Real elmt_reactant4 "";
    Real elmt_product6 "";
    Real elmt_reactant5 "";
    Real elmt_EGF_act_PLCgamma(unit = "") "EGF act PLCgamma";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"PM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
                            </annotation>"));
    parameter Real elmt_EGF_act_PLCgamma_elmt_Km(unit "m-2.0") = 410.0 "";
    parameter Real elmt_EGF_act_PLCgamma_elmt_I(unit ".m-2.0") = 0.0 "";
    Real elmt_reactant80 "";
    Real elmt_product81 "";
    Real elmt_Ras_PM_depal1(unit = "") "Ras PM depal1";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"PM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Ras_PM_depal1_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_Ras_PM_depal1_elmt_Kf(unit "s-1.0") = 1.0E-4 "";
    parameter Real elmt_Ras_PM_depal1_elmt_Kr(unit ".mol-1.0.s-1.0") = 0.0 "";
    Real elmt_reactant94 "";
    Real elmt_product95 "";
    Real elmt_RasGTP_depal_translocate(unit = "") "RasGTP depal translocate";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"GM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_RasGTP_depal_translocate_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_RasGTP_depal_translocate_elmt_Kf(unit ".mol-1.0.s-1.0") = 120.0 "";
    parameter Real elmt_RasGTP_depal_translocate_elmt_Kr(unit "s-1.0") = 0.01 "";
    Real elmt_product9 "";
    Real elmt_reactant8 "";
    Real elmt_basal_cyt_depal_GEF(unit = "") "basal cyt depal GEF";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cyt\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_basal_cyt_depal_GEF_elmt_Kf(unit "s-1.0") = 1.0E-4 "";
    parameter Real elmt_basal_cyt_depal_GEF_elmt_Kr(unit "s-1.0") = 0.0 "";
    Real elmt_reactant41 "";
    Real elmt_product42 "";
    Real elmt_PIP_synthesis(unit = "") "PIP synthesis";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"PM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PIP_synthesis_elmt_I(unit ".m-2.0") = 0.0 "";
    Real elmt_product55 "";
    Real elmt_reactant54 "";
    Real elmt_flux0(unit = "") "flux0";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <FluxStep FluxCarrier=\"Calcium\" FluxCarrierValence=\"0\" FluxOption=\"MolecularOnly\" Structure=\"erMembrane\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_flux0_elmt_dI(unit "m-3.0.") = 0.8 "";
    parameter Real elmt_flux0_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_flux0_elmt_singleChanFlux(unit "m5.0.s-1.0") = 4.69 "";
    Real elmt_reactant90 "";
    Real elmt_product91 "";
    Real elmt_flux1(unit = "") "flux1";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <FluxStep FluxCarrier=\"Calcium\" FluxCarrierValence=\"0\" FluxOption=\"MolecularOnly\" Structure=\"erMembrane\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_flux1_elmt_kP(unit "") = 0.27 "";
    parameter Real elmt_flux1_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_flux1_elmt_vP(unit "m2.0..s-1.0") = 0.0664 "";
    Real elmt_product89 "";
    Real elmt_reactant88 "";
    Real elmt_ca_bind_rasGRP(unit = "") "ca bind rasGRP";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cyt\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_ca_bind_rasGRP_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 0.1 "";
    parameter Real elmt_ca_bind_rasGRP_elmt_Kr(unit "s-1.0") = 0.5 "";
    Real elmt_product12 "";
    Real elmt_reactant10 "";
    Real elmt_reactant11 "";
    Real elmt_sos_grb2_binding(unit = "") "sos grb2 binding";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cyt\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_sos_grb2_binding_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 0.025 "";
    parameter Real elmt_sos_grb2_binding_elmt_Kr(unit "s-1.0") = 0.0168 "";
    Real elmt_product34 "";
    Real elmt_reactant32 "";
    Real elmt_reactant33 "";
    Real elmt_CAPRI_GAP(unit = "") "CAPRI GAP";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"PM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_CAPRI_GAP_elmt_Km(unit "m-2.0") = 1200.0 "";
    parameter Real elmt_CAPRI_GAP_elmt_I(unit ".m-2.0") = 0.0 "";
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_RasPal_basal_GAP(unit = "") "RasPal basal GAP";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cyt\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_RasPal_basal_GAP_elmt_Kf(unit "s-1.0") = 1.0E-4 "";
    parameter Real elmt_RasPal_basal_GAP_elmt_Kr(unit "s-1.0") = 0.0 "";
    Real elmt_product40 "";
    Real elmt_reactant39 "";
    Real elmt_calcium_buffer(unit = "") "calcium buffer";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cyt\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
                            </annotation>"));
    parameter Real elmt_calcium_buffer_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 50.0 "";
    parameter Real elmt_calcium_buffer_elmt_Kr(unit "s-1.0") = 10.0 "";
    Real elmt_reactant58 "";
    Real elmt_product59 "";
    Real elmt_reactant57 "";
    Real elmt_RasGDP_pal(unit = "") "RasGDP pal";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"GM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_RasGDP_pal_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_RasGDP_pal_elmt_Kf(unit "s-1.0") = 0.015 "";
    parameter Real elmt_RasGDP_pal_elmt_Kr(unit ".mol-1.0.s-1.0") = 1.0E-5 "";
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_Ca_binds_IP3R(unit = "") "Ca_binds_IP3R";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"erMembrane\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Ca_binds_IP3R_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_Ca_binds_IP3R_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 1000.0 "";
    Real elmt_reactant83 "";
    Real elmt_product84 "";
    Real elmt_reactant82 "";
    Real elmt_reaction7(unit = "") "reaction7";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"GM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction7_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_reaction7_elmt_Kf(unit "s-1.0") = 0.25 "";
    parameter Real elmt_reaction7_elmt_Kr(unit "m-2.0.s-1.0") = 0.0 "";
    Real elmt_reactant85 "";
    Real elmt_rasGTP_pal_translocation(unit = "") "rasGTP pal translocation";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"PM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_rasGTP_pal_translocation_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_rasGTP_pal_translocation_elmt_Kf(unit ".mol-1.0.s-1.0") = 120.0 "";
    parameter Real elmt_rasGTP_pal_translocation_elmt_Kr(unit "s-1.0") = 0.01 "";
    Real elmt_product16 "";
    Real elmt_reactant15 "";
    Real elmt_RasGDP_depal2(unit = "") "RasGDP depal2";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"PM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_RasGDP_depal2_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_RasGDP_depal2_elmt_Kf(unit "s-1.0") = 1.0E-4 "";
    parameter Real elmt_RasGDP_depal2_elmt_Kr(unit ".mol-1.0.s-1.0") = 0.0 "";
    Real elmt_product74 "";
    Real elmt_reactant73 "";
    Real elmt_reaction2(unit = "") "reaction2";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"erMembrane\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction2_elmt_I(unit ".m-2.0") = 0.0 "";
    Real elmt_product79 "";
    Real elmt_reactant77 "";
    Real elmt_reactant78 "";
    Real elmt_reaction5(unit = "") "reaction5";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"GM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_reaction5_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_reaction5_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 0.5 "";
    parameter Real elmt_reaction5_elmt_Kr(unit "s-1.0") = 0.1 "";
    Real elmt_product25 "";
    Real elmt_reactant23 "";
    Real elmt_reactant24 "";
    Real elmt_RasGDP_depal_translocate(unit = "") "RasGDP depal translocate";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"GM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_RasGDP_depal_translocate_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_RasGDP_depal_translocate_elmt_Kf(unit ".mol-1.0.s-1.0") = 120.0 "";
    parameter Real elmt_RasGDP_depal_translocate_elmt_Kr(unit "s-1.0") = 0.01 "";
    Real elmt_product36 "";
    Real elmt_reactant35 "";
    Real elmt_IP3_degradation(unit = "") "IP3 degradation";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cyt\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
                            </annotation>"));
    parameter Real elmt_IP3_degradation_elmt_IP3_basal(unit "m-3.0.") = 0.0 "";
    parameter Real elmt_IP3_degradation_elmt_kIP3deg(unit "s-1.0") = 0.5 "";
    Real elmt_reactant7 "";
    Real elmt_basal_GAP(unit = "") "basal GAP";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"PM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_basal_GAP_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_basal_GAP_elmt_Kf(unit "s-1.0") = 1.0E-4 "";
    parameter Real elmt_basal_GAP_elmt_Kr(unit "s-1.0") = 0.0 "";
    Real elmt_reactant19 "";
    Real elmt_product20 "";
    Real elmt_Shc_phosphorylation(unit = "") "Shc phosphorylation";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"PM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Shc_phosphorylation_elmt_Km(unit "m-2.0") = 1032.0 "";
    parameter Real elmt_Shc_phosphorylation_elmt_I(unit ".m-2.0") = 0.0 "";
    Real elmt_reactant2 "";
    Real elmt_product3 "";
    Real elmt_reaction0(unit = "") "reaction0";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"PM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
                            </annotation>"));
    parameter Real elmt_reaction0_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_reaction0_elmt_Kf(unit "s-1.0") = 0.5 "";
    parameter Real elmt_reaction0_elmt_Kr(unit "s-1.0") = 0.0 "";
    Real elmt_product63 "";
    Real elmt_reactant62 "";
    Real elmt_PIP2_synthesis(unit = "") "PIP2 synthesis";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"PM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PIP2_synthesis_elmt_I(unit ".m-2.0") = 0.0 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_CAPRI_translocation(unit = "") "CAPRI translocation";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"PM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_CAPRI_translocation_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_CAPRI_translocation_elmt_Kf(unit ".mol-1.0.s-1.0") = 120.0 "";
    parameter Real elmt_CAPRI_translocation_elmt_Kr(unit "s-1.0") = 0.1 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt_PIP2_hydrolysis(unit = "") "PIP2 hydrolysis";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"PM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PIP2_hydrolysis_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_PIP2_hydrolysis_elmt_k_PIP2hyd(unit "m2.0.s-1.0") = 1.188 "";
    Real elmt_product50 "";
    Real elmt_product49 "";
    Real elmt_reactant48 "";
    Real elmt_RasGM_basal_GAP(unit = "") "RasGM basal GAP";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"GM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_RasGM_basal_GAP_elmt_Vmax(unit "m-2.0.s-1.0") = 1.0 "";
    parameter Real elmt_RasGM_basal_GAP_elmt_Km(unit "m-2.0") = 600.0 "";
    parameter Real elmt_RasGM_basal_GAP_elmt_I(unit ".m-2.0") = 0.0 "";
    Real elmt_product61 "";
    Real elmt_reactant60 "";
    Real elmt_ca_act_PLCe(unit = "") "ca act PLCe";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"cyt\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_ca_act_PLCe_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 3.0 "";
    parameter Real elmt_ca_act_PLCe_elmt_Kr(unit "s-1.0") = 1.0 "";
    Real elmt_product69 "";
    Real elmt_reactant67 "";
    Real elmt_reactant68 "";
    Real elmt_Sos_act_RasPM(unit = "") "Sos act RasPM";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"PM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_Sos_act_RasPM_elmt_Km(unit "m-2.0") = 600.0 "";
    parameter Real elmt_Sos_act_RasPM_elmt_I(unit ".m-2.0") = 0.0 "";
    Real elmt_reactant86 "";
    Real elmt_product87 "";
    Real elmt_EGF_internalization(unit = "") "EGF_internalization";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"PM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_EGF_internalization_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_EGF_internalization_elmt_Kf(unit "s-1.0") = 0.002 "";
    parameter Real elmt_EGF_internalization_elmt_Kr(unit "m-2.0.s-1.0") = 0.0 "";
    Real elmt_reactant56 "";
    Real elmt_ras_act_PLCe(unit = "") "ras_act_PLCe";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"GM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
                            </annotation>"));
    parameter Real elmt_ras_act_PLCe_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_ras_act_PLCe_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 15.0 "";
    parameter Real elmt_ras_act_PLCe_elmt_Kr(unit "s-1.0") = 1.0 "";
    Real elmt_product72 "";
    Real elmt_reactant70 "";
    Real elmt_reactant71 "";
    Real elmt_PLCg_dephos(unit = "") "PLCg dephos";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
        <SimpleReaction Structure=\"PM\"/>
        <ReactionRate Name=\"J\"/>
      </VCellInfo>
        <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_PLCg_dephos_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_PLCg_dephos_elmt_Kf(unit "s-1.0") = 0.2 "";
    parameter Real elmt_PLCg_dephos_elmt_Kr(unit "s-1.0") = 0.0 "";
    Real elmt_reactant17 "";
    Real elmt_product18 "";


    initial equation
        elmt_reactant83 = 1.0;
        elmt_product74 = 1.0;
        elmt_reactant41 = 1.0;
        elmt_reactant85 = 1.0;
        elmt_product72 = 1.0;
        elmt_reactant86 = 1.0;
        elmt_product34 = 1.0;
        elmt_reactant80 = 1.0;
        elmt_product76 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant82 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant43 = 1.0;
        elmt_reactant88 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_product27 = 1.0;
        elmt_product25 = 1.0;
        elmt_product69 = 1.0;
        elmt_product29 = 1.0;
        elmt_reactant94 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_product40 = 1.0;
        elmt_product84 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_product45 = 1.0;
        elmt_reactant90 = 1.0;
        elmt_product89 = 1.0;
        elmt_product44 = 1.0;
        elmt_reactant92 = 1.0;
        elmt_product87 = 1.0;
        elmt_product42 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_reactant15 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_product81 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant56 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_product38 = 1.0;
        elmt_product36 = 1.0;
        elmt_product79 = 1.0;
        elmt_product95 = 1.0;
        elmt_reactant62 = 1.0;
        elmt_product50 = 1.0;
        elmt_reactant64 = 1.0;
        elmt_product93 = 1.0;
        elmt_product12 = 1.0;
        elmt_product55 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant60 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant65 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_product91 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant67 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant68 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product49 = 1.0;
        elmt_product47 = 1.0;
        elmt_product9 = 1.0;
        elmt_reactant2 = 1.0;
        elmt_product63 = 1.0;
        elmt_reactant73 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_product61 = 1.0;
        elmt_reactant75 = 1.0;
        elmt_product6 = 1.0;
        elmt_product66 = 1.0;
        elmt_reactant5 = 1.0;
        elmt_product22 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant70 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant71 = 1.0;
        elmt_product1 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant77 = 1.0;
        elmt_reactant78 = 1.0;
        elmt_product3 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_product16 = 1.0;
        elmt_product59 = 1.0;
        elmt_product14 = 1.0;
        elmt_product18 = 1.0;


    equation
        elmt_CaRasGRP_act_RasGM = (elmt_Vmax_CaRasGRP_act_RasGM * elmt_RasGDP_Golgi_GM * (1.0 / (elmt_CaRasGRP_act_RasGM_elmt_Km + elmt_RasGDP_Golgi_GM)) * elmt_GM);
        elmt_EGFR_binding = (((elmt_EGFR_binding_elmt_Kf * 0.00166112956810631 * elmt_EGF_EC * elmt_EGFR_PM) + (- (elmt_EGFR_binding_elmt_Kr * elmt_Activated_EGFR_PM))) * elmt_PM);
        elmt_CaRasGRP_translocation = (((elmt_CaRasGRP_translocation_elmt_Kf * 0.00166112956810631 * elmt_CaRasGRP1_cyt) + (- (elmt_CaRasGRP_translocation_elmt_Kr * elmt_Ca_RasGRP_GM_GM))) * elmt_GM);
        elmt_flux2 = ((- (elmt_ER_erMembrane * ((0.00166112956810631 * elmt_Ca_ER) + (- (0.00166112956810631 * elmt_Ca))) * elmt_flux2_elmt_vL)) * elmt_erMembrane * 1.0 * (1.0 / elmt_KMOLE));
        elmt_RasGRP_DAG_GEF = (elmt_Vmax_RasGRP_DAG_GEF * elmt_RasGDP_Golgi_GM * (1.0 / (elmt_RasGRP_DAG_GEF_elmt_Km + elmt_RasGDP_Golgi_GM)) * elmt_GM);
        elmt_Ras_GTP_palm1 = (((elmt_Ras_GTP_palm1_elmt_Kf * elmt_RasGTP_Golgi_GM) + (- (elmt_Ras_GTP_palm1_elmt_Kr * 0.00166112956810631 * elmt_RasGTP_pal_cyt))) * elmt_GM);
        elmt_RasGDPpal_translocation = (((elmt_RasGDPpal_translocation_elmt_Kf * 0.00166112956810631 * elmt_RasGDP_pal_cyt) + (- (elmt_RasGDPpal_translocation_elmt_Kr * elmt_RasGDP_PM))) * elmt_PM);
        elmt_caPLCe_gen_DAG = (elmt_caPLCe_gen_DAG_elmt_kact * elmt_PIP2_GM_GM * elmt_Ras_CaPLCe_GM * elmt_GM);
        elmt_Sos_activation = (((elmt_Sos_activation_elmt_Kf * 0.00166112956810631 * elmt_SosGrb2_cyt * elmt_Shc_star_PM) + (- (elmt_Sos_activation_elmt_Kr * elmt_SGS_PM))) * elmt_PM);
        elmt_Ca_bind_CAPRI = (((elmt_Ca_bind_CAPRI_elmt_Kf * 0.00166112956810631 * elmt_Ca * 0.00166112956810631 * elmt_CAPRI_cyt) + (- (elmt_Ca_bind_CAPRI_elmt_Kr * 0.00166112956810631 * elmt_CaCAPRI_cyt))) * elmt_cyt * 1.0 * (1.0 / elmt_KMOLE));
        elmt_EGF_act_PLCgamma = (elmt_Vmax_EGF_act_PLCgamma * elmt_PLC_PM * (1.0 / (elmt_EGF_act_PLCgamma_elmt_Km + elmt_PLC_PM)) * elmt_PM);
        elmt_Ras_PM_depal1 = (((elmt_Ras_PM_depal1_elmt_Kf * elmt_RasGTP_PM) + (- (elmt_Ras_PM_depal1_elmt_Kr * 0.00166112956810631 * elmt_RasGTP_depal_cyt))) * elmt_PM);
        elmt_RasGTP_depal_translocate = (((elmt_RasGTP_depal_translocate_elmt_Kf * 0.00166112956810631 * elmt_RasGTP_depal_cyt) + (- (elmt_RasGTP_depal_translocate_elmt_Kr * elmt_RasGTP_Golgi_GM))) * elmt_GM);
        elmt_basal_cyt_depal_GEF = (((elmt_basal_cyt_depal_GEF_elmt_Kf * 0.00166112956810631 * elmt_RasGTP_depal_cyt) + (- (elmt_basal_cyt_depal_GEF_elmt_Kr * 0.00166112956810631 * elmt_RasGDP_depal_cyt))) * elmt_cyt * 1.0 * (1.0 / elmt_KMOLE));
        elmt_PIP_synthesis = ((elmt_Ratebasal_PIPsyn_PIP_synthesis + elmt_Ratestim_PIPsyn_PIP_synthesis) * elmt_PI_PM * elmt_PM);
        elmt_flux0 = ((- (0.25 * elmt_ER_erMembrane * (elmt_RactCa + elmt_Ract) * ((0.00166112956810631 * elmt_Ca_ER) + (- (0.00166112956810631 * elmt_Ca))) * Functions.pow((0.00166112956810631 * elmt_IP3 * elmt_RactCa * elmt_Rinh * (1.0 / ((0.00166112956810631 * elmt_IP3) + elmt_flux0_elmt_dI)) * (1.0 / (elmt_RactCa + elmt_Ract)) * (1.0 / (elmt_RinhCa + elmt_Rinh))), 3.0) * elmt_flux0_elmt_singleChanFlux)) * elmt_erMembrane * 1.0 * (1.0 / elmt_KMOLE));
        elmt_flux1 = (elmt_ER_erMembrane * elmt_serca * elmt_flux1_elmt_vP * 0.00166112956810631 * elmt_Ca * 0.00166112956810631 * elmt_Ca * (1.0 / ((elmt_flux1_elmt_kP * elmt_flux1_elmt_kP) + (0.00166112956810631 * elmt_Ca * 0.00166112956810631 * elmt_Ca))) * elmt_erMembrane * 1.0 * (1.0 / elmt_KMOLE));
        elmt_ca_bind_rasGRP = (((elmt_ca_bind_rasGRP_elmt_Kf * 0.00166112956810631 * elmt_Ca * 0.00166112956810631 * elmt_RasGRP_cyt) + (- (elmt_ca_bind_rasGRP_elmt_Kr * 0.00166112956810631 * elmt_CaRasGRP1_cyt))) * elmt_cyt * 1.0 * (1.0 / elmt_KMOLE));
        elmt_sos_grb2_binding = (((elmt_sos_grb2_binding_elmt_Kf * 0.00166112956810631 * elmt_Sos_cyt * 0.00166112956810631 * elmt_Grb2_cyt) + (- (elmt_sos_grb2_binding_elmt_Kr * 0.00166112956810631 * elmt_SosGrb2_cyt))) * elmt_cyt * 1.0 * (1.0 / elmt_KMOLE));
        elmt_CAPRI_GAP = (elmt_Vmax_CAPRI_GAP * elmt_RasGTP_PM * (1.0 / (elmt_CAPRI_GAP_elmt_Km + elmt_RasGTP_PM)) * elmt_PM);
        elmt_RasPal_basal_GAP = (((elmt_RasPal_basal_GAP_elmt_Kf * 0.00166112956810631 * elmt_RasGTP_pal_cyt) + (- (elmt_RasPal_basal_GAP_elmt_Kr * 0.00166112956810631 * elmt_RasGDP_pal_cyt))) * elmt_cyt * 1.0 * (1.0 / elmt_KMOLE));
        elmt_calcium_buffer = (((elmt_calcium_buffer_elmt_Kf * 0.00166112956810631 * elmt_buffer_cyt * 0.00166112956810631 * elmt_Ca) + (- (elmt_calcium_buffer_elmt_Kr * 0.00166112956810631 * elmt_ca_buffer_cyt))) * elmt_cyt * 1.0 * (1.0 / elmt_KMOLE));
        elmt_RasGDP_pal = (((elmt_RasGDP_pal_elmt_Kf * elmt_RasGDP_Golgi_GM) + (- (elmt_RasGDP_pal_elmt_Kr * 0.00166112956810631 * elmt_RasGDP_pal_cyt))) * elmt_GM);
        elmt_Ca_binds_IP3R = (((elmt_Ract * elmt_Ca_binds_IP3R_elmt_Kf * 0.00166112956810631 * elmt_Ca) + (- (elmt_Kr_Ca_binds_IP3R * elmt_RactCa))) * elmt_erMembrane);
        elmt_reaction7 = (elmt_reaction7_elmt_Kf * elmt_DAG_GM_GM * elmt_GM);
        elmt_rasGTP_pal_translocation = (((elmt_rasGTP_pal_translocation_elmt_Kf * 0.00166112956810631 * elmt_RasGTP_pal_cyt) + (- (elmt_rasGTP_pal_translocation_elmt_Kr * elmt_RasGTP_PM))) * elmt_PM);
        elmt_RasGDP_depal2 = (((elmt_RasGDP_depal2_elmt_Kf * elmt_RasGDP_PM) + (- (elmt_RasGDP_depal2_elmt_Kr * 0.00166112956810631 * elmt_RasGDP_depal_cyt))) * elmt_PM);
        elmt_reaction2 = (((elmt_Kon_reaction2 * elmt_Rinh * 0.00166112956810631 * elmt_Ca) + (- (elmt_Koff_reaction2 * elmt_RinhCa))) * elmt_erMembrane);
        elmt_reaction5 = (((elmt_reaction5_elmt_Kf * elmt_DAG_GM_GM * 0.00166112956810631 * elmt_RasGRP_cyt) + (- (elmt_reaction5_elmt_Kr * elmt_RasGRP_DAG_GM))) * elmt_GM);
        elmt_RasGDP_depal_translocate = (((elmt_RasGDP_depal_translocate_elmt_Kf * 0.00166112956810631 * elmt_RasGDP_depal_cyt) + (- (elmt_RasGDP_depal_translocate_elmt_Kr * elmt_RasGDP_Golgi_GM))) * elmt_GM);
        elmt_IP3_degradation = (elmt_IP3_degradation_elmt_kIP3deg * ((0.00166112956810631 * elmt_IP3) + (- elmt_IP3_degradation_elmt_IP3_basal)) * elmt_cyt * 1.0 * (1.0 / elmt_KMOLE));
        elmt_basal_GAP = (((elmt_basal_GAP_elmt_Kf * elmt_RasGTP_PM) + (- (elmt_basal_GAP_elmt_Kr * elmt_RasGDP_PM))) * elmt_PM);
        elmt_Shc_phosphorylation = (elmt_Vmax_Shc_phosphorylation * elmt_Shc_PM * (1.0 / (elmt_Shc_phosphorylation_elmt_Km + elmt_Shc_PM)) * elmt_PM);
        elmt_reaction0 = (((elmt_reaction0_elmt_Kf * elmt_Shc_star_PM) + (- (elmt_reaction0_elmt_Kr * elmt_Shc_PM))) * elmt_PM);
        elmt_PIP2_synthesis = ((elmt_Rate_PIP2Synbasal_PIP2_synthesis + elmt_Rate_PIP2SynStim_PIP2_synthesis) * elmt_PIP_PM * elmt_PM);
        elmt_CAPRI_translocation = (((elmt_CAPRI_translocation_elmt_Kf * 0.00166112956810631 * elmt_CaCAPRI_cyt) + (- (elmt_CAPRI_translocation_elmt_Kr * elmt_CaCAPRI_PM_PM))) * elmt_PM);
        elmt_PIP2_hydrolysis = (elmt_PIP2_hydrolysis_elmt_k_PIP2hyd * elmt_PIP2_PM * elmt_PLC_act_PM * elmt_PM);
        elmt_RasGM_basal_GAP = (elmt_RasGM_basal_GAP_elmt_Vmax * elmt_RasGTP_Golgi_GM * (1.0 / (elmt_RasGM_basal_GAP_elmt_Km + elmt_RasGTP_Golgi_GM)) * elmt_GM);
        elmt_ca_act_PLCe = (((elmt_ca_act_PLCe_elmt_Kf * 0.00166112956810631 * elmt_Ca * 0.00166112956810631 * elmt_PLCe_cyt) + (- (elmt_ca_act_PLCe_elmt_Kr * 0.00166112956810631 * elmt_Ca_PLCe_cyt))) * elmt_cyt * 1.0 * (1.0 / elmt_KMOLE));
        elmt_Sos_act_RasPM = (elmt_Vmax_Sos_act_RasPM * elmt_RasGDP_PM * (1.0 / (elmt_Sos_act_RasPM_elmt_Km + elmt_RasGDP_PM)) * elmt_PM);
        elmt_EGF_internalization = (elmt_EGF_internalization_elmt_Kf * elmt_Activated_EGFR_PM * elmt_PM);
        elmt_ras_act_PLCe = (((elmt_ras_act_PLCe_elmt_Kf * elmt_RasGTP_Golgi_GM * 0.00166112956810631 * elmt_Ca_PLCe_cyt) + (- (elmt_ras_act_PLCe_elmt_Kr * elmt_Ras_CaPLCe_GM))) * elmt_GM);
        elmt_PLCg_dephos = (((elmt_PLCg_dephos_elmt_Kf * elmt_PLC_act_PM) + (- (elmt_PLCg_dephos_elmt_Kr * elmt_PLC_PM))) * elmt_PM);
        der(elmt_reactant83) = 0;
        der(elmt_product74) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_reactant85) = 0;
        der(elmt_product72) = 0;
        der(elmt_reactant86) = 0;
        der(elmt_product34) = 0;
        der(elmt_reactant80) = 0;
        der(elmt_product76) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant82) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant43) = 0;
        der(elmt_reactant88) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_product27) = 0;
        der(elmt_product25) = 0;
        der(elmt_product69) = 0;
        der(elmt_product29) = 0;
        der(elmt_reactant94) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_product40) = 0;
        der(elmt_product84) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_product45) = 0;
        der(elmt_reactant90) = 0;
        der(elmt_product89) = 0;
        der(elmt_product44) = 0;
        der(elmt_reactant92) = 0;
        der(elmt_product87) = 0;
        der(elmt_product42) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant15) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_product81) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant56) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_product38) = 0;
        der(elmt_product36) = 0;
        der(elmt_product79) = 0;
        der(elmt_product95) = 0;
        der(elmt_reactant62) = 0;
        der(elmt_product50) = 0;
        der(elmt_reactant64) = 0;
        der(elmt_product93) = 0;
        der(elmt_product12) = 0;
        der(elmt_product55) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant60) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant65) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_product91) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant67) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant68) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product49) = 0;
        der(elmt_product47) = 0;
        der(elmt_product9) = 0;
        der(elmt_reactant2) = 0;
        der(elmt_product63) = 0;
        der(elmt_reactant73) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_product61) = 0;
        der(elmt_reactant75) = 0;
        der(elmt_product6) = 0;
        der(elmt_product66) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_product22) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant70) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant71) = 0;
        der(elmt_product1) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant77) = 0;
        der(elmt_reactant78) = 0;
        der(elmt_product3) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_product16) = 0;
        der(elmt_product59) = 0;
        der(elmt_product14) = 0;
        der(elmt_product18) = 0;

end Reactions;
