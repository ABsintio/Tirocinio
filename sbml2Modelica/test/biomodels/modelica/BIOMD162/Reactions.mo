within BIOMD162;
class Reactions

    input Real elmt_PABMg_D_Cytosol;
    input Real elmt_D28k_high_Cytosol;
    input Real elmt_PABCa_Cytosol;
    input Real elmt_PABMg_Cytosol;
    input Real elmt_ERDensity_ERM;
    input Real elmt_ERM;
    input Real elmt_D28kB_D_Cytosol;
    input Real elmt_h_D_ERM;
    input Real elmt_CG_Cytosol;
    input Real elmt_CG_D_Cytosol;
    input Real elmt_D28k_Cytosol;
    input Real elmt_Cytosol;
    input Real elmt_PM;
    input Real elmt_Ca_ER;
    input Real elmt_PA_D_Cytosol;
    input Real elmt_KMOLE;
    input Real elmt_CGB_Cytosol;
    input Real elmt_flux1_ar;
    input Real elmt_D28k_high_D_Cytosol;
    input Real elmt_PA_Cytosol;
    input Real elmt_IP3_Cytosol;
    input Real elmt_Mg_Cytosol;
    input Real elmt_Ca_D_Cytosol;
    input Real elmt_D28kB_high_D_Cytosol;
    input Real elmt_D28kB_high_Cytosol;
    input Real elmt_ERDensity_D_ERM;
    input Real elmt_Mg_D_Cytosol;
    input Real elmt_IP3_D_Cytosol;
    input Real elmt_pulses_ar;
    input Real elmt_CGB_D_Cytosol;
    input Real elmt_PABCa_D_Cytosol;
    input Real elmt_Ca_D_ER;
    input Real elmt_h_ERM;
    input Real elmt_D28k_D_Cytosol;
    input Real elmt_flux0_ar;
    input Real elmt_Ca_Cytosol;
    input Real elmt_D28kB_Cytosol;

    Real elmt_CGbinding(unit = "") "CGbinding";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_CGbinding_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 430.0 "";
    parameter Real elmt_CGbinding_elmt_Kr(unit "s-1.0") = 140.0 "";
    Real elmt_product25 "";
    Real elmt_reactant23 "";
    Real elmt_reactant24 "";
    Real elmt_CG_deg(unit = "") "CG_deg";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                              </annotation>"));
    parameter Real elmt_CG_deg_elmt_r_d(unit "") = 1.0 "";
    parameter Real elmt_CG_deg_elmt_r_n(unit "") = 0.1 "";
    parameter Real elmt_CG_deg_elmt_l_star(unit "") = 27.9812 "";
    parameter Real elmt_CG_deg_elmt_D(unit "m2.0.s-1.0") = 15.0 "";
    parameter Real elmt_CG_deg_elmt_l_n(unit "") = 0.66 "";
    parameter Real elmt_CG_deg_elmt_CG_F(unit "m-3.0.") = 140.47567 "";
    parameter Real elmt_CG_deg_elmt_lc(unit "") = 5.6265 "";
    Real elmt_reactant6 "";
    Real elmt_IP3deg(unit = "") "IP3deg";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                              </annotation>"));
    parameter Real elmt_IP3deg_elmt_r_d(unit "") = 1.0 "";
    parameter Real elmt_IP3deg_elmt_IP3_F(unit "m-3.0.") = 0.16 "";
    parameter Real elmt_IP3deg_elmt_r_n(unit "") = 0.1 "";
    parameter Real elmt_IP3deg_elmt_l_star(unit "") = 27.9812 "";
    parameter Real elmt_IP3deg_elmt_D(unit "m2.0.s-1.0") = 283.0 "";
    parameter Real elmt_IP3deg_elmt_l_n(unit "") = 0.66 "";
    parameter Real elmt_IP3deg_elmt_lc(unit "") = 5.6265 "";
    Real elmt_reactant7 "";
    Real elmt_CG_d(unit = "") "CG_d";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                              </annotation>"));
    parameter Real elmt_CG_d_elmt_r_spine(unit "") = 0.288 "";
    parameter Real elmt_CG_d_elmt_r_neck(unit "") = 0.1 "";
    parameter Real elmt_CG_d_elmt_l(unit "") = 0.66 "";
    parameter Real elmt_CG_d_elmt_D(unit "m2.0.s-1.0") = 15.0 "";
    Real elmt_reactant20 "";
    Real elmt_PABCa_deg(unit = "") "PABCa_deg";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_PABCa_deg_elmt_r_d(unit "") = 1.0 "";
    parameter Real elmt_PABCa_deg_elmt_r_n(unit "") = 0.1 "";
    parameter Real elmt_PABCa_deg_elmt_l_star(unit "") = 27.9812 "";
    parameter Real elmt_PABCa_deg_elmt_D(unit "m2.0.s-1.0") = 43.0 "";
    parameter Real elmt_PABCa_deg_elmt_l_n(unit "") = 0.66 "";
    parameter Real elmt_PABCa_deg_elmt_PABCa_F(unit "m-3.0.") = 16.32481 "";
    parameter Real elmt_PABCa_deg_elmt_lc(unit "") = 5.6265 "";
    Real elmt_reactant29 "";
    Real elmt_D28kB_high_deg(unit = "") "D28kB_high_deg";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_D28kB_high_deg_elmt_r_D(unit "") = 1.0 "";
    parameter Real elmt_D28kB_high_deg_elmt_D28kB_high_F(unit "m-3.0.") = 6.98896 "";
    parameter Real elmt_D28kB_high_deg_elmt_r_n(unit "") = 0.1 "";
    parameter Real elmt_D28kB_high_deg_elmt_l_star(unit "") = 27.9812 "";
    parameter Real elmt_D28kB_high_deg_elmt_D(unit "m2.0.s-1.0") = 28.0 "";
    parameter Real elmt_D28kB_high_deg_elmt_l_n(unit "") = 0.66 "";
    parameter Real elmt_D28kB_high_deg_elmt_lc(unit "") = 5.6265 "";
    Real elmt_reactant19 "";
    Real elmt_flux0(unit = "") "flux0";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <FluxStep FluxCarrier=\"Ca\" FluxCarrierValence=\"0\" FluxOption=\"MolecularOnly\" Structure=\"PM\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_flux0_elmt_I(unit ".m-2.0") = 0.0 "";
    Real elmt_product66 "";
    Real elmt_reactant65 "";
    Real elmt_flux1(unit = "") "flux1";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <FluxStep FluxCarrier=\"Ca_D\" FluxCarrierValence=\"0\" FluxOption=\"MolecularOnly\" Structure=\"PM\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_flux1_elmt_I(unit ".m-2.0") = 0.0 "";
    Real elmt_reactant69 "";
    Real elmt_product70 "";
    Real elmt_D28k_high_d(unit = "") "D28k_high_d";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_D28k_high_d_elmt_r_spine(unit "") = 0.288 "";
    parameter Real elmt_D28k_high_d_elmt_r_neck(unit "") = 0.1 "";
    parameter Real elmt_D28k_high_d_elmt_l(unit "") = 0.66 "";
    parameter Real elmt_D28k_high_d_elmt_D(unit "m2.0.s-1.0") = 28.0 "";
    Real elmt_reactant31 "";
    Real elmt_PABMg_d(unit = "") "PABMg_d";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_PABMg_d_elmt_r_spine(unit "") = 0.288 "";
    parameter Real elmt_PABMg_d_elmt_r_neck(unit "") = 0.1 "";
    parameter Real elmt_PABMg_d_elmt_l(unit "") = 0.66 "";
    parameter Real elmt_PABMg_d_elmt_D(unit "m2.0.s-1.0") = 43.0 "";
    Real elmt_reactant33 "";
    Real elmt_CGB_deg(unit = "") "CGB_deg";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                              </annotation>"));
    parameter Real elmt_CGB_deg_elmt_r_d(unit "") = 1.0 "";
    parameter Real elmt_CGB_deg_elmt_r_n(unit "") = 0.1 "";
    parameter Real elmt_CGB_deg_elmt_l_star(unit "") = 27.9812 "";
    parameter Real elmt_CGB_deg_elmt_D(unit "m2.0.s-1.0") = 15.0 "";
    parameter Real elmt_CGB_deg_elmt_l_n(unit "") = 0.66 "";
    parameter Real elmt_CGB_deg_elmt_CGB_F(unit "m-3.0.") = 19.5243 "";
    parameter Real elmt_CGB_deg_elmt_lc(unit "") = 5.6265 "";
    Real elmt_reactant42 "";
    Real elmt_IP3R_flux(unit = "") "IP3R_flux";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <FluxStep FluxCarrier=\"Ca\" FluxCarrierValence=\"0\" FluxOption=\"MolecularOnly\" Structure=\"ERM\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_IP3R_flux_elmt_dI(unit "m-3.0.") = 20.0 "";
    parameter Real elmt_IP3R_flux_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_IP3R_flux_elmt_Jmax2(unit "m6.0..s-1.0") = 21000.0 "";
    parameter Real elmt_IP3R_flux_elmt_Kact(unit "m-3.0.") = 0.3 "";
    Real elmt_product68 "";
    Real elmt_reactant67 "";
    Real elmt_D28kBDbinding(unit = "") "D28kBDbinding";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_D28kBDbinding_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 43.5 "";
    parameter Real elmt_D28kBDbinding_elmt_Kr(unit "s-1.0") = 35.8 "";
    Real elmt_reactant37 "";
    Real elmt_reactant38 "";
    Real elmt_product39 "";
    Real elmt_IP3R_fluxD(unit = "") "IP3R_fluxD";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <FluxStep FluxCarrier=\"Ca_D\" FluxCarrierValence=\"0\" FluxOption=\"MolecularOnly\" Structure=\"ERM\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_IP3R_fluxD_elmt_dI(unit "m-3.0.") = 20.0 "";
    parameter Real elmt_IP3R_fluxD_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_IP3R_fluxD_elmt_Jmax2(unit "m6.0..s-1.0") = 21000.0 "";
    parameter Real elmt_IP3R_fluxD_elmt_Kact(unit "m-3.0.") = 0.3 "";
    Real elmt_reactant61 "";
    Real elmt_product62 "";
    Real elmt_CD28k_highDbinding(unit = "") "CD28k_highDbinding";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_CD28k_highDbinding_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 5.5 "";
    parameter Real elmt_CD28k_highDbinding_elmt_Kr(unit "s-1.0") = 2.6 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_PA_MgD(unit = "") "PA_MgD";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J_PAMg\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_PA_MgD_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 0.8 "";
    parameter Real elmt_PA_MgD_elmt_Kr(unit "s-1.0") = 25.0 "";
    Real elmt_product12 "";
    Real elmt_reactant10 "";
    Real elmt_reactant11 "";
    Real elmt_IP3_degr1(unit = "") "IP3_degr1";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J_IP3degrade\"/>
        </VCellInfo>
                              </annotation>"));
    parameter Real elmt_IP3_degr1_elmt_Kdegr(unit "s-1.0") = 0.14 "";
    parameter Real elmt_IP3_degr1_elmt_IP3_CytosolD(unit "m-3.0.") = 0.16 "";
    Real elmt_reactant54 "";
    Real elmt_ER_leak_fluxD(unit = "") "ER_leak_fluxD";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <FluxStep FluxCarrier=\"Ca_D\" FluxCarrierValence=\"0\" FluxOption=\"MolecularOnly\" Structure=\"ERM\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_ER_leak_fluxD_elmt_vL(unit ".s-1.0") = 0.12396 "";
    parameter Real elmt_ER_leak_fluxD_elmt_I(unit ".m-2.0") = 0.0 "";
    Real elmt_product72 "";
    Real elmt_reactant71 "";
    Real elmt_CG_Dbinding(unit = "") "CG_Dbinding";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_CG_Dbinding_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 430.0 "";
    parameter Real elmt_CG_Dbinding_elmt_Kr(unit "s-1.0") = 140.0 "";
    Real elmt_reactant51 "";
    Real elmt_reactant52 "";
    Real elmt_product53 "";
    Real elmt_D28kB_high_d(unit = "") "D28kB_high_d";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_D28kB_high_d_elmt_r_spine(unit "") = 0.288 "";
    parameter Real elmt_D28kB_high_d_elmt_r_neck(unit "") = 0.1 "";
    parameter Real elmt_D28kB_high_d_elmt_l(unit "") = 0.66 "";
    parameter Real elmt_D28kB_high_d_elmt_D(unit "m2.0.s-1.0") = 28.0 "";
    Real elmt_reactant48 "";
    Real elmt_D28kB_d(unit = "") "D28kB_d";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_D28kB_d_elmt_r_spine(unit "") = 0.288 "";
    parameter Real elmt_D28kB_d_elmt_r_neck(unit "") = 0.1 "";
    parameter Real elmt_D28kB_d_elmt_l(unit "") = 0.66 "";
    parameter Real elmt_D28kB_d_elmt_D(unit "m2.0.s-1.0") = 28.0 "";
    Real elmt_reactant21 "";
    Real elmt_PA_deg(unit = "") "PA_deg";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_PA_deg_elmt_r_d(unit "") = 1.0 "";
    parameter Real elmt_PA_deg_elmt_PA_F(unit "m-3.0.") = 3.20298 "";
    parameter Real elmt_PA_deg_elmt_r_n(unit "") = 0.1 "";
    parameter Real elmt_PA_deg_elmt_l_star(unit "") = 27.9812 "";
    parameter Real elmt_PA_deg_elmt_D(unit "m2.0.s-1.0") = 43.0 "";
    parameter Real elmt_PA_deg_elmt_l_n(unit "") = 0.66 "";
    parameter Real elmt_PA_deg_elmt_lc(unit "") = 5.6265 "";
    Real elmt_reactant46 "";
    Real elmt_pulses(unit = "") "pulses";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                              </annotation>"));
    parameter Real elmt_pulses_elmt_Rs(unit "") = 0.288 "";
    parameter Real elmt_pulses_elmt_SVR(unit "m-1.0") = 3.0 "";
    parameter Real elmt_pulses_elmt_Js(unit "m-2.0..s-1.0") = 0.0 "";
    Real elmt_product56 "";
    Real elmt_D28kB_deg(unit = "") "D28kB_deg";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_D28kB_deg_elmt_r_D(unit "") = 1.0 "";
    parameter Real elmt_D28kB_deg_elmt_r_n(unit "") = 0.1 "";
    parameter Real elmt_D28kB_deg_elmt_l_star(unit "") = 27.9812 "";
    parameter Real elmt_D28kB_deg_elmt_D(unit "m2.0.s-1.0") = 28.0 "";
    parameter Real elmt_D28kB_deg_elmt_l_n(unit "") = 0.66 "";
    parameter Real elmt_D28kB_deg_elmt_D28kB_F(unit "m-3.0.") = 4.16951 "";
    parameter Real elmt_D28kB_deg_elmt_lc(unit "") = 5.6265 "";
    Real elmt_reactant8 "";
    Real elmt_D28k_d(unit = "") "D28k_d";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_D28k_d_elmt_r_spine(unit "") = 0.288 "";
    parameter Real elmt_D28k_d_elmt_r_neck(unit "") = 0.1 "";
    parameter Real elmt_D28k_d_elmt_l(unit "") = 0.66 "";
    parameter Real elmt_D28k_d_elmt_D(unit "m2.0.s-1.0") = 28.0 "";
    Real elmt_reactant49 "";
    Real elmt_Ca_d(unit = "") "Ca_d";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                              </annotation>"));
    parameter Real elmt_Ca_d_elmt_r_spine(unit "") = 0.288 "";
    parameter Real elmt_Ca_d_elmt_r_neck(unit "") = 0.1 "";
    parameter Real elmt_Ca_d_elmt_l(unit "") = 0.66 "";
    parameter Real elmt_Ca_d_elmt_D(unit "m2.0.s-1.0") = 223.0 "";
    Real elmt_reactant18 "";
    Real elmt_CD28k_high(unit = "") "CD28k_high";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_CD28k_high_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 5.5 "";
    parameter Real elmt_CD28k_high_elmt_Kr(unit "s-1.0") = 2.6 "";
    Real elmt_product36 "";
    Real elmt_reactant34 "";
    Real elmt_reactant35 "";
    Real elmt_PA_Dbinding(unit = "") "PA_Dbinding";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_PA_Dbinding_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 107.0 "";
    parameter Real elmt_PA_Dbinding_elmt_Kr(unit "s-1.0") = 0.95 "";
    Real elmt_reactant4 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_reaction1(unit = "") "reaction1";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"ERM\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                              </annotation>"));
    parameter Real elmt_reaction1_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_reaction1_elmt_Kinh(unit "m-3.0.") = 0.2 "";
    parameter Real elmt_reaction1_elmt_Kon(unit ".mol-1.0.s-1.0") = 2.7 "";
    Real elmt_reactant22 "";
    Real elmt_CaD28k_med(unit = "") "CaD28k_med";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_CaD28k_med_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 43.5 "";
    parameter Real elmt_CaD28k_med_elmt_Kr(unit "s-1.0") = 35.8 "";
    Real elmt_reactant26 "";
    Real elmt_reactant27 "";
    Real elmt_product28 "";
    Real elmt_D28k_high_deg(unit = "") "D28k_high_deg";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_D28k_high_deg_elmt_r_D(unit "") = 1.0 "";
    parameter Real elmt_D28k_high_deg_elmt_D28k_high_F(unit "m-3.0.") = 73.01104 "";
    parameter Real elmt_D28k_high_deg_elmt_r_n(unit "") = 0.1 "";
    parameter Real elmt_D28k_high_deg_elmt_l_star(unit "") = 27.9812 "";
    parameter Real elmt_D28k_high_deg_elmt_D(unit "m2.0.s-1.0") = 28.0 "";
    parameter Real elmt_D28k_high_deg_elmt_l_n(unit "") = 0.66 "";
    parameter Real elmt_D28k_high_deg_elmt_lc(unit "") = 5.6265 "";
    Real elmt_reactant17 "";
    Real elmt_reaction0(unit = "") "reaction0";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"ERM\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                              </annotation>"));
    parameter Real elmt_reaction0_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_reaction0_elmt_Kinh(unit "m-3.0.") = 0.2 "";
    parameter Real elmt_reaction0_elmt_Kon(unit ".mol-1.0.s-1.0") = 2.7 "";
    Real elmt_reactant32 "";
    Real elmt_PABCa_d(unit = "") "PABCa_d";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_PABCa_d_elmt_r_spine(unit "") = 0.288 "";
    parameter Real elmt_PABCa_d_elmt_r_neck(unit "") = 0.1 "";
    parameter Real elmt_PABCa_d_elmt_l(unit "") = 0.66 "";
    parameter Real elmt_PABCa_d_elmt_D(unit "m2.0.s-1.0") = 43.0 "";
    Real elmt_reactant40 "";
    Real elmt_CGB_d(unit = "") "CGB_d";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                              </annotation>"));
    parameter Real elmt_CGB_d_elmt_r_spine(unit "") = 0.288 "";
    parameter Real elmt_CGB_d_elmt_r_neck(unit "") = 0.1 "";
    parameter Real elmt_CGB_d_elmt_l(unit "") = 0.66 "";
    parameter Real elmt_CGB_d_elmt_D(unit "m2.0.s-1.0") = 15.0 "";
    Real elmt_reactant50 "";
    Real elmt_SERCA_fluxD(unit = "") "SERCA_fluxD";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <FluxStep FluxCarrier=\"Ca_D\" FluxCarrierValence=\"0\" FluxOption=\"MolecularOnly\" Structure=\"ERM\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_SERCA_fluxD_elmt_kP(unit "") = 0.27 "";
    parameter Real elmt_SERCA_fluxD_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_SERCA_fluxD_elmt_vP(unit ".s-1.0") = 3.75 "";
    Real elmt_product60 "";
    Real elmt_reactant59 "";
    Real elmt_D28k_deg(unit = "") "D28k_deg";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_D28k_deg_elmt_r_D(unit "") = 1.0 "";
    parameter Real elmt_D28k_deg_elmt_r_n(unit "") = 0.1 "";
    parameter Real elmt_D28k_deg_elmt_l_star(unit "") = 27.9812 "";
    parameter Real elmt_D28k_deg_elmt_D(unit "m2.0.s-1.0") = 28.0 "";
    parameter Real elmt_D28k_deg_elmt_l_n(unit "") = 0.66 "";
    parameter Real elmt_D28k_deg_elmt_D28k_F(unit "m-3.0.") = 75.83049 "";
    parameter Real elmt_D28k_deg_elmt_lc(unit "") = 5.6265 "";
    Real elmt_reactant9 "";
    Real elmt_IP3_d(unit = "") "IP3_d";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                              </annotation>"));
    parameter Real elmt_IP3_d_elmt_r_spine(unit "") = 0.288 "";
    parameter Real elmt_IP3_d_elmt_r_neck(unit "") = 0.1 "";
    parameter Real elmt_IP3_d_elmt_l(unit "") = 0.66 "";
    parameter Real elmt_IP3_d_elmt_D(unit "m2.0.s-1.0") = 283.0 "";
    Real elmt_reactant30 "";
    Real elmt_ER_leak_flux(unit = "") "ER_leak_flux";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <FluxStep FluxCarrier=\"Ca\" FluxCarrierValence=\"0\" FluxOption=\"MolecularOnly\" Structure=\"ERM\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_ER_leak_flux_elmt_vL(unit ".s-1.0") = 0.12396 "";
    parameter Real elmt_ER_leak_flux_elmt_I(unit ".m-2.0") = 0.0 "";
    Real elmt_product58 "";
    Real elmt_reactant57 "";
    Real elmt_PA_Ca(unit = "") "PA_Ca";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J_PACa\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_PA_Ca_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 107.0 "";
    parameter Real elmt_PA_Ca_elmt_Kr(unit "s-1.0") = 0.95 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_reactant13 "";
    Real elmt_PABMg_deg(unit = "") "PABMg_deg";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_PABMg_deg_elmt_r_d(unit "") = 1.0 "";
    parameter Real elmt_PABMg_deg_elmt_r_n(unit "") = 0.1 "";
    parameter Real elmt_PABMg_deg_elmt_l_star(unit "") = 27.9812 "";
    parameter Real elmt_PABMg_deg_elmt_D(unit "m2.0.s-1.0") = 43.0 "";
    parameter Real elmt_PABMg_deg_elmt_l_n(unit "") = 0.66 "";
    parameter Real elmt_PABMg_deg_elmt_PABMg_F(unit "m-3.0.") = 60.47222 "";
    parameter Real elmt_PABMg_deg_elmt_lc(unit "") = 5.6265 "";
    Real elmt_reactant16 "";
    Real elmt_PA_Mg(unit = "") "PA_Mg";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J_PAMg\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_PA_Mg_elmt_Kf(unit "m3.0.mol-1.0.s-1.0") = 0.8 "";
    parameter Real elmt_PA_Mg_elmt_Kr(unit "s-1.0") = 25.0 "";
    Real elmt_product45 "";
    Real elmt_reactant43 "";
    Real elmt_reactant44 "";
    Real elmt_IP3_degr(unit = "") "IP3_degr";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J_IP3degrade\"/>
        </VCellInfo>
                              </annotation>"));
    parameter Real elmt_IP3_degr_elmt_Kdegr(unit "s-1.0") = 0.14 "";
    parameter Real elmt_IP3_degr_elmt_IP3_CytosolS(unit "m-3.0.") = 0.16 "";
    Real elmt_reactant47 "";
    Real elmt_SERCA_flux(unit = "") "SERCA_flux";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <FluxStep FluxCarrier=\"Ca\" FluxCarrierValence=\"0\" FluxOption=\"MolecularOnly\" Structure=\"ERM\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_SERCA_flux_elmt_kP(unit "") = 0.27 "";
    parameter Real elmt_SERCA_flux_elmt_I(unit ".m-2.0") = 0.0 "";
    parameter Real elmt_SERCA_flux_elmt_vP(unit ".s-1.0") = 3.75 "";
    Real elmt_reactant63 "";
    Real elmt_product64 "";
    Real elmt_Ca_deg(unit = "") "Ca_deg";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                              </annotation>"));
    parameter Real elmt_Ca_deg_elmt_r_D(unit "") = 1.0 "";
    parameter Real elmt_Ca_deg_elmt_Ca_F(unit "m-3.0.") = 0.045 "";
    parameter Real elmt_Ca_deg_elmt_r_n(unit "") = 0.1 "";
    parameter Real elmt_Ca_deg_elmt_l_star(unit "") = 27.9812 "";
    parameter Real elmt_Ca_deg_elmt_D(unit "m2.0.s-1.0") = 223.0 "";
    parameter Real elmt_Ca_deg_elmt_l_n(unit "") = 0.66 "";
    parameter Real elmt_Ca_deg_elmt_lc(unit "") = 5.6265 "";
    Real elmt_reactant55 "";
    Real elmt_PA_d(unit = "") "PA_d";
 annotation(Documentation(info="<annotation>
<VCellInfo xmlns=\"http://www.sbml.org/2001/ns/vcell\">
          <SimpleReaction Structure=\"Cytosol\"/>
          <ReactionRate Name=\"J\"/>
        </VCellInfo>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_PA_d_elmt_r_spine(unit "") = 0.288 "";
    parameter Real elmt_PA_d_elmt_r_neck(unit "") = 0.1 "";
    parameter Real elmt_PA_d_elmt_l(unit "") = 0.66 "";
    parameter Real elmt_PA_d_elmt_D(unit "m2.0.s-1.0") = 43.0 "";
    Real elmt_reactant41 "";


    initial equation
        elmt_reactant40 = 1.0;
        elmt_product72 = 1.0;
        elmt_reactant41 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_product70 = 1.0;
        elmt_reactant43 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product25 = 1.0;
        elmt_product68 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_product45 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant10 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_reactant57 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_product36 = 1.0;
        elmt_product39 = 1.0;
        elmt_reactant61 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product12 = 1.0;
        elmt_product56 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant69 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_reactant65 = 1.0;
        elmt_reactant21 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant67 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant19 = 1.0;
        elmt_product62 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant4 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product60 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product66 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant71 = 1.0;
        elmt_product64 = 1.0;
        elmt_reactant37 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_product5 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_product2 = 1.0;
        elmt_reactant35 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product15 = 1.0;
        elmt_product58 = 1.0;


    equation
        elmt_CGbinding = (((elmt_CGbinding_elmt_Kf * 0.00166112956810631 * elmt_Ca_Cytosol * 0.00166112956810631 * elmt_CG_Cytosol) + (- (elmt_CGbinding_elmt_Kr * 0.00166112956810631 * elmt_CGB_Cytosol))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_CG_deg = (((elmt_CG_deg_elmt_D * Functions.pow(elmt_CG_deg_elmt_r_n, 2.0) * ((0.00166112956810631 * elmt_CG_D_Cytosol) + (- (0.00166112956810631 * elmt_CG_Cytosol))) * (1.0 / elmt_CG_deg_elmt_l_n) * (1.0 / Functions.pow(elmt_CG_deg_elmt_r_d, 2.0)) * (1.0 / elmt_CG_deg_elmt_l_star)) + (elmt_CG_deg_elmt_D * ((0.00166112956810631 * elmt_CG_D_Cytosol) + (- elmt_CG_deg_elmt_CG_F)) * (1.0 / elmt_CG_deg_elmt_l_star) * (1.0 / elmt_CG_deg_elmt_lc))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_IP3deg = (((elmt_IP3deg_elmt_D * Functions.pow(elmt_IP3deg_elmt_r_n, 2.0) * ((0.00166112956810631 * elmt_IP3_D_Cytosol) + (- (0.00166112956810631 * elmt_IP3_Cytosol))) * (1.0 / elmt_IP3deg_elmt_l_n) * (1.0 / Functions.pow(elmt_IP3deg_elmt_r_d, 2.0)) * (1.0 / elmt_IP3deg_elmt_l_star)) + (elmt_IP3deg_elmt_D * ((0.00166112956810631 * elmt_IP3_D_Cytosol) + (- elmt_IP3deg_elmt_IP3_F)) * (1.0 / elmt_IP3deg_elmt_l_star) * (1.0 / elmt_IP3deg_elmt_lc))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_CG_d = (0.75 * elmt_CG_d_elmt_D * ((0.00166112956810631 * elmt_CG_Cytosol) + (- (0.00166112956810631 * elmt_CG_D_Cytosol))) * Functions.pow(elmt_CG_d_elmt_r_neck, 2.0) * (1.0 / elmt_CG_d_elmt_l) * (1.0 / Functions.pow(elmt_CG_d_elmt_r_spine, 3.0)) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_PABCa_deg = (((elmt_PABCa_deg_elmt_D * Functions.pow(elmt_PABCa_deg_elmt_r_n, 2.0) * ((0.00166112956810631 * elmt_PABCa_D_Cytosol) + (- (0.00166112956810631 * elmt_PABCa_Cytosol))) * (1.0 / elmt_PABCa_deg_elmt_l_n) * (1.0 / Functions.pow(elmt_PABCa_deg_elmt_r_d, 2.0)) * (1.0 / elmt_PABCa_deg_elmt_l_star)) + (elmt_PABCa_deg_elmt_D * ((0.00166112956810631 * elmt_PABCa_D_Cytosol) + (- elmt_PABCa_deg_elmt_PABCa_F)) * (1.0 / elmt_PABCa_deg_elmt_l_star) * (1.0 / elmt_PABCa_deg_elmt_lc))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_D28kB_high_deg = (((elmt_D28kB_high_deg_elmt_D * Functions.pow(elmt_D28kB_high_deg_elmt_r_n, 2.0) * ((0.00166112956810631 * elmt_D28kB_high_D_Cytosol) + (- (0.00166112956810631 * elmt_D28kB_high_Cytosol))) * (1.0 / elmt_D28kB_high_deg_elmt_l_n) * (1.0 / Functions.pow(elmt_D28kB_high_deg_elmt_r_D, 2.0)) * (1.0 / elmt_D28kB_high_deg_elmt_l_star)) + (elmt_D28kB_high_deg_elmt_D * ((0.00166112956810631 * elmt_D28kB_high_D_Cytosol) + (- elmt_D28kB_high_deg_elmt_D28kB_high_F)) * (1.0 / elmt_D28kB_high_deg_elmt_l_star) * (1.0 / elmt_D28kB_high_deg_elmt_lc))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_flux0 = (elmt_flux0_ar * elmt_PM * 1.0 * (1.0 / elmt_KMOLE));
        elmt_flux1 = (elmt_flux1_ar * elmt_PM * 1.0 * (1.0 / elmt_KMOLE));
        elmt_D28k_high_d = (0.75 * elmt_D28k_high_d_elmt_D * ((0.00166112956810631 * elmt_D28k_high_Cytosol) + (- (0.00166112956810631 * elmt_D28k_high_D_Cytosol))) * Functions.pow(elmt_D28k_high_d_elmt_r_neck, 2.0) * (1.0 / elmt_D28k_high_d_elmt_l) * (1.0 / Functions.pow(elmt_D28k_high_d_elmt_r_spine, 3.0)) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_PABMg_d = (0.75 * elmt_PABMg_d_elmt_D * ((0.00166112956810631 * elmt_PABMg_Cytosol) + (- (0.00166112956810631 * elmt_PABMg_D_Cytosol))) * Functions.pow(elmt_PABMg_d_elmt_r_neck, 2.0) * (1.0 / elmt_PABMg_d_elmt_l) * (1.0 / Functions.pow(elmt_PABMg_d_elmt_r_spine, 3.0)) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_CGB_deg = (((elmt_CGB_deg_elmt_D * Functions.pow(elmt_CGB_deg_elmt_r_n, 2.0) * ((0.00166112956810631 * elmt_CGB_D_Cytosol) + (- (0.00166112956810631 * elmt_CGB_Cytosol))) * (1.0 / elmt_CGB_deg_elmt_l_n) * (1.0 / Functions.pow(elmt_CGB_deg_elmt_r_d, 2.0)) * (1.0 / elmt_CGB_deg_elmt_l_star)) + (elmt_CGB_deg_elmt_D * ((0.00166112956810631 * elmt_CGB_D_Cytosol) + (- elmt_CGB_deg_elmt_CGB_F)) * (1.0 / elmt_CGB_deg_elmt_l_star) * (1.0 / elmt_CGB_deg_elmt_lc))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_IP3R_flux = ((- (elmt_ERDensity_ERM * elmt_IP3R_flux_elmt_Jmax2 * (1.0 + (- (0.00166112956810631 * elmt_Ca_Cytosol * (1.0 / (0.00166112956810631 * elmt_Ca_ER))))) * Functions.pow((elmt_h_ERM * 0.00166112956810631 * elmt_IP3_Cytosol * 0.00166112956810631 * elmt_Ca_Cytosol * (1.0 / ((0.00166112956810631 * elmt_IP3_Cytosol) + elmt_IP3R_flux_elmt_dI)) * (1.0 / ((0.00166112956810631 * elmt_Ca_Cytosol) + elmt_IP3R_flux_elmt_Kact))), 3.0))) * elmt_ERM * 1.0 * (1.0 / elmt_KMOLE));
        elmt_D28kBDbinding = (((elmt_D28kBDbinding_elmt_Kf * 0.00166112956810631 * elmt_D28k_D_Cytosol * 0.00166112956810631 * elmt_Ca_D_Cytosol) + (- (elmt_D28kBDbinding_elmt_Kr * 0.00166112956810631 * elmt_D28kB_D_Cytosol))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_IP3R_fluxD = ((- (elmt_ERDensity_D_ERM * elmt_IP3R_fluxD_elmt_Jmax2 * (1.0 + (- (0.00166112956810631 * elmt_Ca_D_Cytosol * (1.0 / (0.00166112956810631 * elmt_Ca_D_ER))))) * Functions.pow((elmt_h_D_ERM * 0.00166112956810631 * elmt_IP3_D_Cytosol * 0.00166112956810631 * elmt_Ca_D_Cytosol * (1.0 / ((0.00166112956810631 * elmt_IP3_D_Cytosol) + elmt_IP3R_fluxD_elmt_dI)) * (1.0 / ((0.00166112956810631 * elmt_Ca_D_Cytosol) + elmt_IP3R_fluxD_elmt_Kact))), 3.0))) * elmt_ERM * 1.0 * (1.0 / elmt_KMOLE));
        elmt_CD28k_highDbinding = (((elmt_CD28k_highDbinding_elmt_Kf * 0.00166112956810631 * elmt_Ca_D_Cytosol * 0.00166112956810631 * elmt_D28k_high_D_Cytosol) + (- (elmt_CD28k_highDbinding_elmt_Kr * 0.00166112956810631 * elmt_D28kB_high_D_Cytosol))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_PA_MgD = (((elmt_PA_MgD_elmt_Kf * 0.00166112956810631 * elmt_Mg_D_Cytosol * 0.00166112956810631 * elmt_PA_D_Cytosol) + (- (elmt_PA_MgD_elmt_Kr * 0.00166112956810631 * elmt_PABMg_D_Cytosol))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_IP3_degr1 = (elmt_IP3_degr1_elmt_Kdegr * ((0.00166112956810631 * elmt_IP3_D_Cytosol) + (- elmt_IP3_degr1_elmt_IP3_CytosolD)) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_ER_leak_fluxD = ((- (elmt_ERDensity_D_ERM * elmt_ER_leak_fluxD_elmt_vL * (1.0 + (- (0.00166112956810631 * elmt_Ca_D_Cytosol * (1.0 / (0.00166112956810631 * elmt_Ca_D_ER))))))) * elmt_ERM * 1.0 * (1.0 / elmt_KMOLE));
        elmt_CG_Dbinding = (((elmt_CG_Dbinding_elmt_Kf * 0.00166112956810631 * elmt_Ca_D_Cytosol * 0.00166112956810631 * elmt_CG_D_Cytosol) + (- (elmt_CG_Dbinding_elmt_Kr * 0.00166112956810631 * elmt_CGB_D_Cytosol))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_D28kB_high_d = (0.75 * elmt_D28kB_high_d_elmt_D * ((0.00166112956810631 * elmt_D28kB_high_Cytosol) + (- (0.00166112956810631 * elmt_D28kB_high_D_Cytosol))) * Functions.pow(elmt_D28kB_high_d_elmt_r_neck, 2.0) * (1.0 / elmt_D28kB_high_d_elmt_l) * (1.0 / Functions.pow(elmt_D28kB_high_d_elmt_r_spine, 3.0)) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_D28kB_d = (0.75 * elmt_D28kB_d_elmt_D * ((0.00166112956810631 * elmt_D28kB_Cytosol) + (- (0.00166112956810631 * elmt_D28kB_Cytosol))) * Functions.pow(elmt_D28kB_d_elmt_r_neck, 2.0) * (1.0 / elmt_D28kB_d_elmt_l) * (1.0 / Functions.pow(elmt_D28kB_d_elmt_r_spine, 3.0)) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_PA_deg = (((elmt_PA_deg_elmt_D * Functions.pow(elmt_PA_deg_elmt_r_n, 2.0) * ((0.00166112956810631 * elmt_PA_D_Cytosol) + (- (0.00166112956810631 * elmt_PA_Cytosol))) * (1.0 / elmt_PA_deg_elmt_l_n) * (1.0 / Functions.pow(elmt_PA_deg_elmt_r_d, 2.0)) * (1.0 / elmt_PA_deg_elmt_l_star)) + (elmt_PA_deg_elmt_D * ((0.00166112956810631 * elmt_PA_D_Cytosol) + (- elmt_PA_deg_elmt_PA_F)) * (1.0 / elmt_PA_deg_elmt_l_star) * (1.0 / elmt_PA_deg_elmt_lc))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_pulses = (elmt_pulses_elmt_SVR * elmt_pulses_elmt_Js * elmt_pulses_ar * (1.0 / elmt_pulses_elmt_Rs) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_D28kB_deg = (((elmt_D28kB_deg_elmt_D * Functions.pow(elmt_D28kB_deg_elmt_r_n, 2.0) * ((0.00166112956810631 * elmt_D28kB_D_Cytosol) + (- (0.00166112956810631 * elmt_D28kB_Cytosol))) * (1.0 / elmt_D28kB_deg_elmt_l_n) * (1.0 / Functions.pow(elmt_D28kB_deg_elmt_r_D, 2.0)) * (1.0 / elmt_D28kB_deg_elmt_l_star)) + (elmt_D28kB_deg_elmt_D * ((0.00166112956810631 * elmt_D28kB_D_Cytosol) + (- elmt_D28kB_deg_elmt_D28kB_F)) * (1.0 / elmt_D28kB_deg_elmt_l_star) * (1.0 / elmt_D28kB_deg_elmt_lc))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_D28k_d = (0.75 * elmt_D28k_d_elmt_D * ((0.00166112956810631 * elmt_D28k_Cytosol) + (- (0.00166112956810631 * elmt_D28k_D_Cytosol))) * Functions.pow(elmt_D28k_d_elmt_r_neck, 2.0) * (1.0 / elmt_D28k_d_elmt_l) * (1.0 / Functions.pow(elmt_D28k_d_elmt_r_spine, 3.0)) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_Ca_d = (0.75 * elmt_Ca_d_elmt_D * ((0.00166112956810631 * elmt_Ca_Cytosol) + (- (0.00166112956810631 * elmt_Ca_D_Cytosol))) * Functions.pow(elmt_Ca_d_elmt_r_neck, 2.0) * (1.0 / elmt_Ca_d_elmt_l) * (1.0 / Functions.pow(elmt_Ca_d_elmt_r_spine, 3.0)) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_CD28k_high = (((elmt_CD28k_high_elmt_Kf * 0.00166112956810631 * elmt_Ca_Cytosol * 0.00166112956810631 * elmt_D28k_high_Cytosol) + (- (elmt_CD28k_high_elmt_Kr * 0.00166112956810631 * elmt_D28kB_high_Cytosol))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_PA_Dbinding = (((elmt_PA_Dbinding_elmt_Kf * 0.00166112956810631 * elmt_PA_D_Cytosol * 0.00166112956810631 * elmt_Ca_D_Cytosol) + (- (elmt_PA_Dbinding_elmt_Kr * 0.00166112956810631 * elmt_PABCa_D_Cytosol))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_reaction1 = ((- ((elmt_reaction1_elmt_Kinh + (- (((0.00166112956810631 * elmt_Ca_D_Cytosol) + elmt_reaction1_elmt_Kinh) * elmt_h_D_ERM))) * elmt_reaction1_elmt_Kon)) * elmt_ERM);
        elmt_CaD28k_med = (((elmt_CaD28k_med_elmt_Kf * 0.00166112956810631 * elmt_D28k_Cytosol * 0.00166112956810631 * elmt_Ca_Cytosol) + (- (elmt_CaD28k_med_elmt_Kr * 0.00166112956810631 * elmt_D28kB_Cytosol))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_D28k_high_deg = (((elmt_D28k_high_deg_elmt_D * Functions.pow(elmt_D28k_high_deg_elmt_r_n, 2.0) * ((0.00166112956810631 * elmt_D28k_high_D_Cytosol) + (- (0.00166112956810631 * elmt_D28k_high_Cytosol))) * (1.0 / elmt_D28k_high_deg_elmt_l_n) * (1.0 / Functions.pow(elmt_D28k_high_deg_elmt_r_D, 2.0)) * (1.0 / elmt_D28k_high_deg_elmt_l_star)) + (elmt_D28k_high_deg_elmt_D * ((0.00166112956810631 * elmt_D28k_high_D_Cytosol) + (- elmt_D28k_high_deg_elmt_D28k_high_F)) * (1.0 / elmt_D28k_high_deg_elmt_l_star) * (1.0 / elmt_D28k_high_deg_elmt_lc))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_reaction0 = ((- ((elmt_reaction0_elmt_Kinh + (- (((0.00166112956810631 * elmt_Ca_Cytosol) + elmt_reaction0_elmt_Kinh) * elmt_h_ERM))) * elmt_reaction0_elmt_Kon)) * elmt_ERM);
        elmt_PABCa_d = (0.75 * elmt_PABCa_d_elmt_D * ((0.00166112956810631 * elmt_PABCa_Cytosol) + (- (0.00166112956810631 * elmt_PABCa_D_Cytosol))) * Functions.pow(elmt_PABCa_d_elmt_r_neck, 2.0) * (1.0 / elmt_PABCa_d_elmt_l) * (1.0 / Functions.pow(elmt_PABCa_d_elmt_r_spine, 3.0)) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_CGB_d = (0.75 * elmt_CGB_d_elmt_D * ((0.00166112956810631 * elmt_CGB_Cytosol) + (- (0.00166112956810631 * elmt_CGB_D_Cytosol))) * Functions.pow(elmt_CGB_d_elmt_r_neck, 2.0) * (1.0 / elmt_CGB_d_elmt_l) * (1.0 / Functions.pow(elmt_CGB_d_elmt_r_spine, 3.0)) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_SERCA_fluxD = (elmt_ERDensity_D_ERM * elmt_SERCA_fluxD_elmt_vP * 0.00166112956810631 * elmt_Ca_D_Cytosol * 0.00166112956810631 * elmt_Ca_D_Cytosol * (1.0 / ((elmt_SERCA_fluxD_elmt_kP * elmt_SERCA_fluxD_elmt_kP) + (0.00166112956810631 * elmt_Ca_D_Cytosol * 0.00166112956810631 * elmt_Ca_D_Cytosol))) * elmt_ERM * 1.0 * (1.0 / elmt_KMOLE));
        elmt_D28k_deg = (((elmt_D28k_deg_elmt_D * Functions.pow(elmt_D28k_deg_elmt_r_n, 2.0) * ((0.00166112956810631 * elmt_D28k_D_Cytosol) + (- (0.00166112956810631 * elmt_D28k_Cytosol))) * (1.0 / elmt_D28k_deg_elmt_l_n) * (1.0 / Functions.pow(elmt_D28k_deg_elmt_r_D, 2.0)) * (1.0 / elmt_D28k_deg_elmt_l_star)) + (elmt_D28k_deg_elmt_D * ((0.00166112956810631 * elmt_D28k_D_Cytosol) + (- elmt_D28k_deg_elmt_D28k_F)) * (1.0 / elmt_D28k_deg_elmt_l_star) * (1.0 / elmt_D28k_deg_elmt_lc))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_IP3_d = (0.75 * elmt_IP3_d_elmt_D * ((0.00166112956810631 * elmt_IP3_Cytosol) + (- (0.00166112956810631 * elmt_IP3_D_Cytosol))) * Functions.pow(elmt_IP3_d_elmt_r_neck, 2.0) * (1.0 / elmt_IP3_d_elmt_l) * (1.0 / Functions.pow(elmt_IP3_d_elmt_r_spine, 3.0)) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_ER_leak_flux = ((- (elmt_ERDensity_ERM * elmt_ER_leak_flux_elmt_vL * (1.0 + (- (0.00166112956810631 * elmt_Ca_Cytosol * (1.0 / (0.00166112956810631 * elmt_Ca_ER))))))) * elmt_ERM * 1.0 * (1.0 / elmt_KMOLE));
        elmt_PA_Ca = (((elmt_PA_Ca_elmt_Kf * 0.00166112956810631 * elmt_PA_Cytosol * 0.00166112956810631 * elmt_Ca_Cytosol) + (- (elmt_PA_Ca_elmt_Kr * 0.00166112956810631 * elmt_PABCa_Cytosol))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_PABMg_deg = (((elmt_PABMg_deg_elmt_D * Functions.pow(elmt_PABMg_deg_elmt_r_n, 2.0) * ((0.00166112956810631 * elmt_PABMg_D_Cytosol) + (- (0.00166112956810631 * elmt_PABMg_Cytosol))) * (1.0 / elmt_PABMg_deg_elmt_l_n) * (1.0 / Functions.pow(elmt_PABMg_deg_elmt_r_d, 2.0)) * (1.0 / elmt_PABMg_deg_elmt_l_star)) + (elmt_PABMg_deg_elmt_D * ((0.00166112956810631 * elmt_PABMg_D_Cytosol) + (- elmt_PABMg_deg_elmt_PABMg_F)) * (1.0 / elmt_PABMg_deg_elmt_l_star) * (1.0 / elmt_PABMg_deg_elmt_lc))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_PA_Mg = (((elmt_PA_Mg_elmt_Kf * 0.00166112956810631 * elmt_PA_Cytosol * 0.00166112956810631 * elmt_Mg_Cytosol) + (- (elmt_PA_Mg_elmt_Kr * 0.00166112956810631 * elmt_PABMg_Cytosol))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_IP3_degr = (elmt_IP3_degr_elmt_Kdegr * ((0.00166112956810631 * elmt_IP3_Cytosol) + (- elmt_IP3_degr_elmt_IP3_CytosolS)) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_SERCA_flux = (elmt_ERDensity_ERM * elmt_SERCA_flux_elmt_vP * 0.00166112956810631 * elmt_Ca_Cytosol * 0.00166112956810631 * elmt_Ca_Cytosol * (1.0 / ((elmt_SERCA_flux_elmt_kP * elmt_SERCA_flux_elmt_kP) + (0.00166112956810631 * elmt_Ca_Cytosol * 0.00166112956810631 * elmt_Ca_Cytosol))) * elmt_ERM * 1.0 * (1.0 / elmt_KMOLE));
        elmt_Ca_deg = (((elmt_Ca_deg_elmt_D * Functions.pow(elmt_Ca_deg_elmt_r_n, 2.0) * ((0.00166112956810631 * elmt_Ca_D_Cytosol) + (- (0.00166112956810631 * elmt_Ca_Cytosol))) * (1.0 / elmt_Ca_deg_elmt_l_n) * (1.0 / Functions.pow(elmt_Ca_deg_elmt_r_D, 2.0)) * (1.0 / elmt_Ca_deg_elmt_l_star)) + (elmt_Ca_deg_elmt_D * ((0.00166112956810631 * elmt_Ca_D_Cytosol) + (- elmt_Ca_deg_elmt_Ca_F)) * (1.0 / elmt_Ca_deg_elmt_l_star) * (1.0 / elmt_Ca_deg_elmt_lc))) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        elmt_PA_d = (0.75 * elmt_PA_d_elmt_D * ((0.00166112956810631 * elmt_PA_Cytosol) + (- (0.00166112956810631 * elmt_PA_D_Cytosol))) * Functions.pow(elmt_PA_d_elmt_r_neck, 2.0) * (1.0 / elmt_PA_d_elmt_l) * (1.0 / Functions.pow(elmt_PA_d_elmt_r_spine, 3.0)) * elmt_Cytosol * 1.0 * (1.0 / elmt_KMOLE));
        der(elmt_reactant40) = 0;
        der(elmt_product72) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_product70) = 0;
        der(elmt_reactant43) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_product68) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_product45) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant10) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_reactant57) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_product36) = 0;
        der(elmt_product39) = 0;
        der(elmt_reactant61) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product12) = 0;
        der(elmt_product56) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant69) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_reactant65) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant67) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_product62) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant4) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product60) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product66) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant71) = 0;
        der(elmt_product64) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_product5) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant35) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product15) = 0;
        der(elmt_product58) = 0;

end Reactions;
