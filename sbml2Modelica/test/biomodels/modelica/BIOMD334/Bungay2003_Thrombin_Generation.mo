within BIOMD334;
model Bungay2003_Thrombin_Generation "Bungay2003_Thrombin_Generation" annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_VII_Xa_l = elmt_compartment.elmt_VII_Xa_l;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_IXa_VIIIa_X_l = elmt_compartment.elmt_IXa_VIIIa_X_l;
        Reacs.elmt_konII = Params.elmt_konII;
        Reacs.elmt_Xa_Va_mIIa_l = elmt_compartment.elmt_Xa_Va_mIIa_l;
        Reacs.elmt_V_f = elmt_compartment.elmt_V_f;
        Reacs.elmt_APC_f = elmt_compartment.elmt_APC_f;
        Reacs.elmt_V_IIa_l = elmt_compartment.elmt_V_IIa_l;
        Reacs.elmt_APC_l = elmt_compartment.elmt_APC_l;
        Reacs.elmt_VIIIa_l = elmt_compartment.elmt_VIIIa_l;
        Reacs.elmt_V_l = elmt_compartment.elmt_V_l;
        Reacs.elmt_koffmIIa = Params.elmt_koffmIIa;
        Reacs.elmt_k16 = Params.elmt_k16;
        Reacs.elmt_k15 = Params.elmt_k15;
        Reacs.elmt_PS_l = elmt_compartment.elmt_PS_l;
        Reacs.elmt_k14 = Params.elmt_k14;
        Reacs.elmt_k13 = Params.elmt_k13;
        Reacs.elmt_k12 = Params.elmt_k12;
        Reacs.elmt_k11 = Params.elmt_k11;
        Reacs.elmt_VIIIa_f = elmt_compartment.elmt_VIIIa_f;
        Reacs.elmt_konXa = Params.elmt_konXa;
        Reacs.elmt_k10 = Params.elmt_k10;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_TFPI_Xa_l = elmt_compartment.elmt_TFPI_Xa_l;
        Reacs.elmt_konPS = Params.elmt_konPS;
        Reacs.elmt_APC_PS_VIIIa_l = elmt_compartment.elmt_APC_PS_VIIIa_l;
        Reacs.elmt_k19 = Params.elmt_k19;
        Reacs.elmt_k18 = Params.elmt_k18;
        Reacs.elmt_V_Xa_l = elmt_compartment.elmt_V_Xa_l;
        Reacs.elmt_k17 = Params.elmt_k17;
        Reacs.elmt_k8 = Params.elmt_k8;
        Reacs.elmt_k9 = Params.elmt_k9;
        Reacs.elmt_k6 = Params.elmt_k6;
        Reacs.elmt_k7 = Params.elmt_k7;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_k5 = Params.elmt_k5;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_IX_f = elmt_compartment.elmt_IX_f;
        Reacs.elmt_konPC = Params.elmt_konPC;
        Reacs.elmt_IX_l = elmt_compartment.elmt_IX_l;
        Reacs.elmt_k27 = Params.elmt_k27;
        Reacs.elmt_IIa_TM_PC_l = elmt_compartment.elmt_IIa_TM_PC_l;
        Reacs.elmt_k26 = Params.elmt_k26;
        Reacs.elmt_k25 = Params.elmt_k25;
        Reacs.elmt_AT_f = elmt_compartment.elmt_AT_f;
        Reacs.elmt_k24 = Params.elmt_k24;
        Reacs.elmt_k23 = Params.elmt_k23;
        Reacs.elmt_k22 = Params.elmt_k22;
        Reacs.elmt_k21 = Params.elmt_k21;
        Reacs.elmt_k20 = Params.elmt_k20;
        Reacs.elmt_TF_VIIa_Xa_l = elmt_compartment.elmt_TF_VIIa_Xa_l;
        Reacs.elmt_koffAPC = Params.elmt_koffAPC;
        Reacs.elmt_k29 = Params.elmt_k29;
        Reacs.elmt_k28 = Params.elmt_k28;
        Reacs.elmt_konVIIa = Params.elmt_konVIIa;
        Reacs.elmt_konVII = Params.elmt_konVII;
        Reacs.elmt_konVIIIai = Params.elmt_konVIIIai;
        Reacs.elmt_koffXa = Params.elmt_koffXa;
        Reacs.elmt_II_l = elmt_compartment.elmt_II_l;
        Reacs.elmt_koffPS = Params.elmt_koffPS;
        Reacs.elmt_konAPC = Params.elmt_konAPC;
        Reacs.elmt_II_f = elmt_compartment.elmt_II_f;
        Reacs.elmt_k30 = Params.elmt_k30;
        Reacs.elmt_Va_l = elmt_compartment.elmt_Va_l;
        Reacs.elmt_Va_f = elmt_compartment.elmt_Va_f;
        Reacs.elmt_k38 = Params.elmt_k38;
        Reacs.elmt_k37 = Params.elmt_k37;
        Reacs.elmt_k36 = Params.elmt_k36;
        Reacs.elmt_k35 = Params.elmt_k35;
        Reacs.elmt_Xa_Va_II_l = elmt_compartment.elmt_Xa_Va_II_l;
        Reacs.elmt_k34 = Params.elmt_k34;
        Reacs.elmt_koffPC = Params.elmt_koffPC;
        Reacs.elmt_k33 = Params.elmt_k33;
        Reacs.elmt_k32 = Params.elmt_k32;
        Reacs.elmt_k31 = Params.elmt_k31;
        Reacs.elmt_IXa_VIIIa_l = elmt_compartment.elmt_IXa_VIIIa_l;
        Reacs.elmt_PS_f = elmt_compartment.elmt_PS_f;
        Reacs.elmt_Vai_f = elmt_compartment.elmt_Vai_f;
        Reacs.elmt_TF_VII_l = elmt_compartment.elmt_TF_VII_l;
        Reacs.elmt_k39 = Params.elmt_k39;
        Reacs.elmt_koffIXa = Params.elmt_koffIXa;
        Reacs.elmt_VII_f = elmt_compartment.elmt_VII_f;
        Reacs.elmt_PC_l = elmt_compartment.elmt_PC_l;
        Reacs.elmt_Vai_l = elmt_compartment.elmt_Vai_l;
        Reacs.elmt_TM_l = elmt_compartment.elmt_TM_l;
        Reacs.elmt_k41 = Params.elmt_k41;
        Reacs.elmt_k40 = Params.elmt_k40;
        Reacs.elmt_koffVai = Params.elmt_koffVai;
        Reacs.elmt_PC_f = elmt_compartment.elmt_PC_f;
        Reacs.elmt_koffVa = Params.elmt_koffVa;
        Reacs.elmt_APC_PS_Va_l = elmt_compartment.elmt_APC_PS_Va_l;
        Reacs.elmt_VII_l = elmt_compartment.elmt_VII_l;
        Reacs.elmt_konIX = Params.elmt_konIX;
        Reacs.elmt_konV = Params.elmt_konV;
        Reacs.elmt_k49 = Params.elmt_k49;
        Reacs.elmt_k48 = Params.elmt_k48;
        Reacs.elmt_k47 = Params.elmt_k47;
        Reacs.elmt_konX = Params.elmt_konX;
        Reacs.elmt_koffVII = Params.elmt_koffVII;
        Reacs.elmt_k46 = Params.elmt_k46;
        Reacs.elmt_k45 = Params.elmt_k45;
        Reacs.elmt_k44 = Params.elmt_k44;
        Reacs.elmt_k43 = Params.elmt_k43;
        Reacs.elmt_k42 = Params.elmt_k42;
        Reacs.elmt_IIa_TM_l = elmt_compartment.elmt_IIa_TM_l;
        Reacs.elmt_TFPI_Xa_TF_VIIa_l = elmt_compartment.elmt_TFPI_Xa_TF_VIIa_l;
        Reacs.elmt_X_f = elmt_compartment.elmt_X_f;
        Reacs.elmt_VIII_IIa_l = elmt_compartment.elmt_VIII_IIa_l;
        Reacs.elmt_mIIa_l = elmt_compartment.elmt_mIIa_l;
        Reacs.elmt_TF_VIIa_X_l = elmt_compartment.elmt_TF_VIIa_X_l;
        Reacs.elmt_VIIa_l = elmt_compartment.elmt_VIIa_l;
        Reacs.elmt_koffIX = Params.elmt_koffIX;
        Reacs.elmt_k52 = Params.elmt_k52;
        Reacs.elmt_k51 = Params.elmt_k51;
        Reacs.elmt_k50 = Params.elmt_k50;
        Reacs.elmt_X_l = elmt_compartment.elmt_X_l;
        Reacs.elmt_koffVIIa = Params.elmt_koffVIIa;
        Reacs.elmt_mIIa_f = elmt_compartment.elmt_mIIa_f;
        Reacs.elmt_k59 = Params.elmt_k59;
        Reacs.elmt_VIIa_f = elmt_compartment.elmt_VIIa_f;
        Reacs.elmt_k58 = Params.elmt_k58;
        Reacs.elmt_Xa_l = elmt_compartment.elmt_Xa_l;
        Reacs.elmt_k57 = Params.elmt_k57;
        Reacs.elmt_k56 = Params.elmt_k56;
        Reacs.elmt_XIa_IX_l = elmt_compartment.elmt_XIa_IX_l;
        Reacs.elmt_Xa_f = elmt_compartment.elmt_Xa_f;
        Reacs.elmt_k55 = Params.elmt_k55;
        Reacs.elmt_TF_VIIa_IX_l = elmt_compartment.elmt_TF_VIIa_IX_l;
        Reacs.elmt_k54 = Params.elmt_k54;
        Reacs.elmt_k53 = Params.elmt_k53;
        Reacs.elmt_koffII = Params.elmt_koffII;
        Reacs.elmt_LIPID = elmt_compartment.elmt_LIPID;
        Reacs.elmt_VIII_l = elmt_compartment.elmt_VIII_l;
        Reacs.elmt_koffVIIIa = Params.elmt_koffVIIIa;
        Reacs.elmt_TF_l = elmt_compartment.elmt_TF_l;
        Reacs.elmt_konIXa = Params.elmt_konIXa;
        Reacs.elmt_XIa_l = elmt_compartment.elmt_XIa_l;
        Reacs.elmt_APC_PS_l = elmt_compartment.elmt_APC_PS_l;
        Reacs.elmt_konVIII = Params.elmt_konVIII;
        Reacs.elmt_XI_IIa_l = elmt_compartment.elmt_XI_IIa_l;
        Reacs.elmt_k63 = Params.elmt_k63;
        Reacs.elmt_k62 = Params.elmt_k62;
        Reacs.elmt_VIII_f = elmt_compartment.elmt_VIII_f;
        Reacs.elmt_k61 = Params.elmt_k61;
        Reacs.elmt_konVai = Params.elmt_konVai;
        Reacs.elmt_k60 = Params.elmt_k60;
        Reacs.elmt_IIa_f = elmt_compartment.elmt_IIa_f;
        Reacs.elmt_k69 = Params.elmt_k69;
        Reacs.elmt_k68 = Params.elmt_k68;
        Reacs.elmt_k67 = Params.elmt_k67;
        Reacs.elmt_koffVIII = Params.elmt_koffVIII;
        Reacs.elmt_k66 = Params.elmt_k66;
        Reacs.elmt_k65 = Params.elmt_k65;
        Reacs.elmt_k64 = Params.elmt_k64;
        Reacs.elmt_konVIIIa = Params.elmt_konVIIIa;
        Reacs.elmt_konmIIa = Params.elmt_konmIIa;
        Reacs.elmt_TF_VII_Xa_l = elmt_compartment.elmt_TF_VII_Xa_l;
        Reacs.elmt_Xa_Va_l = elmt_compartment.elmt_Xa_Va_l;
        Reacs.elmt_TFPI_f = elmt_compartment.elmt_TFPI_f;
        Reacs.elmt_k74 = Params.elmt_k74;
        Reacs.elmt_k73 = Params.elmt_k73;
        Reacs.elmt_k72 = Params.elmt_k72;
        Reacs.elmt_k71 = Params.elmt_k71;
        Reacs.elmt_k70 = Params.elmt_k70;
        Reacs.elmt_V_mIIa_l = elmt_compartment.elmt_V_mIIa_l;
        Reacs.elmt_IXa_l = elmt_compartment.elmt_IXa_l;
        Reacs.elmt_konVa = Params.elmt_konVa;
        Reacs.elmt_IXa_f = elmt_compartment.elmt_IXa_f;
        Reacs.elmt_k75 = Params.elmt_k75;
        Reacs.elmt_VIII_Xa_l = elmt_compartment.elmt_VIII_Xa_l;
        Reacs.elmt_nva = Params.elmt_nva;
        Reacs.elmt_VIII_mIIa_l = elmt_compartment.elmt_VIII_mIIa_l;
        Reacs.elmt_XI_f = elmt_compartment.elmt_XI_f;
        Reacs.elmt_koffVIIIai = Params.elmt_koffVIIIai;
        Reacs.elmt_VIIIai_f = elmt_compartment.elmt_VIIIai_f;
        Reacs.elmt_VIIIai_l = elmt_compartment.elmt_VIIIai_l;
        Reacs.elmt_koffX = Params.elmt_koffX;
        Reacs.elmt_koffV = Params.elmt_koffV;
        Reacs.elmt_TF_VIIa_l = elmt_compartment.elmt_TF_VIIa_l;
        elmt_compartment.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_compartment.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_compartment.elmt_reactant190 = Reacs.elmt_reactant190;
        elmt_compartment.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_compartment.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt_compartment.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt_compartment.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_compartment.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_compartment.elmt_reactant193 = Reacs.elmt_reactant193;
        elmt_compartment.elmt_reactant191 = Reacs.elmt_reactant191;
        elmt_compartment.elmt_R31b = Reacs.elmt_R31b;
        elmt_compartment.elmt_R7 = Reacs.elmt_R7;
        elmt_compartment.elmt_R8 = Reacs.elmt_R8;
        elmt_compartment.elmt_reactant51 = Reacs.elmt_reactant51;
        elmt_compartment.elmt_R5 = Reacs.elmt_R5;
        elmt_compartment.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_compartment.elmt_R6 = Reacs.elmt_R6;
        elmt_compartment.elmt_R3 = Reacs.elmt_R3;
        elmt_compartment.elmt_R4 = Reacs.elmt_R4;
        elmt_compartment.elmt_R1 = Reacs.elmt_R1;
        elmt_compartment.elmt_R2 = Reacs.elmt_R2;
        elmt_compartment.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_compartment.elmt_reactant54 = Reacs.elmt_reactant54;
        elmt_compartment.elmt_reactant55 = Reacs.elmt_reactant55;
        elmt_compartment.elmt_R9 = Reacs.elmt_R9;
        elmt_compartment.elmt_reactant57 = Reacs.elmt_reactant57;
        elmt_compartment.elmt_product103 = Reacs.elmt_product103;
        elmt_compartment.elmt_product100 = Reacs.elmt_product100;
        elmt_compartment.elmt_product109 = Reacs.elmt_product109;
        elmt_compartment.elmt_product106 = Reacs.elmt_product106;
        elmt_compartment.elmt_product105 = Reacs.elmt_product105;
        elmt_compartment.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_compartment.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_compartment.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_compartment.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_compartment.elmt_R8b = Reacs.elmt_R8b;
        elmt_compartment.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_compartment.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_compartment.elmt_reactant176 = Reacs.elmt_reactant176;
        elmt_compartment.elmt_reactant175 = Reacs.elmt_reactant175;
        elmt_compartment.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_compartment.elmt_reactant172 = Reacs.elmt_reactant172;
        elmt_compartment.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_compartment.elmt_reactant170 = Reacs.elmt_reactant170;
        elmt_compartment.elmt_reactant179 = Reacs.elmt_reactant179;
        elmt_compartment.elmt_reactant178 = Reacs.elmt_reactant178;
        elmt_compartment.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_compartment.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_compartment.elmt_product23 = Reacs.elmt_product23;
        elmt_compartment.elmt_product20 = Reacs.elmt_product20;
        elmt_compartment.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_compartment.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt_compartment.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_compartment.elmt_R9b = Reacs.elmt_R9b;
        elmt_compartment.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_compartment.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_compartment.elmt_reactant187 = Reacs.elmt_reactant187;
        elmt_compartment.elmt_LB10 = Reacs.elmt_LB10;
        elmt_compartment.elmt_LB11 = Reacs.elmt_LB11;
        elmt_compartment.elmt_reactant185 = Reacs.elmt_reactant185;
        elmt_compartment.elmt_reactant184 = Reacs.elmt_reactant184;
        elmt_compartment.elmt_reactant181 = Reacs.elmt_reactant181;
        elmt_compartment.elmt_LB16 = Reacs.elmt_LB16;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment.elmt_LB17 = Reacs.elmt_LB17;
        elmt_compartment.elmt_LB14 = Reacs.elmt_LB14;
        elmt_compartment.elmt_LB15 = Reacs.elmt_LB15;
        elmt_compartment.elmt_LB12 = Reacs.elmt_LB12;
        elmt_compartment.elmt_LB13 = Reacs.elmt_LB13;
        elmt_compartment.elmt_product17 = Reacs.elmt_product17;
        elmt_compartment.elmt_reactant188 = Reacs.elmt_reactant188;
        elmt_compartment.elmt_reactant154 = Reacs.elmt_reactant154;
        elmt_compartment.elmt_reactant152 = Reacs.elmt_reactant152;
        elmt_compartment.elmt_reactant151 = Reacs.elmt_reactant151;
        elmt_compartment.elmt_R11b = Reacs.elmt_R11b;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment.elmt_reactant158 = Reacs.elmt_reactant158;
        elmt_compartment.elmt_reactant157 = Reacs.elmt_reactant157;
        elmt_compartment.elmt_reactant155 = Reacs.elmt_reactant155;
        elmt_compartment.elmt_R25b = Reacs.elmt_R25b;
        elmt_compartment.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_compartment.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_compartment.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment.elmt_reactant164 = Reacs.elmt_reactant164;
        elmt_compartment.elmt_reactant163 = Reacs.elmt_reactant163;
        elmt_compartment.elmt_reactant161 = Reacs.elmt_reactant161;
        elmt_compartment.elmt_reactant160 = Reacs.elmt_reactant160;
        elmt_compartment.elmt_R3b = Reacs.elmt_R3b;
        elmt_compartment.elmt_R12b = Reacs.elmt_R12b;
        elmt_compartment.elmt_reactant169 = Reacs.elmt_reactant169;
        elmt_compartment.elmt_reactant166 = Reacs.elmt_reactant166;
        elmt_compartment.elmt_R4b = Reacs.elmt_R4b;
        elmt_compartment.elmt_product192 = Reacs.elmt_product192;
        elmt_compartment.elmt_product195 = Reacs.elmt_product195;
        elmt_compartment.elmt_product194 = Reacs.elmt_product194;
        elmt_compartment.elmt_reactant131 = Reacs.elmt_reactant131;
        elmt_compartment.elmt_reactant130 = Reacs.elmt_reactant130;
        elmt_compartment.elmt_R4c = Reacs.elmt_R4c;
        elmt_compartment.elmt_reactant139 = Reacs.elmt_reactant139;
        elmt_compartment.elmt_reactant137 = Reacs.elmt_reactant137;
        elmt_compartment.elmt_reactant136 = Reacs.elmt_reactant136;
        elmt_compartment.elmt_reactant133 = Reacs.elmt_reactant133;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_compartment.elmt_R5b = Reacs.elmt_R5b;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment.elmt_reactant143 = Reacs.elmt_reactant143;
        elmt_compartment.elmt_reactant142 = Reacs.elmt_reactant142;
        elmt_compartment.elmt_R10b = Reacs.elmt_R10b;
        elmt_compartment.elmt_reactant149 = Reacs.elmt_reactant149;
        elmt_compartment.elmt_reactant148 = Reacs.elmt_reactant148;
        elmt_compartment.elmt_reactant145 = Reacs.elmt_reactant145;
        elmt_compartment.elmt_product73 = Reacs.elmt_product73;
        elmt_compartment.elmt_R28b = Reacs.elmt_R28b;
        elmt_compartment.elmt_R16b = Reacs.elmt_R16b;
        elmt_compartment.elmt_product76 = Reacs.elmt_product76;
        elmt_compartment.elmt_product75 = Reacs.elmt_product75;
        elmt_compartment.elmt_reactant108 = Reacs.elmt_reactant108;
        elmt_compartment.elmt_product171 = Reacs.elmt_product171;
        elmt_compartment.elmt_product173 = Reacs.elmt_product173;
        elmt_compartment.elmt_product70 = Reacs.elmt_product70;
        elmt_compartment.elmt_reactant110 = Reacs.elmt_reactant110;
        elmt_compartment.elmt_product174 = Reacs.elmt_product174;
        elmt_compartment.elmt_product177 = Reacs.elmt_product177;
        elmt_compartment.elmt_reactant117 = Reacs.elmt_reactant117;
        elmt_compartment.elmt_reactant116 = Reacs.elmt_reactant116;
        elmt_compartment.elmt_product69 = Reacs.elmt_product69;
        elmt_compartment.elmt_reactant114 = Reacs.elmt_reactant114;
        elmt_compartment.elmt_reactant113 = Reacs.elmt_reactant113;
        elmt_compartment.elmt_product85 = Reacs.elmt_product85;
        elmt_compartment.elmt_R17b = Reacs.elmt_R17b;
        elmt_compartment.elmt_product82 = Reacs.elmt_product82;
        elmt_compartment.elmt_product88 = Reacs.elmt_product88;
        elmt_compartment.elmt_product87 = Reacs.elmt_product87;
        elmt_compartment.elmt_reactant119 = Reacs.elmt_reactant119;
        elmt_compartment.elmt_product182 = Reacs.elmt_product182;
        elmt_compartment.elmt_product183 = Reacs.elmt_product183;
        elmt_compartment.elmt_product180 = Reacs.elmt_product180;
        elmt_compartment.elmt_reactant121 = Reacs.elmt_reactant121;
        elmt_compartment.elmt_product189 = Reacs.elmt_product189;
        elmt_compartment.elmt_product186 = Reacs.elmt_product186;
        elmt_compartment.elmt_reactant127 = Reacs.elmt_reactant127;
        elmt_compartment.elmt_product79 = Reacs.elmt_product79;
        elmt_compartment.elmt_reactant125 = Reacs.elmt_reactant125;
        elmt_compartment.elmt_reactant124 = Reacs.elmt_reactant124;
        elmt_compartment.elmt_R16 = Reacs.elmt_R16;
        elmt_compartment.elmt_R17 = Reacs.elmt_R17;
        elmt_compartment.elmt_R14 = Reacs.elmt_R14;
        elmt_compartment.elmt_product94 = Reacs.elmt_product94;
        elmt_compartment.elmt_R15 = Reacs.elmt_R15;
        elmt_compartment.elmt_product93 = Reacs.elmt_product93;
        elmt_compartment.elmt_R12 = Reacs.elmt_R12;
        elmt_compartment.elmt_R26b = Reacs.elmt_R26b;
        elmt_compartment.elmt_product99 = Reacs.elmt_product99;
        elmt_compartment.elmt_R13 = Reacs.elmt_R13;
        elmt_compartment.elmt_R10 = Reacs.elmt_R10;
        elmt_compartment.elmt_R11 = Reacs.elmt_R11;
        elmt_compartment.elmt_product97 = Reacs.elmt_product97;
        elmt_compartment.elmt_product150 = Reacs.elmt_product150;
        elmt_compartment.elmt_product91 = Reacs.elmt_product91;
        elmt_compartment.elmt_R18 = Reacs.elmt_R18;
        elmt_compartment.elmt_R19 = Reacs.elmt_R19;
        elmt_compartment.elmt_product156 = Reacs.elmt_product156;
        elmt_compartment.elmt_product159 = Reacs.elmt_product159;
        elmt_compartment.elmt_product153 = Reacs.elmt_product153;
        elmt_compartment.elmt_R20 = Reacs.elmt_R20;
        elmt_compartment.elmt_R27 = Reacs.elmt_R27;
        elmt_compartment.elmt_R28 = Reacs.elmt_R28;
        elmt_compartment.elmt_product8 = Reacs.elmt_product8;
        elmt_compartment.elmt_R25 = Reacs.elmt_R25;
        elmt_compartment.elmt_R26 = Reacs.elmt_R26;
        elmt_compartment.elmt_R23 = Reacs.elmt_R23;
        elmt_compartment.elmt_R15b = Reacs.elmt_R15b;
        elmt_compartment.elmt_R24 = Reacs.elmt_R24;
        elmt_compartment.elmt_R21 = Reacs.elmt_R21;
        elmt_compartment.elmt_R22 = Reacs.elmt_R22;
        elmt_compartment.elmt_product162 = Reacs.elmt_product162;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_R29 = Reacs.elmt_R29;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_product168 = Reacs.elmt_product168;
        elmt_compartment.elmt_product167 = Reacs.elmt_product167;
        elmt_compartment.elmt_product165 = Reacs.elmt_product165;
        elmt_compartment.elmt_R30 = Reacs.elmt_R30;
        elmt_compartment.elmt_reactant107 = Reacs.elmt_reactant107;
        elmt_compartment.elmt_R31 = Reacs.elmt_R31;
        elmt_compartment.elmt_reactant104 = Reacs.elmt_reactant104;
        elmt_compartment.elmt_reactant102 = Reacs.elmt_reactant102;
        elmt_compartment.elmt_reactant101 = Reacs.elmt_reactant101;
        elmt_compartment.elmt_reactant83 = Reacs.elmt_reactant83;
        elmt_compartment.elmt_reactant84 = Reacs.elmt_reactant84;
        elmt_compartment.elmt_reactant86 = Reacs.elmt_reactant86;
        elmt_compartment.elmt_reactant80 = Reacs.elmt_reactant80;
        elmt_compartment.elmt_product32 = Reacs.elmt_product32;
        elmt_compartment.elmt_reactant81 = Reacs.elmt_reactant81;
        elmt_compartment.elmt_reactant89 = Reacs.elmt_reactant89;
        elmt_compartment.elmt_product135 = Reacs.elmt_product135;
        elmt_compartment.elmt_product134 = Reacs.elmt_product134;
        elmt_compartment.elmt_product132 = Reacs.elmt_product132;
        elmt_compartment.elmt_product26 = Reacs.elmt_product26;
        elmt_compartment.elmt_product138 = Reacs.elmt_product138;
        elmt_compartment.elmt_product29 = Reacs.elmt_product29;
        elmt_compartment.elmt_product41 = Reacs.elmt_product41;
        elmt_compartment.elmt_reactant95 = Reacs.elmt_reactant95;
        elmt_compartment.elmt_reactant96 = Reacs.elmt_reactant96;
        elmt_compartment.elmt_reactant90 = Reacs.elmt_reactant90;
        elmt_compartment.elmt_product44 = Reacs.elmt_product44;
        elmt_compartment.elmt_reactant92 = Reacs.elmt_reactant92;
        elmt_compartment.elmt_product140 = Reacs.elmt_product140;
        elmt_compartment.elmt_reactant98 = Reacs.elmt_reactant98;
        elmt_compartment.elmt_product146 = Reacs.elmt_product146;
        elmt_compartment.elmt_product147 = Reacs.elmt_product147;
        elmt_compartment.elmt_product141 = Reacs.elmt_product141;
        elmt_compartment.elmt_product144 = Reacs.elmt_product144;
        elmt_compartment.elmt_product38 = Reacs.elmt_product38;
        elmt_compartment.elmt_product35 = Reacs.elmt_product35;
        elmt_compartment.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt_compartment.elmt_R18b = Reacs.elmt_R18b;
        elmt_compartment.elmt_product50 = Reacs.elmt_product50;
        elmt_compartment.elmt_reactant64 = Reacs.elmt_reactant64;
        elmt_compartment.elmt_product56 = Reacs.elmt_product56;
        elmt_compartment.elmt_reactant60 = Reacs.elmt_reactant60;
        elmt_compartment.elmt_product53 = Reacs.elmt_product53;
        elmt_compartment.elmt_LB5 = Reacs.elmt_LB5;
        elmt_compartment.elmt_LB6 = Reacs.elmt_LB6;
        elmt_compartment.elmt_LB3 = Reacs.elmt_LB3;
        elmt_compartment.elmt_LB4 = Reacs.elmt_LB4;
        elmt_compartment.elmt_LB1 = Reacs.elmt_LB1;
        elmt_compartment.elmt_LB2 = Reacs.elmt_LB2;
        elmt_compartment.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_compartment.elmt_reactant68 = Reacs.elmt_reactant68;
        elmt_compartment.elmt_product112 = Reacs.elmt_product112;
        elmt_compartment.elmt_product115 = Reacs.elmt_product115;
        elmt_compartment.elmt_LB9 = Reacs.elmt_LB9;
        elmt_compartment.elmt_LB7 = Reacs.elmt_LB7;
        elmt_compartment.elmt_product111 = Reacs.elmt_product111;
        elmt_compartment.elmt_LB8 = Reacs.elmt_LB8;
        elmt_compartment.elmt_product47 = Reacs.elmt_product47;
        elmt_compartment.elmt_product118 = Reacs.elmt_product118;
        elmt_compartment.elmt_reactant72 = Reacs.elmt_reactant72;
        elmt_compartment.elmt_R19b = Reacs.elmt_R19b;
        elmt_compartment.elmt_product62 = Reacs.elmt_product62;
        elmt_compartment.elmt_reactant74 = Reacs.elmt_reactant74;
        elmt_compartment.elmt_product61 = Reacs.elmt_product61;
        elmt_compartment.elmt_product67 = Reacs.elmt_product67;
        elmt_compartment.elmt_product65 = Reacs.elmt_product65;
        elmt_compartment.elmt_reactant71 = Reacs.elmt_reactant71;
        elmt_compartment.elmt_reactant77 = Reacs.elmt_reactant77;
        elmt_compartment.elmt_reactant78 = Reacs.elmt_reactant78;
        elmt_compartment.elmt_product123 = Reacs.elmt_product123;
        elmt_compartment.elmt_product126 = Reacs.elmt_product126;
        elmt_compartment.elmt_product120 = Reacs.elmt_product120;
        elmt_compartment.elmt_product122 = Reacs.elmt_product122;
        elmt_compartment.elmt_product59 = Reacs.elmt_product59;
        elmt_compartment.elmt_product128 = Reacs.elmt_product128;
        elmt_compartment.elmt_product129 = Reacs.elmt_product129;

end Bungay2003_Thrombin_Generation;
