within BIOMD265;
class Class_elmt_cell

    input Real elmt_product74;
    input Real elmt_reactant41;
    input Real elmt_product72;
    input Real elmt_reactant42;
    input Real elmt_product77;
    input Real elmt_reactant49;
    input Real elmt_product70;
    input Real elmt_reactant44;
    input Real elmt_reactant45;
    input Real elmt_reactant46;
    input Real elmt_product69;
    input Real elmt_product85;
    input Real elmt_product83;
    input Real elmt_reactant53;
    input Real elmt_product87;
    input Real elmt_product80;
    input Real elmt_product79;
    input Real elmt_reactant20;
    input Real elmt_product10;
    input Real elmt_reactant26;
    input Real elmt_reactant28;
    input Real elmt_reactant23;
    input Real elmt_reactant18;
    input Real elmt_v13;
    input Real elmt_v12;
    input Real elmt_v11;
    input Real elmt_product7;
    input Real elmt_reactant30;
    input Real elmt_v10;
    input Real elmt_product22;
    input Real elmt_product21;
    input Real elmt_reactant36;
    input Real elmt_reactant38;
    input Real elmt_v19;
    input Real elmt_reactant39;
    input Real elmt_v18;
    input Real elmt_v17;
    input Real elmt_reactant32;
    input Real elmt_v16;
    input Real elmt_product3;
    input Real elmt_v15;
    input Real elmt_reactant34;
    input Real elmt_v14;
    input Real elmt_reactant29;
    input Real elmt_product16;
    input Real elmt_product15;
    input Real elmt_product13;
    input Real elmt_product19;
    input Real elmt_v24;
    input Real elmt_v23;
    input Real elmt_reactant84;
    input Real elmt_v22;
    input Real elmt_v9;
    input Real elmt_v21;
    input Real elmt_reactant86;
    input Real elmt_v7;
    input Real elmt_v20;
    input Real elmt_v8;
    input Real elmt_product33;
    input Real elmt_v5;
    input Real elmt_reactant81;
    input Real elmt_v6;
    input Real elmt_reactant82;
    input Real elmt_product31;
    input Real elmt_v29;
    input Real elmt_v28;
    input Real elmt_v27;
    input Real elmt_v26;
    input Real elmt_v25;
    input Real elmt_v3;
    input Real elmt_product27;
    input Real elmt_reactant9;
    input Real elmt_v4;
    input Real elmt_product25;
    input Real elmt_v1;
    input Real elmt_v2;
    input Real elmt_product24;
    input Real elmt_v35;
    input Real elmt_product40;
    input Real elmt_v34;
    input Real elmt_v33;
    input Real elmt_v32;
    input Real elmt_v31;
    input Real elmt_v30;
    input Real elmt_product43;
    input Real elmt_reactant14;
    input Real elmt_reactant17;
    input Real elmt_v39;
    input Real elmt_reactant11;
    input Real elmt_v38;
    input Real elmt_v37;
    input Real elmt_reactant12;
    input Real elmt_v36;
    input Real elmt_product37;
    input Real elmt_product35;
    input Real elmt_product52;
    input Real elmt_v46;
    input Real elmt_product51;
    input Real elmt_v45;
    input Real elmt_product50;
    input Real elmt_v44;
    input Real elmt_v43;
    input Real elmt_reactant64;
    input Real elmt_v42;
    input Real elmt_product56;
    input Real elmt_v41;
    input Real elmt_product55;
    input Real elmt_v40;
    input Real elmt_product54;
    input Real elmt_v49;
    input Real elmt_reactant66;
    input Real elmt_v48;
    input Real elmt_v47;
    input Real elmt_reactant68;
    input Real elmt_product48;
    input Real elmt_product47;
    input Real elmt_reactant2;
    input Real elmt_product63;
    input Real elmt_reactant1;
    input Real elmt_product62;
    input Real elmt_reactant73;
    input Real elmt_product61;
    input Real elmt_reactant4;
    input Real elmt_reactant75;
    input Real elmt_product60;
    input Real elmt_reactant6;
    input Real elmt_product67;
    input Real elmt_v52;
    input Real elmt_reactant5;
    input Real elmt_v51;
    input Real elmt_product65;
    input Real elmt_reactant8;
    input Real elmt_v50;
    input Real elmt_reactant71;
    input Real elmt_reactant76;
    input Real elmt_reactant78;
    input Real elmt_reactant0;
    input Real elmt_product59;
    input Real elmt_product58;
    input Real elmt_product57;

    input Boolean elmt_divisionEvent;

    input Real assign_elmt_GM;
    input Real assign_elmt_MASS;

    Real elmt_cell(unit = "") "cell";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_GM_conc(unit = "");
    Real elmt_GM_amount(unit = "");
    Real elmt_GM(unit = "") "general machinery for protein synthesis";
    Real elmt_PPX_conc(unit = "");
    Real elmt_PPX_amount(unit = "");
    Real elmt_PPX(unit = "") "PPX";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_P27_conc(unit = "");
    Real elmt_P27_amount(unit = "");
    Real elmt_P27(unit = "") "P27";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CD_conc(unit = "");
    Real elmt_CD_amount(unit = "");
    Real elmt_CD(unit = "") "P27:cyclin D:Cdk2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CE_conc(unit = "");
    Real elmt_CE_amount(unit = "");
    Real elmt_CE(unit = "") "P27:cyclin E:Cdk2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_IEP_conc(unit = "");
    Real elmt_IEP_amount(unit = "");
    Real elmt_IEP(unit = "") "phosphorylated intermediary enzyme";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CDh1_conc(unit = "");
    Real elmt_CDh1_amount(unit = "");
    Real elmt_CDh1(unit = "") "Cdh1";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_var6_conc(unit = "");
    Real elmt_var6_amount(unit = "");
    Real elmt_var6(unit = "") "phosphorylated E2F:Rb";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_DRG_conc(unit = "");
    Real elmt_DRG_amount(unit = "");
    Real elmt_DRG(unit = "") "delayed-response genes";
    Real elmt_ERG_conc(unit = "");
    Real elmt_ERG_amount(unit = "");
    Real elmt_ERG(unit = "") "early-response genes";
    Real elmt_var1_conc(unit = "");
    Real elmt_var1_amount(unit = "");
    Real elmt_var1(unit = "") "hypophosphorylated Rb";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_MASS_conc(unit = "");
    Real elmt_MASS_amount(unit = "");
    Real elmt_MASS(unit = "") "mass";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CYCB_conc(unit = "");
    Real elmt_CYCB_amount(unit = "");
    Real elmt_CYCB(unit = "") "cyclin B:Cdk2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_var3_conc(unit = "");
    Real elmt_var3_amount(unit = "");
    Real elmt_var3(unit = "") "phosphorylated E2F";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_var2_conc(unit = "");
    Real elmt_var2_amount(unit = "");
    Real elmt_var2(unit = "") "E2F";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_var5_conc(unit = "");
    Real elmt_var5_amount(unit = "");
    Real elmt_var5(unit = "") "E2F:Rb";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CDc20_conc(unit = "");
    Real elmt_CDc20_amount(unit = "");
    Real elmt_CDc20(unit = "") "Cdc20";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CYCA_conc(unit = "");
    Real elmt_CYCA_amount(unit = "");
    Real elmt_CYCA(unit = "") "cyclin A:Cdk2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CDc20T_conc(unit = "");
    Real elmt_CDc20T_amount(unit = "");
    Real elmt_CDc20T(unit = "") "inactive Cdc20";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_var4_conc(unit = "");
    Real elmt_var4_amount(unit = "");
    Real elmt_var4(unit = "") "retinoblastoma protein (Rb)";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CA_conc(unit = "");
    Real elmt_CA_amount(unit = "");
    Real elmt_CA(unit = "") "P27:cyclin A:Cdk2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CYCD_conc(unit = "");
    Real elmt_CYCD_amount(unit = "");
    Real elmt_CYCD(unit = "") "cyclin D:Cdk2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));
    Real elmt_CYCE_conc(unit = "");
    Real elmt_CYCE_amount(unit = "");
    Real elmt_CYCE(unit = "") "cyclin E:Cdk2";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    initial equation
        elmt_cell = 1.0;
        elmt_GM_conc = 1.35565;
        elmt_PPX_conc = 1.0;
        elmt_P27_conc = 0.00922806;
        elmt_CD_conc = 0.010976;
        elmt_CE_conc = 5.42587E-4;
        elmt_IEP_conc = 0.154655;
        elmt_CDh1_conc = 6.53278E-4;
        elmt_var6_conc = 0.0192822;
        elmt_DRG_conc = 0.900533;
        elmt_ERG_conc = 0.0121809;
        elmt_var1_conc = 9.97574;
        elmt_MASS_conc = 1.68776;
        elmt_CYCB_conc = 2.72898;
        elmt_var3_conc = 3.98594;
        elmt_var2_conc = 0.989986;
        elmt_var5_conc = 0.00478911;
        elmt_CDc20_conc = 0.00220177;
        elmt_CYCA_conc = 1.4094;
        elmt_CDc20T_conc = 2.36733;
        elmt_var4_conc = 1.90871E-4;
        elmt_CA_conc = 0.0356927;
        elmt_CYCD_conc = 0.43929;
        elmt_CYCE_conc = 0.0229112;


    equation
        assert(elmt_cell >= 0, "Compartment size became negative. Make sure this is a valid bahaviour.");
        der(elmt_cell) = 0;
        elmt_GM = elmt_GM_conc;
        elmt_PPX = elmt_PPX_conc;
        elmt_P27 = elmt_P27_conc;
        elmt_CD = elmt_CD_conc;
        elmt_CE = elmt_CE_conc;
        elmt_IEP = elmt_IEP_conc;
        elmt_CDh1 = elmt_CDh1_conc;
        elmt_var6 = elmt_var6_conc;
        elmt_DRG = elmt_DRG_conc;
        elmt_ERG = elmt_ERG_conc;
        elmt_var1 = elmt_var1_conc;
        elmt_MASS = elmt_MASS_conc;
        elmt_CYCB = elmt_CYCB_conc;
        elmt_var3 = elmt_var3_conc;
        elmt_var2 = elmt_var2_conc;
        elmt_var5 = elmt_var5_conc;
        elmt_CDc20 = elmt_CDc20_conc;
        elmt_CYCA = elmt_CYCA_conc;
        elmt_CDc20T = elmt_CDc20T_conc;
        elmt_var4 = elmt_var4_conc;
        elmt_CA = elmt_CA_conc;
        elmt_CYCD = elmt_CYCD_conc;
        elmt_CYCE = elmt_CYCE_conc;
        der(elmt_GM_amount) = ((- (elmt_v32 * elmt_reactant53)) + (elmt_v31 * elmt_product52));
        der(elmt_PPX_amount) = ((- (elmt_v22 * elmt_reactant39)) + (elmt_v37 * elmt_product58));
        der(elmt_P27_amount) = ((- (elmt_v7 * elmt_reactant12)) + (elmt_v8 * elmt_product16) + (- (elmt_v5 * elmt_reactant6)) + (- (elmt_v6 * elmt_reactant9)) + (elmt_v3 * elmt_product3) + (elmt_v40 * elmt_product61) + (elmt_v13 * elmt_product27) + (elmt_v12 * elmt_product25) + (elmt_v11 * elmt_product22) + (elmt_v10 * elmt_product19) + (- (elmt_v15 * elmt_reactant29)));
        der(elmt_CD_amount) = ((elmt_v7 * elmt_product13) + (- (elmt_v8 * elmt_reactant14)) + (- (elmt_v3 * elmt_reactant2)) + (- (elmt_v17 * elmt_reactant32)));
        der(elmt_CE_amount) = ((elmt_v5 * elmt_product7) + (- (elmt_v13 * elmt_reactant26)) + (- (elmt_v11 * elmt_reactant20)) + (- (elmt_v16 * elmt_reactant30)));
        der(elmt_IEP_amount) = ((- (elmt_v24 * elmt_reactant41)) + (elmt_v23 * elmt_product40));
        der(elmt_CDh1_amount) = ((- (elmt_v21 * elmt_reactant38)) + (elmt_v20 * elmt_product37));
        der(elmt_var6_amount) = ((- (elmt_v30 * elmt_reactant49)) + (- (elmt_v49 * elmt_reactant78)) + (elmt_v52 * elmt_product87) + (- (elmt_v51 * elmt_reactant84)) + (elmt_v50 * elmt_product83));
        der(elmt_DRG_amount) = ((- (elmt_v2 * elmt_reactant1)) + (elmt_v41 * elmt_product62));
        der(elmt_ERG_amount) = ((- (elmt_v1 * elmt_reactant0)) + (elmt_v34 * elmt_product55));
        der(elmt_var1_amount) = ((elmt_v29 * elmt_product47) + (elmt_v30 * elmt_product50) + (- (elmt_v44 * elmt_reactant66)) + (elmt_v43 * elmt_product65));
        der(elmt_MASS_amount) = (elmt_v33 * elmt_product54);
        der(elmt_CYCB_amount) = ((elmt_v42 * elmt_product63) + (- (elmt_v19 * elmt_reactant36)));
        der(elmt_var3_amount) = ((elmt_v30 * elmt_product51) + (elmt_v46 * elmt_product72) + (elmt_v49 * elmt_product79) + (- (elmt_v47 * elmt_reactant73)) + (- (elmt_v50 * elmt_reactant81)));
        der(elmt_var2_amount) = ((elmt_v29 * elmt_product48) + (- (elmt_v46 * elmt_reactant71)) + (elmt_v45 * elmt_product69) + (- (elmt_v48 * elmt_reactant75)) + (elmt_v47 * elmt_product74));
        der(elmt_var5_amount) = ((- (elmt_v29 * elmt_reactant46)) + (- (elmt_v45 * elmt_reactant68)) + (elmt_v48 * elmt_product77) + (- (elmt_v52 * elmt_reactant86)) + (elmt_v51 * elmt_product85));
        der(elmt_CDc20_amount) = ((- (elmt_v28 * elmt_reactant45)) + (- (elmt_v27 * elmt_reactant44)) + (elmt_v26 * elmt_product43));
        der(elmt_CYCA_amount) = ((- (elmt_v9 * elmt_reactant17)) + (- (elmt_v6 * elmt_reactant8)) + (elmt_v36 * elmt_product57) + (elmt_v12 * elmt_product24) + (elmt_v18 * elmt_product35));
        der(elmt_CDc20T_amount) = ((- (elmt_v25 * elmt_reactant42)) + (elmt_v35 * elmt_product56));
        der(elmt_var4_amount) = ((elmt_v45 * elmt_product70) + (elmt_v44 * elmt_product67) + (- (elmt_v43 * elmt_reactant64)) + (elmt_v49 * elmt_product80) + (- (elmt_v48 * elmt_reactant76)) + (- (elmt_v50 * elmt_reactant82)));
        der(elmt_CA_amount) = ((elmt_v6 * elmt_product10) + (- (elmt_v12 * elmt_reactant23)) + (- (elmt_v10 * elmt_reactant18)) + (- (elmt_v18 * elmt_reactant34)));
        der(elmt_CYCD_amount) = ((- (elmt_v7 * elmt_reactant11)) + (elmt_v8 * elmt_product15) + (- (elmt_v4 * elmt_reactant4)) + (elmt_v39 * elmt_product60) + (elmt_v17 * elmt_product33));
        der(elmt_CYCE_amount) = ((- (elmt_v5 * elmt_reactant5)) + (elmt_v38 * elmt_product59) + (elmt_v11 * elmt_product21) + (elmt_v16 * elmt_product31) + (- (elmt_v14 * elmt_reactant28)));

        when elmt_divisionEvent then
            reinit(elmt_GM_amount, assign_elmt_GM * pre(elmt_cell));
            reinit(elmt_MASS_amount, assign_elmt_MASS * pre(elmt_cell));
        end when;
    algorithm
        elmt_GM_conc := elmt_GM_amount / elmt_cell;
        elmt_PPX_conc := elmt_PPX_amount / elmt_cell;
        elmt_P27_conc := elmt_P27_amount / elmt_cell;
        elmt_CD_conc := elmt_CD_amount / elmt_cell;
        elmt_CE_conc := elmt_CE_amount / elmt_cell;
        elmt_IEP_conc := elmt_IEP_amount / elmt_cell;
        elmt_CDh1_conc := elmt_CDh1_amount / elmt_cell;
        elmt_var6_conc := elmt_var6_amount / elmt_cell;
        elmt_DRG_conc := elmt_DRG_amount / elmt_cell;
        elmt_ERG_conc := elmt_ERG_amount / elmt_cell;
        elmt_var1_conc := elmt_var1_amount / elmt_cell;
        elmt_MASS_conc := elmt_MASS_amount / elmt_cell;
        elmt_CYCB_conc := elmt_CYCB_amount / elmt_cell;
        elmt_var3_conc := elmt_var3_amount / elmt_cell;
        elmt_var2_conc := elmt_var2_amount / elmt_cell;
        elmt_var5_conc := elmt_var5_amount / elmt_cell;
        elmt_CDc20_conc := elmt_CDc20_amount / elmt_cell;
        elmt_CYCA_conc := elmt_CYCA_amount / elmt_cell;
        elmt_CDc20T_conc := elmt_CDc20T_amount / elmt_cell;
        elmt_var4_conc := elmt_var4_amount / elmt_cell;
        elmt_CA_conc := elmt_CA_amount / elmt_cell;
        elmt_CYCD_conc := elmt_CYCD_amount / elmt_cell;
        elmt_CYCE_conc := elmt_CYCE_amount / elmt_cell;
end Class_elmt_cell;
