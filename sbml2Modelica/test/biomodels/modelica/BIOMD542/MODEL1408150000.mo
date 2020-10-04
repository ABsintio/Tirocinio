within BIOMD542;
model MODEL1408150000 "Yuraszeck2010 - Vulnerabilities in the Tau Network in Tau Pathophysiology" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-08-12T15:44:03Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Brain elmt_Brain;

    equation
        Reacs.elmt_TauN4R = elmt_Brain.elmt_TauN4R;
        Reacs.elmt_Bag2 = elmt_Brain.elmt_Bag2;
        Reacs.elmt_TauN_4R = elmt_Brain.elmt_TauN_4R;
        Reacs.elmt_CHIP = elmt_Brain.elmt_CHIP;
        Reacs.elmt_k93 = Params.elmt_k93;
        Reacs.elmt_k92 = Params.elmt_k92;
        Reacs.elmt_k91 = Params.elmt_k91;
        Reacs.elmt_k90 = Params.elmt_k90;
        Reacs.elmt_k16 = Params.elmt_k16;
        Reacs.elmt_k15 = Params.elmt_k15;
        Reacs.elmt_Brain = elmt_Brain.elmt_Brain;
        Reacs.elmt_k14 = Params.elmt_k14;
        Reacs.elmt_k13 = Params.elmt_k13;
        Reacs.elmt_k12 = Params.elmt_k12;
        Reacs.elmt_k11 = Params.elmt_k11;
        Reacs.elmt_k10 = Params.elmt_k10;
        Reacs.elmt_TauN3R = elmt_Brain.elmt_TauN3R;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_Tau03R_Hsp90 = elmt_Brain.elmt_Tau03R_Hsp90;
        Reacs.elmt_k19 = Params.elmt_k19;
        Reacs.elmt_k18 = Params.elmt_k18;
        Reacs.elmt_k17 = Params.elmt_k17;
        Reacs.elmt_k8 = Params.elmt_k8;
        Reacs.elmt_k9 = Params.elmt_k9;
        Reacs.elmt_k6 = Params.elmt_k6;
        Reacs.elmt_k7 = Params.elmt_k7;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_k5 = Params.elmt_k5;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_TauH3RMT = elmt_Brain.elmt_TauH3RMT;
        Reacs.elmt_TauH3R_Hsp90 = elmt_Brain.elmt_TauH3R_Hsp90;
        Reacs.elmt_k27 = Params.elmt_k27;
        Reacs.elmt_TauH3RUb = elmt_Brain.elmt_TauH3RUb;
        Reacs.elmt_k26 = Params.elmt_k26;
        Reacs.elmt_k25 = Params.elmt_k25;
        Reacs.elmt_k24 = Params.elmt_k24;
        Reacs.elmt_TauH3R_Hsc70 = elmt_Brain.elmt_TauH3R_Hsc70;
        Reacs.elmt_k23 = Params.elmt_k23;
        Reacs.elmt_k22 = Params.elmt_k22;
        Reacs.elmt_k21 = Params.elmt_k21;
        Reacs.elmt_k20 = Params.elmt_k20;
        Reacs.elmt_k29 = Params.elmt_k29;
        Reacs.elmt_k28 = Params.elmt_k28;
        Reacs.elmt_Tau03R = elmt_Brain.elmt_Tau03R;
        Reacs.elmt_k30 = Params.elmt_k30;
        Reacs.elmt_k38 = Params.elmt_k38;
        Reacs.elmt_k37 = Params.elmt_k37;
        Reacs.elmt_k36 = Params.elmt_k36;
        Reacs.elmt_k35 = Params.elmt_k35;
        Reacs.elmt_k34 = Params.elmt_k34;
        Reacs.elmt_k33 = Params.elmt_k33;
        Reacs.elmt_k32 = Params.elmt_k32;
        Reacs.elmt_k31 = Params.elmt_k31;
        Reacs.elmt_Tau04R_Hsp90 = elmt_Brain.elmt_Tau04R_Hsp90;
        Reacs.elmt_TauN3RMT = elmt_Brain.elmt_TauN3RMT;
        Reacs.elmt_Nucleus4 = elmt_Brain.elmt_Nucleus4;
        Reacs.elmt_Nucleus3 = elmt_Brain.elmt_Nucleus3;
        Reacs.elmt_k39 = Params.elmt_k39;
        Reacs.elmt_k41 = Params.elmt_k41;
        Reacs.elmt_k40 = Params.elmt_k40;
        Reacs.elmt_k49 = Params.elmt_k49;
        Reacs.elmt_k48 = Params.elmt_k48;
        Reacs.elmt__20S = elmt_Brain.elmt__20S;
        Reacs.elmt_k47 = Params.elmt_k47;
        Reacs.elmt_k46 = Params.elmt_k46;
        Reacs.elmt_k45 = Params.elmt_k45;
        Reacs.elmt_k44 = Params.elmt_k44;
        Reacs.elmt_k43 = Params.elmt_k43;
        Reacs.elmt_k42 = Params.elmt_k42;
        Reacs.elmt_k52 = Params.elmt_k52;
        Reacs.elmt_k51 = Params.elmt_k51;
        Reacs.elmt_k50 = Params.elmt_k50;
        Reacs.elmt_TauH4RMT = elmt_Brain.elmt_TauH4RMT;
        Reacs.elmt_TauH3R_CHIP_Hsc70_Bag2 = elmt_Brain.elmt_TauH3R_CHIP_Hsc70_Bag2;
        Reacs.elmt_TauH4RUb = elmt_Brain.elmt_TauH4RUb;
        Reacs.elmt_TauH4R = elmt_Brain.elmt_TauH4R;
        Reacs.elmt_k59 = Params.elmt_k59;
        Reacs.elmt_k58 = Params.elmt_k58;
        Reacs.elmt_k57 = Params.elmt_k57;
        Reacs.elmt_k56 = Params.elmt_k56;
        Reacs.elmt_k55 = Params.elmt_k55;
        Reacs.elmt_k54 = Params.elmt_k54;
        Reacs.elmt_k53 = Params.elmt_k53;
        Reacs.elmt_TauH_3R = elmt_Brain.elmt_TauH_3R;
        Reacs.elmt_Tau04R = elmt_Brain.elmt_Tau04R;
        Reacs.elmt_TauH3R = elmt_Brain.elmt_TauH3R;
        Reacs.elmt_Tau03RMT = elmt_Brain.elmt_Tau03RMT;
        Reacs.elmt_MT = elmt_Brain.elmt_MT;
        Reacs.elmt_k63 = Params.elmt_k63;
        Reacs.elmt_TauH4R_CHIP_Hsc70 = elmt_Brain.elmt_TauH4R_CHIP_Hsc70;
        Reacs.elmt_TauH3R_CHIP_Hsc70 = elmt_Brain.elmt_TauH3R_CHIP_Hsc70;
        Reacs.elmt_k62 = Params.elmt_k62;
        Reacs.elmt_k61 = Params.elmt_k61;
        Reacs.elmt_k60 = Params.elmt_k60;
        Reacs.elmt_k69 = Params.elmt_k69;
        Reacs.elmt_k68 = Params.elmt_k68;
        Reacs.elmt_k67 = Params.elmt_k67;
        Reacs.elmt_k66 = Params.elmt_k66;
        Reacs.elmt_k65 = Params.elmt_k65;
        Reacs.elmt__26S = elmt_Brain.elmt__26S;
        Reacs.elmt_k64 = Params.elmt_k64;
        Reacs.elmt_TauH_4R = elmt_Brain.elmt_TauH_4R;
        Reacs.elmt_Agg43 = elmt_Brain.elmt_Agg43;
        Reacs.elmt_TauN4RMT = elmt_Brain.elmt_TauN4RMT;
        Reacs.elmt_Tau0_3R = elmt_Brain.elmt_Tau0_3R;
        Reacs.elmt_ATP = elmt_Brain.elmt_ATP;
        Reacs.elmt_TauH4R_Hsp90 = elmt_Brain.elmt_TauH4R_Hsp90;
        Reacs.elmt_Tau04RMT = elmt_Brain.elmt_Tau04RMT;
        Reacs.elmt_k74 = Params.elmt_k74;
        Reacs.elmt_k73 = Params.elmt_k73;
        Reacs.elmt_k72 = Params.elmt_k72;
        Reacs.elmt_k71 = Params.elmt_k71;
        Reacs.elmt_Hsc70 = elmt_Brain.elmt_Hsc70;
        Reacs.elmt_k70 = Params.elmt_k70;
        Reacs.elmt_ADP = elmt_Brain.elmt_ADP;
        Reacs.elmt_k79 = Params.elmt_k79;
        Reacs.elmt_k78 = Params.elmt_k78;
        Reacs.elmt_k77 = Params.elmt_k77;
        Reacs.elmt_k76 = Params.elmt_k76;
        Reacs.elmt_Hsp90 = elmt_Brain.elmt_Hsp90;
        Reacs.elmt_k75 = Params.elmt_k75;
        Reacs.elmt_TauH4R_CHIP_Hsc70_Bag2 = elmt_Brain.elmt_TauH4R_CHIP_Hsc70_Bag2;
        Reacs.elmt_Tau0_4R = elmt_Brain.elmt_Tau0_4R;
        Reacs.elmt_TauN_3R = elmt_Brain.elmt_TauN_3R;
        Reacs.elmt_Bp = elmt_Brain.elmt_Bp;
        Reacs.elmt_k85 = Params.elmt_k85;
        Reacs.elmt_k84 = Params.elmt_k84;
        Reacs.elmt_k83 = Params.elmt_k83;
        Reacs.elmt_k82 = Params.elmt_k82;
        Reacs.elmt_k81 = Params.elmt_k81;
        Reacs.elmt_k80 = Params.elmt_k80;
        Reacs.elmt_Ap = elmt_Brain.elmt_Ap;
        Reacs.elmt_k89 = Params.elmt_k89;
        Reacs.elmt_Agg33 = elmt_Brain.elmt_Agg33;
        Reacs.elmt_k88 = Params.elmt_k88;
        Reacs.elmt_k87 = Params.elmt_k87;
        Reacs.elmt_TauH4R_Hsc70 = elmt_Brain.elmt_TauH4R_Hsc70;
        Reacs.elmt_k86 = Params.elmt_k86;
        elmt_Brain.elmt_r7 = Reacs.elmt_r7;
        elmt_Brain.elmt_r8 = Reacs.elmt_r8;
        elmt_Brain.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_Brain.elmt_r5 = Reacs.elmt_r5;
        elmt_Brain.elmt_r6 = Reacs.elmt_r6;
        elmt_Brain.elmt_r69 = Reacs.elmt_r69;
        elmt_Brain.elmt_r68 = Reacs.elmt_r68;
        elmt_Brain.elmt_r3 = Reacs.elmt_r3;
        elmt_Brain.elmt_r67 = Reacs.elmt_r67;
        elmt_Brain.elmt_r4 = Reacs.elmt_r4;
        elmt_Brain.elmt_r66 = Reacs.elmt_r66;
        elmt_Brain.elmt_r1 = Reacs.elmt_r1;
        elmt_Brain.elmt_r2 = Reacs.elmt_r2;
        elmt_Brain.elmt_r65 = Reacs.elmt_r65;
        elmt_Brain.elmt_reactant190 = Reacs.elmt_reactant190;
        elmt_Brain.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_Brain.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt_Brain.elmt_r9 = Reacs.elmt_r9;
        elmt_Brain.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_Brain.elmt_reactant197 = Reacs.elmt_reactant197;
        elmt_Brain.elmt_product211 = Reacs.elmt_product211;
        elmt_Brain.elmt_reactant196 = Reacs.elmt_reactant196;
        elmt_Brain.elmt_product213 = Reacs.elmt_product213;
        elmt_Brain.elmt_reactant192 = Reacs.elmt_reactant192;
        elmt_Brain.elmt_r75 = Reacs.elmt_r75;
        elmt_Brain.elmt_r74 = Reacs.elmt_r74;
        elmt_Brain.elmt_product219 = Reacs.elmt_product219;
        elmt_Brain.elmt_r73 = Reacs.elmt_r73;
        elmt_Brain.elmt_r72 = Reacs.elmt_r72;
        elmt_Brain.elmt_r71 = Reacs.elmt_r71;
        elmt_Brain.elmt_r70 = Reacs.elmt_r70;
        elmt_Brain.elmt_product215 = Reacs.elmt_product215;
        elmt_Brain.elmt_product217 = Reacs.elmt_product217;
        elmt_Brain.elmt_reactant199 = Reacs.elmt_reactant199;
        elmt_Brain.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_Brain.elmt_reactant53 = Reacs.elmt_reactant53;
        elmt_Brain.elmt_r79 = Reacs.elmt_r79;
        elmt_Brain.elmt_r78 = Reacs.elmt_r78;
        elmt_Brain.elmt_r77 = Reacs.elmt_r77;
        elmt_Brain.elmt_r76 = Reacs.elmt_r76;
        elmt_Brain.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_Brain.elmt_reactant59 = Reacs.elmt_reactant59;
        elmt_Brain.elmt_reactant55 = Reacs.elmt_reactant55;
        elmt_Brain.elmt_product102 = Reacs.elmt_product102;
        elmt_Brain.elmt_product222 = Reacs.elmt_product222;
        elmt_Brain.elmt_product104 = Reacs.elmt_product104;
        elmt_Brain.elmt_product225 = Reacs.elmt_product225;
        elmt_Brain.elmt_product224 = Reacs.elmt_product224;
        elmt_Brain.elmt_r84 = Reacs.elmt_r84;
        elmt_Brain.elmt_r83 = Reacs.elmt_r83;
        elmt_Brain.elmt_r82 = Reacs.elmt_r82;
        elmt_Brain.elmt_r81 = Reacs.elmt_r81;
        elmt_Brain.elmt_r80 = Reacs.elmt_r80;
        elmt_Brain.elmt_product108 = Reacs.elmt_product108;
        elmt_Brain.elmt_product107 = Reacs.elmt_product107;
        elmt_Brain.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_Brain.elmt_product12 = Reacs.elmt_product12;
        elmt_Brain.elmt_product10 = Reacs.elmt_product10;
        elmt_Brain.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_Brain.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_Brain.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_Brain.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_Brain.elmt_reactant175 = Reacs.elmt_reactant175;
        elmt_Brain.elmt_reactant174 = Reacs.elmt_reactant174;
        elmt_Brain.elmt_reactant172 = Reacs.elmt_reactant172;
        elmt_Brain.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_Brain.elmt_reactant177 = Reacs.elmt_reactant177;
        elmt_Brain.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_Brain.elmt_product22 = Reacs.elmt_product22;
        elmt_Brain.elmt_product21 = Reacs.elmt_product21;
        elmt_Brain.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt_Brain.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_Brain.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_Brain.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_Brain.elmt_product201 = Reacs.elmt_product201;
        elmt_Brain.elmt_reactant186 = Reacs.elmt_reactant186;
        elmt_Brain.elmt_product200 = Reacs.elmt_product200;
        elmt_Brain.elmt_product202 = Reacs.elmt_product202;
        elmt_Brain.elmt_reactant184 = Reacs.elmt_reactant184;
        elmt_Brain.elmt_reactant181 = Reacs.elmt_reactant181;
        elmt_Brain.elmt_reactant180 = Reacs.elmt_reactant180;
        elmt_Brain.elmt_product209 = Reacs.elmt_product209;
        elmt_Brain.elmt_product16 = Reacs.elmt_product16;
        elmt_Brain.elmt_product14 = Reacs.elmt_product14;
        elmt_Brain.elmt_product19 = Reacs.elmt_product19;
        elmt_Brain.elmt_reactant189 = Reacs.elmt_reactant189;
        elmt_Brain.elmt_product206 = Reacs.elmt_product206;
        elmt_Brain.elmt_r28 = Reacs.elmt_r28;
        elmt_Brain.elmt_r27 = Reacs.elmt_r27;
        elmt_Brain.elmt_r26 = Reacs.elmt_r26;
        elmt_Brain.elmt_r25 = Reacs.elmt_r25;
        elmt_Brain.elmt_r24 = Reacs.elmt_r24;
        elmt_Brain.elmt_r23 = Reacs.elmt_r23;
        elmt_Brain.elmt_r22 = Reacs.elmt_r22;
        elmt_Brain.elmt_r21 = Reacs.elmt_r21;
        elmt_Brain.elmt_r29 = Reacs.elmt_r29;
        elmt_Brain.elmt_reactant154 = Reacs.elmt_reactant154;
        elmt_Brain.elmt_reactant152 = Reacs.elmt_reactant152;
        elmt_Brain.elmt_r31 = Reacs.elmt_r31;
        elmt_Brain.elmt_r30 = Reacs.elmt_r30;
        elmt_Brain.elmt_reactant159 = Reacs.elmt_reactant159;
        elmt_Brain.elmt_reactant157 = Reacs.elmt_reactant157;
        elmt_Brain.elmt_r39 = Reacs.elmt_r39;
        elmt_Brain.elmt_r38 = Reacs.elmt_r38;
        elmt_Brain.elmt_r37 = Reacs.elmt_r37;
        elmt_Brain.elmt_r36 = Reacs.elmt_r36;
        elmt_Brain.elmt_r35 = Reacs.elmt_r35;
        elmt_Brain.elmt_r34 = Reacs.elmt_r34;
        elmt_Brain.elmt_r33 = Reacs.elmt_r33;
        elmt_Brain.elmt_r32 = Reacs.elmt_r32;
        elmt_Brain.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_Brain.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_Brain.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_Brain.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_Brain.elmt_reactant163 = Reacs.elmt_reactant163;
        elmt_Brain.elmt_reactant162 = Reacs.elmt_reactant162;
        elmt_Brain.elmt_r42 = Reacs.elmt_r42;
        elmt_Brain.elmt_r41 = Reacs.elmt_r41;
        elmt_Brain.elmt_r40 = Reacs.elmt_r40;
        elmt_Brain.elmt_reactant169 = Reacs.elmt_reactant169;
        elmt_Brain.elmt_reactant168 = Reacs.elmt_reactant168;
        elmt_Brain.elmt_reactant166 = Reacs.elmt_reactant166;
        elmt_Brain.elmt_r49 = Reacs.elmt_r49;
        elmt_Brain.elmt_r48 = Reacs.elmt_r48;
        elmt_Brain.elmt_r47 = Reacs.elmt_r47;
        elmt_Brain.elmt_r46 = Reacs.elmt_r46;
        elmt_Brain.elmt_r45 = Reacs.elmt_r45;
        elmt_Brain.elmt_r44 = Reacs.elmt_r44;
        elmt_Brain.elmt_r43 = Reacs.elmt_r43;
        elmt_Brain.elmt_product193 = Reacs.elmt_product193;
        elmt_Brain.elmt_product195 = Reacs.elmt_product195;
        elmt_Brain.elmt_product194 = Reacs.elmt_product194;
        elmt_Brain.elmt_product191 = Reacs.elmt_product191;
        elmt_Brain.elmt_reactant132 = Reacs.elmt_reactant132;
        elmt_Brain.elmt_reactant131 = Reacs.elmt_reactant131;
        elmt_Brain.elmt_product198 = Reacs.elmt_product198;
        elmt_Brain.elmt_r53 = Reacs.elmt_r53;
        elmt_Brain.elmt_reactant139 = Reacs.elmt_reactant139;
        elmt_Brain.elmt_r52 = Reacs.elmt_r52;
        elmt_Brain.elmt_r51 = Reacs.elmt_r51;
        elmt_Brain.elmt_r50 = Reacs.elmt_r50;
        elmt_Brain.elmt_reactant137 = Reacs.elmt_reactant137;
        elmt_Brain.elmt_reactant134 = Reacs.elmt_reactant134;
        elmt_Brain.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_Brain.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_Brain.elmt_r59 = Reacs.elmt_r59;
        elmt_Brain.elmt_r58 = Reacs.elmt_r58;
        elmt_Brain.elmt_r57 = Reacs.elmt_r57;
        elmt_Brain.elmt_r56 = Reacs.elmt_r56;
        elmt_Brain.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_Brain.elmt_r55 = Reacs.elmt_r55;
        elmt_Brain.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_Brain.elmt_r54 = Reacs.elmt_r54;
        elmt_Brain.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_Brain.elmt_reactant142 = Reacs.elmt_reactant142;
        elmt_Brain.elmt_reactant141 = Reacs.elmt_reactant141;
        elmt_Brain.elmt_r64 = Reacs.elmt_r64;
        elmt_Brain.elmt_r63 = Reacs.elmt_r63;
        elmt_Brain.elmt_reactant149 = Reacs.elmt_reactant149;
        elmt_Brain.elmt_r62 = Reacs.elmt_r62;
        elmt_Brain.elmt_r61 = Reacs.elmt_r61;
        elmt_Brain.elmt_r60 = Reacs.elmt_r60;
        elmt_Brain.elmt_reactant147 = Reacs.elmt_reactant147;
        elmt_Brain.elmt_reactant144 = Reacs.elmt_reactant144;
        elmt_Brain.elmt_product74 = Reacs.elmt_product74;
        elmt_Brain.elmt_product72 = Reacs.elmt_product72;
        elmt_Brain.elmt_product78 = Reacs.elmt_product78;
        elmt_Brain.elmt_reactant109 = Reacs.elmt_reactant109;
        elmt_Brain.elmt_product75 = Reacs.elmt_product75;
        elmt_Brain.elmt_reactant229 = Reacs.elmt_reactant229;
        elmt_Brain.elmt_product171 = Reacs.elmt_product171;
        elmt_Brain.elmt_product170 = Reacs.elmt_product170;
        elmt_Brain.elmt_product173 = Reacs.elmt_product173;
        elmt_Brain.elmt_product179 = Reacs.elmt_product179;
        elmt_Brain.elmt_product178 = Reacs.elmt_product178;
        elmt_Brain.elmt_product176 = Reacs.elmt_product176;
        elmt_Brain.elmt_reactant238 = Reacs.elmt_reactant238;
        elmt_Brain.elmt_reactant117 = Reacs.elmt_reactant117;
        elmt_Brain.elmt_product69 = Reacs.elmt_product69;
        elmt_Brain.elmt_reactant236 = Reacs.elmt_reactant236;
        elmt_Brain.elmt_reactant115 = Reacs.elmt_reactant115;
        elmt_Brain.elmt_reactant235 = Reacs.elmt_reactant235;
        elmt_Brain.elmt_reactant112 = Reacs.elmt_reactant112;
        elmt_Brain.elmt_reactant111 = Reacs.elmt_reactant111;
        elmt_Brain.elmt_product84 = Reacs.elmt_product84;
        elmt_Brain.elmt_product83 = Reacs.elmt_product83;
        elmt_Brain.elmt_product89 = Reacs.elmt_product89;
        elmt_Brain.elmt_product87 = Reacs.elmt_product87;
        elmt_Brain.elmt_reactant119 = Reacs.elmt_reactant119;
        elmt_Brain.elmt_product182 = Reacs.elmt_product182;
        elmt_Brain.elmt_product183 = Reacs.elmt_product183;
        elmt_Brain.elmt_product81 = Reacs.elmt_product81;
        elmt_Brain.elmt_reactant242 = Reacs.elmt_reactant242;
        elmt_Brain.elmt_reactant121 = Reacs.elmt_reactant121;
        elmt_Brain.elmt_reactant241 = Reacs.elmt_reactant241;
        elmt_Brain.elmt_product185 = Reacs.elmt_product185;
        elmt_Brain.elmt_product188 = Reacs.elmt_product188;
        elmt_Brain.elmt_product187 = Reacs.elmt_product187;
        elmt_Brain.elmt_reactant129 = Reacs.elmt_reactant129;
        elmt_Brain.elmt_reactant127 = Reacs.elmt_reactant127;
        elmt_Brain.elmt_product79 = Reacs.elmt_product79;
        elmt_Brain.elmt_reactant124 = Reacs.elmt_reactant124;
        elmt_Brain.elmt_reactant244 = Reacs.elmt_reactant244;
        elmt_Brain.elmt_reactant122 = Reacs.elmt_reactant122;
        elmt_Brain.elmt_product96 = Reacs.elmt_product96;
        elmt_Brain.elmt_product94 = Reacs.elmt_product94;
        elmt_Brain.elmt_product98 = Reacs.elmt_product98;
        elmt_Brain.elmt_reactant208 = Reacs.elmt_reactant208;
        elmt_Brain.elmt_product97 = Reacs.elmt_product97;
        elmt_Brain.elmt_product150 = Reacs.elmt_product150;
        elmt_Brain.elmt_product91 = Reacs.elmt_product91;
        elmt_Brain.elmt_product90 = Reacs.elmt_product90;
        elmt_Brain.elmt_product155 = Reacs.elmt_product155;
        elmt_Brain.elmt_reactant216 = Reacs.elmt_reactant216;
        elmt_Brain.elmt_reactant214 = Reacs.elmt_reactant214;
        elmt_Brain.elmt_reactant212 = Reacs.elmt_reactant212;
        elmt_Brain.elmt_reactant210 = Reacs.elmt_reactant210;
        elmt_Brain.elmt_r17 = Reacs.elmt_r17;
        elmt_Brain.elmt_product9 = Reacs.elmt_product9;
        elmt_Brain.elmt_r16 = Reacs.elmt_r16;
        elmt_Brain.elmt_r15 = Reacs.elmt_r15;
        elmt_Brain.elmt_product6 = Reacs.elmt_product6;
        elmt_Brain.elmt_r14 = Reacs.elmt_r14;
        elmt_Brain.elmt_r13 = Reacs.elmt_r13;
        elmt_Brain.elmt_r12 = Reacs.elmt_r12;
        elmt_Brain.elmt_r11 = Reacs.elmt_r11;
        elmt_Brain.elmt_r10 = Reacs.elmt_r10;
        elmt_Brain.elmt_reactant218 = Reacs.elmt_reactant218;
        elmt_Brain.elmt_product160 = Reacs.elmt_product160;
        elmt_Brain.elmt_product0 = Reacs.elmt_product0;
        elmt_Brain.elmt_product4 = Reacs.elmt_product4;
        elmt_Brain.elmt_r19 = Reacs.elmt_r19;
        elmt_Brain.elmt_product3 = Reacs.elmt_product3;
        elmt_Brain.elmt_r18 = Reacs.elmt_r18;
        elmt_Brain.elmt_reactant220 = Reacs.elmt_reactant220;
        elmt_Brain.elmt_product167 = Reacs.elmt_product167;
        elmt_Brain.elmt_product164 = Reacs.elmt_product164;
        elmt_Brain.elmt_product165 = Reacs.elmt_product165;
        elmt_Brain.elmt_r20 = Reacs.elmt_r20;
        elmt_Brain.elmt_reactant106 = Reacs.elmt_reactant106;
        elmt_Brain.elmt_reactant227 = Reacs.elmt_reactant227;
        elmt_Brain.elmt_reactant105 = Reacs.elmt_reactant105;
        elmt_Brain.elmt_reactant226 = Reacs.elmt_reactant226;
        elmt_Brain.elmt_reactant223 = Reacs.elmt_reactant223;
        elmt_Brain.elmt_reactant101 = Reacs.elmt_reactant101;
        elmt_Brain.elmt_reactant221 = Reacs.elmt_reactant221;
        elmt_Brain.elmt_reactant85 = Reacs.elmt_reactant85;
        elmt_Brain.elmt_reactant86 = Reacs.elmt_reactant86;
        elmt_Brain.elmt_product34 = Reacs.elmt_product34;
        elmt_Brain.elmt_reactant80 = Reacs.elmt_reactant80;
        elmt_Brain.elmt_product32 = Reacs.elmt_product32;
        elmt_Brain.elmt_reactant82 = Reacs.elmt_reactant82;
        elmt_Brain.elmt_product31 = Reacs.elmt_product31;
        elmt_Brain.elmt_reactant88 = Reacs.elmt_reactant88;
        elmt_Brain.elmt_product135 = Reacs.elmt_product135;
        elmt_Brain.elmt_product136 = Reacs.elmt_product136;
        elmt_Brain.elmt_product130 = Reacs.elmt_product130;
        elmt_Brain.elmt_product133 = Reacs.elmt_product133;
        elmt_Brain.elmt_product26 = Reacs.elmt_product26;
        elmt_Brain.elmt_product24 = Reacs.elmt_product24;
        elmt_Brain.elmt_product138 = Reacs.elmt_product138;
        elmt_Brain.elmt_product29 = Reacs.elmt_product29;
        elmt_Brain.elmt_product41 = Reacs.elmt_product41;
        elmt_Brain.elmt_reactant95 = Reacs.elmt_reactant95;
        elmt_Brain.elmt_reactant92 = Reacs.elmt_reactant92;
        elmt_Brain.elmt_reactant93 = Reacs.elmt_reactant93;
        elmt_Brain.elmt_product42 = Reacs.elmt_product42;
        elmt_Brain.elmt_product140 = Reacs.elmt_product140;
        elmt_Brain.elmt_reactant99 = Reacs.elmt_reactant99;
        elmt_Brain.elmt_product146 = Reacs.elmt_product146;
        elmt_Brain.elmt_product145 = Reacs.elmt_product145;
        elmt_Brain.elmt_product143 = Reacs.elmt_product143;
        elmt_Brain.elmt_reactant205 = Reacs.elmt_reactant205;
        elmt_Brain.elmt_product36 = Reacs.elmt_product36;
        elmt_Brain.elmt_reactant203 = Reacs.elmt_reactant203;
        elmt_Brain.elmt_product39 = Reacs.elmt_product39;
        elmt_Brain.elmt_product51 = Reacs.elmt_product51;
        elmt_Brain.elmt_reactant62 = Reacs.elmt_reactant62;
        elmt_Brain.elmt_reactant64 = Reacs.elmt_reactant64;
        elmt_Brain.elmt_reactant65 = Reacs.elmt_reactant65;
        elmt_Brain.elmt_reactant68 = Reacs.elmt_reactant68;
        elmt_Brain.elmt_product113 = Reacs.elmt_product113;
        elmt_Brain.elmt_product233 = Reacs.elmt_product233;
        elmt_Brain.elmt_product114 = Reacs.elmt_product114;
        elmt_Brain.elmt_product110 = Reacs.elmt_product110;
        elmt_Brain.elmt_product46 = Reacs.elmt_product46;
        elmt_Brain.elmt_product237 = Reacs.elmt_product237;
        elmt_Brain.elmt_product116 = Reacs.elmt_product116;
        elmt_Brain.elmt_product239 = Reacs.elmt_product239;
        elmt_Brain.elmt_product118 = Reacs.elmt_product118;
        elmt_Brain.elmt_product63 = Reacs.elmt_product63;
        elmt_Brain.elmt_reactant73 = Reacs.elmt_reactant73;
        elmt_Brain.elmt_product61 = Reacs.elmt_product61;
        elmt_Brain.elmt_product60 = Reacs.elmt_product60;
        elmt_Brain.elmt_product67 = Reacs.elmt_product67;
        elmt_Brain.elmt_product66 = Reacs.elmt_product66;
        elmt_Brain.elmt_reactant70 = Reacs.elmt_reactant70;
        elmt_Brain.elmt_reactant71 = Reacs.elmt_reactant71;
        elmt_Brain.elmt_reactant76 = Reacs.elmt_reactant76;
        elmt_Brain.elmt_reactant77 = Reacs.elmt_reactant77;
        elmt_Brain.elmt_product123 = Reacs.elmt_product123;
        elmt_Brain.elmt_product126 = Reacs.elmt_product126;
        elmt_Brain.elmt_product125 = Reacs.elmt_product125;
        elmt_Brain.elmt_product120 = Reacs.elmt_product120;
        elmt_Brain.elmt_product240 = Reacs.elmt_product240;
        elmt_Brain.elmt_product57 = Reacs.elmt_product57;
        elmt_Brain.elmt_product128 = Reacs.elmt_product128;
        elmt_Brain.elmt_product248 = Reacs.elmt_product248;

end MODEL1408150000;
