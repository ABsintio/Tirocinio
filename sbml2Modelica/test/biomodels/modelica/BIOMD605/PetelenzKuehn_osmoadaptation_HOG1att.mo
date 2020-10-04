within BIOMD605;
model PetelenzKuehn_osmoadaptation_HOG1att "PetelenzKuehn_osmoadaptation_HOG1att" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-11-30T18:31:41Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:encodes rdf:resource=\"http://identifiers.org/go/GO:0006973\"/>
            <CopasiMT:encodes rdf:resource=\"http://identifiers.org/go/GO:0061621\"/>
            <CopasiMT:encodes rdf:resource=\"http://identifiers.org/go/GO:0071470\"/>
            <CopasiMT:isHomologTo rdf:resource=\"http://identifiers.org/taxonomy/4932\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_extra elmt_extra;
    Class_elmt_intra elmt_intra;

    equation
        Params.elmt_glucose_i = elmt_intra.elmt_glucose_i;
        Params.elmt_trehalose = elmt_intra.elmt_trehalose;
        Params.elmt_trehalose_e = elmt_extra.elmt_trehalose_e;
        Params.elmt_glycerol_i = elmt_intra.elmt_glycerol_i;
        Params.elmt_pyruvate = elmt_intra.elmt_pyruvate;
        Params.elmt_glucose_e = elmt_extra.elmt_glucose_e;
        Params.elmt_Stl1 = elmt_intra.elmt_Stl1;
        Params.elmt_glycerol_e = elmt_extra.elmt_glycerol_e;
        Params.elmt_Fps1r = elmt_intra.elmt_Fps1r;
        Params.elmt_cellvol = elmt_intra.elmt_cellvol;
        Params.elmt_cin = elmt_intra.elmt_cin;
        Params.elmt_Gpd1 = elmt_intra.elmt_Gpd1;
        Params.elmt_gpd1mRNA = elmt_intra.elmt_gpd1mRNA;
        Params.elmt_acetate_e = elmt_extra.elmt_acetate_e;
        Params.elmt_stl1mRNA = elmt_intra.elmt_stl1mRNA;
        Params.elmt_trioseP = elmt_intra.elmt_trioseP;
        Params.elmt_Hog1PP = elmt_intra.elmt_Hog1PP;
        Params.elmt_acetate_i = elmt_intra.elmt_acetate_i;
        Params.elmt_ethanol_i = elmt_intra.elmt_ethanol_i;
        Params.elmt_ethanol_e = elmt_extra.elmt_ethanol_e;
        Params.elmt_F16DP = elmt_intra.elmt_F16DP;
        Reacs.elmt_Turgor = Params.elmt_Turgor;
        Reacs.elmt_vV_1 = Params.elmt_vV_1;
        Reacs.elmt_vV_2 = Params.elmt_vV_2;
        Reacs.elmt_kv15r_2 = Params.elmt_kv15r_2;
        Reacs.elmt_kv15r_1 = Params.elmt_kv15r_1;
        Reacs.elmt_cin = elmt_intra.elmt_cin;
        Reacs.elmt_kv18f_1 = Params.elmt_kv18f_1;
        Reacs.elmt_kv21r_1 = Params.elmt_kv21r_1;
        Reacs.elmt_v10speed = Params.elmt_v10speed;
        Reacs.elmt_kv1_1 = Params.elmt_kv1_1;
        Reacs.elmt_kv5_1 = Params.elmt_kv5_1;
        Reacs.elmt_kv1_2 = Params.elmt_kv1_2;
        Reacs.elmt_kv14_4 = Params.elmt_kv14_4;
        Reacs.elmt_kv14_5 = Params.elmt_kv14_5;
        Reacs.elmt_kv5_4 = Params.elmt_kv5_4;
        Reacs.elmt_kv14_2 = Params.elmt_kv14_2;
        Reacs.elmt_kv18r_1 = Params.elmt_kv18r_1;
        Reacs.elmt_kv9_1 = Params.elmt_kv9_1;
        Reacs.elmt_kv14_3 = Params.elmt_kv14_3;
        Reacs.elmt_kv5_2 = Params.elmt_kv5_2;
        Reacs.elmt_AOG = elmt_intra.elmt_AOG;
        Reacs.elmt_kv5_3 = Params.elmt_kv5_3;
        Reacs.elmt_kv14_1 = Params.elmt_kv14_1;
        Reacs.elmt_v11speed = Params.elmt_v11speed;
        Reacs.elmt_kv10_2 = Params.elmt_kv10_2;
        Reacs.elmt_kv9_2 = Params.elmt_kv9_2;
        Reacs.elmt_kv10_1 = Params.elmt_kv10_1;
        Reacs.elmt_ethanol_i = elmt_intra.elmt_ethanol_i;
        Reacs.elmt_F26DP = elmt_intra.elmt_F26DP;
        Reacs.elmt_kv13b_1 = Params.elmt_kv13b_1;
        Reacs.elmt_kv13b_2 = Params.elmt_kv13b_2;
        Reacs.elmt_ethanol_e = elmt_extra.elmt_ethanol_e;
        Reacs.elmt_v12speed = Params.elmt_v12speed;
        Reacs.elmt_intra = elmt_intra.elmt_intra;
        Reacs.elmt_kv22_3 = Params.elmt_kv22_3;
        Reacs.elmt_kv17r_1 = Params.elmt_kv17r_1;
        Reacs.elmt_kv22_1 = Params.elmt_kv22_1;
        Reacs.elmt_kv22_2 = Params.elmt_kv22_2;
        Reacs.elmt_v1speed = Params.elmt_v1speed;
        Reacs.elmt_Hog1PP = elmt_intra.elmt_Hog1PP;
        Reacs.elmt_kv6b_4 = Params.elmt_kv6b_4;
        Reacs.elmt_kv6b_5 = Params.elmt_kv6b_5;
        Reacs.elmt_v13bspeed = Params.elmt_v13bspeed;
        Reacs.elmt_kv23r_1 = Params.elmt_kv23r_1;
        Reacs.elmt_kv21f_1 = Params.elmt_kv21f_1;
        Reacs.elmt_kv2_1 = Params.elmt_kv2_1;
        Reacs.elmt_kv2_2 = Params.elmt_kv2_2;
        Reacs.elmt_kv6_3 = Params.elmt_kv6_3;
        Reacs.elmt_kv6_1 = Params.elmt_kv6_1;
        Reacs.elmt_cellvol = elmt_intra.elmt_cellvol;
        Reacs.elmt_kv6_2 = Params.elmt_kv6_2;
        Reacs.elmt_kv11_1 = Params.elmt_kv11_1;
        Reacs.elmt_kv11_2 = Params.elmt_kv11_2;
        Reacs.elmt_kv20f_x = Params.elmt_kv20f_x;
        Reacs.elmt_kv15f_2 = Params.elmt_kv15f_2;
        Reacs.elmt_Gpd1 = elmt_intra.elmt_Gpd1;
        Reacs.elmt_kv15f_1 = Params.elmt_kv15f_1;
        Reacs.elmt_acetate_e = elmt_extra.elmt_acetate_e;
        Reacs.elmt_Hog1 = elmt_intra.elmt_Hog1;
        Reacs.elmt_initcellnum = Params.elmt_initcellnum;
        Reacs.elmt_acetate_i = elmt_intra.elmt_acetate_i;
        Reacs.elmt_Vm = Params.elmt_Vm;
        Reacs.elmt_kv20f_2 = Params.elmt_kv20f_2;
        Reacs.elmt_kv20f_1 = Params.elmt_kv20f_1;
        Reacs.elmt_glycerol_i = elmt_intra.elmt_glycerol_i;
        Reacs.elmt_kv19r_1 = Params.elmt_kv19r_1;
        Reacs.elmt_glycerol_e = elmt_extra.elmt_glycerol_e;
        Reacs.elmt_AOGi = elmt_intra.elmt_AOGi;
        Reacs.elmt_kv6b_x = Params.elmt_kv6b_x;
        Reacs.elmt_kv23f_1 = Params.elmt_kv23f_1;
        Reacs.elmt_kv23f_2 = Params.elmt_kv23f_2;
        Reacs.elmt_kv23f_3 = Params.elmt_kv23f_3;
        Reacs.elmt_Pfk2627i = elmt_intra.elmt_Pfk2627i;
        Reacs.elmt_volchangespeed = Params.elmt_volchangespeed;
        Reacs.elmt_kv3_2 = Params.elmt_kv3_2;
        Reacs.elmt_glucose_i = elmt_intra.elmt_glucose_i;
        Reacs.elmt_kv3_3 = Params.elmt_kv3_3;
        Reacs.elmt_kv3_1 = Params.elmt_kv3_1;
        Reacs.elmt_kv7_2 = Params.elmt_kv7_2;
        Reacs.elmt_glucose_e = elmt_extra.elmt_glucose_e;
        Reacs.elmt_Pfk2627a = elmt_intra.elmt_Pfk2627a;
        Reacs.elmt_kv3_4 = Params.elmt_kv3_4;
        Reacs.elmt_kv12_2 = Params.elmt_kv12_2;
        Reacs.elmt_kv7_1 = Params.elmt_kv7_1;
        Reacs.elmt_kv12_1 = Params.elmt_kv12_1;
        Reacs.elmt_kx2 = Params.elmt_kx2;
        Reacs.elmt_kv17f_3 = Params.elmt_kv17f_3;
        Reacs.elmt_kx1 = Params.elmt_kx1;
        Reacs.elmt_stl1mRNA = elmt_intra.elmt_stl1mRNA;
        Reacs.elmt_kv17f_4 = Params.elmt_kv17f_4;
        Reacs.elmt_G6P = elmt_intra.elmt_G6P;
        Reacs.elmt_kv20f_3 = Params.elmt_kv20f_3;
        Reacs.elmt_kv17f_6 = Params.elmt_kv17f_6;
        Reacs.elmt_kv17f_1 = Params.elmt_kv17f_1;
        Reacs.elmt_kv17f_2 = Params.elmt_kv17f_2;
        Reacs.elmt_kv20r_1 = Params.elmt_kv20r_1;
        Reacs.elmt_pyruvate = elmt_intra.elmt_pyruvate;
        Reacs.elmt_Stl1 = elmt_intra.elmt_Stl1;
        Reacs.elmt_Fps1r = elmt_intra.elmt_Fps1r;
        Reacs.elmt_kv16f_3 = Params.elmt_kv16f_3;
        Reacs.elmt_kv16f_2 = Params.elmt_kv16f_2;
        Reacs.elmt_trioseP = elmt_intra.elmt_trioseP;
        Reacs.elmt_CellSurface = Params.elmt_CellSurface;
        Reacs.elmt_OsmoE = Params.elmt_OsmoE;
        Reacs.elmt_cellnum = Params.elmt_cellnum;
        Reacs.elmt_kv16f_1 = Params.elmt_kv16f_1;
        Reacs.elmt_F16DP = elmt_intra.elmt_F16DP;
        Reacs.elmt_trehalose = elmt_intra.elmt_trehalose;
        Reacs.elmt_kv4_1 = Params.elmt_kv4_1;
        Reacs.elmt_kv4_2 = Params.elmt_kv4_2;
        Reacs.elmt_trehalose_e = elmt_extra.elmt_trehalose_e;
        Reacs.elmt_kv8_1 = Params.elmt_kv8_1;
        Reacs.elmt_kv4_5 = Params.elmt_kv4_5;
        Reacs.elmt_kv8_2 = Params.elmt_kv8_2;
        Reacs.elmt_vV_R = Params.elmt_vV_R;
        Reacs.elmt_kv4_3 = Params.elmt_kv4_3;
        Reacs.elmt_kv4_4 = Params.elmt_kv4_4;
        Reacs.elmt_kv16r_1 = Params.elmt_kv16r_1;
        Reacs.elmt_vV_T = Params.elmt_vV_T;
        Reacs.elmt_extra = elmt_extra.elmt_extra;
        Reacs.elmt_gpd1mRNA = elmt_intra.elmt_gpd1mRNA;
        Reacs.elmt_v13aspeed = Params.elmt_v13aspeed;
        Reacs.elmt_kv19f_1 = Params.elmt_kv19f_1;
        Reacs.elmt_kv13a_1 = Params.elmt_kv13a_1;
        elmt_extra.elmt_product9 = Reacs.elmt_product9;
        elmt_extra.elmt_v12 = Reacs.elmt_v12;
        elmt_extra.elmt_product7 = Reacs.elmt_product7;
        elmt_extra.elmt_v11 = Reacs.elmt_v11;
        elmt_extra.elmt_product6 = Reacs.elmt_product6;
        elmt_extra.elmt_v10 = Reacs.elmt_v10;
        elmt_extra.elmt_product12 = Reacs.elmt_product12;
        elmt_extra.elmt_v13aBatch = Reacs.elmt_v13aBatch;
        elmt_extra.elmt_v13bBatch = Reacs.elmt_v13bBatch;
        elmt_extra.elmt_product10 = Reacs.elmt_product10;
        elmt_extra.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_extra.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_extra.elmt_v11Batch = Reacs.elmt_v11Batch;
        elmt_extra.elmt_product4 = Reacs.elmt_product4;
        elmt_extra.elmt_product3 = Reacs.elmt_product3;
        elmt_extra.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_extra.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_extra.elmt_v10Batch = Reacs.elmt_v10Batch;
        elmt_extra.elmt_v13b = Reacs.elmt_v13b;
        elmt_extra.elmt_v13a = Reacs.elmt_v13a;
        elmt_extra.elmt_v1 = Reacs.elmt_v1;
        elmt_extra.elmt_v12Batch = Reacs.elmt_v12Batch;
        elmt_extra.elmt_v1Batch = Reacs.elmt_v1Batch;
        elmt_extra.elmt_product13 = Reacs.elmt_product13;
        elmt_intra.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt_intra.elmt_product72 = Reacs.elmt_product72;
        elmt_intra.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt_intra.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt_intra.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt_intra.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_intra.elmt_vVG6P = Reacs.elmt_vVG6P;
        elmt_intra.elmt_reactant51 = Reacs.elmt_reactant51;
        elmt_intra.elmt_vVgpd1mRNA = Reacs.elmt_vVgpd1mRNA;
        elmt_intra.elmt_reactant53 = Reacs.elmt_reactant53;
        elmt_intra.elmt_vVtrehalose = Reacs.elmt_vVtrehalose;
        elmt_intra.elmt_reactant59 = Reacs.elmt_reactant59;
        elmt_intra.elmt_reactant55 = Reacs.elmt_reactant55;
        elmt_intra.elmt_reactant57 = Reacs.elmt_reactant57;
        elmt_intra.elmt_v13b = Reacs.elmt_v13b;
        elmt_intra.elmt_v13a = Reacs.elmt_v13a;
        elmt_intra.elmt_v6b = Reacs.elmt_v6b;
        elmt_intra.elmt_vVacetate_i = Reacs.elmt_vVacetate_i;
        elmt_intra.elmt_v23r = Reacs.elmt_v23r;
        elmt_intra.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_intra.elmt_v23f = Reacs.elmt_v23f;
        elmt_intra.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_intra.elmt_v19r = Reacs.elmt_v19r;
        elmt_intra.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_intra.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_intra.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_intra.elmt_vVPfk2627i = Reacs.elmt_vVPfk2627i;
        elmt_intra.elmt_vVF16DP = Reacs.elmt_vVF16DP;
        elmt_intra.elmt_vVPfk2627a = Reacs.elmt_vVPfk2627a;
        elmt_intra.elmt_v12 = Reacs.elmt_v12;
        elmt_intra.elmt_vVgluci = Reacs.elmt_vVgluci;
        elmt_intra.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_intra.elmt_v11 = Reacs.elmt_v11;
        elmt_intra.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_intra.elmt_v10 = Reacs.elmt_v10;
        elmt_intra.elmt_product22 = Reacs.elmt_product22;
        elmt_intra.elmt_product20 = Reacs.elmt_product20;
        elmt_intra.elmt_product1 = Reacs.elmt_product1;
        elmt_intra.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_intra.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_intra.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_intra.elmt_vVglyci = Reacs.elmt_vVglyci;
        elmt_intra.elmt_v14 = Reacs.elmt_v14;
        elmt_intra.elmt_v18r = Reacs.elmt_v18r;
        elmt_intra.elmt_v19f = Reacs.elmt_v19f;
        elmt_intra.elmt_product15 = Reacs.elmt_product15;
        elmt_intra.elmt_vVethanol_i = Reacs.elmt_vVethanol_i;
        elmt_intra.elmt_product18 = Reacs.elmt_product18;
        elmt_intra.elmt_v9 = Reacs.elmt_v9;
        elmt_intra.elmt_v22 = Reacs.elmt_v22;
        elmt_intra.elmt_product34 = Reacs.elmt_product34;
        elmt_intra.elmt_v7 = Reacs.elmt_v7;
        elmt_intra.elmt_vVstl1mRNA = Reacs.elmt_vVstl1mRNA;
        elmt_intra.elmt_reactant80 = Reacs.elmt_reactant80;
        elmt_intra.elmt_v8 = Reacs.elmt_v8;
        elmt_intra.elmt_product32 = Reacs.elmt_product32;
        elmt_intra.elmt_v5 = Reacs.elmt_v5;
        elmt_intra.elmt_reactant81 = Reacs.elmt_reactant81;
        elmt_intra.elmt_v6 = Reacs.elmt_v6;
        elmt_intra.elmt_v21r = Reacs.elmt_v21r;
        elmt_intra.elmt_vVHog1 = Reacs.elmt_vVHog1;
        elmt_intra.elmt_v21f = Reacs.elmt_v21f;
        elmt_intra.elmt_vVGpd1 = Reacs.elmt_vVGpd1;
        elmt_intra.elmt_v17r = Reacs.elmt_v17r;
        elmt_intra.elmt_v18f = Reacs.elmt_v18f;
        elmt_intra.elmt_v3 = Reacs.elmt_v3;
        elmt_intra.elmt_product27 = Reacs.elmt_product27;
        elmt_intra.elmt_v4 = Reacs.elmt_v4;
        elmt_intra.elmt_product26 = Reacs.elmt_product26;
        elmt_intra.elmt_v1 = Reacs.elmt_v1;
        elmt_intra.elmt_v2 = Reacs.elmt_v2;
        elmt_intra.elmt_product24 = Reacs.elmt_product24;
        elmt_intra.elmt_product29 = Reacs.elmt_product29;
        elmt_intra.elmt_product40 = Reacs.elmt_product40;
        elmt_intra.elmt_v16r = Reacs.elmt_v16r;
        elmt_intra.elmt_product44 = Reacs.elmt_product44;
        elmt_intra.elmt_v20r = Reacs.elmt_v20r;
        elmt_intra.elmt_product42 = Reacs.elmt_product42;
        elmt_intra.elmt_v20f = Reacs.elmt_v20f;
        elmt_intra.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_intra.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_intra.elmt_v17f = Reacs.elmt_v17f;
        elmt_intra.elmt_product38 = Reacs.elmt_product38;
        elmt_intra.elmt_product37 = Reacs.elmt_product37;
        elmt_intra.elmt_reactant61 = Reacs.elmt_reactant61;
        elmt_intra.elmt_v15r = Reacs.elmt_v15r;
        elmt_intra.elmt_product52 = Reacs.elmt_product52;
        elmt_intra.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt_intra.elmt_product50 = Reacs.elmt_product50;
        elmt_intra.elmt_reactant64 = Reacs.elmt_reactant64;
        elmt_intra.elmt_product56 = Reacs.elmt_product56;
        elmt_intra.elmt_product54 = Reacs.elmt_product54;
        elmt_intra.elmt_reactant69 = Reacs.elmt_reactant69;
        elmt_intra.elmt_reactant65 = Reacs.elmt_reactant65;
        elmt_intra.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_intra.elmt_reactant67 = Reacs.elmt_reactant67;
        elmt_intra.elmt_reactant68 = Reacs.elmt_reactant68;
        elmt_intra.elmt_v16f = Reacs.elmt_v16f;
        elmt_intra.elmt_product48 = Reacs.elmt_product48;
        elmt_intra.elmt_product46 = Reacs.elmt_product46;
        elmt_intra.elmt_vVtrioseP = Reacs.elmt_vVtrioseP;
        elmt_intra.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_intra.elmt_reactant73 = Reacs.elmt_reactant73;
        elmt_intra.elmt_product62 = Reacs.elmt_product62;
        elmt_intra.elmt_reactant74 = Reacs.elmt_reactant74;
        elmt_intra.elmt_reactant75 = Reacs.elmt_reactant75;
        elmt_intra.elmt_product60 = Reacs.elmt_product60;
        elmt_intra.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_intra.elmt_vVStl1 = Reacs.elmt_vVStl1;
        elmt_intra.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt_intra.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_intra.elmt_reactant71 = Reacs.elmt_reactant71;
        elmt_intra.elmt_reactant76 = Reacs.elmt_reactant76;
        elmt_intra.elmt_reactant77 = Reacs.elmt_reactant77;
        elmt_intra.elmt_reactant78 = Reacs.elmt_reactant78;
        elmt_intra.elmt_reactant79 = Reacs.elmt_reactant79;
        elmt_intra.elmt_v15f = Reacs.elmt_v15f;
        elmt_intra.elmt_vVcin = Reacs.elmt_vVcin;
        elmt_intra.elmt_vVHog1PP = Reacs.elmt_vVHog1PP;
        elmt_intra.elmt_product58 = Reacs.elmt_product58;
        elmt_intra.elmt_vVos = Reacs.elmt_vVos;
        elmt_intra.elmt_vVpyruvate = Reacs.elmt_vVpyruvate;

end PetelenzKuehn_osmoadaptation_HOG1att;
