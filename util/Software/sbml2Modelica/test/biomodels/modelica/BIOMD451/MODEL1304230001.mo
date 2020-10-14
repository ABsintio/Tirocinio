within BIOMD451;
model MODEL1304230001 "Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity" annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI1\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2010-02-19T10:29:26Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>acarbo@vbi.vt.edu</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Carbo</vCard:Family>
                    <vCard:Given>Adria</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>VBI</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>jbassaga@vbi.vt.edu</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Bassaganya-Riera</vCard:Family>
                    <vCard:Given>Josep</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>VBI</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>shoops@vbi.vt.edu</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Hoops</vCard:Family>
                    <vCard:Given>Stefan</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>VBI</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_c1 elmt_c1;
    Class_elmt_default elmt_default;

    equation
        Params.elmt_s73 = elmt_c1.elmt_s73;
        Params.elmt_s40 = elmt_c1.elmt_s40;
        Reacs.elmt_s89 = elmt_default.elmt_s89;
        Reacs.elmt_s87 = elmt_default.elmt_s87;
        Reacs.elmt_s86 = elmt_c1.elmt_s86;
        Reacs.elmt_s90 = elmt_default.elmt_s90;
        Reacs.elmt_s14 = elmt_c1.elmt_s14;
        Reacs.elmt_s13 = elmt_c1.elmt_s13;
        Reacs.elmt_s12 = elmt_c1.elmt_s12;
        Reacs.elmt_s11 = elmt_default.elmt_s11;
        Reacs.elmt_s10 = elmt_c1.elmt_s10;
        Reacs.elmt_s2 = elmt_c1.elmt_s2;
        Reacs.elmt_s3 = elmt_c1.elmt_s3;
        Reacs.elmt_c1 = elmt_c1.elmt_c1;
        Reacs.elmt_species_2 = elmt_default.elmt_species_2;
        Reacs.elmt_species_3 = elmt_c1.elmt_species_3;
        Reacs.elmt_species_1 = elmt_default.elmt_species_1;
        Reacs.elmt_s1 = elmt_c1.elmt_s1;
        Reacs.elmt_s27 = elmt_c1.elmt_s27;
        Reacs.elmt_s26 = elmt_c1.elmt_s26;
        Reacs.elmt_s25 = elmt_c1.elmt_s25;
        Reacs.elmt_s24 = elmt_c1.elmt_s24;
        Reacs.elmt_s22 = elmt_default.elmt_s22;
        Reacs.elmt_s21 = elmt_c1.elmt_s21;
        Reacs.elmt_s20 = elmt_c1.elmt_s20;
        Reacs.elmt_s29 = elmt_c1.elmt_s29;
        Reacs.elmt_s28 = elmt_c1.elmt_s28;
        Reacs.elmt_species_15 = elmt_default.elmt_species_15;
        Reacs.elmt_species_16 = elmt_default.elmt_species_16;
        Reacs.elmt_species_17 = elmt_default.elmt_species_17;
        Reacs.elmt_species_18 = elmt_default.elmt_species_18;
        Reacs.elmt_species_19 = elmt_default.elmt_species_19;
        Reacs.elmt_s30 = elmt_default.elmt_s30;
        Reacs.elmt_species_10 = elmt_c1.elmt_species_10;
        Reacs.elmt_species_11 = elmt_c1.elmt_species_11;
        Reacs.elmt_species_12 = elmt_default.elmt_species_12;
        Reacs.elmt_species_13 = elmt_default.elmt_species_13;
        Reacs.elmt_species_14 = elmt_default.elmt_species_14;
        Reacs.elmt_s38 = elmt_c1.elmt_s38;
        Reacs.elmt_s37 = elmt_c1.elmt_s37;
        Reacs.elmt_s36 = elmt_c1.elmt_s36;
        Reacs.elmt_s35 = elmt_c1.elmt_s35;
        Reacs.elmt_s34 = elmt_c1.elmt_s34;
        Reacs.elmt_s33 = elmt_c1.elmt_s33;
        Reacs.elmt_s32 = elmt_c1.elmt_s32;
        Reacs.elmt_s31 = elmt_c1.elmt_s31;
        Reacs.elmt_s39 = elmt_c1.elmt_s39;
        Reacs.elmt_species_26 = elmt_default.elmt_species_26;
        Reacs.elmt_species_27 = elmt_default.elmt_species_27;
        Reacs.elmt_s40 = elmt_c1.elmt_s40;
        Reacs.elmt_species_20 = elmt_default.elmt_species_20;
        Reacs.elmt_species_21 = elmt_default.elmt_species_21;
        Reacs.elmt_species_22 = elmt_default.elmt_species_22;
        Reacs.elmt_species_23 = elmt_default.elmt_species_23;
        Reacs.elmt_species_24 = elmt_default.elmt_species_24;
        Reacs.elmt_species_25 = elmt_default.elmt_species_25;
        Reacs.elmt_s49 = elmt_c1.elmt_s49;
        Reacs.elmt_s48 = elmt_c1.elmt_s48;
        Reacs.elmt_s47 = elmt_c1.elmt_s47;
        Reacs.elmt_s46 = elmt_c1.elmt_s46;
        Reacs.elmt_s45 = elmt_c1.elmt_s45;
        Reacs.elmt_s44 = elmt_c1.elmt_s44;
        Reacs.elmt_s43 = elmt_c1.elmt_s43;
        Reacs.elmt_s52 = elmt_c1.elmt_s52;
        Reacs.elmt_s51 = elmt_default.elmt_s51;
        Reacs.elmt_s50 = elmt_c1.elmt_s50;
        Reacs.elmt_parameter_1 = Params.elmt_parameter_1;
        Reacs.elmt_s59 = elmt_c1.elmt_s59;
        Reacs.elmt_s58 = elmt_c1.elmt_s58;
        Reacs.elmt_s57 = elmt_c1.elmt_s57;
        Reacs.elmt_s55 = elmt_default.elmt_s55;
        Reacs.elmt_s54 = elmt_c1.elmt_s54;
        Reacs.elmt_s53 = elmt_c1.elmt_s53;
        Reacs.elmt_s63 = elmt_c1.elmt_s63;
        Reacs.elmt_s62 = elmt_c1.elmt_s62;
        Reacs.elmt_s69 = elmt_c1.elmt_s69;
        Reacs.elmt_s68 = elmt_c1.elmt_s68;
        Reacs.elmt_s67 = elmt_c1.elmt_s67;
        Reacs.elmt_s65 = elmt_c1.elmt_s65;
        Reacs.elmt_species_6 = elmt_c1.elmt_species_6;
        Reacs.elmt_species_7 = elmt_c1.elmt_species_7;
        Reacs.elmt_species_4 = elmt_c1.elmt_species_4;
        Reacs.elmt_species_5 = elmt_c1.elmt_species_5;
        Reacs.elmt_species_8 = elmt_c1.elmt_species_8;
        Reacs.elmt_species_9 = elmt_c1.elmt_species_9;
        Reacs.elmt_s74 = elmt_c1.elmt_s74;
        Reacs.elmt_s73 = elmt_c1.elmt_s73;
        Reacs.elmt_s70 = elmt_c1.elmt_s70;
        Reacs.elmt_s79 = elmt_c1.elmt_s79;
        Reacs.elmt_s78 = elmt_c1.elmt_s78;
        Reacs.elmt_s77 = elmt_c1.elmt_s77;
        Reacs.elmt_s76 = elmt_c1.elmt_s76;
        Reacs.elmt_s75 = elmt_c1.elmt_s75;
        Reacs.elmt_default = elmt_default.elmt_default;
        Reacs.elmt_s85 = elmt_c1.elmt_s85;
        Reacs.elmt_s83 = elmt_c1.elmt_s83;
        Reacs.elmt_s82 = elmt_c1.elmt_s82;
        Reacs.elmt_s81 = elmt_c1.elmt_s81;
        Reacs.elmt_s80 = elmt_c1.elmt_s80;
        elmt_c1.elmt_product72 = Reacs.elmt_product72;
        elmt_c1.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_c1.elmt_product78 = Reacs.elmt_product78;
        elmt_c1.elmt_product75 = Reacs.elmt_product75;
        elmt_c1.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt_c1.elmt_product70 = Reacs.elmt_product70;
        elmt_c1.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_c1.elmt_reactant59 = Reacs.elmt_reactant59;
        elmt_c1.elmt_product107 = Reacs.elmt_product107;
        elmt_c1.elmt_product95 = Reacs.elmt_product95;
        elmt_c1.elmt_product12 = Reacs.elmt_product12;
        elmt_c1.elmt_product91 = Reacs.elmt_product91;
        elmt_c1.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_c1.elmt_product9 = Reacs.elmt_product9;
        elmt_c1.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_c1.elmt_product23 = Reacs.elmt_product23;
        elmt_c1.elmt_product21 = Reacs.elmt_product21;
        elmt_c1.elmt_re42 = Reacs.elmt_re42;
        elmt_c1.elmt_re44 = Reacs.elmt_re44;
        elmt_c1.elmt_product4 = Reacs.elmt_product4;
        elmt_c1.elmt_re45 = Reacs.elmt_re45;
        elmt_c1.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_c1.elmt_re46 = Reacs.elmt_re46;
        elmt_c1.elmt_product2 = Reacs.elmt_product2;
        elmt_c1.elmt_product14 = Reacs.elmt_product14;
        elmt_c1.elmt_product17 = Reacs.elmt_product17;
        elmt_c1.elmt_reactant83 = Reacs.elmt_reactant83;
        elmt_c1.elmt_re37 = Reacs.elmt_re37;
        elmt_c1.elmt_re39 = Reacs.elmt_re39;
        elmt_c1.elmt_reactant85 = Reacs.elmt_reactant85;
        elmt_c1.elmt_product34 = Reacs.elmt_product34;
        elmt_c1.elmt_reactant81 = Reacs.elmt_reactant81;
        elmt_c1.elmt_re30 = Reacs.elmt_re30;
        elmt_c1.elmt_re31 = Reacs.elmt_re31;
        elmt_c1.elmt_re32 = Reacs.elmt_re32;
        elmt_c1.elmt_re33 = Reacs.elmt_re33;
        elmt_c1.elmt_reactant87 = Reacs.elmt_reactant87;
        elmt_c1.elmt_re34 = Reacs.elmt_re34;
        elmt_c1.elmt_re35 = Reacs.elmt_re35;
        elmt_c1.elmt_re36 = Reacs.elmt_re36;
        elmt_c1.elmt_product27 = Reacs.elmt_product27;
        elmt_c1.elmt_product25 = Reacs.elmt_product25;
        elmt_c1.elmt_product29 = Reacs.elmt_product29;
        elmt_c1.elmt_re26 = Reacs.elmt_re26;
        elmt_c1.elmt_product40 = Reacs.elmt_product40;
        elmt_c1.elmt_re27 = Reacs.elmt_re27;
        elmt_c1.elmt_re28 = Reacs.elmt_re28;
        elmt_c1.elmt_re29 = Reacs.elmt_re29;
        elmt_c1.elmt_reactant90 = Reacs.elmt_reactant90;
        elmt_c1.elmt_product45 = Reacs.elmt_product45;
        elmt_c1.elmt_reactant92 = Reacs.elmt_reactant92;
        elmt_c1.elmt_product43 = Reacs.elmt_product43;
        elmt_c1.elmt_re3 = Reacs.elmt_re3;
        elmt_c1.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_c1.elmt_re2 = Reacs.elmt_re2;
        elmt_c1.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_c1.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_c1.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_c1.elmt_re20 = Reacs.elmt_re20;
        elmt_c1.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_c1.elmt_re23 = Reacs.elmt_re23;
        elmt_c1.elmt_re24 = Reacs.elmt_re24;
        elmt_c1.elmt_re25 = Reacs.elmt_re25;
        elmt_c1.elmt_reaction_17 = Reacs.elmt_reaction_17;
        elmt_c1.elmt_re9 = Reacs.elmt_re9;
        elmt_c1.elmt_re8 = Reacs.elmt_re8;
        elmt_c1.elmt_re6 = Reacs.elmt_re6;
        elmt_c1.elmt_reaction_5 = Reacs.elmt_reaction_5;
        elmt_c1.elmt_product38 = Reacs.elmt_product38;
        elmt_c1.elmt_product36 = Reacs.elmt_product36;
        elmt_c1.elmt_reaction_11 = Reacs.elmt_reaction_11;
        elmt_c1.elmt_reactant61 = Reacs.elmt_reactant61;
        elmt_c1.elmt_re15 = Reacs.elmt_re15;
        elmt_c1.elmt_re16 = Reacs.elmt_re16;
        elmt_c1.elmt_product50 = Reacs.elmt_product50;
        elmt_c1.elmt_re17 = Reacs.elmt_re17;
        elmt_c1.elmt_re18 = Reacs.elmt_re18;
        elmt_c1.elmt_re19 = Reacs.elmt_re19;
        elmt_c1.elmt_product55 = Reacs.elmt_product55;
        elmt_c1.elmt_product53 = Reacs.elmt_product53;
        elmt_c1.elmt_re10 = Reacs.elmt_re10;
        elmt_c1.elmt_reactant65 = Reacs.elmt_reactant65;
        elmt_c1.elmt_re11 = Reacs.elmt_re11;
        elmt_c1.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_c1.elmt_re12 = Reacs.elmt_re12;
        elmt_c1.elmt_re13 = Reacs.elmt_re13;
        elmt_c1.elmt_re14 = Reacs.elmt_re14;
        elmt_c1.elmt_product47 = Reacs.elmt_product47;
        elmt_c1.elmt_product119 = Reacs.elmt_product119;
        elmt_c1.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_c1.elmt_reactant74 = Reacs.elmt_reactant74;
        elmt_c1.elmt_product60 = Reacs.elmt_product60;
        elmt_c1.elmt_product67 = Reacs.elmt_product67;
        elmt_c1.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_c1.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_c1.elmt_product64 = Reacs.elmt_product64;
        elmt_c1.elmt_reactant76 = Reacs.elmt_reactant76;
        elmt_c1.elmt_reactant79 = Reacs.elmt_reactant79;
        elmt_c1.elmt_product57 = Reacs.elmt_product57;
        elmt_default.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt_default.elmt_re39 = Reacs.elmt_re39;
        elmt_default.elmt_product31 = Reacs.elmt_product31;
        elmt_default.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_default.elmt_re32 = Reacs.elmt_re32;
        elmt_default.elmt_re33 = Reacs.elmt_re33;
        elmt_default.elmt_re34 = Reacs.elmt_re34;
        elmt_default.elmt_reactant89 = Reacs.elmt_reactant89;
        elmt_default.elmt_reactant51 = Reacs.elmt_reactant51;
        elmt_default.elmt_product84 = Reacs.elmt_product84;
        elmt_default.elmt_re28 = Reacs.elmt_re28;
        elmt_default.elmt_product82 = Reacs.elmt_product82;
        elmt_default.elmt_re29 = Reacs.elmt_re29;
        elmt_default.elmt_product88 = Reacs.elmt_product88;
        elmt_default.elmt_product86 = Reacs.elmt_product86;
        elmt_default.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_default.elmt_reaction_3 = Reacs.elmt_reaction_3;
        elmt_default.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_default.elmt_re2 = Reacs.elmt_re2;
        elmt_default.elmt_reaction_4 = Reacs.elmt_reaction_4;
        elmt_default.elmt_reaction_1 = Reacs.elmt_reaction_1;
        elmt_default.elmt_reaction_2 = Reacs.elmt_reaction_2;
        elmt_default.elmt_product80 = Reacs.elmt_product80;
        elmt_default.elmt_re25 = Reacs.elmt_re25;
        elmt_default.elmt_reaction_16 = Reacs.elmt_reaction_16;
        elmt_default.elmt_product101 = Reacs.elmt_product101;
        elmt_default.elmt_reaction_14 = Reacs.elmt_reaction_14;
        elmt_default.elmt_reaction_9 = Reacs.elmt_reaction_9;
        elmt_default.elmt_reaction_15 = Reacs.elmt_reaction_15;
        elmt_default.elmt_product103 = Reacs.elmt_product103;
        elmt_default.elmt_re8 = Reacs.elmt_re8;
        elmt_default.elmt_reaction_7 = Reacs.elmt_reaction_7;
        elmt_default.elmt_reaction_8 = Reacs.elmt_reaction_8;
        elmt_default.elmt_re6 = Reacs.elmt_re6;
        elmt_default.elmt_reaction_6 = Reacs.elmt_reaction_6;
        elmt_default.elmt_product109 = Reacs.elmt_product109;
        elmt_default.elmt_reaction_12 = Reacs.elmt_reaction_12;
        elmt_default.elmt_reaction_13 = Reacs.elmt_reaction_13;
        elmt_default.elmt_product105 = Reacs.elmt_product105;
        elmt_default.elmt_reaction_10 = Reacs.elmt_reaction_10;
        elmt_default.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt_default.elmt_re18 = Reacs.elmt_re18;
        elmt_default.elmt_product93 = Reacs.elmt_product93;
        elmt_default.elmt_re19 = Reacs.elmt_re19;
        elmt_default.elmt_product99 = Reacs.elmt_product99;
        elmt_default.elmt_product97 = Reacs.elmt_product97;
        elmt_default.elmt_re11 = Reacs.elmt_re11;
        elmt_default.elmt_re12 = Reacs.elmt_re12;
        elmt_default.elmt_product113 = Reacs.elmt_product113;
        elmt_default.elmt_product115 = Reacs.elmt_product115;
        elmt_default.elmt_product111 = Reacs.elmt_product111;
        elmt_default.elmt_product117 = Reacs.elmt_product117;
        elmt_default.elmt_product62 = Reacs.elmt_product62;
        elmt_default.elmt_reactant73 = Reacs.elmt_reactant73;
        elmt_default.elmt_product6 = Reacs.elmt_product6;
        elmt_default.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_default.elmt_re44 = Reacs.elmt_re44;
        elmt_default.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_default.elmt_re45 = Reacs.elmt_re45;
        elmt_default.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_default.elmt_re46 = Reacs.elmt_re46;
        elmt_default.elmt_product19 = Reacs.elmt_product19;

end MODEL1304230001;
