within BIOMD597;
model MODEL1510190000 "Flis2015 - Plant clock gene circuit (P2011.1.2 PLM_71 ver 1)" annotation(Documentation(info="<annotation>
<ns1:PLASMO xmlns:ns1=\"http://www.plasmo.ed.ac.uk\" id=\"PLM_71\" version=\"1\">
This model has been downloaded from PlaSMo:
http://www.plasmo.ed.ac.uk/plasmo/models/model.shtml?accession=PLM_71</ns1:PLASMO>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dcterms=\"http://purl.org/dc/terms/\">
<rdf:Description rdf:about=\"#COPASI1\">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2011-08-18T14:47:18Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
</COPASI>
<listOfParameterHistories xmlns=\"http://www.uk.ac.ed.csbe.sbsivisual/parameter/ns\">
<parameterHistory min=\"1.3\" initialstep=\"0.26\" max=\"10.0\" use=\"Yes\" id=\"n1\"/>
<parameterHistory min=\"0.32\" initialstep=\"0.064\" max=\"1.28\" use=\"Yes\" id=\"n2\"/>
<parameterHistory min=\"0.05\" initialstep=\"0.029\" max=\"0.58\" use=\"Yes\" id=\"n3\"/>
<parameterHistory min=\"0.035\" initialstep=\"0.0070\" max=\"0.14\" use=\"Yes\" id=\"n4\"/>
<parameterHistory min=\"0.115\" initialstep=\"0.023\" max=\"0.46\" use=\"No\" id=\"n5\"/>
<parameterHistory min=\"10.0\" initialstep=\"2.0\" max=\"40.0\" use=\"No\" id=\"n6\"/>
<parameterHistory min=\"0.1\" initialstep=\"0.02\" max=\"0.4\" use=\"Yes\" id=\"n7\"/>
<parameterHistory min=\"0.25\" initialstep=\"0.05\" max=\"1.0\" use=\"Yes\" id=\"n8\"/>
<parameterHistory min=\"0.1\" initialstep=\"0.02\" max=\"0.6\" use=\"Yes\" id=\"n9\"/>
<parameterHistory min=\"0.2\" initialstep=\"0.04\" max=\"0.8\" use=\"Yes\" id=\"n10\"/>
<parameterHistory min=\"0.3\" initialstep=\"0.06\" max=\"1.2\" use=\"Yes\" id=\"n11\"/>
<parameterHistory min=\"6.25\" initialstep=\"1.25\" max=\"25.0\" use=\"Yes\" id=\"n12\"/>
<parameterHistory min=\"0.65\" initialstep=\"0.13\" max=\"2.6\" use=\"Yes\" id=\"n13\"/>
<parameterHistory min=\"0.05\" initialstep=\"0.01\" max=\"0.2\" use=\"No\" id=\"n14\"/>
<parameterHistory min=\"0.02\" initialstep=\"0.01\" max=\"0.2\" use=\"Yes\" id=\"g1\"/>
<parameterHistory min=\"0.0010\" initialstep=\"0.0010\" max=\"0.02\" use=\"Yes\" id=\"g2\"/>
<parameterHistory min=\"0.3\" initialstep=\"0.06\" max=\"1.2\" use=\"No\" id=\"g3\"/>
<parameterHistory min=\"0.0020\" initialstep=\"0.0010\" max=\"0.02\" use=\"Yes\" id=\"g4\"/>
<parameterHistory min=\"0.075\" initialstep=\"0.015\" max=\"0.3\" use=\"Yes\" id=\"g5\"/>
<parameterHistory min=\"0.15\" initialstep=\"0.03\" max=\"0.6\" use=\"Yes\" id=\"g6\"/>
<parameterHistory min=\"0.3\" initialstep=\"0.06\" max=\"1.2\" use=\"Yes\" id=\"g7\"/>
<parameterHistory min=\"0.0050\" initialstep=\"0.0010\" max=\"0.04\" use=\"Yes\" id=\"g8\"/>
<parameterHistory min=\"0.15\" initialstep=\"0.03\" max=\"0.6\" use=\"Yes\" id=\"g9\"/>
<parameterHistory min=\"0.25\" initialstep=\"0.05\" max=\"1.0\" use=\"Yes\" id=\"g10\"/>
<parameterHistory min=\"0.1\" initialstep=\"0.07\" max=\"1.4\" use=\"Yes\" id=\"g11\"/>
<parameterHistory min=\"0.1\" initialstep=\"0.02\" max=\"0.4\" use=\"No\" id=\"g12\"/>
<parameterHistory min=\"0.5\" initialstep=\"0.1\" max=\"2.0\" use=\"No\" id=\"g13\"/>
<parameterHistory min=\"0.0020\" initialstep=\"4.0E-4\" max=\"0.02\" use=\"Yes\" id=\"g14\"/>
<parameterHistory min=\"0.2\" initialstep=\"0.04\" max=\"0.8\" use=\"Yes\" id=\"g15\"/>
<parameterHistory min=\"0.15\" initialstep=\"0.03\" max=\"0.6\" use=\"Yes\" id=\"g16\"/>
<parameterHistory min=\"0.5\" initialstep=\"0.054\" max=\"1.0\" use=\"Yes\" id=\"m1\"/>
<parameterHistory min=\"0.2\" initialstep=\"0.024\" max=\"0.5\" use=\"Yes\" id=\"m2\"/>
<parameterHistory min=\"0.1\" initialstep=\"0.02\" max=\"0.4\" use=\"Yes\" id=\"m3\"/>
<parameterHistory min=\"0.1\" initialstep=\"0.02\" max=\"0.4\" use=\"No\" id=\"m4\"/>
<parameterHistory min=\"0.15\" initialstep=\"0.03\" max=\"0.6\" use=\"No\" id=\"m5\"/>
<parameterHistory min=\"0.15\" initialstep=\"0.03\" max=\"0.6\" use=\"Yes\" id=\"m6\"/>
<parameterHistory min=\"0.1\" initialstep=\"0.07\" max=\"1.0\" use=\"Yes\" id=\"m7\"/>
<parameterHistory min=\"0.2\" initialstep=\"0.04\" max=\"0.8\" use=\"Yes\" id=\"m8\"/>
<parameterHistory min=\"0.55\" initialstep=\"0.11\" max=\"2.2\" use=\"Yes\" id=\"m9\"/>
<parameterHistory min=\"0.5\" initialstep=\"0.1\" max=\"2.0\" use=\"No\" id=\"m10\"/>
<parameterHistory min=\"0.5\" initialstep=\"0.1\" max=\"2.0\" use=\"No\" id=\"m11\"/>
<parameterHistory min=\"0.5\" initialstep=\"0.1\" max=\"2.0\" use=\"No\" id=\"m12\"/>
<parameterHistory min=\"0.16\" initialstep=\"0.032\" max=\"0.64\" use=\"No\" id=\"m13\"/>
<parameterHistory min=\"0.4\" initialstep=\"0.04\" max=\"0.8\" use=\"Yes\" id=\"m14\"/>
<parameterHistory min=\"0.35\" initialstep=\"0.07\" max=\"1.4\" use=\"No\" id=\"m15\"/>
<parameterHistory min=\"0.5\" initialstep=\"0.05\" max=\"1.0\" use=\"Yes\" id=\"m16\"/>
<parameterHistory min=\"0.25\" initialstep=\"0.05\" max=\"1.0\" use=\"No\" id=\"m17\"/>
<parameterHistory min=\"0.75\" initialstep=\"0.34\" max=\"3.4\" use=\"Yes\" id=\"m18\"/>
<parameterHistory min=\"0.1\" initialstep=\"0.02\" max=\"1.0\" use=\"Yes\" id=\"m19\"/>
<parameterHistory min=\"0.3\" initialstep=\"0.06\" max=\"1.2\" use=\"No\" id=\"m20\"/>
<parameterHistory min=\"0.04\" initialstep=\"0.0080\" max=\"0.16\" use=\"No\" id=\"m21\"/>
<parameterHistory min=\"0.05\" initialstep=\"0.01\" max=\"0.2\" use=\"Yes\" id=\"m22\"/>
<parameterHistory min=\"0.5\" initialstep=\"0.18\" max=\"2.0\" use=\"Yes\" id=\"m23\"/>
<parameterHistory min=\"0.02\" initialstep=\"0.01\" max=\"0.5\" use=\"Yes\" id=\"m24\"/>
<parameterHistory min=\"0.9\" initialstep=\"0.18\" max=\"3.6\" use=\"No\" id=\"m25\"/>
<parameterHistory min=\"0.25\" initialstep=\"0.05\" max=\"1.0\" use=\"No\" id=\"m26\"/>
<parameterHistory min=\"0.05\" initialstep=\"0.01\" max=\"0.2\" use=\"No\" id=\"m27\"/>
<parameterHistory min=\"10.0\" initialstep=\"2.0\" max=\"40.0\" use=\"No\" id=\"m28\"/>
<parameterHistory min=\"2.5\" initialstep=\"0.5\" max=\"10.0\" use=\"Yes\" id=\"m29\"/>
<parameterHistory min=\"1.5\" initialstep=\"0.3\" max=\"6.0\" use=\"Yes\" id=\"m30\"/>
<parameterHistory min=\"0.15\" initialstep=\"0.03\" max=\"0.6\" use=\"No\" id=\"m31\"/>
<parameterHistory min=\"0.1\" initialstep=\"0.02\" max=\"0.4\" use=\"No\" id=\"m32\"/>
<parameterHistory min=\"6.5\" initialstep=\"1.3\" max=\"26.0\" use=\"No\" id=\"m33\"/>
<parameterHistory min=\"0.5\" initialstep=\"0.06\" max=\"1.0\" use=\"Yes\" id=\"m34\"/>
<parameterHistory min=\"0.1\" initialstep=\"0.03\" max=\"0.6\" use=\"Yes\" id=\"m35\"/>
<parameterHistory min=\"0.05\" initialstep=\"0.01\" max=\"0.2\" use=\"Yes\" id=\"m36\"/>
<parameterHistory min=\"0.4\" initialstep=\"0.08\" max=\"1.6\" use=\"Yes\" id=\"m37\"/>
<parameterHistory min=\"0.25\" initialstep=\"0.05\" max=\"1.0\" use=\"No\" id=\"m38\"/>
<parameterHistory min=\"0.05\" initialstep=\"0.03\" max=\"0.6\" use=\"Yes\" id=\"m39\"/>
<parameterHistory min=\"1.0\" initialstep=\"0.2\" max=\"4.0\" use=\"No\" id=\"a\"/>
<parameterHistory min=\"1.0\" initialstep=\"0.2\" max=\"4.0\" use=\"No\" id=\"b\"/>
<parameterHistory min=\"1.0\" initialstep=\"0.2\" max=\"4.0\" use=\"No\" id=\"c\"/>
<parameterHistory min=\"1.0\" initialstep=\"0.2\" max=\"4.0\" use=\"No\" id=\"d\"/>
<parameterHistory min=\"1.0\" initialstep=\"0.2\" max=\"4.0\" use=\"No\" id=\"e\"/>
<parameterHistory min=\"1.0\" initialstep=\"0.2\" max=\"4.0\" use=\"No\" id=\"f\"/>
<parameterHistory min=\"0.065\" initialstep=\"0.013\" max=\"0.26\" use=\"Yes\" id=\"p1\"/>
<parameterHistory min=\"0.135\" initialstep=\"0.027\" max=\"0.54\" use=\"Yes\" id=\"p2\"/>
<parameterHistory min=\"0.05\" initialstep=\"0.01\" max=\"0.2\" use=\"Yes\" id=\"p3\"/>
<parameterHistory min=\"0.28\" initialstep=\"0.056\" max=\"1.12\" use=\"Yes\" id=\"p4\"/>
<parameterHistory min=\"1.0\" initialstep=\"0.4\" max=\"8.0\" use=\"Yes\" id=\"p5\"/>
<parameterHistory min=\"0.3\" initialstep=\"0.06\" max=\"1.2\" use=\"No\" id=\"p6\"/>
<parameterHistory min=\"0.15\" initialstep=\"0.03\" max=\"0.6\" use=\"No\" id=\"p7\"/>
<parameterHistory min=\"0.3\" initialstep=\"0.06\" max=\"1.2\" use=\"Yes\" id=\"p8\"/>
<parameterHistory min=\"0.4\" initialstep=\"0.08\" max=\"1.6\" use=\"Yes\" id=\"p9\"/>
<parameterHistory min=\"0.27\" initialstep=\"0.054\" max=\"1.08\" use=\"Yes\" id=\"p10\"/>
<parameterHistory min=\"0.255\" initialstep=\"0.051\" max=\"1.02\" use=\"Yes\" id=\"p11\"/>
<parameterHistory min=\"0.5\" initialstep=\"0.34\" max=\"6.8\" use=\"Yes\" id=\"p12\"/>
<parameterHistory min=\"0.05\" initialstep=\"0.01\" max=\"0.2\" use=\"Yes\" id=\"p13\"/>
<parameterHistory min=\"0.07\" initialstep=\"0.014\" max=\"0.28\" use=\"Yes\" id=\"p14\"/>
<parameterHistory min=\"1.5\" initialstep=\"0.3\" max=\"6.0\" use=\"No\" id=\"p15\"/>
<parameterHistory min=\"0.31\" initialstep=\"0.062\" max=\"1.24\" use=\"Yes\" id=\"p16\"/>
<parameterHistory min=\"2.4\" initialstep=\"0.48\" max=\"17.0\" use=\"Yes\" id=\"p17\"/>
<parameterHistory min=\"2.0\" initialstep=\"0.4\" max=\"8.0\" use=\"Yes\" id=\"p18\"/>
<parameterHistory min=\"0.5\" initialstep=\"0.1\" max=\"2.0\" use=\"Yes\" id=\"p19\"/>
<parameterHistory min=\"0.05\" initialstep=\"0.01\" max=\"0.2\" use=\"Yes\" id=\"p20\"/>
<parameterHistory min=\"0.5\" initialstep=\"0.1\" max=\"2.0\" use=\"No\" id=\"p21\"/>
<parameterHistory min=\"0.25\" initialstep=\"0.05\" max=\"1.0\" use=\"No\" id=\"p22\"/>
<parameterHistory min=\"0.185\" initialstep=\"0.037\" max=\"0.74\" use=\"Yes\" id=\"p23\"/>
<parameterHistory min=\"5.0\" initialstep=\"1.0\" max=\"20.0\" use=\"Yes\" id=\"p24\"/>
<parameterHistory min=\"4.0\" initialstep=\"0.8\" max=\"16.0\" use=\"No\" id=\"p25\"/>
<parameterHistory min=\"0.15\" initialstep=\"0.03\" max=\"0.6\" use=\"No\" id=\"p26\"/>
<parameterHistory min=\"0.4\" initialstep=\"0.08\" max=\"1.6\" use=\"Yes\" id=\"p27\"/>
<parameterHistory min=\"1.0\" initialstep=\"0.2\" max=\"4.0\" use=\"No\" id=\"p28\"/>
<parameterHistory min=\"0.05\" initialstep=\"0.01\" max=\"0.2\" use=\"No\" id=\"p29\"/>
<parameterHistory min=\"0.1\" initialstep=\"0.09\" max=\"1.8\" use=\"Yes\" id=\"p30\"/>
<parameterHistory min=\"0.05\" initialstep=\"0.01\" max=\"0.2\" use=\"No\" id=\"p31\"/>
<parameterHistory min=\"0.3\" initialstep=\"0.12\" max=\"1.5\" use=\"Yes\" id=\"q1\"/>
<parameterHistory min=\"0.4\" initialstep=\"0.156\" max=\"3.0\" use=\"Yes\" id=\"q2\"/>
<parameterHistory min=\"1.4\" initialstep=\"0.28\" max=\"5.6\" use=\"Yes\" id=\"q3\"/>
<parameterHistory min=\"0.5\" initialstep=\"0.1\" max=\"2.0\" use=\"No\" id=\"L\"/>
<parameterHistory min=\"0.0\" initialstep=\"1.0\" max=\"100.0\" use=\"No\" id=\"D\"/>
<parameterHistory min=\"0.5\" initialstep=\"0.1\" max=\"2.0\" use=\"No\" id=\"E34\"/>
<parameterHistory min=\"0.5\" initialstep=\"0.1\" max=\"2.0\" use=\"No\" id=\"Gn\"/>
<parameterHistory min=\"0.5\" initialstep=\"0.1\" max=\"2.0\" use=\"No\" id=\"EGn\"/>
<parameterHistory min=\"0.0\" initialstep=\"0.05\" max=\"100.0\" use=\"No\" id=\"step1\"/>
<parameterHistory min=\"0.0\" initialstep=\"1.0\" max=\"100.0\" use=\"No\" id=\"offsetStep1\"/>
<parameterHistory min=\"0.999\" initialstep=\"0.1\" max=\"1.001\" use=\"No\" id=\"amplitudeStep1\"/>
<parameterHistory min=\"0.0\" initialstep=\"1.0\" max=\"100.0\" use=\"No\" id=\"phaseStep1\"/>
<parameterHistory min=\"11.988\" initialstep=\"1.2\" max=\"12.012\" use=\"No\" id=\"pulseDurationStep1\"/>
<parameterHistory min=\"23.976\" initialstep=\"2.4\" max=\"24.024\" use=\"No\" id=\"cyclePeriodStep1\"/>
<parameterHistory min=\"0.04995\" initialstep=\"0.0050\" max=\"0.05005\" use=\"No\" id=\"rampDurationStep1\"/>
</listOfParameterHistories>
<listOfConfigs xmlns=\"http://www.uk.ac.ed.csbe.sbsivisual/configpage/ns\">
<popSize>200</popSize>
<MAXRG>50000</MAXRG>
<targeted_costfunctionvalue>0.01</targeted_costfunctionvalue>
<ckPointFreq>-1</ckPointFreq>
<MAXCOST>10000</MAXCOST>
<MaxNoChange>100</MaxNoChange>
<seed>-1</seed>
<mutantProbability>0.4</mutantProbability>
<atol>1.0E-14</atol>
<restartFreq>51</restartFreq>
<mu>0.7</mu>
<reltol>1.0E-6</reltol>
<numBest>10</numBest>
<printfreq>2</printfreq>
<setupType>SobolSelect</setupType>
<out_interval>0.1</out_interval>
<interval>0.01</interval>
<MaxSimilarity>95</MaxSimilarity>
<MAX_NUMGEN>2000</MAX_NUMGEN>
<sobolseed>-1</sobolseed>
<t_init>0.0</t_init>
<t_final>356.0</t_final>
<verbose>-1</verbose>
<maxTimes>1000000</maxTimes>
<numGen>200</numGen>
<PSONumGen>0</PSONumGen>
<FFTWeight>10.0</FFTWeight>
<X2Weight>1.0</X2Weight>
</listOfConfigs>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_def elmt_def;
    Class_elmt_event_1 elmt_event_1;

    equation
        Params.elmt_event_1 = elmt_event_1.trigger;
        Reacs.elmt_p29 = Params.elmt_p29;
        Reacs.elmt_p28 = Params.elmt_p28;
        Reacs.elmt_p27 = Params.elmt_p27;
        Reacs.elmt_p26 = Params.elmt_p26;
        Reacs.elmt_p25 = Params.elmt_p25;
        Reacs.elmt_p24 = Params.elmt_p24;
        Reacs.elmt_p23 = Params.elmt_p23;
        Reacs.elmt_cE3n = elmt_def.elmt_cE3n;
        Reacs.elmt_g12 = Params.elmt_g12;
        Reacs.elmt_g11 = Params.elmt_g11;
        Reacs.elmt_g10 = Params.elmt_g10;
        Reacs.elmt_cE4_m = elmt_def.elmt_cE4_m;
        Reacs.elmt_cZG = elmt_def.elmt_cZG;
        Reacs.elmt_p31 = Params.elmt_p31;
        Reacs.elmt_g16 = Params.elmt_g16;
        Reacs.elmt_g15 = Params.elmt_g15;
        Reacs.elmt_g14 = Params.elmt_g14;
        Reacs.elmt_g13 = Params.elmt_g13;
        Reacs.elmt_cG_m = elmt_def.elmt_cG_m;
        Reacs.elmt_p5 = Params.elmt_p5;
        Reacs.elmt_cZTL = elmt_def.elmt_cZTL;
        Reacs.elmt_p6 = Params.elmt_p6;
        Reacs.elmt_p3 = Params.elmt_p3;
        Reacs.elmt_p4 = Params.elmt_p4;
        Reacs.elmt_p1 = Params.elmt_p1;
        Reacs.elmt_p2 = Params.elmt_p2;
        Reacs.elmt_cP9_m = elmt_def.elmt_cP9_m;
        Reacs.elmt_p9 = Params.elmt_p9;
        Reacs.elmt_p7 = Params.elmt_p7;
        Reacs.elmt_p8 = Params.elmt_p8;
        Reacs.elmt_def = elmt_def.elmt_def;
        Reacs.elmt_g8 = Params.elmt_g8;
        Reacs.elmt_cE3_m = elmt_def.elmt_cE3_m;
        Reacs.elmt_g9 = Params.elmt_g9;
        Reacs.elmt_g6 = Params.elmt_g6;
        Reacs.elmt_g7 = Params.elmt_g7;
        Reacs.elmt_n13 = Params.elmt_n13;
        Reacs.elmt_n12 = Params.elmt_n12;
        Reacs.elmt_n11 = Params.elmt_n11;
        Reacs.elmt_n10 = Params.elmt_n10;
        Reacs.elmt_cNI_m = elmt_def.elmt_cNI_m;
        Reacs.elmt_q2 = Params.elmt_q2;
        Reacs.elmt_q3 = Params.elmt_q3;
        Reacs.elmt_q1 = Params.elmt_q1;
        Reacs.elmt_n14 = Params.elmt_n14;
        Reacs.elmt_cL_m = elmt_def.elmt_cL_m;
        Reacs.elmt_cT_m = elmt_def.elmt_cT_m;
        Reacs.elmt_cLUX_m = elmt_def.elmt_cLUX_m;
        Reacs.elmt_n3 = Params.elmt_n3;
        Reacs.elmt_n4 = Params.elmt_n4;
        Reacs.elmt_n1 = Params.elmt_n1;
        Reacs.elmt_n2 = Params.elmt_n2;
        Reacs.elmt_cE4 = elmt_def.elmt_cE4;
        Reacs.elmt_cE3 = elmt_def.elmt_cE3;
        Reacs.elmt_e = Params.elmt_e;
        Reacs.elmt_n9 = Params.elmt_n9;
        Reacs.elmt_f = Params.elmt_f;
        Reacs.elmt_c = Params.elmt_c;
        Reacs.elmt_n7 = Params.elmt_n7;
        Reacs.elmt_n8 = Params.elmt_n8;
        Reacs.elmt_d = Params.elmt_d;
        Reacs.elmt_a = Params.elmt_a;
        Reacs.elmt_n5 = Params.elmt_n5;
        Reacs.elmt_n6 = Params.elmt_n6;
        Reacs.elmt_b = Params.elmt_b;
        Reacs.elmt_cCOP1c = elmt_def.elmt_cCOP1c;
        Reacs.elmt_cCOP1d = elmt_def.elmt_cCOP1d;
        Reacs.elmt_cEG = elmt_def.elmt_cEG;
        Reacs.elmt_cLm = elmt_def.elmt_cLm;
        Reacs.elmt_cEC = elmt_def.elmt_cEC;
        Reacs.elmt_m14 = Params.elmt_m14;
        Reacs.elmt_cCOP1n = elmt_def.elmt_cCOP1n;
        Reacs.elmt_m13 = Params.elmt_m13;
        Reacs.elmt_m12 = Params.elmt_m12;
        Reacs.elmt_m11 = Params.elmt_m11;
        Reacs.elmt_m10 = Params.elmt_m10;
        Reacs.elmt_m19 = Params.elmt_m19;
        Reacs.elmt_m18 = Params.elmt_m18;
        Reacs.elmt_m17 = Params.elmt_m17;
        Reacs.elmt_L = Params.elmt_L;
        Reacs.elmt_m16 = Params.elmt_m16;
        Reacs.elmt_m15 = Params.elmt_m15;
        Reacs.elmt_g4 = Params.elmt_g4;
        Reacs.elmt_g5 = Params.elmt_g5;
        Reacs.elmt_g2 = Params.elmt_g2;
        Reacs.elmt_cNI = elmt_def.elmt_cNI;
        Reacs.elmt_g3 = Params.elmt_g3;
        Reacs.elmt_D = Params.elmt_D;
        Reacs.elmt_g1 = Params.elmt_g1;
        Reacs.elmt_m24 = Params.elmt_m24;
        Reacs.elmt_m23 = Params.elmt_m23;
        Reacs.elmt_m22 = Params.elmt_m22;
        Reacs.elmt_m21 = Params.elmt_m21;
        Reacs.elmt_m20 = Params.elmt_m20;
        Reacs.elmt_cG = elmt_def.elmt_cG;
        Reacs.elmt_m29 = Params.elmt_m29;
        Reacs.elmt_m27 = Params.elmt_m27;
        Reacs.elmt_m26 = Params.elmt_m26;
        Reacs.elmt_cP7_m = elmt_def.elmt_cP7_m;
        Reacs.elmt_cP = elmt_def.elmt_cP;
        Reacs.elmt_cL = elmt_def.elmt_cL;
        Reacs.elmt_m36 = Params.elmt_m36;
        Reacs.elmt_p11 = Params.elmt_p11;
        Reacs.elmt_p10 = Params.elmt_p10;
        Reacs.elmt_m35 = Params.elmt_m35;
        Reacs.elmt_m34 = Params.elmt_m34;
        Reacs.elmt_m33 = Params.elmt_m33;
        Reacs.elmt_cP9 = elmt_def.elmt_cP9;
        Reacs.elmt_m32 = Params.elmt_m32;
        Reacs.elmt_cLUX = elmt_def.elmt_cLUX;
        Reacs.elmt_m31 = Params.elmt_m31;
        Reacs.elmt_cP7 = elmt_def.elmt_cP7;
        Reacs.elmt_m30 = Params.elmt_m30;
        Reacs.elmt_p19 = Params.elmt_p19;
        Reacs.elmt_m2 = Params.elmt_m2;
        Reacs.elmt_p18 = Params.elmt_p18;
        Reacs.elmt_m3 = Params.elmt_m3;
        Reacs.elmt_p17 = Params.elmt_p17;
        Reacs.elmt_m1 = Params.elmt_m1;
        Reacs.elmt_p16 = Params.elmt_p16;
        Reacs.elmt_p15 = Params.elmt_p15;
        Reacs.elmt_p14 = Params.elmt_p14;
        Reacs.elmt_m39 = Params.elmt_m39;
        Reacs.elmt_p13 = Params.elmt_p13;
        Reacs.elmt_m37 = Params.elmt_m37;
        Reacs.elmt_p12 = Params.elmt_p12;
        Reacs.elmt_m8 = Params.elmt_m8;
        Reacs.elmt_m9 = Params.elmt_m9;
        Reacs.elmt_m6 = Params.elmt_m6;
        Reacs.elmt_m7 = Params.elmt_m7;
        Reacs.elmt_m4 = Params.elmt_m4;
        Reacs.elmt_m5 = Params.elmt_m5;
        Reacs.elmt_cT = elmt_def.elmt_cT;
        Reacs.elmt_p21 = Params.elmt_p21;
        Reacs.elmt_p20 = Params.elmt_p20;
        elmt_def.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_def.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt_def.elmt_cEC_form = Reacs.elmt_cEC_form;
        elmt_def.elmt_cE4_m_degr = Reacs.elmt_cE4_m_degr;
        elmt_def.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_def.elmt_cE3_m_degr = Reacs.elmt_cE3_m_degr;
        elmt_def.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt_def.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_def.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_def.elmt_cE4_m_trscr = Reacs.elmt_cE4_m_trscr;
        elmt_def.elmt_cEG_degr = Reacs.elmt_cEG_degr;
        elmt_def.elmt_cNI_degr = Reacs.elmt_cNI_degr;
        elmt_def.elmt_cG_m_trscr = Reacs.elmt_cG_m_trscr;
        elmt_def.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_def.elmt_reactant51 = Reacs.elmt_reactant51;
        elmt_def.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_def.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_def.elmt_cP7_m_degr = Reacs.elmt_cP7_m_degr;
        elmt_def.elmt_cE4_trsl = Reacs.elmt_cE4_trsl;
        elmt_def.elmt_cE3n_degr = Reacs.elmt_cE3n_degr;
        elmt_def.elmt_reactant55 = Reacs.elmt_reactant55;
        elmt_def.elmt_cP9_m_degr = Reacs.elmt_cP9_m_degr;
        elmt_def.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_def.elmt_reactant57 = Reacs.elmt_reactant57;
        elmt_def.elmt_cLUX_trsl = Reacs.elmt_cLUX_trsl;
        elmt_def.elmt_cL_degr = Reacs.elmt_cL_degr;
        elmt_def.elmt_cCOP1d_degr = Reacs.elmt_cCOP1d_degr;
        elmt_def.elmt_cP_trsl = Reacs.elmt_cP_trsl;
        elmt_def.elmt_product12 = Reacs.elmt_product12;
        elmt_def.elmt_product10 = Reacs.elmt_product10;
        elmt_def.elmt_cE3_degr = Reacs.elmt_cE3_degr;
        elmt_def.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_def.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_def.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_def.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_def.elmt_cL_trsl = Reacs.elmt_cL_trsl;
        elmt_def.elmt_cE3_m_trscr = Reacs.elmt_cE3_m_trscr;
        elmt_def.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_def.elmt_cE4_degr = Reacs.elmt_cE4_degr;
        elmt_def.elmt_cLm_degr = Reacs.elmt_cLm_degr;
        elmt_def.elmt_product8 = Reacs.elmt_product8;
        elmt_def.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_def.elmt_product6 = Reacs.elmt_product6;
        elmt_def.elmt_product22 = Reacs.elmt_product22;
        elmt_def.elmt_product20 = Reacs.elmt_product20;
        elmt_def.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_def.elmt_product0 = Reacs.elmt_product0;
        elmt_def.elmt_cP9_m_trscr = Reacs.elmt_cP9_m_trscr;
        elmt_def.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_def.elmt_cEC_degr = Reacs.elmt_cEC_degr;
        elmt_def.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_def.elmt_product4 = Reacs.elmt_product4;
        elmt_def.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_def.elmt_product2 = Reacs.elmt_product2;
        elmt_def.elmt_cCOP1n_degr = Reacs.elmt_cCOP1n_degr;
        elmt_def.elmt_cP_degr = Reacs.elmt_cP_degr;
        elmt_def.elmt_cG_cE3_assoc = Reacs.elmt_cG_cE3_assoc;
        elmt_def.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_def.elmt_cL_m_degr = Reacs.elmt_cL_m_degr;
        elmt_def.elmt_product16 = Reacs.elmt_product16;
        elmt_def.elmt_cZTL_degr = Reacs.elmt_cZTL_degr;
        elmt_def.elmt_product14 = Reacs.elmt_product14;
        elmt_def.elmt_cT_m_degr = Reacs.elmt_cT_m_degr;
        elmt_def.elmt_cE3_trsl = Reacs.elmt_cE3_trsl;
        elmt_def.elmt_product18 = Reacs.elmt_product18;
        elmt_def.elmt_cP7_trsl = Reacs.elmt_cP7_trsl;
        elmt_def.elmt_product30 = Reacs.elmt_product30;
        elmt_def.elmt_product33 = Reacs.elmt_product33;
        elmt_def.elmt_cNI_m_degr = Reacs.elmt_cNI_m_degr;
        elmt_def.elmt_cZG_degr = Reacs.elmt_cZG_degr;
        elmt_def.elmt_cZTL_trsl = Reacs.elmt_cZTL_trsl;
        elmt_def.elmt_cLUX_m_degr = Reacs.elmt_cLUX_m_degr;
        elmt_def.elmt_cG_degr = Reacs.elmt_cG_degr;
        elmt_def.elmt_cP7_m_trscr = Reacs.elmt_cP7_m_trscr;
        elmt_def.elmt_product26 = Reacs.elmt_product26;
        elmt_def.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_def.elmt_cT_m_trscr = Reacs.elmt_cT_m_trscr;
        elmt_def.elmt_product24 = Reacs.elmt_product24;
        elmt_def.elmt_cT_degr = Reacs.elmt_cT_degr;
        elmt_def.elmt_product28 = Reacs.elmt_product28;
        elmt_def.elmt_cL_m_trscr = Reacs.elmt_cL_m_trscr;
        elmt_def.elmt_product45 = Reacs.elmt_product45;
        elmt_def.elmt_product42 = Reacs.elmt_product42;
        elmt_def.elmt_cP7_degr = Reacs.elmt_cP7_degr;
        elmt_def.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_def.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_def.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_def.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_def.elmt_cG_m_degr = Reacs.elmt_cG_m_degr;
        elmt_def.elmt_product37 = Reacs.elmt_product37;
        elmt_def.elmt_product35 = Reacs.elmt_product35;
        elmt_def.elmt_cCOP1n_import = Reacs.elmt_cCOP1n_import;
        elmt_def.elmt_product39 = Reacs.elmt_product39;
        elmt_def.elmt_reactant62 = Reacs.elmt_reactant62;
        elmt_def.elmt_cNI_trsl = Reacs.elmt_cNI_trsl;
        elmt_def.elmt_product54 = Reacs.elmt_product54;
        elmt_def.elmt_reactant60 = Reacs.elmt_reactant60;
        elmt_def.elmt_product53 = Reacs.elmt_product53;
        elmt_def.elmt_cG_trsl = Reacs.elmt_cG_trsl;
        elmt_def.elmt_cLUX_degr = Reacs.elmt_cLUX_degr;
        elmt_def.elmt_cL_modif = Reacs.elmt_cL_modif;
        elmt_def.elmt_cP9_trsl = Reacs.elmt_cP9_trsl;
        elmt_def.elmt_product49 = Reacs.elmt_product49;
        elmt_def.elmt_product47 = Reacs.elmt_product47;
        elmt_def.elmt_cCOP1d_activ = Reacs.elmt_cCOP1d_activ;
        elmt_def.elmt_cCOP1c_trsl = Reacs.elmt_cCOP1c_trsl;
        elmt_def.elmt_cE3n_import = Reacs.elmt_cE3n_import;
        elmt_def.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_def.elmt_product61 = Reacs.elmt_product61;
        elmt_def.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_def.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_def.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_def.elmt_cT_trsl = Reacs.elmt_cT_trsl;
        elmt_def.elmt_cCOP1c_degr = Reacs.elmt_cCOP1c_degr;
        elmt_def.elmt_cP9_degr = Reacs.elmt_cP9_degr;
        elmt_def.elmt_cLUX_m_trscr = Reacs.elmt_cLUX_m_trscr;
        elmt_def.elmt_cG_cZTL_assoc = Reacs.elmt_cG_cZTL_assoc;
        elmt_def.elmt_cNI_m_trscr = Reacs.elmt_cNI_m_trscr;
        elmt_def.elmt_product59 = Reacs.elmt_product59;

        Params.assign_elmt_amplitudeStep1 = elmt_event_1.value_elmt_amplitudeStep1;
        Params.assign_elmt_offsetStep1 = elmt_event_1.value_elmt_offsetStep1;
end MODEL1510190000;
