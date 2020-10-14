within BIOMD564;
model MODEL1410030000 "Gould2013 - Temperature Sensitive Circadian Clock" annotation(Documentation(info="<annotation>
      <plasmo:dbinfo xmlns:plasmo=\"http://www.uk.ac.ed.csbe.sbsi.plasmo/ns\" plasmo:id=\"PLM_50\" plasmo:version=\"2\"/>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#metaid_0000002\">
            <bqmodel:isDerivedFrom>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/biomodels.db/BIOMD0000000089\"/>
              </rdf:Bag>
            </bqmodel:isDerivedFrom>
            <dcterms:bibliographicCitation>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/20865009\"/>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2010-10-21T17:09:01Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <vCard:EMAIL>mirela.domijan@warwick.ac.uk</vCard:EMAIL>
                    <vCard:N>
                      <rdf:Description>
                        <vCard:Family>Domijan</vCard:Family>
                        <vCard:Given>Mirela</vCard:Given>
                      </rdf:Description>
                    </vCard:N>
                    <vCard:ORG>
                      <rdf:Description>
                        <vCard:Orgname>University of Warwick</vCard:Orgname>
                      </rdf:Description>
                    </vCard:ORG>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:creator>
            <dcterms:modified>
              <rdf:Description>
                <dcterms:W3CDTF>2011-12-05T20:29:02Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:modified>
            <CopasiMT:is>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/biomodels.db/BIOMD0000000273\"/>
              </rdf:Bag>
            </CopasiMT:is>
            <CopasiMT:is>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/biomodels.db/MODEL1007240000\"/>
              </rdf:Bag>
            </CopasiMT:is>
            <CopasiMT:isVersionOf>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/go/GO:0007623\"/>
              </rdf:Bag>
            </CopasiMT:isVersionOf>
            <CopasiMT:occursIn>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/taxonomy/3702\"/>
              </rdf:Bag>
            </CopasiMT:occursIn>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_def elmt_def;

    equation
        Reacs.elmt_g12 = Params.elmt_g12;
        Reacs.elmt_g11 = Params.elmt_g11;
        Reacs.elmt_g10 = Params.elmt_g10;
        Reacs.elmt_cZG = elmt_def.elmt_cZG;
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
        Reacs.elmt_g9 = Params.elmt_g9;
        Reacs.elmt_g6 = Params.elmt_g6;
        Reacs.elmt_g7 = Params.elmt_g7;
        Reacs.elmt_n12 = Params.elmt_n12;
        Reacs.elmt_n11 = Params.elmt_n11;
        Reacs.elmt_n10 = Params.elmt_n10;
        Reacs.elmt_q4 = Params.elmt_q4;
        Reacs.elmt_cNI_m = elmt_def.elmt_cNI_m;
        Reacs.elmt_q2 = Params.elmt_q2;
        Reacs.elmt_q3 = Params.elmt_q3;
        Reacs.elmt_q1 = Params.elmt_q1;
        Reacs.elmt_cL_m = elmt_def.elmt_cL_m;
        Reacs.elmt_cT_m = elmt_def.elmt_cT_m;
        Reacs.elmt_s = Params.elmt_s;
        Reacs.elmt_n3 = Params.elmt_n3;
        Reacs.elmt_o = Params.elmt_o;
        Reacs.elmt_n4 = Params.elmt_n4;
        Reacs.elmt_n1 = Params.elmt_n1;
        Reacs.elmt_m = Params.elmt_m;
        Reacs.elmt_n2 = Params.elmt_n2;
        Reacs.elmt_n = Params.elmt_n;
        Reacs.elmt_k = Params.elmt_k;
        Reacs.elmt_n0 = Params.elmt_n0;
        Reacs.elmt_l = Params.elmt_l;
        Reacs.elmt_i = Params.elmt_i;
        Reacs.elmt_j = Params.elmt_j;
        Reacs.elmt_g = Params.elmt_g;
        Reacs.elmt_h = Params.elmt_h;
        Reacs.elmt_n9 = Params.elmt_n9;
        Reacs.elmt_e = Params.elmt_e;
        Reacs.elmt_f = Params.elmt_f;
        Reacs.elmt_c = Params.elmt_c;
        Reacs.elmt_cTm = elmt_def.elmt_cTm;
        Reacs.elmt_n7 = Params.elmt_n7;
        Reacs.elmt_n8 = Params.elmt_n8;
        Reacs.elmt_d = Params.elmt_d;
        Reacs.elmt_a = Params.elmt_a;
        Reacs.elmt_n5 = Params.elmt_n5;
        Reacs.elmt_b = Params.elmt_b;
        Reacs.elmt_n6 = Params.elmt_n6;
        Reacs.elmt_cLm = elmt_def.elmt_cLm;
        Reacs.elmt_m14 = Params.elmt_m14;
        Reacs.elmt_m13 = Params.elmt_m13;
        Reacs.elmt_m12 = Params.elmt_m12;
        Reacs.elmt_m11 = Params.elmt_m11;
        Reacs.elmt_m10 = Params.elmt_m10;
        Reacs.elmt_m19 = Params.elmt_m19;
        Reacs.elmt_m18 = Params.elmt_m18;
        Reacs.elmt_L = Params.elmt_L;
        Reacs.elmt_m17 = Params.elmt_m17;
        Reacs.elmt_m16 = Params.elmt_m16;
        Reacs.elmt_m15 = Params.elmt_m15;
        Reacs.elmt_g4 = Params.elmt_g4;
        Reacs.elmt_g5 = Params.elmt_g5;
        Reacs.elmt_cNI = elmt_def.elmt_cNI;
        Reacs.elmt_g2 = Params.elmt_g2;
        Reacs.elmt_g3 = Params.elmt_g3;
        Reacs.elmt_D = Params.elmt_D;
        Reacs.elmt_g1 = Params.elmt_g1;
        Reacs.elmt_cY_m = elmt_def.elmt_cY_m;
        Reacs.elmt_m25 = Params.elmt_m25;
        Reacs.elmt_m24 = Params.elmt_m24;
        Reacs.elmt_m23 = Params.elmt_m23;
        Reacs.elmt_m22 = Params.elmt_m22;
        Reacs.elmt_m21 = Params.elmt_m21;
        Reacs.elmt_m20 = Params.elmt_m20;
        Reacs.elmt_cG = elmt_def.elmt_cG;
        Reacs.elmt_m26 = Params.elmt_m26;
        Reacs.elmt_cP7_m = elmt_def.elmt_cP7_m;
        Reacs.elmt_cP = elmt_def.elmt_cP;
        Reacs.elmt_cL = elmt_def.elmt_cL;
        Reacs.elmt_p11 = Params.elmt_p11;
        Reacs.elmt_p10 = Params.elmt_p10;
        Reacs.elmt_cP9 = elmt_def.elmt_cP9;
        Reacs.elmt_cP7 = elmt_def.elmt_cP7;
        Reacs.elmt_m2 = Params.elmt_m2;
        Reacs.elmt_m3 = Params.elmt_m3;
        Reacs.elmt_m1 = Params.elmt_m1;
        Reacs.elmt_p15 = Params.elmt_p15;
        Reacs.elmt_p14 = Params.elmt_p14;
        Reacs.elmt_p13 = Params.elmt_p13;
        Reacs.elmt_p12 = Params.elmt_p12;
        Reacs.elmt_m8 = Params.elmt_m8;
        Reacs.elmt_m9 = Params.elmt_m9;
        Reacs.elmt_m6 = Params.elmt_m6;
        Reacs.elmt_m7 = Params.elmt_m7;
        Reacs.elmt_m4 = Params.elmt_m4;
        Reacs.elmt_m5 = Params.elmt_m5;
        Reacs.elmt_cY = elmt_def.elmt_cY;
        Reacs.elmt_cT = elmt_def.elmt_cT;
        elmt_def.elmt_product30 = Reacs.elmt_product30;
        elmt_def.elmt_product32 = Reacs.elmt_product32;
        elmt_def.elmt_cNI_m_degr = Reacs.elmt_cNI_m_degr;
        elmt_def.elmt_cZG_degr = Reacs.elmt_cZG_degr;
        elmt_def.elmt_cZTL_trsl = Reacs.elmt_cZTL_trsl;
        elmt_def.elmt_cG_degr = Reacs.elmt_cG_degr;
        elmt_def.elmt_cP7_m_trscr = Reacs.elmt_cP7_m_trscr;
        elmt_def.elmt_product26 = Reacs.elmt_product26;
        elmt_def.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_def.elmt_cT_m_trscr = Reacs.elmt_cT_m_trscr;
        elmt_def.elmt_cNI_degr = Reacs.elmt_cNI_degr;
        elmt_def.elmt_cT_degr = Reacs.elmt_cT_degr;
        elmt_def.elmt_product24 = Reacs.elmt_product24;
        elmt_def.elmt_cG_m_trscr = Reacs.elmt_cG_m_trscr;
        elmt_def.elmt_product28 = Reacs.elmt_product28;
        elmt_def.elmt_cL_m_trscr = Reacs.elmt_cL_m_trscr;
        elmt_def.elmt_cP7_m_degr = Reacs.elmt_cP7_m_degr;
        elmt_def.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_def.elmt_cP7_degr = Reacs.elmt_cP7_degr;
        elmt_def.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_def.elmt_cP9_m_degr = Reacs.elmt_cP9_m_degr;
        elmt_def.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_def.elmt_cY_trsl = Reacs.elmt_cY_trsl;
        elmt_def.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_def.elmt_cY_m_degr = Reacs.elmt_cY_m_degr;
        elmt_def.elmt_cG_m_degr = Reacs.elmt_cG_m_degr;
        elmt_def.elmt_product37 = Reacs.elmt_product37;
        elmt_def.elmt_cL_degr = Reacs.elmt_cL_degr;
        elmt_def.elmt_product36 = Reacs.elmt_product36;
        elmt_def.elmt_cP_trsl = Reacs.elmt_cP_trsl;
        elmt_def.elmt_cY_m_trscr = Reacs.elmt_cY_m_trscr;
        elmt_def.elmt_cNI_trsl = Reacs.elmt_cNI_trsl;
        elmt_def.elmt_product12 = Reacs.elmt_product12;
        elmt_def.elmt_product10 = Reacs.elmt_product10;
        elmt_def.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_def.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_def.elmt_cG_trsl = Reacs.elmt_cG_trsl;
        elmt_def.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_def.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_def.elmt_cL_trsl = Reacs.elmt_cL_trsl;
        elmt_def.elmt_cL_modif = Reacs.elmt_cL_modif;
        elmt_def.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_def.elmt_cP9_trsl = Reacs.elmt_cP9_trsl;
        elmt_def.elmt_cTm_degr = Reacs.elmt_cTm_degr;
        elmt_def.elmt_cLm_degr = Reacs.elmt_cLm_degr;
        elmt_def.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_def.elmt_product8 = Reacs.elmt_product8;
        elmt_def.elmt_cT_modif = Reacs.elmt_cT_modif;
        elmt_def.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_def.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_def.elmt_product6 = Reacs.elmt_product6;
        elmt_def.elmt_product22 = Reacs.elmt_product22;
        elmt_def.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_def.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_def.elmt_product20 = Reacs.elmt_product20;
        elmt_def.elmt_product0 = Reacs.elmt_product0;
        elmt_def.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_def.elmt_cP9_m_trscr = Reacs.elmt_cP9_m_trscr;
        elmt_def.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_def.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_def.elmt_product4 = Reacs.elmt_product4;
        elmt_def.elmt_cT_trsl = Reacs.elmt_cT_trsl;
        elmt_def.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_def.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_def.elmt_product2 = Reacs.elmt_product2;
        elmt_def.elmt_cP_degr = Reacs.elmt_cP_degr;
        elmt_def.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_def.elmt_cP9_degr = Reacs.elmt_cP9_degr;
        elmt_def.elmt_cL_m_degr = Reacs.elmt_cL_m_degr;
        elmt_def.elmt_cG_cZTL_assoc = Reacs.elmt_cG_cZTL_assoc;
        elmt_def.elmt_cNI_m_trscr = Reacs.elmt_cNI_m_trscr;
        elmt_def.elmt_product16 = Reacs.elmt_product16;
        elmt_def.elmt_cZTL_degr = Reacs.elmt_cZTL_degr;
        elmt_def.elmt_product14 = Reacs.elmt_product14;
        elmt_def.elmt_cT_m_degr = Reacs.elmt_cT_m_degr;
        elmt_def.elmt_product18 = Reacs.elmt_product18;
        elmt_def.elmt_cY_degr = Reacs.elmt_cY_degr;
        elmt_def.elmt_cP7_trsl = Reacs.elmt_cP7_trsl;

end MODEL1410030000;
