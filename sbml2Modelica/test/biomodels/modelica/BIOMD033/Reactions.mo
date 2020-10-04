within BIOMD033;
class Reactions

    input Real elmt_BRafInactive;
    input Real elmt_KmNGF;
    input Real elmt_ErkInactive;
    input Real elmt_KmpMekCytoplasmic;
    input Real elmt_MekInactive;
    input Real elmt_Raf1Active;
    input Real elmt_KmRapGap;
    input Real elmt_KmdRaf1;
    input Real elmt_KmpP90Rsk;
    input Real elmt_cell;
    input Real elmt_kRapGap;
    input Real elmt_kdBRaf;
    input Real elmt_kNGF;
    input Real elmt_PI3KInactive;
    input Real elmt_KmdSos;
    input Real elmt_kPI3K;
    input Real elmt_KmdBRaf;
    input Real elmt_kpBRaf;
    input Real elmt_KmC3GNGF;
    input Real elmt_boundNGFReceptor;
    input Real elmt_krbNGF;
    input Real elmt_ErkActive;
    input Real elmt_Rap1Active;
    input Real elmt_RasInactive;
    input Real elmt_PP2AActive;
    input Real elmt_krbEGF;
    input Real elmt_KmRasToRaf1;
    input Real elmt_RasGapActive;
    input Real elmt_boundEGFReceptor;
    input Real elmt_P90RskInactive;
    input Real elmt_AktActive;
    input Real elmt_MekActive;
    input Real elmt_KmPI3KRas;
    input Real elmt_kRasGap;
    input Real elmt_RasActive;
    input Real elmt_AktInactive;
    input Real elmt_kruNGF;
    input Real elmt_EGF;
    input Real elmt_kdSos;
    input Real elmt_SosInactive;
    input Real elmt_kC3GNGF;
    input Real elmt_freeNGFReceptor;
    input Real elmt_kPI3KRas;
    input Real elmt_KmpRaf1;
    input Real elmt_KmC3G;
    input Real elmt_KmSos;
    input Real elmt_kRasToRaf1;
    input Real elmt_kdRaf1ByAkt;
    input Real elmt_KmEGF;
    input Real elmt_PI3KActive;
    input Real elmt_KmRaf1ByAkt;
    input Real elmt_SosActive;
    input Real elmt_KmAkt;
    input Real elmt_Raf1PPtase;
    input Real elmt_kEGF;
    input Real elmt_kRap1ToBRaf;
    input Real elmt_KmRap1ToBRaf;
    input Real elmt_kAkt;
    input Real elmt_kdRaf1;
    input Real elmt_KmdErk;
    input Real elmt_KmpBRaf;
    input Real elmt_kC3G;
    input Real elmt_Rap1Inactive;
    input Real elmt_KmdMek;
    input Real elmt_kSos;
    input Real elmt_kpP90Rsk;
    input Real elmt_Raf1Inactive;
    input Real elmt_kruEGF;
    input Real elmt_RapGapActive;
    input Real elmt_kpRaf1;
    input Real elmt_BRafActive;
    input Real elmt_C3GActive;
    input Real elmt_KmRasGap;
    input Real elmt_kdErk;
    input Real elmt_freeEGFReceptor;
    input Real elmt_C3GInactive;
    input Real elmt_kdMek;
    input Real elmt_P90RskActive;
    input Real elmt_KmPI3K;
    input Real elmt_NGF;
    input Real elmt_kpMekCytoplasmic;

    Real elmt_SosDeactivationReaction(unit = "") "SOS deactivation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant16 "";
    Real elmt_product17 "";
    Real elmt_Raf1ByRasActivationReaction(unit = "") "Raf1 activation by Ras";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_ErkActivationReaction(unit = "") "Erk activation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant28 "";
    Real elmt_product29 "";
    Real elmt_C3GActivationReaction(unit = "") "C3G activation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product47 "";
    Real elmt_reactant46 "";
    Real elmt_AktActivationReaction(unit = "") "Akt activation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant42 "";
    Real elmt_product43 "";
    Real elmt_NGFBindingReaction(unit = "") "NGF binding";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product8 "";
    Real elmt_reactant6 "";
    Real elmt_reactant7 "";
    Real elmt_PI3KbyRasActivationReaction(unit = "") "PI3K activation by Ras";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product41 "";
    Real elmt_reactant40 "";
    Real elmt_BRafByRap1ActivationReaction(unit = "") "BRaf activation by Rap1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant52 "";
    Real elmt_product53 "";
    Real elmt_Rap1ActivationReaction(unit = "") "Rap1 activation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product49 "";
    Real elmt_reactant48 "";
    Real elmt_PI3KbyEGFRActivationReaction(unit = "") "PI3K activation by EGFR";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant38 "";
    Real elmt_product39 "";
    Real elmt_NGFUnbindingReaction(unit = "") "NGF unbinding";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product11 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt_RasDeactivationReaction(unit = "") "Ras deactivation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant20 "";
    Real elmt_product21 "";
    Real elmt_ErkDeactivationReaction(unit = "") "Erk deactivation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product33 "";
    Real elmt_reactant32 "";
    Real elmt_SosActivationByEGFReaction(unit = "") "SOS activation by EGF";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product13 "";
    Real elmt_reactant12 "";
    Real elmt_EGFBindingReaction(unit = "") "EGF binding";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_EGFUnbindingReaction(unit = "") "EFG unbinding";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_MekbyRaf1ActivationReaction(unit = "") "Mek activation by Raf1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product25 "";
    Real elmt_reactant24 "";
    Real elmt_MekDeactivationReaction(unit = "") "Mek deactivation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant30 "";
    Real elmt_product31 "";
    Real elmt_Raf1ByAktDeactivationReaction(unit = "") "Raf1 deactivation by Akt";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product45 "";
    Real elmt_reactant44 "";
    Real elmt_Rap1DeactivationReaction(unit = "") "Rap1 deactivation";
    Real elmt_reactant50 "";
    Real elmt_product51 "";
    Real elmt_BRafbyPPtaseDeactivationReaction(unit = "") "BRaf deactivation by PPase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product55 "";
    Real elmt_reactant54 "";
    Real elmt_SosActivationByNGFReaction(unit = "") "SOS activation by NGF";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_RasActivationReaction(unit = "") "Ras activation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant18 "";
    Real elmt_product19 "";
    Real elmt_P90RskActivationReaction(unit = "") "P90Rsk activation";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_reactant36 "";
    Real elmt_product37 "";
    Real elmt_MekbyBRafActivationReaction(unit = "") "Mek activation by B-Raf";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product27 "";
    Real elmt_reactant26 "";
    Real elmt_Raf1byPPtaseDeactivationReaction(unit = "") "Raf1 deactivation by PPase";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_product35 "";
    Real elmt_reactant34 "";


    initial equation
        elmt_reactant40 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product33 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant46 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product25 = 1.0;
        elmt_product29 = 1.0;
        elmt_product41 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_reactant52 = 1.0;
        elmt_product45 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_reactant12 = 1.0;
        elmt_product37 = 1.0;
        elmt_product35 = 1.0;
        elmt_product39 = 1.0;
        elmt_product51 = 1.0;
        elmt_reactant20 = 1.0;
        elmt_product11 = 1.0;
        elmt_product55 = 1.0;
        elmt_product10 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_product49 = 1.0;
        elmt_product47 = 1.0;
        elmt_product8 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_reactant30 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product23 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_product21 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_reactant32 = 1.0;
        elmt_product5 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_product2 = 1.0;
        elmt_product15 = 1.0;
        elmt_product13 = 1.0;
        elmt_product19 = 1.0;
        elmt_product17 = 1.0;


    equation
        elmt_SosDeactivationReaction = (elmt_cell * ((elmt_kdSos * elmt_P90RskActive * elmt_SosActive) / (elmt_SosActive + elmt_KmdSos)));
        elmt_Raf1ByRasActivationReaction = (elmt_cell * ((elmt_kRasToRaf1 * elmt_RasActive * elmt_Raf1Inactive) / (elmt_Raf1Inactive + elmt_KmRasToRaf1)));
        elmt_ErkActivationReaction = (elmt_cell * ((elmt_kpMekCytoplasmic * elmt_MekActive * elmt_ErkInactive) / (elmt_ErkInactive + elmt_KmpMekCytoplasmic)));
        elmt_C3GActivationReaction = (elmt_cell * ((elmt_kC3GNGF * elmt_boundNGFReceptor * elmt_C3GInactive) / (elmt_C3GInactive + elmt_KmC3GNGF)));
        elmt_AktActivationReaction = (elmt_cell * ((elmt_kAkt * elmt_PI3KActive * elmt_AktInactive) / (elmt_AktInactive + elmt_KmAkt)));
        elmt_NGFBindingReaction = (elmt_krbNGF * elmt_NGF * elmt_freeNGFReceptor * elmt_cell);
        elmt_PI3KbyRasActivationReaction = (elmt_cell * ((elmt_kPI3KRas * elmt_RasActive * elmt_PI3KInactive) / (elmt_PI3KInactive + elmt_KmPI3KRas)));
        elmt_BRafByRap1ActivationReaction = (elmt_cell * ((elmt_kRap1ToBRaf * elmt_Rap1Active * elmt_BRafInactive) / (elmt_BRafInactive + elmt_KmRap1ToBRaf)));
        elmt_Rap1ActivationReaction = (elmt_cell * ((elmt_kC3G * elmt_C3GActive * elmt_Rap1Inactive) / (elmt_Rap1Inactive + elmt_KmC3G)));
        elmt_PI3KbyEGFRActivationReaction = (elmt_cell * ((elmt_kPI3K * elmt_boundEGFReceptor * elmt_PI3KInactive) / (elmt_PI3KInactive + elmt_KmPI3K)));
        elmt_NGFUnbindingReaction = (elmt_kruNGF * elmt_boundNGFReceptor * elmt_cell);
        elmt_RasDeactivationReaction = (elmt_cell * ((elmt_kRasGap * elmt_RasGapActive * elmt_RasActive) / (elmt_RasActive + elmt_KmRasGap)));
        elmt_ErkDeactivationReaction = (elmt_cell * ((elmt_kdErk * elmt_PP2AActive * elmt_ErkActive) / (elmt_ErkActive + elmt_KmdErk)));
        elmt_SosActivationByEGFReaction = (elmt_cell * ((elmt_kEGF * elmt_boundEGFReceptor * elmt_SosInactive) / (elmt_SosInactive + elmt_KmEGF)));
        elmt_EGFBindingReaction = (elmt_cell * elmt_krbEGF * elmt_EGF * elmt_freeEGFReceptor);
        elmt_EGFUnbindingReaction = (elmt_cell * elmt_kruEGF * elmt_boundEGFReceptor);
        elmt_MekbyRaf1ActivationReaction = (elmt_cell * ((elmt_kpRaf1 * elmt_Raf1Active * elmt_MekInactive) / (elmt_MekInactive + elmt_KmpRaf1)));
        elmt_MekDeactivationReaction = (elmt_cell * ((elmt_kdMek * elmt_PP2AActive * elmt_MekActive) / (elmt_MekActive + elmt_KmdMek)));
        elmt_Raf1ByAktDeactivationReaction = (elmt_cell * ((elmt_kdRaf1ByAkt * elmt_AktActive * elmt_Raf1Active) / (elmt_Raf1Active + elmt_KmRaf1ByAkt)));
        elmt_Rap1DeactivationReaction = (elmt_cell * ((elmt_kRapGap * elmt_RapGapActive * elmt_Rap1Active) / (elmt_Rap1Active + elmt_KmRapGap)));
        elmt_BRafbyPPtaseDeactivationReaction = (elmt_cell * ((elmt_kdBRaf * elmt_Raf1PPtase * elmt_BRafActive) / (elmt_BRafActive + elmt_KmdBRaf)));
        elmt_SosActivationByNGFReaction = (elmt_cell * ((elmt_kNGF * elmt_boundNGFReceptor * elmt_SosInactive) / (elmt_SosInactive + elmt_KmNGF)));
        elmt_RasActivationReaction = (elmt_cell * ((elmt_kSos * elmt_SosActive * elmt_RasInactive) / (elmt_RasInactive + elmt_KmSos)));
        elmt_P90RskActivationReaction = (elmt_cell * ((elmt_kpP90Rsk * elmt_ErkActive * elmt_P90RskInactive) / (elmt_P90RskInactive + elmt_KmpP90Rsk)));
        elmt_MekbyBRafActivationReaction = (elmt_cell * ((elmt_kpBRaf * elmt_BRafActive * elmt_MekInactive) / (elmt_MekInactive + elmt_KmpBRaf)));
        elmt_Raf1byPPtaseDeactivationReaction = (elmt_cell * ((elmt_kdRaf1 * elmt_Raf1PPtase * elmt_Raf1Active) / (elmt_Raf1Active + elmt_KmdRaf1)));
        der(elmt_reactant40) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product33) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant46) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_product29) = 0;
        der(elmt_product41) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_reactant52) = 0;
        der(elmt_product45) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_product37) = 0;
        der(elmt_product35) = 0;
        der(elmt_product39) = 0;
        der(elmt_product51) = 0;
        der(elmt_reactant20) = 0;
        der(elmt_product11) = 0;
        der(elmt_product55) = 0;
        der(elmt_product10) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_product49) = 0;
        der(elmt_product47) = 0;
        der(elmt_product8) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_reactant30) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product23) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_product21) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_reactant32) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_product2) = 0;
        der(elmt_product15) = 0;
        der(elmt_product13) = 0;
        der(elmt_product19) = 0;
        der(elmt_product17) = 0;

end Reactions;
