within BIOMD410;
class Reactions

    input Real elmt__99;
    input Real elmt__11;
    input Real elmt__96;
    input Real elmt__19;
    input Real elmt__15;
    input Real elmt__105;
    input Real elmt__13;
    input Real elmt__147;
    input Real elmt_species_30;
    input Real elmt_species_31;
    input Real elmt__101;
    input Real elmt_parameter_1;
    input Real elmt__21;
    input Real elmt_species_2;
    input Real elmt__27;
    input Real elmt_species_3;
    input Real elmt__25;
    input Real elmt_species_1;
    input Real elmt__198;
    input Real elmt__153;
    input Real elmt_species_6;
    input Real elmt_species_7;
    input Real elmt_species_4;
    input Real elmt_species_5;
    input Real elmt__75;
    input Real elmt_species_8;
    input Real elmt_species_9;
    input Real elmt_species_15;
    input Real elmt_species_16;
    input Real elmt__5;
    input Real elmt_species_17;
    input Real elmt__3;
    input Real elmt_species_18;
    input Real elmt__129;
    input Real elmt_species_19;
    input Real elmt__1;
    input Real elmt__79;
    input Real elmt_species_10;
    input Real elmt_species_11;
    input Real elmt__9;
    input Real elmt_species_12;
    input Real elmt_species_13;
    input Real elmt_species_14;
    input Real elmt__181;
    input Real elmt__84;
    input Real elmt_species_26;
    input Real elmt_species_27;
    input Real elmt_species_28;
    input Real elmt_species_29;
    input Real elmt_species_20;
    input Real elmt_species_21;
    input Real elmt_species_22;
    input Real elmt_species_23;
    input Real elmt__174;
    input Real elmt_species_24;
    input Real elmt_species_25;

    Real elmt__194(unit = "") "Rec_inhib";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__194_elmt_k1(unit "") = 8.69 "";
    parameter Real elmt__194_elmt_k2(unit "") = 0.01 "";
    Real elmt_reactant50 "";
    Real elmt_product51 "";
    Real elmt_reactant49 "";
    Real elmt__192(unit = "") "Rec_degrad1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__192_elmt_k1(unit "") = 1900.0 "";
    Real elmt_reactant47 "";
    Real elmt_reactant48 "";
    Real elmt_reaction_70(unit = "") "transArkadia";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI34\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-04-20T11:57:30Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_70_elmt_k1(unit "") = 0.1 "";
    parameter Real elmt_reaction_70_elmt_k2(unit "") = 0.1 "";
    Real elmt_reactant186 "";
    Real elmt_product187 "";
    Real elmt_reaction_27(unit = "") "Smad3_phosph";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_27_elmt_k(unit "") = 1000.0 "";
    parameter Real elmt_reaction_27_elmt_km(unit "") = 0.0318 "";
    Real elmt_product89 "";
    Real elmt_reactant88 "";
    Real elmt_reaction_28(unit = "") "Smad3_phosphSARA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_28_elmt_k(unit "") = 3.51 "";
    parameter Real elmt_reaction_28_elmt_km(unit "") = 0.53 "";
    Real elmt_reactant90 "";
    Real elmt_product92 "";
    Real elmt_product91 "";
    Real elmt_reaction_25(unit = "") "Smad3_dephospNuc";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_25_elmt_Km(unit "") = 40.0 "";
    parameter Real elmt_reaction_25_elmt_V(unit "") = 2.34 "";
    Real elmt_product85 "";
    Real elmt_reactant84 "";
    Real elmt_reaction_69(unit = "") "SnoN-deg3";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI33\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2010-11-01T22:01:38Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_69_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant184 "";
    Real elmt_reactant183 "";
    Real elmt_product185 "";
    Real elmt_reaction_26(unit = "") "Smad3_dephospNuc2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_26_elmt_Km(unit "") = 0.53 "";
    parameter Real elmt_reaction_26_elmt_V(unit "") = 3.51 "";
    Real elmt_reactant86 "";
    Real elmt_product87 "";
    Real elmt__149(unit = "") "Smad_compCyt2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__149_elmt_k1(unit "") = 1000.0 "";
    Real elmt_reactant36 "";
    Real elmt_product38 "";
    Real elmt_reactant37 "";
    Real elmt_reaction_29(unit = "") "Smad3_degrad";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_29_elmt_k1(unit "") = 0.2 "";
    Real elmt_reactant93 "";
    Real elmt__103(unit = "") "SARA-comp2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__103_elmt_k1(unit "") = 1.0 "";
    parameter Real elmt__103_elmt_k2(unit "") = 0.1 "";
    Real elmt_reactant26 "";
    Real elmt_reactant27 "";
    Real elmt_product28 "";
    Real elmt_reaction_63(unit = "") "Smad3-Snon";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI29\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-08-24T15:32:25Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_63_elmt_k1(unit "") = 1.0 "";
    parameter Real elmt_reaction_63_elmt_k2(unit "") = 1.0 "";
    Real elmt_reactant174 "";
    Real elmt_reactant173 "";
    Real elmt_product175 "";
    Real elmt_reaction_20(unit = "") "Smad2_cyt_degrad";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_20_elmt_k1(unit "") = 0.2 "";
    Real elmt_reactant77 "";
    Real elmt_reaction_64(unit = "") "Smad2-comp-degrad";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_64_elmt_k1(unit "") = 0.005 "";
    Real elmt_reactant176 "";
    Real elmt_reaction_61(unit = "") "Smad2-Ski_cyt";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_61_elmt_k1(unit "") = 0.1 "";
    parameter Real elmt_reaction_61_elmt_k2(unit "") = 0.1 "";
    Real elmt_product169 "";
    Real elmt_reactant168 "";
    Real elmt_reactant167 "";
    Real elmt_reaction_62(unit = "") "Smad2-Snon";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI28\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2010-11-01T21:59:49Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_62_elmt_k1(unit "") = 1.0 "";
    parameter Real elmt_reaction_62_elmt_k2(unit "") = 1.0 "";
    Real elmt_reactant171 "";
    Real elmt_reactant170 "";
    Real elmt_product172 "";
    Real elmt_reaction_23(unit = "") "Smad3_cyt_degrad";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_23_elmt_k1(unit "") = 0.2 "";
    Real elmt_reactant81 "";
    Real elmt_reaction_67(unit = "") "Arkadia_deg";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI31\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2010-10-12T15:50:40Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_67_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant179 "";
    Real elmt_reaction_24(unit = "") "Smad3_dephospCyt";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_24_elmt_Km(unit "") = 3.51 "";
    parameter Real elmt_reaction_24_elmt_V(unit "") = 0.53 "";
    Real elmt_product83 "";
    Real elmt_reactant82 "";
    Real elmt_reaction_68(unit = "") "SnoN-deg2";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI32\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2010-11-01T22:00:13Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_68_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant181 "";
    Real elmt_reactant180 "";
    Real elmt_product182 "";
    Real elmt_reaction_21(unit = "") "SnoN_trans";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_21_elmt_k1(unit "") = 0.1 "";
    parameter Real elmt_reaction_21_elmt_k2(unit "") = 0.2 "";
    Real elmt_product79 "";
    Real elmt_reactant78 "";
    Real elmt_reaction_65(unit = "") "Samd3-comp-degrad";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_65_elmt_k1(unit "") = 0.005 "";
    Real elmt_reactant177 "";
    Real elmt_reaction_22(unit = "") "fluxSmad3";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_22_elmt_v(unit "") = 0.04528 "";
    Real elmt_product80 "";
    Real elmt_reaction_66(unit = "") "fluxArkadia";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI30\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2010-10-12T15:50:17Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_66_elmt_v(unit "") = 2.0E-5 "";
    Real elmt_product178 "";
    Real elmt_reaction_60(unit = "") "Smad4-freePromot";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_60_elmt_k1(unit "") = 0.1 "";
    parameter Real elmt_reaction_60_elmt_k2(unit "") = 0.1 "";
    Real elmt_reactant165 "";
    Real elmt_reactant164 "";
    Real elmt_product166 "";
    Real elmt_reaction_3(unit = "") "fluxSmad7";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI21\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-04-20T10:40:36Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_3_elmt_k1(unit "") = 0.1 "";
    parameter Real elmt_reaction_3_elmt_k(unit "") = 1.0E-4 "";
    Real elmt_product54 "";
    Real elmt_reaction_4(unit = "") "fluxSmurf2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_4_elmt_k1(unit "") = 0.0285 "";
    parameter Real elmt_reaction_4_elmt_k(unit "") = 2.28E-4 "";
    Real elmt_product55 "";
    Real elmt_reaction_1(unit = "") "fluxRecII";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI19\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-04-20T10:36:30Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_1_elmt_v(unit "") = 0.00146 "";
    Real elmt_product52 "";
    Real elmt_reaction_2(unit = "") "fluxSara";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI20\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-04-20T10:36:37Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_2_elmt_k1(unit "") = 0.031 "";
    parameter Real elmt_reaction_2_elmt_k(unit "") = 1.0E-4 "";
    Real elmt_product53 "";
    Real elmt_reaction_16(unit = "") "SARA_degrad";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_16_elmt_k1(unit "") = 0.065 "";
    Real elmt_reactant71 "";
    Real elmt_reaction_17(unit = "") "Smad2_dephospCyt";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_17_elmt_Km(unit "") = 3.51 "";
    parameter Real elmt_reaction_17_elmt_V(unit "") = 0.53 "";
    Real elmt_reactant72 "";
    Real elmt_product73 "";
    Real elmt__29(unit = "") "Smad_dissoc3";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI17\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2010-10-12T15:50:14Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__29_elmt_k1(unit "") = 0.0492 "";
    Real elmt_product1 "";
    Real elmt_reactant0 "";
    Real elmt_product2 "";
    Real elmt_reaction_9(unit = "") "Rec_degrad";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_9_elmt_k1(unit "") = 0.027778 "";
    Real elmt_reactant63 "";
    Real elmt_reaction_14(unit = "") "fluxSmad4";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_14_elmt_v(unit "") = 0.01183 "";
    Real elmt_product69 "";
    Real elmt_reaction_58(unit = "") "Smad_inhibComp2Ski";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_58_elmt_k1(unit "") = 1.6 "";
    parameter Real elmt_reaction_58_elmt_k2(unit "") = 1.6 "";
    Real elmt_product160 "";
    Real elmt_reactant159 "";
    Real elmt_reactant158 "";
    Real elmt_reaction_15(unit = "") "Smad4_degrad";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_15_elmt_k1(unit "") = 0.1266 "";
    Real elmt_reactant70 "";
    Real elmt_reaction_59(unit = "") "Smad2-Ski-gene";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_59_elmt_k1(unit "") = 0.2 "";
    parameter Real elmt_reaction_59_elmt_k2(unit "") = 0.2 "";
    Real elmt_reactant162 "";
    Real elmt_reactant161 "";
    Real elmt_product163 "";
    Real elmt_reaction_7(unit = "") "Smad4-SnoN";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_7_elmt_k1(unit "") = 1.0 "";
    parameter Real elmt_reaction_7_elmt_k2(unit "") = 0.05288 "";
    Real elmt_product60 "";
    Real elmt_reactant58 "";
    Real elmt_reactant59 "";
    Real elmt_reaction_8(unit = "") "Smad2_transp";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_8_elmt_k1(unit "") = 0.156 "";
    parameter Real elmt_reaction_8_elmt_k2(unit "") = 0.336 "";
    Real elmt_reactant61 "";
    Real elmt_product62 "";
    Real elmt_reaction_5(unit = "") "fluxSnoN";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_5_elmt_k1(unit "") = 5.5E-4 "";
    parameter Real elmt_reaction_5_elmt_k(unit "") = 2.0E-5 "";
    Real elmt_product56 "";
    Real elmt_reaction_18(unit = "") "SnoN_degrad";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI23\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-08-24T15:33:55Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_18_elmt_k1(unit "") = 0.232 "";
    Real elmt_reactant74 "";
    Real elmt_reaction_6(unit = "") "fluxRecI";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI22\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-04-20T10:36:28Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_6_elmt_v(unit "") = 0.0125 "";
    Real elmt_product57 "";
    Real elmt_reaction_19(unit = "") "Smurf2_transp";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_19_elmt_k1(unit "") = 0.2333 "";
    parameter Real elmt_reaction_19_elmt_k2(unit "") = 1.8056 "";
    Real elmt_reactant75 "";
    Real elmt_product76 "";
    Real elmt_reaction_52(unit = "") "Smurf1_transp";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI27\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-04-20T11:58:24Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_52_elmt_k1(unit "") = 0.05 "";
    parameter Real elmt_reaction_52_elmt_k2(unit "") = 3.0 "";
    Real elmt_reactant141 "";
    Real elmt_product142 "";
    Real elmt_reaction_53(unit = "") "Smad3-freePromot";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_53_elmt_k1(unit "") = 0.463 "";
    parameter Real elmt_reaction_53_elmt_k2(unit "") = 0.102 "";
    Real elmt_reactant143 "";
    Real elmt_product145 "";
    Real elmt_reactant144 "";
    Real elmt__156(unit = "") "Smad4_transp";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__156_elmt_k1(unit "") = 0.156 "";
    parameter Real elmt__156_elmt_k2(unit "") = 0.156 "";
    Real elmt_product40 "";
    Real elmt_reactant39 "";
    Real elmt_reaction_50(unit = "") "Smad7-Smurf1_transp";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_50_elmt_k1(unit "") = 1.0 "";
    parameter Real elmt_reaction_50_elmt_k2(unit "") = 0.01 "";
    Real elmt_reactant138 "";
    Real elmt_product139 "";
    Real elmt_reaction_51(unit = "") "Smurf1_degrad";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_51_elmt_k1(unit "") = 0.5 "";
    Real elmt_reactant140 "";
    Real elmt_reaction_12(unit = "") "Rec_recycl";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_12_elmt_k1(unit "") = 0.03333 "";
    Real elmt_product67 "";
    Real elmt_reactant66 "";
    Real elmt_reaction_56(unit = "") "Smad2-SnoN-gene";
    parameter Real elmt_reaction_56_elmt_k1(unit "") = 0.2 "";
    parameter Real elmt_reaction_56_elmt_k2(unit "") = 0.2 "";
    Real elmt_reactant153 "";
    Real elmt_reactant152 "";
    Real elmt_product154 "";
    Real elmt_reaction_13(unit = "") "fluxSmad2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_13_elmt_v(unit "") = 0.0156 "";
    Real elmt_product68 "";
    Real elmt_reaction_57(unit = "") "Smad3-Ski-freePromot";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_57_elmt_k1(unit "") = 0.2 "";
    parameter Real elmt_reaction_57_elmt_k2(unit "") = 0.2 "";
    Real elmt_product157 "";
    Real elmt_reactant156 "";
    Real elmt_reactant155 "";
    Real elmt_reaction_10(unit = "") "RecI_degrad";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_10_elmt_k1(unit "") = 0.027778 "";
    Real elmt_reactant64 "";
    Real elmt_reaction_54(unit = "") "Smad2-freePromot";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_54_elmt_k1(unit "") = 0.463 "";
    parameter Real elmt_reaction_54_elmt_k2(unit "") = 0.102 "";
    Real elmt_product148 "";
    Real elmt_reactant147 "";
    Real elmt_reactant146 "";
    Real elmt_reaction_11(unit = "") "RecII_degrad";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_11_elmt_k1(unit "") = 0.027778 "";
    Real elmt_reactant65 "";
    Real elmt_reaction_55(unit = "") "Smad3-SnoN-freePromot";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_55_elmt_k1(unit "") = 0.2 "";
    parameter Real elmt_reaction_55_elmt_k2(unit "") = 0.2 "";
    Real elmt_reactant150 "";
    Real elmt_reactant149 "";
    Real elmt_product151 "";
    Real elmt__172(unit = "") "Smad7_transp";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__172_elmt_k1(unit "") = 0.1 "";
    parameter Real elmt__172_elmt_k2(unit "") = 0.01 "";
    Real elmt_product44 "";
    Real elmt_reactant43 "";
    Real elmt__33(unit = "") "Smad_inhibComp2SnoN";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__33_elmt_k1(unit "") = 1.6 "";
    parameter Real elmt__33_elmt_k2(unit "") = 1.6 "";
    Real elmt_product7 "";
    Real elmt_reactant6 "";
    Real elmt_reactant5 "";
    Real elmt__77(unit = "") "Rec_comp1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__77_elmt_k(unit "") = 9.45 "";
    Real elmt_product22 "";
    Real elmt_reactant21 "";
    Real elmt__31(unit = "") "Smad2_dephosphNuc";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__31_elmt_Km(unit "") = 40.0 "";
    parameter Real elmt__31_elmt_V(unit "") = 2.34 "";
    Real elmt_reactant3 "";
    Real elmt_product4 "";
    Real elmt_reaction_49(unit = "") "Rec_degrad2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_49_elmt_k1(unit "") = 1900.0 "";
    Real elmt_reactant137 "";
    Real elmt_reactant136 "";
    Real elmt_reaction_47(unit = "") "fluxSmurf1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_47_elmt_k1(unit "") = 0.0022 "";
    parameter Real elmt_reaction_47_elmt_k(unit "") = 1.0E-4 "";
    Real elmt_product132 "";
    Real elmt__39(unit = "") "Smad2_dephosphNuc2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__39_elmt_Km(unit "") = 0.53 "";
    parameter Real elmt__39_elmt_V(unit "") = 3.51 "";
    Real elmt_reactant14 "";
    Real elmt_product15 "";
    Real elmt_reaction_48(unit = "") "Smad_inhibComp3Ski";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_48_elmt_k1(unit "") = 1.6 "";
    parameter Real elmt_reaction_48_elmt_k2(unit "") = 1.6 "";
    Real elmt_product135 "";
    Real elmt_reactant134 "";
    Real elmt_reactant133 "";
    Real elmt__37(unit = "") "Smad_compNuc2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__37_elmt_k1(unit "") = 255.068 "";
    Real elmt_product13 "";
    Real elmt_reactant11 "";
    Real elmt_reactant12 "";
    Real elmt__35(unit = "") "SnoN_degrad2";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI18\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2011-04-20T11:58:02Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__35_elmt_k1(unit "") = 0.232 "";
    Real elmt_reactant8 "";
    Real elmt_product10 "";
    Real elmt_reactant9 "";
    Real elmt__125(unit = "") "Smad2_phosph";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__125_elmt_k(unit "") = 1000.0 "";
    parameter Real elmt__125_elmt_km(unit "") = 0.0318 "";
    Real elmt_product30 "";
    Real elmt_reactant29 "";
    Real elmt_reaction_41(unit = "") "Ski_trans";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_41_elmt_k1(unit "") = 0.1 "";
    parameter Real elmt_reaction_41_elmt_k2(unit "") = 0.2 "";
    Real elmt_product120 "";
    Real elmt_reactant119 "";
    Real elmt_reaction_42(unit = "") "fluxSki";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_42_elmt_k1(unit "") = 5.5E-4 "";
    parameter Real elmt_reaction_42_elmt_k(unit "") = 2.0E-5 "";
    Real elmt_product121 "";
    Real elmt_reaction_40(unit = "") "Ski_degrad";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_40_elmt_k1(unit "") = 0.232 "";
    Real elmt_reactant118 "";
    Real elmt_reaction_45(unit = "") "Smad3-Ski_cyt";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_45_elmt_k1(unit "") = 0.1 "";
    parameter Real elmt_reaction_45_elmt_k2(unit "") = 0.1 "";
    Real elmt_reactant127 "";
    Real elmt_reactant126 "";
    Real elmt_product128 "";
    Real elmt_reaction_46(unit = "") "Smad7-Smurf1";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_46_elmt_k1(unit "") = 2.9 "";
    parameter Real elmt_reaction_46_elmt_k2(unit "") = 0.2 "";
    Real elmt_reactant130 "";
    Real elmt_product131 "";
    Real elmt_reactant129 "";
    Real elmt_reaction_43(unit = "") "Smurf2_degrad";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI26\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2010-10-12T15:59:35Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_43_elmt_k1(unit "") = 0.05 "";
    Real elmt_reactant122 "";
    Real elmt__164(unit = "") "Smad_compTransp2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__164_elmt_k1(unit "") = 0.16 "";
    Real elmt_reactant41 "";
    Real elmt_product42 "";
    Real elmt_reaction_44(unit = "") "Smad4-Ski";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_44_elmt_k1(unit "") = 1.0 "";
    parameter Real elmt_reaction_44_elmt_k2(unit "") = 0.05288 "";
    Real elmt_product125 "";
    Real elmt_reactant124 "";
    Real elmt_reactant123 "";
    Real elmt__43(unit = "") "Smad7-Smurf2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__43_elmt_k1(unit "") = 2.9 "";
    parameter Real elmt__43_elmt_k2(unit "") = 0.2 "";
    Real elmt_reactant18 "";
    Real elmt_reactant19 "";
    Real elmt_product20 "";
    Real elmt__86(unit = "") "Rec_comp2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__86_elmt_k1(unit "") = 0.03333 "";
    parameter Real elmt__86_elmt_k2(unit "") = 0.03333 "";
    Real elmt_product25 "";
    Real elmt_reactant23 "";
    Real elmt_reactant24 "";
    Real elmt__41(unit = "") "Smad2_degrad";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__41_elmt_k1(unit "") = 0.2 "";
    Real elmt_reactant16 "";
    Real elmt_reactant17 "";
    Real elmt_reaction_38(unit = "") "SnoN_degrad3";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI24\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2010-10-30T08:24:42Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_38_elmt_k1(unit "") = 0.232 "";
    Real elmt_reactant115 "";
    Real elmt_product116 "";
    Real elmt_reaction_39(unit = "") "Smad7_degrad";
 annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
          <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
            <rdf:Description rdf:about=\"#COPASI25\">
              <dcterms:created>
                <rdf:Description>
                  <dcterms:W3CDTF>2010-10-12T15:52:42Z</dcterms:W3CDTF>
                </rdf:Description>
              </dcterms:created>
            </rdf:Description>
          </rdf:RDF>
        </COPASI>
                                                            <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_39_elmt_k1(unit "") = 0.1 "";
    Real elmt_reactant117 "";
    Real elmt_reaction_36(unit = "") "Smad_inhibComp3SnoN";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_36_elmt_k1(unit "") = 1.6 "";
    parameter Real elmt_reaction_36_elmt_k2(unit "") = 1.6 "";
    Real elmt_reactant110 "";
    Real elmt_product112 "";
    Real elmt_reactant111 "";
    Real elmt_reaction_37(unit = "") "Smad_compTransp3";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_37_elmt_k1(unit "") = 0.16 "";
    Real elmt_product114 "";
    Real elmt_reactant113 "";
    Real elmt__139(unit = "") "Smad2-P_transp";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__139_elmt_k1(unit "") = 16.6 "";
    Real elmt_product35 "";
    Real elmt_reactant34 "";
    Real elmt_reaction_30(unit = "") "Smad3_transp";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_30_elmt_k1(unit "") = 0.156 "";
    parameter Real elmt_reaction_30_elmt_k2(unit "") = 0.336 "";
    Real elmt_reactant94 "";
    Real elmt_product95 "";
    Real elmt_reaction_31(unit = "") "SARA-comp3";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_31_elmt_k1(unit "") = 1.0 "";
    parameter Real elmt_reaction_31_elmt_k2(unit "") = 0.1 "";
    Real elmt_reactant96 "";
    Real elmt_reactant97 "";
    Real elmt_product98 "";
    Real elmt__178(unit = "") "Smad7-Smurf2_transp";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__178_elmt_k1(unit "") = 1.0 "";
    parameter Real elmt__178_elmt_k2(unit "") = 0.01 "";
    Real elmt_product46 "";
    Real elmt_reactant45 "";
    Real elmt__132(unit = "") "Smad2_phosphSARA";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt__132_elmt_k(unit "") = 3.51 "";
    parameter Real elmt__132_elmt_km(unit "") = 0.53 "";
    Real elmt_reactant31 "";
    Real elmt_product33 "";
    Real elmt_product32 "";
    Real elmt_reaction_34(unit = "") "Smad_compCyt3";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_34_elmt_k1(unit "") = 1000.0 "";
    Real elmt_reactant105 "";
    Real elmt_reactant104 "";
    Real elmt_product106 "";
    Real elmt_reaction_35(unit = "") "Smad_compNuc3";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_35_elmt_k1(unit "") = 255.068 "";
    Real elmt_reactant108 "";
    Real elmt_reactant107 "";
    Real elmt_product109 "";
    Real elmt_reaction_32(unit = "") "Smad_dissoc2";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_32_elmt_k1(unit "") = 0.0492 "";
    Real elmt_product101 "";
    Real elmt_product100 "";
    Real elmt_reactant99 "";
    Real elmt_reaction_33(unit = "") "Smad3-P-transp";
 annotation(Documentation(info="<annotation>
          <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
          </rdf:RDF>
        </annotation>"));
    parameter Real elmt_reaction_33_elmt_k1(unit "") = 16.6 "";
    Real elmt_product103 "";
    Real elmt_reactant102 "";


    initial equation
        elmt_product73 = 1.0;
        elmt_reactant41 = 1.0;
        elmt_product76 = 1.0;
        elmt_reactant108 = 2.0;
        elmt_reactant47 = 1.0;
        elmt_reactant48 = 1.0;
        elmt_reactant49 = 1.0;
        elmt_product172 = 1.0;
        elmt_reactant43 = 1.0;
        elmt_reactant45 = 1.0;
        elmt_reactant110 = 1.0;
        elmt_product178 = 1.0;
        elmt_product175 = 1.0;
        elmt_reactant118 = 1.0;
        elmt_reactant117 = 1.0;
        elmt_product69 = 1.0;
        elmt_product68 = 1.0;
        elmt_reactant115 = 1.0;
        elmt_reactant113 = 1.0;
        elmt_reactant111 = 2.0;
        elmt_reactant50 = 1.0;
        elmt_product85 = 1.0;
        elmt_product83 = 1.0;
        elmt_product89 = 1.0;
        elmt_product87 = 1.0;
        elmt_reactant119 = 1.0;
        elmt_product182 = 3.0;
        elmt_reactant58 = 1.0;
        elmt_reactant59 = 1.0;
        elmt_product80 = 1.0;
        elmt_product101 = 2.0;
        elmt_product103 = 1.0;
        elmt_product185 = 1.0;
        elmt_product100 = 1.0;
        elmt_product187 = 1.0;
        elmt_reactant129 = 1.0;
        elmt_product109 = 1.0;
        elmt_reactant127 = 1.0;
        elmt_product79 = 1.0;
        elmt_reactant126 = 1.0;
        elmt_product106 = 1.0;
        elmt_reactant124 = 1.0;
        elmt_reactant123 = 1.0;
        elmt_reactant122 = 1.0;
        elmt_product95 = 1.0;
        elmt_product10 = 3.0;
        elmt_product98 = 1.0;
        elmt_reactant26 = 1.0;
        elmt_reactant27 = 1.0;
        elmt_product151 = 1.0;
        elmt_product92 = 1.0;
        elmt_reactant21 = 2.0;
        elmt_product91 = 1.0;
        elmt_reactant23 = 1.0;
        elmt_reactant24 = 2.0;
        elmt_reactant176 = 1.0;
        elmt_product157 = 1.0;
        elmt_reactant174 = 3.0;
        elmt_reactant173 = 3.0;
        elmt_reactant18 = 1.0;
        elmt_reactant171 = 3.0;
        elmt_reactant19 = 1.0;
        elmt_reactant170 = 3.0;
        elmt_product154 = 1.0;
        elmt_reactant179 = 1.0;
        elmt_reactant177 = 1.0;
        elmt_product7 = 1.0;
        elmt_reactant31 = 1.0;
        elmt_product22 = 1.0;
        elmt_product20 = 1.0;
        elmt_reactant36 = 1.0;
        elmt_product1 = 1.0;
        elmt_product160 = 1.0;
        elmt_reactant37 = 2.0;
        elmt_reactant39 = 1.0;
        elmt_product4 = 1.0;
        elmt_reactant34 = 1.0;
        elmt_product2 = 2.0;
        elmt_reactant186 = 1.0;
        elmt_reactant184 = 3.0;
        elmt_product169 = 1.0;
        elmt_reactant183 = 1.0;
        elmt_reactant29 = 1.0;
        elmt_product163 = 1.0;
        elmt_reactant181 = 3.0;
        elmt_product166 = 1.0;
        elmt_reactant180 = 1.0;
        elmt_reactant107 = 1.0;
        elmt_product15 = 1.0;
        elmt_reactant105 = 2.0;
        elmt_product13 = 1.0;
        elmt_reactant104 = 1.0;
        elmt_reactant102 = 1.0;
        elmt_product30 = 1.0;
        elmt_reactant84 = 1.0;
        elmt_reactant86 = 1.0;
        elmt_product33 = 1.0;
        elmt_reactant81 = 1.0;
        elmt_product32 = 1.0;
        elmt_reactant82 = 1.0;
        elmt_reactant88 = 1.0;
        elmt_product135 = 1.0;
        elmt_reactant153 = 1.0;
        elmt_reactant152 = 1.0;
        elmt_reactant150 = 1.0;
        elmt_product131 = 1.0;
        elmt_product132 = 1.0;
        elmt_reactant9 = 1.0;
        elmt_product25 = 1.0;
        elmt_reactant159 = 2.0;
        elmt_reactant158 = 1.0;
        elmt_product139 = 1.0;
        elmt_reactant156 = 1.0;
        elmt_product28 = 1.0;
        elmt_reactant155 = 1.0;
        elmt_reactant94 = 1.0;
        elmt_product40 = 1.0;
        elmt_reactant96 = 1.0;
        elmt_reactant97 = 1.0;
        elmt_reactant90 = 1.0;
        elmt_product44 = 1.0;
        elmt_reactant93 = 1.0;
        elmt_product42 = 1.0;
        elmt_reactant14 = 1.0;
        elmt_reactant16 = 1.0;
        elmt_reactant17 = 1.0;
        elmt_reactant11 = 1.0;
        elmt_reactant99 = 1.0;
        elmt_reactant12 = 2.0;
        elmt_reactant165 = 1.0;
        elmt_reactant164 = 1.0;
        elmt_product145 = 1.0;
        elmt_product148 = 1.0;
        elmt_reactant162 = 1.0;
        elmt_reactant161 = 1.0;
        elmt_product142 = 1.0;
        elmt_product38 = 1.0;
        elmt_product35 = 1.0;
        elmt_reactant168 = 1.0;
        elmt_reactant167 = 1.0;
        elmt_product52 = 1.0;
        elmt_reactant61 = 1.0;
        elmt_product51 = 1.0;
        elmt_reactant63 = 1.0;
        elmt_reactant64 = 1.0;
        elmt_product56 = 1.0;
        elmt_product55 = 1.0;
        elmt_product54 = 1.0;
        elmt_product53 = 1.0;
        elmt_reactant65 = 1.0;
        elmt_reactant66 = 1.0;
        elmt_product112 = 1.0;
        elmt_reactant130 = 1.0;
        elmt_product114 = 1.0;
        elmt_reactant138 = 1.0;
        elmt_reactant137 = 1.0;
        elmt_product46 = 1.0;
        elmt_reactant136 = 1.0;
        elmt_product116 = 1.0;
        elmt_reactant134 = 2.0;
        elmt_reactant133 = 1.0;
        elmt_reactant72 = 1.0;
        elmt_product62 = 1.0;
        elmt_reactant74 = 1.0;
        elmt_product60 = 1.0;
        elmt_reactant75 = 1.0;
        elmt_reactant3 = 1.0;
        elmt_product67 = 2.0;
        elmt_reactant6 = 2.0;
        elmt_reactant5 = 1.0;
        elmt_reactant70 = 1.0;
        elmt_reactant8 = 3.0;
        elmt_reactant71 = 1.0;
        elmt_reactant77 = 1.0;
        elmt_reactant78 = 1.0;
        elmt_reactant0 = 1.0;
        elmt_reactant143 = 1.0;
        elmt_reactant141 = 1.0;
        elmt_reactant140 = 1.0;
        elmt_product125 = 1.0;
        elmt_product120 = 1.0;
        elmt_product121 = 1.0;
        elmt_reactant149 = 1.0;
        elmt_product57 = 1.0;
        elmt_reactant147 = 1.0;
        elmt_product128 = 1.0;
        elmt_reactant146 = 1.0;
        elmt_reactant144 = 1.0;


    equation
        elmt__194 = (elmt__1 * ((elmt__194_elmt_k1 * elmt__174 * elmt__96) - (elmt__194_elmt_k2 * elmt__198)));
        elmt__192 = (elmt__1 * elmt__192_elmt_k1 * elmt__181 * elmt__96);
        elmt_reaction_70 = ((elmt_reaction_70_elmt_k1 * elmt_species_15) - (elmt_reaction_70_elmt_k2 * elmt_species_31));
        elmt_reaction_27 = (elmt__1 * (((elmt_reaction_27_elmt_k * elmt__96 * elmt_species_3) / (elmt_reaction_27_elmt_km + elmt_species_3))));
        elmt_reaction_28 = (elmt__1 * (((elmt_reaction_28_elmt_k * elmt__96 * elmt_species_5) / (elmt_reaction_28_elmt_km + elmt_species_5))));
        elmt_reaction_25 = (elmt__3 * (((elmt_reaction_25_elmt_V * elmt_species_18) / (elmt_reaction_25_elmt_Km + elmt_species_18))));
        elmt_reaction_69 = (elmt_reaction_69_elmt_k1 * elmt_species_14 * Functions.pow(elmt_species_31, 3.0));
        elmt_reaction_26 = (elmt__3 * (((elmt_reaction_26_elmt_V * elmt_species_20) / (elmt_reaction_26_elmt_Km + elmt_species_20))));
        elmt__149 = (elmt__1 * elmt__149_elmt_k1 * elmt__147 * Functions.pow(elmt__129, 2.0));
        elmt_reaction_29 = (elmt__3 * elmt_reaction_29_elmt_k1 * elmt_species_17);
        elmt__103 = (elmt__1 * ((elmt__103_elmt_k1 * elmt__101 * elmt__99) - (elmt__103_elmt_k2 * elmt__105)));
        elmt_reaction_63 = ((elmt_reaction_63_elmt_k1 * Functions.pow(elmt_species_20, 3.0) * Functions.pow(elmt__11, 3.0)) - (elmt_reaction_63_elmt_k2 * elmt_species_14));
        elmt_reaction_20 = (elmt__1 * elmt_reaction_20_elmt_k1 * elmt__99);
        elmt_reaction_64 = (elmt__3 * elmt_reaction_64_elmt_k1 * elmt__9);
        elmt_reaction_61 = (elmt__1 * ((elmt_reaction_61_elmt_k1 * elmt__99 * elmt_species_7) - (elmt_reaction_61_elmt_k2 * elmt_species_12)));
        elmt_reaction_62 = ((elmt_reaction_62_elmt_k1 * Functions.pow(elmt__19, 3.0) * Functions.pow(elmt__11, 3.0)) - (elmt_reaction_62_elmt_k2 * elmt_species_13));
        elmt_reaction_23 = (elmt__1 * elmt_reaction_23_elmt_k1 * elmt_species_3);
        elmt_reaction_67 = (elmt__1 * elmt_reaction_67_elmt_k1 * elmt_species_15);
        elmt_reaction_24 = (elmt__1 * (((elmt_reaction_24_elmt_V * elmt_species_4) / (elmt_reaction_24_elmt_Km + elmt_species_4))));
        elmt_reaction_68 = (elmt_reaction_68_elmt_k1 * elmt_species_13 * Functions.pow(elmt_species_31, 3.0));
        elmt_reaction_21 = ((elmt_reaction_21_elmt_k1 * elmt_species_2) - (elmt_reaction_21_elmt_k2 * elmt__11));
        elmt_reaction_65 = (elmt__3 * elmt_reaction_65_elmt_k1 * elmt_species_18);
        elmt_reaction_22 = (elmt__1 * (elmt_reaction_22_elmt_v));
        elmt_reaction_66 = (elmt__1 * (elmt_reaction_66_elmt_v));
        elmt_reaction_60 = (elmt__3 * ((elmt_reaction_60_elmt_k1 * elmt_species_23 * elmt_species_28) - (elmt_reaction_60_elmt_k2 * elmt_species_29)));
        elmt_reaction_3 = (elmt__1 * (((elmt_reaction_3_elmt_k + (elmt_reaction_3_elmt_k1 * elmt_species_30)) / (1.0 + elmt_species_16 + elmt_species_23))));
        elmt_reaction_4 = (elmt__1 * ((elmt_reaction_4_elmt_k + (elmt_reaction_4_elmt_k1 * elmt_species_30))));
        elmt_reaction_1 = (elmt__1 * (elmt_reaction_1_elmt_v));
        elmt_reaction_2 = (elmt__1 * ((elmt_reaction_2_elmt_k + (elmt_reaction_2_elmt_k1 * elmt_species_30))));
        elmt_reaction_16 = (elmt__1 * elmt_reaction_16_elmt_k1 * elmt__101);
        elmt_reaction_17 = (elmt__1 * (((elmt_reaction_17_elmt_V * elmt__129) / (elmt_reaction_17_elmt_Km + elmt__129))));
        elmt__29 = (elmt__3 * elmt__29_elmt_k1 * elmt_species_27);
        elmt_reaction_9 = (elmt__1 * elmt_reaction_9_elmt_k1 * elmt__96);
        elmt_reaction_14 = (elmt__1 * (elmt_reaction_14_elmt_v));
        elmt_reaction_58 = ((elmt_reaction_58_elmt_k1 * elmt__9 * Functions.pow(elmt_species_22, 2.0)) - (elmt_reaction_58_elmt_k2 * elmt_species_11));
        elmt_reaction_15 = (elmt__1 * elmt_reaction_15_elmt_k1 * elmt__147);
        elmt_reaction_59 = ((elmt_reaction_59_elmt_k1 * elmt_species_11 * elmt_species_28) - (elmt_reaction_59_elmt_k2 * elmt_species_29));
        elmt_reaction_7 = (elmt__3 * ((elmt_reaction_7_elmt_k1 * elmt__5 * elmt__11) - (elmt_reaction_7_elmt_k2 * elmt_species_16)));
        elmt_reaction_8 = ((elmt_reaction_8_elmt_k1 * elmt__99) - (elmt_reaction_8_elmt_k2 * elmt__21));
        elmt_reaction_5 = (elmt__1 * ((elmt_reaction_5_elmt_k + (elmt_reaction_5_elmt_k1 * elmt_species_30))));
        elmt_reaction_18 = (elmt__1 * elmt_reaction_18_elmt_k1 * elmt_species_2);
        elmt_reaction_6 = (elmt__1 * (elmt_reaction_6_elmt_v));
        elmt_reaction_19 = ((elmt_reaction_19_elmt_k1 * elmt__15) - (elmt_reaction_19_elmt_k2 * elmt_species_1));
        elmt_reaction_52 = ((elmt_reaction_52_elmt_k1 * elmt_species_24) - (elmt_reaction_52_elmt_k2 * elmt_species_9));
        elmt_reaction_53 = (elmt__3 * ((elmt_reaction_53_elmt_k1 * elmt_species_18 * elmt_species_28) - (elmt_reaction_53_elmt_k2 * elmt_species_30)));
        elmt__156 = ((elmt__156_elmt_k1 * elmt__147) - (elmt__156_elmt_k2 * elmt__5));
        elmt_reaction_50 = ((elmt_reaction_50_elmt_k1 * elmt_species_25) - (elmt_reaction_50_elmt_k2 * elmt_species_10));
        elmt_reaction_51 = (elmt__1 * ((elmt_reaction_51_elmt_k1 * elmt_species_9 * (1.0 + elmt__174))));
        elmt_reaction_12 = (elmt__1 * elmt_reaction_12_elmt_k1 * elmt__79);
        elmt_reaction_56 = (elmt__3 * ((elmt_reaction_56_elmt_k1 * elmt__13 * elmt_species_28) - (elmt_reaction_56_elmt_k2 * elmt_species_29)));
        elmt_reaction_13 = (elmt__1 * (elmt_reaction_13_elmt_v));
        elmt_reaction_57 = (elmt__3 * ((elmt_reaction_57_elmt_k1 * elmt_species_26 * elmt_species_28) - (elmt_reaction_57_elmt_k2 * elmt_species_29)));
        elmt_reaction_10 = (elmt__1 * elmt_reaction_10_elmt_k1 * elmt__84);
        elmt_reaction_54 = (elmt__3 * ((elmt_reaction_54_elmt_k1 * elmt__9 * elmt_species_28) - (elmt_reaction_54_elmt_k2 * elmt_species_30)));
        elmt_reaction_11 = (elmt__1 * elmt_reaction_11_elmt_k1 * elmt__75);
        elmt_reaction_55 = (elmt__3 * ((elmt_reaction_55_elmt_k1 * elmt_species_21 * elmt_species_28) - (elmt_reaction_55_elmt_k2 * elmt_species_29)));
        elmt__172 = ((elmt__172_elmt_k1 * elmt__25) - (elmt__172_elmt_k2 * elmt__174));
        elmt__33 = (elmt__3 * ((elmt__33_elmt_k1 * elmt__9 * Functions.pow(elmt__11, 2.0)) - (elmt__33_elmt_k2 * elmt__13)));
        elmt__77 = (elmt__1 * ((elmt__77_elmt_k * elmt__75 * elmt__75 * elmt_parameter_1)));
        elmt__31 = (elmt__3 * (((elmt__31_elmt_V * elmt__9) / (elmt__31_elmt_Km + elmt__9))));
        elmt_reaction_49 = (elmt__1 * elmt_reaction_49_elmt_k1 * elmt_species_10 * elmt__96);
        elmt_reaction_47 = (elmt__1 * ((elmt_reaction_47_elmt_k + (elmt_reaction_47_elmt_k1 * elmt_species_30))));
        elmt__39 = (elmt__3 * (((elmt__39_elmt_V * elmt__19) / (elmt__39_elmt_Km + elmt__19))));
        elmt_reaction_48 = (elmt__3 * ((elmt_reaction_48_elmt_k1 * elmt_species_18 * Functions.pow(elmt_species_22, 2.0)) - (elmt_reaction_48_elmt_k2 * elmt_species_26)));
        elmt__37 = (elmt__3 * elmt__37_elmt_k1 * elmt__5 * Functions.pow(elmt__19, 2.0));
        elmt__35 = (elmt__35_elmt_k1 * Functions.pow(elmt__15, 3.0) * elmt_species_13);
        elmt__125 = (elmt__1 * (((elmt__125_elmt_k * elmt__96 * elmt__99) / (elmt__125_elmt_km + elmt__99))));
        elmt_reaction_41 = ((elmt_reaction_41_elmt_k1 * elmt_species_7) - (elmt_reaction_41_elmt_k2 * elmt_species_22));
        elmt_reaction_42 = (elmt__1 * ((elmt_reaction_42_elmt_k + (elmt_reaction_42_elmt_k1 * elmt_species_30))));
        elmt_reaction_40 = (elmt__1 * elmt_reaction_40_elmt_k1 * elmt_species_7);
        elmt_reaction_45 = (elmt__1 * ((elmt_reaction_45_elmt_k1 * elmt_species_3 * elmt_species_7) - (elmt_reaction_45_elmt_k2 * elmt_species_8)));
        elmt_reaction_46 = (elmt__3 * ((elmt_reaction_46_elmt_k1 * elmt_species_24 * elmt__25) - (elmt_reaction_46_elmt_k2 * elmt_species_25)));
        elmt_reaction_43 = (elmt__1 * ((elmt_reaction_43_elmt_k1 * elmt_species_1 * (1.0 + elmt__174))));
        elmt__164 = (elmt__164_elmt_k1 * elmt__153);
        elmt_reaction_44 = (elmt__3 * ((elmt_reaction_44_elmt_k1 * elmt__5 * elmt_species_22) - (elmt_reaction_44_elmt_k2 * elmt_species_23)));
        elmt__43 = (elmt__3 * ((elmt__43_elmt_k1 * elmt__15 * elmt__25) - (elmt__43_elmt_k2 * elmt__27)));
        elmt__86 = (elmt__1 * ((elmt__86_elmt_k1 * elmt__79 * Functions.pow(elmt__84, 2.0)) - (elmt__86_elmt_k2 * elmt__96)));
        elmt__41 = (elmt__3 * elmt__41_elmt_k1 * elmt__21 * elmt__15);
        elmt_reaction_38 = (elmt_reaction_38_elmt_k1 * elmt_species_14);
        elmt_reaction_39 = (elmt__1 * ((elmt_reaction_39_elmt_k1 * elmt__174 * (1.0 + elmt_species_15))));
        elmt_reaction_36 = (elmt__3 * ((elmt_reaction_36_elmt_k1 * elmt_species_18 * Functions.pow(elmt__11, 2.0)) - (elmt_reaction_36_elmt_k2 * elmt_species_21)));
        elmt_reaction_37 = (elmt_reaction_37_elmt_k1 * elmt_species_6);
        elmt__139 = (elmt__139_elmt_k1 * elmt__129);
        elmt_reaction_30 = ((elmt_reaction_30_elmt_k1 * elmt_species_3) - (elmt_reaction_30_elmt_k2 * elmt_species_17));
        elmt_reaction_31 = (elmt__1 * ((elmt_reaction_31_elmt_k1 * elmt__101 * elmt_species_3) - (elmt_reaction_31_elmt_k2 * elmt_species_5)));
        elmt__178 = ((elmt__178_elmt_k1 * elmt__27) - (elmt__178_elmt_k2 * elmt__181));
        elmt__132 = (elmt__1 * (((elmt__132_elmt_k * elmt__96 * elmt__105) / (elmt__132_elmt_km + elmt__105))));
        elmt_reaction_34 = (elmt__1 * elmt_reaction_34_elmt_k1 * elmt__147 * Functions.pow(elmt_species_4, 2.0));
        elmt_reaction_35 = (elmt__3 * elmt_reaction_35_elmt_k1 * elmt__5 * Functions.pow(elmt_species_20, 2.0));
        elmt_reaction_32 = (elmt__3 * elmt_reaction_32_elmt_k1 * elmt_species_19);
        elmt_reaction_33 = (elmt_reaction_33_elmt_k1 * elmt_species_4);
        der(elmt_product73) = 0;
        der(elmt_reactant41) = 0;
        der(elmt_product76) = 0;
        der(elmt_reactant108) = 0;
        der(elmt_reactant47) = 0;
        der(elmt_reactant48) = 0;
        der(elmt_reactant49) = 0;
        der(elmt_product172) = 0;
        der(elmt_reactant43) = 0;
        der(elmt_reactant45) = 0;
        der(elmt_reactant110) = 0;
        der(elmt_product178) = 0;
        der(elmt_product175) = 0;
        der(elmt_reactant118) = 0;
        der(elmt_reactant117) = 0;
        der(elmt_product69) = 0;
        der(elmt_product68) = 0;
        der(elmt_reactant115) = 0;
        der(elmt_reactant113) = 0;
        der(elmt_reactant111) = 0;
        der(elmt_reactant50) = 0;
        der(elmt_product85) = 0;
        der(elmt_product83) = 0;
        der(elmt_product89) = 0;
        der(elmt_product87) = 0;
        der(elmt_reactant119) = 0;
        der(elmt_product182) = 0;
        der(elmt_reactant58) = 0;
        der(elmt_reactant59) = 0;
        der(elmt_product80) = 0;
        der(elmt_product101) = 0;
        der(elmt_product103) = 0;
        der(elmt_product185) = 0;
        der(elmt_product100) = 0;
        der(elmt_product187) = 0;
        der(elmt_reactant129) = 0;
        der(elmt_product109) = 0;
        der(elmt_reactant127) = 0;
        der(elmt_product79) = 0;
        der(elmt_reactant126) = 0;
        der(elmt_product106) = 0;
        der(elmt_reactant124) = 0;
        der(elmt_reactant123) = 0;
        der(elmt_reactant122) = 0;
        der(elmt_product95) = 0;
        der(elmt_product10) = 0;
        der(elmt_product98) = 0;
        der(elmt_reactant26) = 0;
        der(elmt_reactant27) = 0;
        der(elmt_product151) = 0;
        der(elmt_product92) = 0;
        der(elmt_reactant21) = 0;
        der(elmt_product91) = 0;
        der(elmt_reactant23) = 0;
        der(elmt_reactant24) = 0;
        der(elmt_reactant176) = 0;
        der(elmt_product157) = 0;
        der(elmt_reactant174) = 0;
        der(elmt_reactant173) = 0;
        der(elmt_reactant18) = 0;
        der(elmt_reactant171) = 0;
        der(elmt_reactant19) = 0;
        der(elmt_reactant170) = 0;
        der(elmt_product154) = 0;
        der(elmt_reactant179) = 0;
        der(elmt_reactant177) = 0;
        der(elmt_product7) = 0;
        der(elmt_reactant31) = 0;
        der(elmt_product22) = 0;
        der(elmt_product20) = 0;
        der(elmt_reactant36) = 0;
        der(elmt_product1) = 0;
        der(elmt_product160) = 0;
        der(elmt_reactant37) = 0;
        der(elmt_reactant39) = 0;
        der(elmt_product4) = 0;
        der(elmt_reactant34) = 0;
        der(elmt_product2) = 0;
        der(elmt_reactant186) = 0;
        der(elmt_reactant184) = 0;
        der(elmt_product169) = 0;
        der(elmt_reactant183) = 0;
        der(elmt_reactant29) = 0;
        der(elmt_product163) = 0;
        der(elmt_reactant181) = 0;
        der(elmt_product166) = 0;
        der(elmt_reactant180) = 0;
        der(elmt_reactant107) = 0;
        der(elmt_product15) = 0;
        der(elmt_reactant105) = 0;
        der(elmt_product13) = 0;
        der(elmt_reactant104) = 0;
        der(elmt_reactant102) = 0;
        der(elmt_product30) = 0;
        der(elmt_reactant84) = 0;
        der(elmt_reactant86) = 0;
        der(elmt_product33) = 0;
        der(elmt_reactant81) = 0;
        der(elmt_product32) = 0;
        der(elmt_reactant82) = 0;
        der(elmt_reactant88) = 0;
        der(elmt_product135) = 0;
        der(elmt_reactant153) = 0;
        der(elmt_reactant152) = 0;
        der(elmt_reactant150) = 0;
        der(elmt_product131) = 0;
        der(elmt_product132) = 0;
        der(elmt_reactant9) = 0;
        der(elmt_product25) = 0;
        der(elmt_reactant159) = 0;
        der(elmt_reactant158) = 0;
        der(elmt_product139) = 0;
        der(elmt_reactant156) = 0;
        der(elmt_product28) = 0;
        der(elmt_reactant155) = 0;
        der(elmt_reactant94) = 0;
        der(elmt_product40) = 0;
        der(elmt_reactant96) = 0;
        der(elmt_reactant97) = 0;
        der(elmt_reactant90) = 0;
        der(elmt_product44) = 0;
        der(elmt_reactant93) = 0;
        der(elmt_product42) = 0;
        der(elmt_reactant14) = 0;
        der(elmt_reactant16) = 0;
        der(elmt_reactant17) = 0;
        der(elmt_reactant11) = 0;
        der(elmt_reactant99) = 0;
        der(elmt_reactant12) = 0;
        der(elmt_reactant165) = 0;
        der(elmt_reactant164) = 0;
        der(elmt_product145) = 0;
        der(elmt_product148) = 0;
        der(elmt_reactant162) = 0;
        der(elmt_reactant161) = 0;
        der(elmt_product142) = 0;
        der(elmt_product38) = 0;
        der(elmt_product35) = 0;
        der(elmt_reactant168) = 0;
        der(elmt_reactant167) = 0;
        der(elmt_product52) = 0;
        der(elmt_reactant61) = 0;
        der(elmt_product51) = 0;
        der(elmt_reactant63) = 0;
        der(elmt_reactant64) = 0;
        der(elmt_product56) = 0;
        der(elmt_product55) = 0;
        der(elmt_product54) = 0;
        der(elmt_product53) = 0;
        der(elmt_reactant65) = 0;
        der(elmt_reactant66) = 0;
        der(elmt_product112) = 0;
        der(elmt_reactant130) = 0;
        der(elmt_product114) = 0;
        der(elmt_reactant138) = 0;
        der(elmt_reactant137) = 0;
        der(elmt_product46) = 0;
        der(elmt_reactant136) = 0;
        der(elmt_product116) = 0;
        der(elmt_reactant134) = 0;
        der(elmt_reactant133) = 0;
        der(elmt_reactant72) = 0;
        der(elmt_product62) = 0;
        der(elmt_reactant74) = 0;
        der(elmt_product60) = 0;
        der(elmt_reactant75) = 0;
        der(elmt_reactant3) = 0;
        der(elmt_product67) = 0;
        der(elmt_reactant6) = 0;
        der(elmt_reactant5) = 0;
        der(elmt_reactant70) = 0;
        der(elmt_reactant8) = 0;
        der(elmt_reactant71) = 0;
        der(elmt_reactant77) = 0;
        der(elmt_reactant78) = 0;
        der(elmt_reactant0) = 0;
        der(elmt_reactant143) = 0;
        der(elmt_reactant141) = 0;
        der(elmt_reactant140) = 0;
        der(elmt_product125) = 0;
        der(elmt_product120) = 0;
        der(elmt_product121) = 0;
        der(elmt_reactant149) = 0;
        der(elmt_product57) = 0;
        der(elmt_reactant147) = 0;
        der(elmt_product128) = 0;
        der(elmt_reactant146) = 0;
        der(elmt_reactant144) = 0;

end Reactions;
