within BIOMD087;
class Reactions

    input Real elmt_MG1on;
    input Real elmt_SCdkA;
    input Real elmt_G2cyclin;
    input Real elmt_G1Soff;
    input Real elmt_Ctelo;
    input Real elmt_Utelo;
    input Real elmt_RPA;
    input Real elmt_SG2on;
    input Real elmt_Exo1A;
    input Real elmt_ssDNA;
    input Real elmt_S;
    input Real elmt_Mec1;
    input Real elmt_M;
    input Real elmt_recovery;
    input Real elmt_Rad9I;
    input Real elmt_RPAssDNA2;
    input Real elmt_RPAssDNA1;
    input Real elmt_Rad17;
    input Real elmt_Rad9A;
    input Real elmt_Cdc13;
    input Real elmt_MG1off;
    input Real elmt_Dun1A;
    input Real elmt_G2Moff;
    input Real elmt_Chk1I;
    input Real elmt_G2CdkA;
    input Real elmt_G2;
    input Real elmt_ATP;
    input Real elmt_G1;
    input Real elmt_Chk1A;
    input Real elmt_ExoXI;
    input Real elmt_Mcyclin;
    input Real elmt_G1Son;
    input Real elmt_Rad9Kin;
    input Real elmt_SG2off;
    input Real elmt_MCdkA;
    input Real elmt_ExoXA;
    input Real elmt_Rad53A;
    input Real elmt_Rad17Utelo;
    input Real elmt_Rad24;
    input Real elmt_G1CdkA;
    input Real elmt_Mec1RPAssDNA;
    input Real elmt_kalive;
    input Real elmt_Rad53I;
    input Real elmt_G1cyclin;
    input Real elmt_Exo1I;
    input Real elmt_RPAssDNA;
    input Real elmt_Scyclin;
    input Real elmt_G2Mon;
    input Real elmt_Dun1I;

    Real elmt_G2DNArepair1(unit = "") "G2DNArepair1";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_G2DNArepair1_elmt_k17b(unit "") = 0.05 "";
    Real elmt_reactant94 "";
    Real elmt_product96 "";
    Real elmt_product95 "";
    Real elmt_product99 "";
    Real elmt_reactant92 "";
    Real elmt_product98 "";
    Real elmt_reactant93 "";
    Real elmt_product97 "";
    Real elmt_Exo1inhibition(unit = "") "Exo1inhibition";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Exo1inhibition_elmt_k13(unit "") = 1.0 "";
    Real elmt_product73 "";
    Real elmt_product72 "";
    Real elmt_reactant70 "";
    Real elmt_reactant71 "";
    Real elmt_G2DNArepair2(unit = "") "G2DNArepair2";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_G2DNArepair2_elmt_k18b(unit "") = 1.0E-5 "";
    Real elmt_reactant105 "";
    Real elmt_reactant104 "";
    Real elmt_reactant103 "";
    Real elmt_product106 "";
    Real elmt_product107 "";
    Real elmt_Rad17binding(unit = "") "Rad17binding";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Rad17binding_elmt_k3(unit "") = 1.5E-8 "";
    Real elmt_reactant6 "";
    Real elmt_product12 "";
    Real elmt_product11 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant7 "";
    Real elmt_reactant9 "";
    Real elmt_G1toSGenesOn(unit = "") "G1toSGenesOn";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_G1toSGenesOn_elmt_kc2(unit "") = 0.01 "";
    Real elmt_product131 "";
    Real elmt_product130 "";
    Real elmt_reactant128 "";
    Real elmt_reactant127 "";
    Real elmt_reactant126 "";
    Real elmt_product129 "";
    Real elmt_Rad53activation(unit = "") "Rad53activation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Rad53activation_elmt_k11(unit "") = 1.0E-5 "";
    Real elmt_reactant62 "";
    Real elmt_reactant63 "";
    Real elmt_product65 "";
    Real elmt_product64 "";
    Real elmt_Exo1Rad17independentActivity(unit = "") "Rad17independentExo1Activity";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Exo1Rad17independentActivity_elmt_k7a(unit "") = 3.0E-5 "";
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_product32 "";
    Real elmt_product31 "";
    Real elmt_reactant28 "";
    Real elmt_Rad9activation(unit = "") "Rad9activation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Rad9activation_elmt_k9(unit "") = 100.0 "";
    Real elmt_reactant50 "";
    Real elmt_product52 "";
    Real elmt_reactant51 "";
    Real elmt_product53 "";
    Real elmt_Uncapping(unit = "") "Uncapping";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Uncapping_elmt_k2(unit "") = 3.85E-4 "";
    Real elmt_reactant3 "";
    Real elmt_product5 "";
    Real elmt_product4 "";
    Real elmt_ScyclinDegradation(unit = "") "ScyclinDegradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_ScyclinDegradation_elmt_kc3(unit "") = 0.0012 "";
    Real elmt_reactant152 "";
    Real elmt_product153 "";
    Real elmt_ExoXinhibition2(unit = "") "ExoXinhibition2";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_ExoXinhibition2_elmt_k10b(unit "") = 0.05 "";
    Real elmt_product61 "";
    Real elmt_product60 "";
    Real elmt_reactant58 "";
    Real elmt_reactant59 "";
    Real elmt_G2toMProgession(unit = "") "G2toMProgession";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_G2toMProgession_elmt_kc4(unit "") = 0.01 "";
    Real elmt_reactant172 "";
    Real elmt_product175 "";
    Real elmt_reactant171 "";
    Real elmt_product174 "";
    Real elmt_reactant170 "";
    Real elmt_product173 "";
    Real elmt_Chk1cellArrest(unit = "") "Chk1cellArrest";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Chk1cellArrest_elmt_k15(unit "") = 0.2 "";
    Real elmt_product81 "";
    Real elmt_product80 "";
    Real elmt_reactant78 "";
    Real elmt_reactant79 "";
    Real elmt_G1cyclinSynthesis(unit = "") "G1cyclinSynthesis";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_G1cyclinSynthesis_elmt_kc1(unit "") = 0.16 "";
    Real elmt_product115 "";
    Real elmt_reactant114 "";
    Real elmt_product116 "";
    Real elmt_Mec1binding(unit = "") "Mec1binding";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Mec1binding_elmt_k8d(unit "") = 0.004 "";
    Real elmt_reactant47 "";
    Real elmt_product49 "";
    Real elmt_reactant48 "";
    Real elmt_Chk1Activation(unit = "") "Chk1Activation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Chk1Activation_elmt_k12(unit "") = 1.7E-4 "";
    Real elmt_product69 "";
    Real elmt_product68 "";
    Real elmt_reactant66 "";
    Real elmt_reactant67 "";
    Real elmt_RPAbinding(unit = "") "RPAbinding-completed";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_RPAbinding_elmt_k8c(unit "") = 100.0 "";
    Real elmt_product46 "";
    Real elmt_reactant44 "";
    Real elmt_reactant45 "";
    Real elmt_Exo1activation(unit = "") "Rad24independentExo1Activation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Exo1activation_elmt_k6a(unit "") = 5.0E-5 "";
    Real elmt_product23 "";
    Real elmt_reactant22 "";
    Real elmt_Exo1Rad17dependentActivity(unit = "") "Rad17dependentExo1Activity";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Exo1Rad17dependentActivity_elmt_k7b(unit "") = 3.0E-5 "";
    Real elmt_product37 "";
    Real elmt_product36 "";
    Real elmt_product35 "";
    Real elmt_reactant33 "";
    Real elmt_reactant34 "";
    Real elmt_MtoG1GenesOn(unit = "") "MtoG1GenesOn";
    parameter Real elmt_MtoG1GenesOn_elmt_kc2(unit "") = 0.01 "";
    Real elmt_product148 "";
    Real elmt_product147 "";
    Real elmt_reactant146 "";
    Real elmt_product149 "";
    Real elmt_reactant145 "";
    Real elmt_reactant144 "";
    Real elmt_ExoXactivation(unit = "") "ExoXactivation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_ExoXactivation_elmt_k4(unit "") = 0.01 "";
    Real elmt_reactant14 "";
    Real elmt_product16 "";
    Real elmt_product15 "";
    Real elmt_reactant13 "";
    Real elmt_MtoG1Progession(unit = "") "MtoG1Progession";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_MtoG1Progession_elmt_kc4(unit "") = 0.01 "";
    Real elmt_reactant176 "";
    Real elmt_product179 "";
    Real elmt_product182 "";
    Real elmt_product181 "";
    Real elmt_reactant178 "";
    Real elmt_product180 "";
    Real elmt_reactant177 "";
    Real elmt_ExoXactivity(unit = "") "ExoXactivity";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_ExoXactivity_elmt_k5(unit "") = 3.0E-4 "";
    Real elmt_reactant18 "";
    Real elmt_product21 "";
    Real elmt_product20 "";
    Real elmt_reactant17 "";
    Real elmt_product19 "";
    Real elmt_McyclinDegradation(unit = "") "McyclinDegradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_McyclinDegradation_elmt_kc3(unit "") = 0.0012 "";
    Real elmt_product157 "";
    Real elmt_reactant156 "";
    Real elmt_ScyclinSynthesis(unit = "") "ScyclinSynthesis";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_ScyclinSynthesis_elmt_kc1(unit "") = 0.16 "";
    Real elmt_reactant117 "";
    Real elmt_product119 "";
    Real elmt_product118 "";
    Real elmt_G2cyclinSynthesis(unit = "") "G2cyclinSynthesis";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_G2cyclinSynthesis_elmt_kc1(unit "") = 0.16 "";
    Real elmt_reactant120 "";
    Real elmt_product122 "";
    Real elmt_product121 "";
    Real elmt_StoG2GenesOn(unit = "") "StoG2GenesOn";
    parameter Real elmt_StoG2GenesOn_elmt_kc2(unit "") = 0.01 "";
    Real elmt_reactant132 "";
    Real elmt_product135 "";
    Real elmt_product137 "";
    Real elmt_product136 "";
    Real elmt_reactant134 "";
    Real elmt_reactant133 "";
    Real elmt_G2cyclinDegradation(unit = "") "G2cyclinDegradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_G2cyclinDegradation_elmt_kc3(unit "") = 0.0012 "";
    Real elmt_reactant154 "";
    Real elmt_product155 "";
    Real elmt_McyclinSynthesis(unit = "") "McyclinSynthesis";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_McyclinSynthesis_elmt_kc1(unit "") = 0.16 "";
    Real elmt_product124 "";
    Real elmt_product125 "";
    Real elmt_reactant123 "";
    Real elmt_RPAbinding2(unit = "") "RPAbinding-stage2";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_RPAbinding2_elmt_k8b(unit "") = 100.0 "";
    Real elmt_reactant41 "";
    Real elmt_reactant42 "";
    Real elmt_product43 "";
    Real elmt_RPAbinding1(unit = "") "RPAbinding-stage1";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_RPAbinding1_elmt_k8a(unit "") = 0.001 "";
    Real elmt_product40 "";
    Real elmt_reactant38 "";
    Real elmt_reactant39 "";
    Real elmt_StoG2Progession(unit = "") "StoG2Progession";
    parameter Real elmt_StoG2Progession_elmt_kc4(unit "") = 0.01 "";
    Real elmt_reactant165 "";
    Real elmt_product168 "";
    Real elmt_reactant164 "";
    Real elmt_product167 "";
    Real elmt_product169 "";
    Real elmt_reactant166 "";
    Real elmt_SDNArepair2(unit = "") "SDNArepair2";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_SDNArepair2_elmt_k18a(unit "") = 0.001 "";
    Real elmt_product102 "";
    Real elmt_reactant101 "";
    Real elmt_reactant100 "";
    Real elmt_Recovery(unit = "") "Recovery";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Recovery_elmt_k19(unit "") = 0.001 "";
    Real elmt_reactant110 "";
    Real elmt_product113 "";
    Real elmt_product112 "";
    Real elmt_reactant109 "";
    Real elmt_product111 "";
    Real elmt_reactant108 "";
    Real elmt_G2toMGenesOn(unit = "") "G2toMGenesOn";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_G2toMGenesOn_elmt_kc2(unit "") = 0.01 "";
    Real elmt_reactant140 "";
    Real elmt_product142 "";
    Real elmt_product141 "";
    Real elmt_product143 "";
    Real elmt_reactant139 "";
    Real elmt_reactant138 "";
    Real elmt_SDNArepair1(unit = "") "SDNArepair1";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_SDNArepair1_elmt_k17a(unit "") = 0.05 "";
    Real elmt_reactant86 "";
    Real elmt_product89 "";
    Real elmt_product88 "";
    Real elmt_reactant87 "";
    Real elmt_product91 "";
    Real elmt_product90 "";
    Real elmt_ExoXinhibition(unit = "") "ExoXinhibition";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_ExoXinhibition_elmt_k10a(unit "") = 0.05 "";
    Real elmt_product56 "";
    Real elmt_product57 "";
    Real elmt_reactant54 "";
    Real elmt_reactant55 "";
    Real elmt_Dun1activation(unit = "") "Dun1activation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Dun1activation_elmt_k14(unit "") = 3.3E-6 "";
    Real elmt_reactant74 "";
    Real elmt_reactant75 "";
    Real elmt_product77 "";
    Real elmt_product76 "";
    Real elmt_G1toSProgession(unit = "") "G1toSProgession";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_G1toSProgession_elmt_kc4(unit "") = 0.01 "";
    Real elmt_reactant160 "";
    Real elmt_product163 "";
    Real elmt_product162 "";
    Real elmt_reactant159 "";
    Real elmt_product161 "";
    Real elmt_reactant158 "";
    Real elmt_G1cyclinDegradation(unit = "") "G1cyclinDegradation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_G1cyclinDegradation_elmt_kc3(unit "") = 0.0012 "";
    Real elmt_reactant150 "";
    Real elmt_product151 "";
    Real elmt_Capping(unit = "") "Capping";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Capping_elmt_k1(unit "") = 5.0E-4 "";
    Real elmt_reactant1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_Dun1cellArrest(unit = "") "Dun1cellArrest";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Dun1cellArrest_elmt_k16(unit "") = 0.1 "";
    Real elmt_reactant83 "";
    Real elmt_product85 "";
    Real elmt_product84 "";
    Real elmt_reactant82 "";
    Real elmt_Exo1Rad24dependentActivation(unit = "") "Rad24dependentExo1Activation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
      </rdf:RDF>
    </annotation>"));
    parameter Real elmt_Exo1Rad24dependentActivation_elmt_k6b(unit "") = 5.0E-4 "";
    Real elmt_reactant25 "";
    Real elmt_product27 "";
    Real elmt_product26 "";
    Real elmt_reactant24 "";


    initial equation
        elmt_product73 = 1.0;
        elmt_product72 = 1.0;
        elmt_reactant41 = 1.0;
        elmt_reactant42 = 1.0;
        elmt_product77 = 1.0;
        elmt_reactant109 = 1.0;
        elmt_product76 = 1.0;
        elmt_reactant108 = 1.0;
        elmt_reactant47 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_product173 = 1.0;
        elmt_reactant44 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_product179 = 1.0;
        elmt_reactant110 = 1.0;
        elmt_product175 = 1.0;
        elmt_product174 = 1.0;
        elmt_reactant117 = 1.0;
        elmt_product69 = 1.0;
        elmt_product68 = 1.0;
        elmt_reactant114 = 1.0;
        elmt_reactant50 = 1.0;
        elmt_product85 = 1.0;
        elmt_reactant51 = 1.0;
        elmt_product84 = 1.0;
        elmt_product89 = 1.0;
        elmt_product88 = 1.0;
        elmt_reactant58 = 1.0;
        elmt_product182 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_product181 = 1.0;
        elmt_product81 = 1.0;
        elmt_reactant54 = 1.0;
        elmt_product80 = 1.0;
        elmt_reactant55 = 1.0;
        elmt_product180 = 1.0;
        elmt_product102 = 1.0;
        elmt_reactant120 = 1.0;
        elmt_reactant128 = 1.0;
        elmt_reactant127 = 1.0;
        elmt_reactant126 = 1.0;
        elmt_product106 = 1.0;
        elmt_reactant123 = 1.0;
        elmt_product107 = 1.0;
        elmt_product96 = 1.0;
        elmt_product95 = 1.0;
        elmt_product12 = 1.0;
        elmt_product99 = 3.0;
        elmt_product11 = 1.0;
        elmt_product98 = 1.0;
        elmt_product10 = 1.0;
        elmt_product97 = 1.0;
        elmt_reactant25 = 1.0;
        elmt_product151 = 1.0;
        elmt_reactant28 = 1.0;
        elmt_reactant22 = 1.0;
        elmt_product91 = 3.0;
        elmt_product90 = 1.0;
        elmt_reactant24 = 1.0;
        elmt_reactant176 = 1.0;
        elmt_product157 = 1.0;
        elmt_product153 = 1.0;
        elmt_reactant172 = 1.0;
        elmt_reactant18 = 1.0;
        elmt_reactant171 = 1.0;
        elmt_reactant170 = 1.0;
        elmt_product155 = 1.0;
        elmt_reactant178 = 1.0;
        elmt_reactant177 = 1.0;
        elmt_product23 = 1.0;
        elmt_product21 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant38 = 1.0;
        elmt_product162 = 1.0;
        elmt_reactant39 = 1.0;
        elmt_product161 = 1.0;
        elmt_product5 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant33 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_product2 = 1.0;
        elmt_product168 = 1.0;
        elmt_product167 = 1.0;
        elmt_product169 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product163 = 1.0;
        elmt_product16 = 1.0;
        elmt_product15 = 1.0;
        elmt_reactant105 = 1.0;
        elmt_reactant104 = 1.0;
        elmt_reactant103 = 1.0;
        elmt_product19 = 1.0;
        elmt_reactant101 = 1.0;
        elmt_reactant100 = 1.0;
        elmt_product30 = 1.0;
        elmt_reactant83 = 1.0;
        elmt_reactant86 = 1.0;
        elmt_product32 = 1.0;
        elmt_product31 = 1.0;
        elmt_reactant82 = 1.0;
        elmt_reactant87 = 1.0;
        elmt_product135 = 1.0;
        elmt_reactant154 = 1.0;
        elmt_reactant152 = 1.0;
        elmt_product137 = 1.0;
        elmt_product136 = 1.0;
        elmt_product131 = 1.0;
        elmt_reactant150 = 1.0;
        elmt_product130 = 1.0;
        elmt_product27 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product26 = 1.0;
        elmt_reactant159 = 1.0;
        elmt_reactant158 = 1.0;
        elmt_reactant156 = 1.0;
        elmt_reactant94 = 1.0;
        elmt_product40 = 1.0;
        elmt_reactant92 = 1.0;
        elmt_product43 = 1.0;
        elmt_reactant93 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant13 = 1.0;
        elmt_reactant165 = 1.0;
        elmt_reactant164 = 1.0;
        elmt_product148 = 1.0;
        elmt_product147 = 1.0;
        elmt_product142 = 1.0;
        elmt_product141 = 1.0;
        elmt_reactant160 = 1.0;
        elmt_product143 = 1.0;
        elmt_product37 = 1.0;
        elmt_product36 = 1.0;
        elmt_product35 = 1.0;
        elmt_product149 = 1.0;
        elmt_reactant166 = 1.0;
        elmt_product52 = 1.0;
        elmt_reactant62 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_product56 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant66 = 1.0;
        elmt_reactant67 = 1.0;
        elmt_reactant132 = 1.0;
        elmt_product113 = 1.0;
        elmt_product112 = 1.0;
        elmt_product115 = 1.0;
        elmt_product111 = 1.0;
        elmt_product49 = 1.0;
        elmt_reactant139 = 1.0;
        elmt_reactant138 = 1.0;
        elmt_product46 = 1.0;
        elmt_product116 = 1.0;
        elmt_product119 = 1.0;
        elmt_reactant134 = 1.0;
        elmt_product118 = 1.0;
        elmt_reactant133 = 1.0;
        elmt_reactant1 = 1.0;
        elmt_product61 = 1.0;
        elmt_reactant74 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product60 = 1.0;
        elmt_reactant75 = 1.0;
        elmt_reactant6 = 1.0;
        elmt_reactant70 = 1.0;
        elmt_reactant8 = 1.0;
        elmt_product65 = 1.0;
        elmt_reactant71 = 1.0;
        elmt_reactant7 = 1.0;
        elmt_product64 = 1.0;
        elmt_reactant78 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant79 = 1.0;
        elmt_product124 = 1.0;
        elmt_product125 = 1.0;
        elmt_reactant140 = 1.0;
        elmt_product122 = 1.0;
        elmt_product121 = 1.0;
        elmt_product57 = 1.0;
        elmt_reactant146 = 1.0;
        elmt_reactant145 = 1.0;
        elmt_product129 = 1.0;
        elmt_reactant144 = 1.0;


    equation
        elmt_G2DNArepair1 = (elmt_G2 * elmt_G2Moff * elmt_G2DNArepair1_elmt_k17b * elmt_Mec1RPAssDNA * elmt_kalive);
        elmt_Exo1inhibition = (elmt_Exo1A * elmt_Exo1inhibition_elmt_k13 * elmt_Rad53A * elmt_kalive);
        elmt_G2DNArepair2 = (elmt_G2 * elmt_G2Moff * elmt_G2DNArepair2_elmt_k18b * elmt_ssDNA * elmt_kalive);
        elmt_Rad17binding = ((elmt_Rad17binding_elmt_k3 * elmt_Utelo * elmt_Rad17 * elmt_Rad24 * elmt_ATP * elmt_kalive) / (5000.0 + elmt_ATP));
        elmt_G1toSGenesOn = (elmt_G1 * elmt_G1CdkA * elmt_G1Soff * elmt_G1toSGenesOn_elmt_kc2 * elmt_kalive);
        elmt_Rad53activation = (elmt_Rad53activation_elmt_k11 * elmt_Rad53I * elmt_Rad9A * elmt_kalive);
        elmt_Exo1Rad17independentActivity = (elmt_Exo1Rad17independentActivity_elmt_k7a * elmt_Utelo * elmt_Exo1A * elmt_kalive);
        elmt_Rad9activation = (elmt_Rad9activation_elmt_k9 * elmt_Rad9Kin * elmt_Rad9I * elmt_kalive);
        elmt_Uncapping = (elmt_Uncapping_elmt_k2 * elmt_Ctelo * elmt_kalive);
        elmt_ScyclinDegradation = (elmt_ScyclinDegradation_elmt_kc3 * elmt_Scyclin * elmt_kalive);
        elmt_ExoXinhibition2 = (elmt_ExoXA * elmt_ExoXinhibition2_elmt_k10b * elmt_Rad9I * elmt_kalive);
        elmt_G2toMProgession = (elmt_G2 * elmt_G2CdkA * elmt_G2Mon * elmt_G2toMProgession_elmt_kc4 * elmt_kalive);
        elmt_Chk1cellArrest = (elmt_Chk1A * elmt_G2Mon * elmt_Chk1cellArrest_elmt_k15 * elmt_kalive);
        elmt_G1cyclinSynthesis = (elmt_G1 * elmt_G1cyclinSynthesis_elmt_kc1 * elmt_kalive);
        elmt_Mec1binding = (elmt_Mec1binding_elmt_k8d * elmt_RPAssDNA * elmt_Mec1 * elmt_kalive);
        elmt_Chk1Activation = (elmt_Chk1I * elmt_Chk1Activation_elmt_k12 * elmt_Rad9A * elmt_kalive);
        elmt_RPAbinding = (elmt_RPAbinding_elmt_k8c * elmt_RPAssDNA2 * elmt_ssDNA * elmt_kalive);
        elmt_Exo1activation = (elmt_Exo1activation_elmt_k6a * elmt_Exo1I * elmt_kalive);
        elmt_Exo1Rad17dependentActivity = (elmt_Exo1Rad17dependentActivity_elmt_k7b * elmt_Rad17Utelo * elmt_Exo1A * elmt_kalive);
        elmt_MtoG1GenesOn = (elmt_MtoG1GenesOn_elmt_kc2 * elmt_M * elmt_MCdkA * elmt_MG1off * elmt_kalive);
        elmt_ExoXactivation = (elmt_ExoXactivation_elmt_k4 * elmt_ExoXI * elmt_Rad17Utelo * elmt_kalive);
        elmt_MtoG1Progession = (elmt_MtoG1Progession_elmt_kc4 * elmt_M * elmt_MCdkA * elmt_MG1on * elmt_kalive);
        elmt_ExoXactivity = (elmt_ExoXactivity_elmt_k5 * elmt_ExoXA * elmt_Rad17Utelo * elmt_kalive);
        elmt_McyclinDegradation = (elmt_McyclinDegradation_elmt_kc3 * elmt_Mcyclin * elmt_kalive);
        elmt_ScyclinSynthesis = (elmt_ScyclinSynthesis_elmt_kc1 * elmt_S * elmt_kalive);
        elmt_G2cyclinSynthesis = (elmt_G2 * elmt_G2cyclinSynthesis_elmt_kc1 * elmt_kalive);
        elmt_StoG2GenesOn = (elmt_StoG2GenesOn_elmt_kc2 * elmt_S * elmt_SCdkA * elmt_SG2off * elmt_kalive);
        elmt_G2cyclinDegradation = (elmt_G2cyclin * elmt_G2cyclinDegradation_elmt_kc3 * elmt_kalive);
        elmt_McyclinSynthesis = (elmt_McyclinSynthesis_elmt_kc1 * elmt_M * elmt_kalive);
        elmt_RPAbinding2 = (elmt_RPAbinding2_elmt_k8b * elmt_RPAssDNA1 * elmt_ssDNA * elmt_kalive);
        elmt_RPAbinding1 = (elmt_RPAbinding1_elmt_k8a * elmt_RPA * elmt_ssDNA * elmt_kalive);
        elmt_StoG2Progession = (elmt_StoG2Progession_elmt_kc4 * elmt_S * elmt_SCdkA * elmt_SG2on * elmt_kalive);
        elmt_SDNArepair2 = (elmt_SDNArepair2_elmt_k18a * elmt_S * elmt_ssDNA * elmt_kalive);
        elmt_Recovery = (elmt_Cdc13 * elmt_Recovery_elmt_k19 * elmt_Rad17Utelo * elmt_recovery * elmt_kalive);
        elmt_G2toMGenesOn = (elmt_G2 * elmt_G2CdkA * elmt_G2Moff * elmt_G2toMGenesOn_elmt_kc2 * elmt_kalive);
        elmt_SDNArepair1 = (elmt_SDNArepair1_elmt_k17a * elmt_Mec1RPAssDNA * elmt_S * elmt_kalive);
        elmt_ExoXinhibition = (elmt_ExoXA * elmt_ExoXinhibition_elmt_k10a * elmt_Rad9A * elmt_kalive);
        elmt_Dun1activation = (elmt_Dun1I * elmt_Dun1activation_elmt_k14 * elmt_Rad53A * elmt_kalive);
        elmt_G1toSProgession = (elmt_G1 * elmt_G1CdkA * elmt_G1Son * elmt_G1toSProgession_elmt_kc4 * elmt_kalive);
        elmt_G1cyclinDegradation = (elmt_G1cyclin * elmt_G1cyclinDegradation_elmt_kc3 * elmt_kalive);
        elmt_Capping = (elmt_Capping_elmt_k1 * elmt_Cdc13 * elmt_Utelo * elmt_kalive);
        elmt_Dun1cellArrest = (elmt_Dun1A * elmt_G2Mon * elmt_Dun1cellArrest_elmt_k16 * elmt_kalive);
        elmt_Exo1Rad24dependentActivation = (elmt_Exo1Rad24dependentActivation_elmt_k6b * elmt_Exo1I * elmt_Rad24 * elmt_kalive);
        der(elmt_product73) = 0;
        der(elmt_product72) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_reactant42) = 0;
        der(elmt_product77) = 0;
        der(elmt_reactant109) = 0;
        der(elmt_product76) = 0;
        der(elmt_reactant108) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_product173) = 0;
        der(elmt_reactant44) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_product179) = 0;
        der(elmt_reactant110) = 0;
        der(elmt_product175) = 0;
        der(elmt_product174) = 0;
        der(elmt_reactant117) = 0;
        der(elmt_product69) = 0;
        der(elmt_product68) = 0;
        der(elmt_reactant114) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product85) = 0;
        der(elmt_reactant51) = 0;
        der(elmt_product84) = 0;
        der(elmt_product89) = 0;
        der(elmt_product88) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_product182) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_product181) = 0;
        der(elmt_product81) = 0;
        der(elmt_reactant54) = 0;
        der(elmt_product80) = 0;
        der(elmt_reactant55) = 0;
        der(elmt_product180) = 0;
        der(elmt_product102) = 0;
        der(elmt_reactant120) = 0;
        der(elmt_reactant128) = 0;
        der(elmt_reactant127) = 0;
        der(elmt_reactant126) = 0;
        der(elmt_product106) = 0;
        der(elmt_reactant123) = 0;
        der(elmt_product107) = 0;
        der(elmt_product96) = 0;
        der(elmt_product95) = 0;
        der(elmt_product12) = 0;
        der(elmt_product99) = 0;
        der(elmt_product11) = 0;
        der(elmt_product98) = 0;
        der(elmt_product10) = 0;
        der(elmt_product97) = 0;
        der(elmt_reactant25) = 0;
        der(elmt_product151) = 0;
        der(elmt_reactant28) = 0;
        der(elmt_reactant22) = 0;
        der(elmt_product91) = 0;
        der(elmt_product90) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant176) = 0;
        der(elmt_product157) = 0;
        der(elmt_product153) = 0;
        der(elmt_reactant172) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant171) = 0;
        der(elmt_reactant170) = 0;
        der(elmt_product155) = 0;
        der(elmt_reactant178) = 0;
        der(elmt_reactant177) = 0;
        der(elmt_product23) = 0;
        der(elmt_product21) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant38) = 0;
        der(elmt_product162) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_product161) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant33) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_product2) = 0;
        der(elmt_product168) = 0;
        der(elmt_product167) = 0;
        der(elmt_product169) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product163) = 0;
        der(elmt_product16) = 0;
        der(elmt_product15) = 0;
        der(elmt_reactant105) = 0;
        der(elmt_reactant104) = 0;
        der(elmt_reactant103) = 0;
        der(elmt_product19) = 0;
        der(elmt_reactant101) = 0;
        der(elmt_reactant100) = 0;
        der(elmt_product30) = 0;
        der(elmt_reactant83) = 0;
        der(elmt_reactant86) = 0;
        der(elmt_product32) = 0;
        der(elmt_product31) = 0;
        der(elmt_reactant82) = 0;
        der(elmt_reactant87) = 0;
        der(elmt_product135) = 0;
        der(elmt_reactant154) = 0;
        der(elmt_reactant152) = 0;
        der(elmt_product137) = 0;
        der(elmt_product136) = 0;
        der(elmt_product131) = 0;
        der(elmt_reactant150) = 0;
        der(elmt_product130) = 0;
        der(elmt_product27) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product26) = 0;
        der(elmt_reactant159) = 0;
        der(elmt_reactant158) = 0;
        der(elmt_reactant156) = 0;
        der(elmt_reactant94) = 0;
        der(elmt_product40) = 0;
        der(elmt_reactant92) = 0;
        der(elmt_product43) = 0;
        der(elmt_reactant93) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant13) = 0;
        der(elmt_reactant165) = 0;
        der(elmt_reactant164) = 0;
        der(elmt_product148) = 0;
        der(elmt_product147) = 0;
        der(elmt_product142) = 0;
        der(elmt_product141) = 0;
        der(elmt_reactant160) = 0;
        der(elmt_product143) = 0;
        der(elmt_product37) = 0;
        der(elmt_product36) = 0;
        der(elmt_product35) = 0;
        der(elmt_product149) = 0;
        der(elmt_reactant166) = 0;
        der(elmt_product52) = 0;
        der(elmt_reactant62) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_product56) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_reactant67) = 0;
        der(elmt_reactant132) = 0;
        der(elmt_product113) = 0;
        der(elmt_product112) = 0;
        der(elmt_product115) = 0;
        der(elmt_product111) = 0;
        der(elmt_product49) = 0;
        der(elmt_reactant139) = 0;
        der(elmt_reactant138) = 0;
        der(elmt_product46) = 0;
        der(elmt_product116) = 0;
        der(elmt_product119) = 0;
        der(elmt_reactant134) = 0;
        der(elmt_product118) = 0;
        der(elmt_reactant133) = 0;
        der(elmt_reactant1) = 0;
        der(elmt_product61) = 0;
        der(elmt_reactant74) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product60) = 0;
        der(elmt_reactant75) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant70) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_product65) = 0;
        der(elmt_reactant71) = 0;
        der(elmt_reactant7) = 0;
        der(elmt_product64) = 0;
        der(elmt_reactant78) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant79) = 0;
        der(elmt_product124) = 0;
        der(elmt_product125) = 0;
        der(elmt_reactant140) = 0;
        der(elmt_product122) = 0;
        der(elmt_product121) = 0;
        der(elmt_product57) = 0;
        der(elmt_reactant146) = 0;
        der(elmt_reactant145) = 0;
        der(elmt_product129) = 0;
        der(elmt_reactant144) = 0;

end Reactions;
