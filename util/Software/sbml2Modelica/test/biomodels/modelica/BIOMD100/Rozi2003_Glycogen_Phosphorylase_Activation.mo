within BIOMD100;
model Rozi2003_Glycogen_Phosphorylase_Activation "Rozi2003_GlycogenPhosphorylase_Activation" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_intravesicular elmt_intravesicular;
    Class_elmt_extracellular elmt_extracellular;
    Class_elmt_cytosol elmt_cytosol;

    equation
        Reacs.elmt_K1 = Params.elmt_K1;
        Reacs.elmt_p = Params.elmt_p;
        Reacs.elmt_m = Params.elmt_m;
        Reacs.elmt_n = Params.elmt_n;
        Reacs.elmt_Ka5 = Params.elmt_Ka5;
        Reacs.elmt_Ka6 = Params.elmt_Ka6;
        Reacs.elmt_intravesicular = elmt_intravesicular.elmt_intravesicular;
        Reacs.elmt_Ky = Params.elmt_Ky;
        Reacs.elmt_Vm5 = Params.elmt_Vm5;
        Reacs.elmt_Vpm2 = Params.elmt_Vpm2;
        Reacs.elmt_cytosol = elmt_cytosol.elmt_cytosol;
        Reacs.elmt_Ka1 = Params.elmt_Ka1;
        Reacs.elmt_Vm3 = Params.elmt_Vm3;
        Reacs.elmt_Ka2 = Params.elmt_Ka2;
        Reacs.elmt_K5 = Params.elmt_K5;
        Reacs.elmt_Vm2 = Params.elmt_Vm2;
        Reacs.elmt_K2 = Params.elmt_K2;
        Reacs.elmt_Ka = Params.elmt_Ka;
        Reacs.elmt_Vpm1 = Params.elmt_Vpm1;
        Reacs.elmt_Y = elmt_intravesicular.elmt_Y;
        Reacs.elmt_Z = elmt_cytosol.elmt_Z;
        Reacs.elmt_Kp2 = Params.elmt_Kp2;
        Reacs.elmt_Kf = Params.elmt_Kf;
        Reacs.elmt_v1 = Params.elmt_v1;
        Reacs.elmt_epsilon = Params.elmt_epsilon;
        Reacs.elmt_alpha = Params.elmt_alpha;
        Reacs.elmt_Kd = Params.elmt_Kd;
        Reacs.elmt_v0 = Params.elmt_v0;
        Reacs.elmt_beta = Params.elmt_beta;
        Reacs.elmt_K = Params.elmt_K;
        Reacs.elmt_G = Params.elmt_G;
        Reacs.elmt_GP = elmt_cytosol.elmt_GP;
        Reacs.elmt_extracellular = elmt_extracellular.elmt_extracellular;
        Reacs.elmt_A = elmt_cytosol.elmt_A;
        Reacs.elmt_Kz = Params.elmt_Kz;
        Reacs.elmt_gamma = Params.elmt_gamma;
        Reacs.elmt_V4 = Params.elmt_V4;
        elmt_cytosol.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_cytosol.elmt_R7 = Reacs.elmt_R7;
        elmt_cytosol.elmt_R8 = Reacs.elmt_R8;
        elmt_cytosol.elmt_product7 = Reacs.elmt_product7;
        elmt_cytosol.elmt_R5 = Reacs.elmt_R5;
        elmt_cytosol.elmt_R6 = Reacs.elmt_R6;
        elmt_cytosol.elmt_R3 = Reacs.elmt_R3;
        elmt_cytosol.elmt_R4 = Reacs.elmt_R4;
        elmt_cytosol.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cytosol.elmt_product10 = Reacs.elmt_product10;
        elmt_cytosol.elmt_R2 = Reacs.elmt_R2;
        elmt_cytosol.elmt_product1 = Reacs.elmt_product1;
        elmt_cytosol.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cytosol.elmt_product5 = Reacs.elmt_product5;
        elmt_cytosol.elmt_vin = Reacs.elmt_vin;
        elmt_cytosol.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_cytosol.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cytosol.elmt_Rkz = Reacs.elmt_Rkz;
        elmt_cytosol.elmt_Rkf = Reacs.elmt_Rkf;
        elmt_cytosol.elmt_product13 = Reacs.elmt_product13;
        elmt_intravesicular.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_intravesicular.elmt_R3 = Reacs.elmt_R3;
        elmt_intravesicular.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_intravesicular.elmt_R2 = Reacs.elmt_R2;
        elmt_intravesicular.elmt_Rkf = Reacs.elmt_Rkf;
        elmt_intravesicular.elmt_product3 = Reacs.elmt_product3;

end Rozi2003_Glycogen_Phosphorylase_Activation;
