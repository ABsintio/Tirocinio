within BIOMD201;
class Class_elmt_cytosol

    input Real elmt_product30;
    input Real elmt_BP_dephosphorylation;
    input Real elmt_product34;
    input Real elmt_n_synth;
    input Real elmt_product32;
    input Real elmt_Nan_degradation;
    input Real elmt_MAx_trans_BN;
    input Real elmt_Erk_activation;
    input Real elmt_Bp_degradation;
    input Real elmt_B_phosphorylation;
    input Real elmt_X_inactivation;
    input Real elmt_product26;
    input Real elmt_reactant9;
    input Real elmt_product25;
    input Real elmt_product24;
    input Real elmt_Erk_inactivation;
    input Real elmt_product28;
    input Real elmt_Ras_activation;
    input Real elmt_B_synth;
    input Real elmt_Na_degradation;
    input Real elmt_reactant16;
    input Real elmt_Na_transport;
    input Real elmt_reactant17;
    input Real elmt_reactant11;
    input Real elmt_Dusp_translation;
    input Real elmt_MF_degradation;
    input Real elmt_product38;
    input Real elmt_product36;
    input Real elmt_F_degradation;
    input Real elmt_product10;
    input Real elmt_MAx_trans_Xa;
    input Real elmt_AK_dissoc;
    input Real elmt_A_translation;
    input Real elmt_reactant27;
    input Real elmt_reactant21;
    input Real elmt_reactant23;
    input Real elmt_B_shuttling;
    input Real elmt_F_translation;
    input Real elmt_reactant19;
    input Real elmt_B_degradation;
    input Real elmt_N_degradation;
    input Real elmt_MDusp_transkription;
    input Real elmt_X_activation;
    input Real elmt_A_degradation;
    input Real elmt_MAx_degradation;
    input Real elmt_Ras_inactivation;
    input Real elmt_reactant2;
    input Real elmt_reactant1;
    input Real elmt_product8;
    input Real elmt_reactant4;
    input Real elmt_product6;
    input Real elmt_reactant31;
    input Real elmt_Dusp_degradation;
    input Real elmt_MDusp_degradation;
    input Real elmt_product22;
    input Real elmt_reactant5;
    input Real elmt_MAx_trans_basal;
    input Real elmt_reactant7;
    input Real elmt_product20;
    input Real elmt_product0;
    input Real elmt_reactant37;
    input Real elmt_reactant39;
    input Real elmt_reactant33;
    input Real elmt_product3;
    input Real elmt_MF_transkription;
    input Real elmt_reactant35;
    input Real elmt_reactant29;
    input Real elmt_product15;
    input Real elmt_N_activation;
    input Real elmt_product14;
    input Real elmt_product13;
    input Real elmt_product18;

    Real elmt_cytosol(unit = "m3.0") "";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_BN_conc(unit = "");
    Real elmt_BN_amount(unit = "");
    Real elmt_BN(unit = "") "nuclear beta-catenin";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Nan_conc(unit = "");
    Real elmt_Nan_amount(unit = "");
    Real elmt_Nan(unit = "") "nuclear NicD";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Xa_conc(unit = "");
    Real elmt_Xa_amount(unit = "");
    Real elmt_Xa(unit = "") "active TF X";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Dusp_conc(unit = "");
    Real elmt_Dusp_amount(unit = "");
    Real elmt_Dusp(unit = "") "Dusp6 protein";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Kt_conc(unit = "");
    Real elmt_Kt_amount(unit = "");
    Real elmt_Kt(unit = "") "Kt";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_ERKt_conc(unit = "");
    Real elmt_ERKt_amount(unit = "");
    Real elmt_ERKt(unit = "") "ERK total";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Rast_conc(unit = "");
    Real elmt_Rast_amount(unit = "");
    Real elmt_Rast(unit = "") "Ras total";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_N_conc(unit = "");
    Real elmt_N_amount(unit = "");
    Real elmt_N(unit = "") "Notch protein";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_K_conc(unit = "");
    Real elmt_K_amount(unit = "");
    Real elmt_K(unit = "") "Gsk3";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_ERKa_conc(unit = "");
    Real elmt_ERKa_amount(unit = "");
    Real elmt_ERKa(unit = "") "active ERK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Bp_conc(unit = "");
    Real elmt_Bp_amount(unit = "");
    Real elmt_Bp(unit = "") "phosph. beta-catenin";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_F_conc(unit = "");
    Real elmt_F_amount(unit = "");
    Real elmt_F(unit = "") "Lunatic Fringe protein";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_D_conc(unit = "");
    Real elmt_D_amount(unit = "");
    Real elmt_D(unit = "") "Dsh protein";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_AK_conc(unit = "");
    Real elmt_AK_amount(unit = "");
    Real elmt_AK(unit = "") "Axin2/Gsk3 destruction complex";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_A_conc(unit = "");
    Real elmt_A_amount(unit = "");
    Real elmt_A(unit = "") "Axin2 protein";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_B_conc(unit = "");
    Real elmt_B_amount(unit = "");
    Real elmt_B(unit = "") "beta-catenin";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_MDusp_conc(unit = "");
    Real elmt_MDusp_amount(unit = "");
    Real elmt_MDusp(unit = "") "Dusp6 mRNA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Rasi_conc(unit = "");
    Real elmt_Rasi_amount(unit = "");
    Real elmt_Rasi(unit = "") "inactive Ras";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_ERKi_conc(unit = "");
    Real elmt_ERKi_amount(unit = "");
    Real elmt_ERKi(unit = "") "inactive ERK";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Na_conc(unit = "");
    Real elmt_Na_amount(unit = "");
    Real elmt_Na(unit = "") "cytosolic NicD";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Fgf_conc(unit = "");
    Real elmt_Fgf_amount(unit = "");
    Real elmt_Fgf(unit = "") "Fgf";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Xi_conc(unit = "");
    Real elmt_Xi_amount(unit = "");
    Real elmt_Xi(unit = "") "inactive TF X";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_MAx_conc(unit = "");
    Real elmt_MAx_amount(unit = "");
    Real elmt_MAx(unit = "") "Axin2 mRNA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Rasa_conc(unit = "");
    Real elmt_Rasa_amount(unit = "");
    Real elmt_Rasa(unit = "") "active Ras";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_Xt_conc(unit = "");
    Real elmt_Xt_amount(unit = "");
    Real elmt_Xt(unit = "") "X total";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    Real elmt_MF_conc(unit = "");
    Real elmt_MF_amount(unit = "");
    Real elmt_MF(unit = "") "Lunatic fringe mRNA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));

    initial equation
        elmt_cytosol = 1.0;
        elmt_BN_conc = 0.001;
        elmt_Nan_conc = 0.0;
        elmt_Xa_conc = 0.1;
        elmt_Dusp_conc = 0.1;
        elmt_Kt_conc = 3.0;
        elmt_ERKt_conc = 2.0;
        elmt_Rast_conc = 2.0;
        elmt_N_conc = 0.5;
        elmt_K_conc = 3.0;
        elmt_ERKa_conc = 0.2;
        elmt_Bp_conc = 0.1;
        elmt_F_conc = 0.001;
        elmt_D_conc = 2.0;
        elmt_A_conc = 0.1;
        elmt_B_conc = 0.1;
        elmt_MDusp_conc = 0.1;
        elmt_Na_conc = 0.2;
        elmt_Fgf_conc = 1.0;
        elmt_MAx_conc = 0.1;
        elmt_Rasa_conc = 0.5;
        elmt_Xt_conc = 2.0;
        elmt_MF_conc = 0.1;


    equation
        assert(elmt_cytosol >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cytosol) = 0;
        elmt_BN = elmt_BN_conc;
        elmt_Nan = elmt_Nan_conc;
        elmt_Xa = elmt_Xa_conc;
        elmt_Dusp = elmt_Dusp_conc;
        elmt_Kt = elmt_Kt_conc;
        elmt_ERKt = elmt_ERKt_conc;
        elmt_Rast = elmt_Rast_conc;
        elmt_N = elmt_N_conc;
        elmt_K = elmt_K_conc;
        elmt_ERKa = elmt_ERKa_conc;
        elmt_Bp = elmt_Bp_conc;
        elmt_F = elmt_F_conc;
        elmt_D = elmt_D_conc;
        elmt_AK = elmt_AK_conc;
        elmt_A = elmt_A_conc;
        elmt_B = elmt_B_conc;
        elmt_MDusp = elmt_MDusp_conc;
        elmt_Rasi = elmt_Rasi_conc;
        elmt_ERKi = elmt_ERKi_conc;
        elmt_Na = elmt_Na_conc;
        elmt_Fgf = elmt_Fgf_conc;
        elmt_Xi = elmt_Xi_conc;
        elmt_MAx = elmt_MAx_conc;
        elmt_Rasa = elmt_Rasa_conc;
        elmt_Xt = elmt_Xt_conc;
        elmt_MF = elmt_MF_conc;
        der(elmt_Kt_amount) = 0;
        der(elmt_ERKt_amount) = 0;
        der(elmt_Rast_amount) = 0;
        der(elmt_D_amount) = 0;
        elmt_AK_amount = (elmt_Kt - elmt_K) * elmt_cytosol;
        elmt_Rasi_amount = (elmt_Rast - elmt_Rasa) * elmt_cytosol;
        elmt_ERKi_amount = (elmt_ERKt - elmt_ERKa) * elmt_cytosol;
        der(elmt_Fgf_amount) = 0;
        elmt_Xi_amount = (elmt_Xt - elmt_Xa) * elmt_cytosol;
        der(elmt_Xt_amount) = 0;
        der(elmt_N_amount) = ((elmt_n_synth * elmt_product0) + (- (elmt_N_degradation * elmt_reactant1)) + (- (elmt_N_activation * elmt_reactant2)));
        der(elmt_K_amount) = (elmt_AK_dissoc * elmt_product14);
        der(elmt_ERKa_amount) = ((elmt_Erk_activation * elmt_product32) + (- (elmt_Erk_inactivation * elmt_reactant33)));
        der(elmt_Bp_amount) = ((- (elmt_BP_dephosphorylation * elmt_reactant19)) + (- (elmt_Bp_degradation * elmt_reactant23)) + (elmt_B_phosphorylation * elmt_product18));
        der(elmt_BN_amount) = (- (elmt_B_shuttling * elmt_reactant21));
        der(elmt_F_amount) = ((- (elmt_F_degradation * elmt_reactant11)) + (elmt_F_translation * elmt_product10));
        der(elmt_Nan_amount) = ((- (elmt_Nan_degradation * elmt_reactant7)) + (elmt_Na_transport * elmt_product6));
        der(elmt_Xa_amount) = ((- (elmt_X_inactivation * elmt_reactant35)) + (elmt_X_activation * elmt_product34));
        der(elmt_Dusp_amount) = ((- (elmt_Dusp_degradation * elmt_reactant39)) + (elmt_Dusp_translation * elmt_product38));
        der(elmt_A_amount) = ((elmt_AK_dissoc * elmt_product13) + (elmt_A_translation * elmt_product28) + (- (elmt_A_degradation * elmt_reactant29)));
        der(elmt_B_amount) = ((elmt_BP_dephosphorylation * elmt_product20) + (elmt_B_shuttling * elmt_product22) + (- (elmt_B_phosphorylation * elmt_reactant17)) + (- (elmt_B_degradation * elmt_reactant16)) + (elmt_B_synth * elmt_product15));
        der(elmt_MDusp_amount) = ((elmt_MDusp_transkription * elmt_product36) + (- (elmt_MDusp_degradation * elmt_reactant37)));
        der(elmt_Na_amount) = ((- (elmt_Na_degradation * elmt_reactant4)) + (- (elmt_Na_transport * elmt_reactant5)) + (elmt_N_activation * elmt_product3));
        der(elmt_MAx_amount) = ((elmt_MAx_trans_Xa * elmt_product26) + (elmt_MAx_trans_BN * elmt_product25) + (- (elmt_MAx_degradation * elmt_reactant27)) + (elmt_MAx_trans_basal * elmt_product24));
        der(elmt_Rasa_amount) = ((- (elmt_Ras_inactivation * elmt_reactant31)) + (elmt_Ras_activation * elmt_product30));
        der(elmt_MF_amount) = ((elmt_MF_transkription * elmt_product8) + (- (elmt_MF_degradation * elmt_reactant9)));

    algorithm
        elmt_BN_conc := elmt_BN_amount / elmt_cytosol;
        elmt_Nan_conc := elmt_Nan_amount / elmt_cytosol;
        elmt_Xa_conc := elmt_Xa_amount / elmt_cytosol;
        elmt_Dusp_conc := elmt_Dusp_amount / elmt_cytosol;
        elmt_Kt_conc := elmt_Kt_amount / elmt_cytosol;
        elmt_ERKt_conc := elmt_ERKt_amount / elmt_cytosol;
        elmt_Rast_conc := elmt_Rast_amount / elmt_cytosol;
        elmt_N_conc := elmt_N_amount / elmt_cytosol;
        elmt_K_conc := elmt_K_amount / elmt_cytosol;
        elmt_ERKa_conc := elmt_ERKa_amount / elmt_cytosol;
        elmt_Bp_conc := elmt_Bp_amount / elmt_cytosol;
        elmt_F_conc := elmt_F_amount / elmt_cytosol;
        elmt_D_conc := elmt_D_amount / elmt_cytosol;
        elmt_AK_conc := elmt_AK_amount / elmt_cytosol;
        elmt_A_conc := elmt_A_amount / elmt_cytosol;
        elmt_B_conc := elmt_B_amount / elmt_cytosol;
        elmt_MDusp_conc := elmt_MDusp_amount / elmt_cytosol;
        elmt_Rasi_conc := elmt_Rasi_amount / elmt_cytosol;
        elmt_ERKi_conc := elmt_ERKi_amount / elmt_cytosol;
        elmt_Na_conc := elmt_Na_amount / elmt_cytosol;
        elmt_Fgf_conc := elmt_Fgf_amount / elmt_cytosol;
        elmt_Xi_conc := elmt_Xi_amount / elmt_cytosol;
        elmt_MAx_conc := elmt_MAx_amount / elmt_cytosol;
        elmt_Rasa_conc := elmt_Rasa_amount / elmt_cytosol;
        elmt_Xt_conc := elmt_Xt_amount / elmt_cytosol;
        elmt_MF_conc := elmt_MF_amount / elmt_cytosol;
end Class_elmt_cytosol;
