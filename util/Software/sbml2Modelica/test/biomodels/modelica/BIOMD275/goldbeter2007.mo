within BIOMD275;
model goldbeter2007 "Goldbeter2007_Somitogenesis_Switch" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_PSM elmt_PSM;

    equation
        Params.elmt_RA = elmt_PSM.elmt_RA;
        Params.elmt_F = elmt_PSM.elmt_F;
        Reacs.elmt_kd1 = Params.elmt_kd1;
        Reacs.elmt_m = Params.elmt_m;
        Reacs.elmt_n = Params.elmt_n;
        Reacs.elmt_vs1 = Params.elmt_vs1;
        Reacs.elmt_M_F = elmt_PSM.elmt_M_F;
        Reacs.elmt_M_C = elmt_PSM.elmt_M_C;
        Reacs.elmt_F = elmt_PSM.elmt_F;
        Reacs.elmt_kd5 = Params.elmt_kd5;
        Reacs.elmt_C = elmt_PSM.elmt_C;
        Reacs.elmt_kd4 = Params.elmt_kd4;
        Reacs.elmt_kd3 = Params.elmt_kd3;
        Reacs.elmt_kd2 = Params.elmt_kd2;
        Reacs.elmt_Ka = Params.elmt_Ka;
        Reacs.elmt_Vsc = Params.elmt_Vsc;
        Reacs.elmt_RA = elmt_PSM.elmt_RA;
        Reacs.elmt_Ki = Params.elmt_Ki;
        Reacs.elmt_V0 = Params.elmt_V0;
        Reacs.elmt_ks3 = Params.elmt_ks3;
        Reacs.elmt_ks2 = Params.elmt_ks2;
        Reacs.elmt_PSM = elmt_PSM.elmt_PSM;
        elmt_PSM.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_PSM.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_PSM.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_PSM.elmt_product7 = Reacs.elmt_product7;
        elmt_PSM.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_PSM.elmt_L = Params.elmt_L;
        elmt_PSM.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_PSM.elmt_M_C_transcription = Reacs.elmt_M_C_transcription;
        elmt_PSM.elmt_product0 = Reacs.elmt_product0;
        elmt_PSM.elmt_RA_decay = Reacs.elmt_RA_decay;
        elmt_PSM.elmt_RA_deg_by_Cyp26 = Reacs.elmt_RA_deg_by_Cyp26;
        elmt_PSM.elmt_C_translation = Reacs.elmt_C_translation;
        elmt_PSM.elmt_M_0 = Params.elmt_M_0;
        elmt_PSM.elmt_product5 = Reacs.elmt_product5;
        elmt_PSM.elmt_FGF_synthesis = Reacs.elmt_FGF_synthesis;
        elmt_PSM.elmt_product3 = Reacs.elmt_product3;
        elmt_PSM.elmt_RA_synthesis = Reacs.elmt_RA_synthesis;
        elmt_PSM.elmt_FGF_decay = Reacs.elmt_FGF_decay;
        elmt_PSM.elmt_x = Params.elmt_x;
        elmt_PSM.elmt_C_decay = Reacs.elmt_C_decay;
        elmt_PSM.elmt_M_C_decay = Reacs.elmt_M_C_decay;

end goldbeter2007;
