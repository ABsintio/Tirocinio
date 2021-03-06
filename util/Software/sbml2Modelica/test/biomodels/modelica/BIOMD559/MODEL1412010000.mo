within BIOMD559;
model MODEL1412010000 "Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis" annotation(Documentation(info="<annotation>
<COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-11-20T17:56:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Bag>
                <rdf:li>
                  <rdf:Description>
                    <vCard:EMAIL>elouzou@central.ntua.gr</vCard:EMAIL>
                    <vCard:N>
                      <rdf:Description>
                        <vCard:Family>Ouzounoglou</vCard:Family>
                        <vCard:Given>Eleftherios</vCard:Given>
                      </rdf:Description>
                    </vCard:N>
                    <vCard:ORG>
                      <rdf:Description>
                        <vCard:Orgname>UOA,NTUA</vCard:Orgname>
                      </rdf:Description>
                    </vCard:ORG>
                  </rdf:Description>
                </rdf:li>
              </rdf:Bag>
            </dcterms:creator>
            <CopasiMT:isVersionOf>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/go/GO:0006914\"/>
              </rdf:Bag>
            </CopasiMT:isVersionOf>
            <CopasiMT:occursIn>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/taxonomy/9606\"/>
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
    Class_elmt_c2 elmt_c2;
    Class_elmt_c3 elmt_c3;
    Class_elmt_c1 elmt_c1;

    equation
        Params.elmt_s27 = elmt_c1.elmt_s27;
        Params.elmt_s26 = elmt_c1.elmt_s26;
        Params.elmt_s25 = elmt_c1.elmt_s25;
        Params.elmt_s6 = elmt_c1.elmt_s6;
        Params.elmt_s24 = elmt_c1.elmt_s24;
        Params.elmt_s7 = elmt_c1.elmt_s7;
        Params.elmt_s23 = elmt_c1.elmt_s23;
        Params.elmt_s5 = elmt_c1.elmt_s5;
        Params.elmt_s2 = elmt_c1.elmt_s2;
        Params.elmt_s21 = elmt_c1.elmt_s21;
        Params.elmt_s32 = elmt_c1.elmt_s32;
        Params.elmt_s20 = elmt_c1.elmt_s20;
        Params.elmt_s31 = elmt_c1.elmt_s31;
        Params.elmt_c1 = elmt_c1.elmt_c1;
        Params.elmt_s29 = elmt_c1.elmt_s29;
        Params.elmt_s18 = elmt_c1.elmt_s18;
        Params.elmt_s17 = elmt_c1.elmt_s17;
        Params.elmt_s30 = elmt_c1.elmt_s30;
        Params.elmt_s1 = elmt_c1.elmt_s1;
        Reacs.elmt_s484 = elmt_c3.elmt_s484;
        Reacs.elmt_s483 = elmt_c3.elmt_s483;
        Reacs.elmt_s482 = elmt_c3.elmt_s482;
        Reacs.elmt_k_ProteasomeBind = Params.elmt_k_ProteasomeBind;
        Reacs.elmt_s526 = elmt_c2.elmt_s526;
        Reacs.elmt_s525 = elmt_c2.elmt_s525;
        Reacs.elmt_s523 = elmt_c2.elmt_s523;
        Reacs.elmt_s522 = elmt_c2.elmt_s522;
        Reacs.elmt_s489 = elmt_c3.elmt_s489;
        Reacs.elmt_s521 = elmt_c2.elmt_s521;
        Reacs.elmt_s520 = elmt_c2.elmt_s520;
        Reacs.elmt_s52 = elmt_c3.elmt_s52;
        Reacs.elmt_s51 = elmt_c3.elmt_s51;
        Reacs.elmt_k_M_autophagyDegr = Params.elmt_k_M_autophagyDegr;
        Reacs.elmt_s529 = elmt_c2.elmt_s529;
        Reacs.elmt_s528 = elmt_c2.elmt_s528;
        Reacs.elmt_s527 = elmt_c2.elmt_s527;
        Reacs.elmt_k_OligomerForm = Params.elmt_k_OligomerForm;
        Reacs.elmt_s6 = elmt_c1.elmt_s6;
        Reacs.elmt_s7 = elmt_c1.elmt_s7;
        Reacs.elmt_s5 = elmt_c1.elmt_s5;
        Reacs.elmt_s2 = elmt_c1.elmt_s2;
        Reacs.elmt_s53 = elmt_c3.elmt_s53;
        Reacs.elmt_s3 = elmt_c1.elmt_s3;
        Reacs.elmt_s474 = elmt_c1.elmt_s474;
        Reacs.elmt_c1 = elmt_c1.elmt_c1;
        Reacs.elmt_s473 = elmt_c1.elmt_s473;
        Reacs.elmt_s393 = elmt_c1.elmt_s393;
        Reacs.elmt_s391 = elmt_c1.elmt_s391;
        Reacs.elmt_s18 = elmt_c1.elmt_s18;
        Reacs.elmt_s17 = elmt_c1.elmt_s17;
        Reacs.elmt_s479 = elmt_c1.elmt_s479;
        Reacs.elmt_s478 = elmt_c1.elmt_s478;
        Reacs.elmt_s477 = elmt_c1.elmt_s477;
        Reacs.elmt_s476 = elmt_c1.elmt_s476;
        Reacs.elmt_s475 = elmt_c1.elmt_s475;
        Reacs.elmt_s1 = elmt_c1.elmt_s1;
        Reacs.elmt_s519 = elmt_c2.elmt_s519;
        Reacs.elmt_s518 = elmt_c2.elmt_s518;
        Reacs.elmt_s517 = elmt_c2.elmt_s517;
        Reacs.elmt_s27 = elmt_c1.elmt_s27;
        Reacs.elmt_s26 = elmt_c1.elmt_s26;
        Reacs.elmt_s25 = elmt_c1.elmt_s25;
        Reacs.elmt_s24 = elmt_c1.elmt_s24;
        Reacs.elmt_s23 = elmt_c1.elmt_s23;
        Reacs.elmt_s22 = elmt_c1.elmt_s22;
        Reacs.elmt_s21 = elmt_c1.elmt_s21;
        Reacs.elmt_s20 = elmt_c1.elmt_s20;
        Reacs.elmt_s385 = elmt_c1.elmt_s385;
        Reacs.elmt_s383 = elmt_c1.elmt_s383;
        Reacs.elmt_s381 = elmt_c1.elmt_s381;
        Reacs.elmt_s29 = elmt_c1.elmt_s29;
        Reacs.elmt_k_LampFreeWTasyn = Params.elmt_k_LampFreeWTasyn;
        Reacs.elmt_k_2merForm = Params.elmt_k_2merForm;
        Reacs.elmt_s501 = elmt_c3.elmt_s501;
        Reacs.elmt_s500 = elmt_c3.elmt_s500;
        Reacs.elmt_s389 = elmt_c1.elmt_s389;
        Reacs.elmt_c2 = elmt_c2.elmt_c2;
        Reacs.elmt_c3 = elmt_c3.elmt_c3;
        Reacs.elmt_s387 = elmt_c1.elmt_s387;
        Reacs.elmt_s30 = elmt_c1.elmt_s30;
        Reacs.elmt_k_DopModWTasynLampBind = Params.elmt_k_DopModWTasynLampBind;
        Reacs.elmt_s35 = elmt_c1.elmt_s35;
        Reacs.elmt_k_WTasyn1_2merBindOnLamp = Params.elmt_k_WTasyn1_2merBindOnLamp;
        Reacs.elmt_s78 = elmt_c3.elmt_s78;
        Reacs.elmt_s33 = elmt_c1.elmt_s33;
        Reacs.elmt_s32 = elmt_c1.elmt_s32;
        Reacs.elmt_s31 = elmt_c1.elmt_s31;
        Reacs.elmt_s496 = elmt_c3.elmt_s496;
        Reacs.elmt_k_ProtOligDegr = Params.elmt_k_ProtOligDegr;
        Reacs.elmt_s495 = elmt_c3.elmt_s495;
        Reacs.elmt_s494 = elmt_c3.elmt_s494;
        Reacs.elmt_k_OligAutophagUptake = Params.elmt_k_OligAutophagUptake;
        Reacs.elmt_s492 = elmt_c3.elmt_s492;
        Reacs.elmt_s491 = elmt_c3.elmt_s491;
        Reacs.elmt_s490 = elmt_c3.elmt_s490;
        Reacs.elmt_k_DisRate = Params.elmt_k_DisRate;
        Reacs.elmt_s536 = elmt_c3.elmt_s536;
        Reacs.elmt_s535 = elmt_c2.elmt_s535;
        Reacs.elmt_s533 = elmt_c2.elmt_s533;
        Reacs.elmt_s499 = elmt_c3.elmt_s499;
        Reacs.elmt_s498 = elmt_c3.elmt_s498;
        Reacs.elmt_s531 = elmt_c2.elmt_s531;
        Reacs.elmt_s530 = elmt_c2.elmt_s530;
        Reacs.elmt_s85 = elmt_c3.elmt_s85;
        Reacs.elmt_k_WTOligBindOnLamp = Params.elmt_k_WTOligBindOnLamp;
        elmt_c3.elmt_re73 = Reacs.elmt_re73;
        elmt_c3.elmt_re74 = Reacs.elmt_re74;
        elmt_c3.elmt_re75 = Reacs.elmt_re75;
        elmt_c3.elmt_re76 = Reacs.elmt_re76;
        elmt_c3.elmt_re77 = Reacs.elmt_re77;
        elmt_c3.elmt_re78 = Reacs.elmt_re78;
        elmt_c3.elmt_re79 = Reacs.elmt_re79;
        elmt_c3.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_c3.elmt_reactant197 = Reacs.elmt_reactant197;
        elmt_c3.elmt_product178 = Reacs.elmt_product178;
        elmt_c3.elmt_product211 = Reacs.elmt_product211;
        elmt_c3.elmt_product214 = Reacs.elmt_product214;
        elmt_c3.elmt_reactant194 = Reacs.elmt_reactant194;
        elmt_c3.elmt_re80 = Reacs.elmt_re80;
        elmt_c3.elmt_re81 = Reacs.elmt_re81;
        elmt_c3.elmt_re82 = Reacs.elmt_re82;
        elmt_c3.elmt_re83 = Reacs.elmt_re83;
        elmt_c3.elmt_reactant191 = Reacs.elmt_reactant191;
        elmt_c3.elmt_product176 = Reacs.elmt_product176;
        elmt_c3.elmt_product217 = Reacs.elmt_product217;
        elmt_c3.elmt_product89 = Reacs.elmt_product89;
        elmt_c3.elmt_product86 = Reacs.elmt_product86;
        elmt_c3.elmt_product181 = Reacs.elmt_product181;
        elmt_c3.elmt_product184 = Reacs.elmt_product184;
        elmt_c3.elmt_re69 = Reacs.elmt_re69;
        elmt_c3.elmt_reactant242 = Reacs.elmt_reactant242;
        elmt_c3.elmt_product223 = Reacs.elmt_product223;
        elmt_c3.elmt_product101 = Reacs.elmt_product101;
        elmt_c3.elmt_re70 = Reacs.elmt_re70;
        elmt_c3.elmt_re71 = Reacs.elmt_re71;
        elmt_c3.elmt_product100 = Reacs.elmt_product100;
        elmt_c3.elmt_product187 = Reacs.elmt_product187;
        elmt_c3.elmt_product220 = Reacs.elmt_product220;
        elmt_c3.elmt_re72 = Reacs.elmt_re72;
        elmt_c3.elmt_reactant248 = Reacs.elmt_reactant248;
        elmt_c3.elmt_product79 = Reacs.elmt_product79;
        elmt_c3.elmt_product226 = Reacs.elmt_product226;
        elmt_c3.elmt_reactant245 = Reacs.elmt_reactant245;
        elmt_c3.elmt_product95 = Reacs.elmt_product95;
        elmt_c3.elmt_product11 = Reacs.elmt_product11;
        elmt_c3.elmt_reactant209 = Reacs.elmt_reactant209;
        elmt_c3.elmt_product98 = Reacs.elmt_product98;
        elmt_c3.elmt_product97 = Reacs.elmt_product97;
        elmt_c3.elmt_product92 = Reacs.elmt_product92;
        elmt_c3.elmt_reactant175 = Reacs.elmt_reactant175;
        elmt_c3.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_c3.elmt_reactant215 = Reacs.elmt_reactant215;
        elmt_c3.elmt_reactant179 = Reacs.elmt_reactant179;
        elmt_c3.elmt_reactant212 = Reacs.elmt_reactant212;
        elmt_c3.elmt_reactant177 = Reacs.elmt_reactant177;
        elmt_c3.elmt_reactant218 = Reacs.elmt_reactant218;
        elmt_c3.elmt_re100 = Reacs.elmt_re100;
        elmt_c3.elmt_reactant185 = Reacs.elmt_reactant185;
        elmt_c3.elmt_re101 = Reacs.elmt_re101;
        elmt_c3.elmt_product202 = Reacs.elmt_product202;
        elmt_c3.elmt_reactant182 = Reacs.elmt_reactant182;
        elmt_c3.elmt_product208 = Reacs.elmt_product208;
        elmt_c3.elmt_product205 = Reacs.elmt_product205;
        elmt_c3.elmt_reactant224 = Reacs.elmt_reactant224;
        elmt_c3.elmt_product19 = Reacs.elmt_product19;
        elmt_c3.elmt_reactant188 = Reacs.elmt_reactant188;
        elmt_c3.elmt_reactant221 = Reacs.elmt_reactant221;
        elmt_c3.elmt_re37 = Reacs.elmt_re37;
        elmt_c3.elmt_re38 = Reacs.elmt_re38;
        elmt_c3.elmt_reactant85 = Reacs.elmt_reactant85;
        elmt_c3.elmt_re30 = Reacs.elmt_re30;
        elmt_c3.elmt_re33 = Reacs.elmt_re33;
        elmt_c3.elmt_re34 = Reacs.elmt_re34;
        elmt_c3.elmt_reactant88 = Reacs.elmt_reactant88;
        elmt_c3.elmt_re35 = Reacs.elmt_re35;
        elmt_c3.elmt_re36 = Reacs.elmt_re36;
        elmt_c3.elmt_product255 = Reacs.elmt_product255;
        elmt_c3.elmt_product258 = Reacs.elmt_product258;
        elmt_c3.elmt_product252 = Reacs.elmt_product252;
        elmt_c3.elmt_reactant94 = Reacs.elmt_reactant94;
        elmt_c3.elmt_reactant96 = Reacs.elmt_reactant96;
        elmt_c3.elmt_reactant91 = Reacs.elmt_reactant91;
        elmt_c3.elmt_product261 = Reacs.elmt_product261;
        elmt_c3.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_c3.elmt_reactant99 = Reacs.elmt_reactant99;
        elmt_c3.elmt_re25 = Reacs.elmt_re25;
        elmt_c3.elmt_re8 = Reacs.elmt_re8;
        elmt_c3.elmt_re5 = Reacs.elmt_re5;
        elmt_c3.elmt_product264 = Reacs.elmt_product264;
        elmt_c3.elmt_reactant206 = Reacs.elmt_reactant206;
        elmt_c3.elmt_reactant203 = Reacs.elmt_reactant203;
        elmt_c3.elmt_reactant200 = Reacs.elmt_reactant200;
        elmt_c3.elmt_re18 = Reacs.elmt_re18;
        elmt_c3.elmt_reactant64 = Reacs.elmt_reactant64;
        elmt_c3.elmt_re95 = Reacs.elmt_re95;
        elmt_c3.elmt_product193 = Reacs.elmt_product193;
        elmt_c3.elmt_re96 = Reacs.elmt_re96;
        elmt_c3.elmt_re97 = Reacs.elmt_re97;
        elmt_c3.elmt_re98 = Reacs.elmt_re98;
        elmt_c3.elmt_re99 = Reacs.elmt_re99;
        elmt_c3.elmt_product190 = Reacs.elmt_product190;
        elmt_c3.elmt_reactant253 = Reacs.elmt_reactant253;
        elmt_c3.elmt_reactant251 = Reacs.elmt_reactant251;
        elmt_c3.elmt_product196 = Reacs.elmt_product196;
        elmt_c3.elmt_product199 = Reacs.elmt_product199;
        elmt_c3.elmt_product46 = Reacs.elmt_product46;
        elmt_c3.elmt_reactant256 = Reacs.elmt_reactant256;
        elmt_c3.elmt_product65 = Reacs.elmt_product65;
        elmt_c3.elmt_re84 = Reacs.elmt_re84;
        elmt_c3.elmt_re85 = Reacs.elmt_re85;
        elmt_c3.elmt_re86 = Reacs.elmt_re86;
        elmt_c3.elmt_reactant78 = Reacs.elmt_reactant78;
        elmt_c3.elmt_reactant263 = Reacs.elmt_reactant263;
        elmt_c3.elmt_product246 = Reacs.elmt_product246;
        elmt_c3.elmt_reactant260 = Reacs.elmt_reactant260;
        elmt_c3.elmt_product243 = Reacs.elmt_product243;
        elmt_c3.elmt_re94 = Reacs.elmt_re94;
        elmt_c3.elmt_product249 = Reacs.elmt_product249;
        elmt_c1.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt_c1.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_c1.elmt_re73 = Reacs.elmt_re73;
        elmt_c1.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt_c1.elmt_re74 = Reacs.elmt_re74;
        elmt_c1.elmt_re75 = Reacs.elmt_re75;
        elmt_c1.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt_c1.elmt_re76 = Reacs.elmt_re76;
        elmt_c1.elmt_re77 = Reacs.elmt_re77;
        elmt_c1.elmt_re78 = Reacs.elmt_re78;
        elmt_c1.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_c1.elmt_re79 = Reacs.elmt_re79;
        elmt_c1.elmt_product333 = Reacs.elmt_product333;
        elmt_c1.elmt_product332 = Reacs.elmt_product332;
        elmt_c1.elmt_product335 = Reacs.elmt_product335;
        elmt_c1.elmt_re80 = Reacs.elmt_re80;
        elmt_c1.elmt_re81 = Reacs.elmt_re81;
        elmt_c1.elmt_product210 = Reacs.elmt_product210;
        elmt_c1.elmt_re82 = Reacs.elmt_re82;
        elmt_c1.elmt_reactant192 = Reacs.elmt_reactant192;
        elmt_c1.elmt_product330 = Reacs.elmt_product330;
        elmt_c1.elmt_re83 = Reacs.elmt_re83;
        elmt_c1.elmt_product336 = Reacs.elmt_product336;
        elmt_c1.elmt_product339 = Reacs.elmt_product339;
        elmt_c1.elmt_product338 = Reacs.elmt_product338;
        elmt_c1.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_c1.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_c1.elmt_reactant53 = Reacs.elmt_reactant53;
        elmt_c1.elmt_re62 = Reacs.elmt_re62;
        elmt_c1.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_c1.elmt_re63 = Reacs.elmt_re63;
        elmt_c1.elmt_re64 = Reacs.elmt_re64;
        elmt_c1.elmt_re65 = Reacs.elmt_re65;
        elmt_c1.elmt_re66 = Reacs.elmt_re66;
        elmt_c1.elmt_re67 = Reacs.elmt_re67;
        elmt_c1.elmt_reactant55 = Reacs.elmt_reactant55;
        elmt_c1.elmt_re68 = Reacs.elmt_re68;
        elmt_c1.elmt_reactant57 = Reacs.elmt_reactant57;
        elmt_c1.elmt_product344 = Reacs.elmt_product344;
        elmt_c1.elmt_re71 = Reacs.elmt_re71;
        elmt_c1.elmt_re72 = Reacs.elmt_re72;
        elmt_c1.elmt_product341 = Reacs.elmt_product341;
        elmt_c1.elmt_re59 = Reacs.elmt_re59;
        elmt_c1.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_c1.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_c1.elmt_re51 = Reacs.elmt_re51;
        elmt_c1.elmt_re52 = Reacs.elmt_re52;
        elmt_c1.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_c1.elmt_re53 = Reacs.elmt_re53;
        elmt_c1.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_c1.elmt_re54 = Reacs.elmt_re54;
        elmt_c1.elmt_re55 = Reacs.elmt_re55;
        elmt_c1.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_c1.elmt_re56 = Reacs.elmt_re56;
        elmt_c1.elmt_re57 = Reacs.elmt_re57;
        elmt_c1.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_c1.elmt_re58 = Reacs.elmt_re58;
        elmt_c1.elmt_reactant296 = Reacs.elmt_reactant296;
        elmt_c1.elmt_product310 = Reacs.elmt_product310;
        elmt_c1.elmt_product313 = Reacs.elmt_product313;
        elmt_c1.elmt_reactant173 = Reacs.elmt_reactant173;
        elmt_c1.elmt_reactant294 = Reacs.elmt_reactant294;
        elmt_c1.elmt_product312 = Reacs.elmt_product312;
        elmt_c1.elmt_reactant172 = Reacs.elmt_reactant172;
        elmt_c1.elmt_reactant293 = Reacs.elmt_reactant293;
        elmt_c1.elmt_re60 = Reacs.elmt_re60;
        elmt_c1.elmt_reactant170 = Reacs.elmt_reactant170;
        elmt_c1.elmt_reactant291 = Reacs.elmt_reactant291;
        elmt_c1.elmt_re61 = Reacs.elmt_re61;
        elmt_c1.elmt_product318 = Reacs.elmt_product318;
        elmt_c1.elmt_product315 = Reacs.elmt_product315;
        elmt_c1.elmt_reactant299 = Reacs.elmt_reactant299;
        elmt_c1.elmt_product316 = Reacs.elmt_product316;
        elmt_c1.elmt_re48 = Reacs.elmt_re48;
        elmt_c1.elmt_re49 = Reacs.elmt_re49;
        elmt_c1.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_c1.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_c1.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_c1.elmt_re107 = Reacs.elmt_re107;
        elmt_c1.elmt_re108 = Reacs.elmt_re108;
        elmt_c1.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_c1.elmt_re109 = Reacs.elmt_re109;
        elmt_c1.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_c1.elmt_re103 = Reacs.elmt_re103;
        elmt_c1.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_c1.elmt_re104 = Reacs.elmt_re104;
        elmt_c1.elmt_re105 = Reacs.elmt_re105;
        elmt_c1.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_c1.elmt_re47 = Reacs.elmt_re47;
        elmt_c1.elmt_re106 = Reacs.elmt_re106;
        elmt_c1.elmt_product201 = Reacs.elmt_product201;
        elmt_c1.elmt_product321 = Reacs.elmt_product321;
        elmt_c1.elmt_reactant186 = Reacs.elmt_reactant186;
        elmt_c1.elmt_re100 = Reacs.elmt_re100;
        elmt_c1.elmt_re101 = Reacs.elmt_re101;
        elmt_c1.elmt_product324 = Reacs.elmt_product324;
        elmt_c1.elmt_re102 = Reacs.elmt_re102;
        elmt_c1.elmt_product323 = Reacs.elmt_product323;
        elmt_c1.elmt_reactant183 = Reacs.elmt_reactant183;
        elmt_c1.elmt_product320 = Reacs.elmt_product320;
        elmt_c1.elmt_re50 = Reacs.elmt_re50;
        elmt_c1.elmt_product16 = Reacs.elmt_product16;
        elmt_c1.elmt_product329 = Reacs.elmt_product329;
        elmt_c1.elmt_product326 = Reacs.elmt_product326;
        elmt_c1.elmt_product204 = Reacs.elmt_product204;
        elmt_c1.elmt_reactant189 = Reacs.elmt_reactant189;
        elmt_c1.elmt_product207 = Reacs.elmt_product207;
        elmt_c1.elmt_product327 = Reacs.elmt_product327;
        elmt_c1.elmt_reactant154 = Reacs.elmt_reactant154;
        elmt_c1.elmt_reactant275 = Reacs.elmt_reactant275;
        elmt_c1.elmt_reactant153 = Reacs.elmt_reactant153;
        elmt_c1.elmt_reactant273 = Reacs.elmt_reactant273;
        elmt_c1.elmt_reactant151 = Reacs.elmt_reactant151;
        elmt_c1.elmt_reactant150 = Reacs.elmt_reactant150;
        elmt_c1.elmt_reactant271 = Reacs.elmt_reactant271;
        elmt_c1.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_c1.elmt_reactant159 = Reacs.elmt_reactant159;
        elmt_c1.elmt_reactant158 = Reacs.elmt_reactant158;
        elmt_c1.elmt_reactant279 = Reacs.elmt_reactant279;
        elmt_c1.elmt_reactant156 = Reacs.elmt_reactant156;
        elmt_c1.elmt_reactant277 = Reacs.elmt_reactant277;
        elmt_c1.elmt_re3 = Reacs.elmt_re3;
        elmt_c1.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_c1.elmt_re2 = Reacs.elmt_re2;
        elmt_c1.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_c1.elmt_re1 = Reacs.elmt_re1;
        elmt_c1.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_c1.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_c1.elmt_product300 = Reacs.elmt_product300;
        elmt_c1.elmt_reactant164 = Reacs.elmt_reactant164;
        elmt_c1.elmt_reactant285 = Reacs.elmt_reactant285;
        elmt_c1.elmt_re9 = Reacs.elmt_re9;
        elmt_c1.elmt_product301 = Reacs.elmt_product301;
        elmt_c1.elmt_reactant162 = Reacs.elmt_reactant162;
        elmt_c1.elmt_re8 = Reacs.elmt_re8;
        elmt_c1.elmt_reactant283 = Reacs.elmt_reactant283;
        elmt_c1.elmt_reactant161 = Reacs.elmt_reactant161;
        elmt_c1.elmt_re7 = Reacs.elmt_re7;
        elmt_c1.elmt_reactant281 = Reacs.elmt_reactant281;
        elmt_c1.elmt_re6 = Reacs.elmt_re6;
        elmt_c1.elmt_re5 = Reacs.elmt_re5;
        elmt_c1.elmt_re4 = Reacs.elmt_re4;
        elmt_c1.elmt_product307 = Reacs.elmt_product307;
        elmt_c1.elmt_product309 = Reacs.elmt_product309;
        elmt_c1.elmt_reactant169 = Reacs.elmt_reactant169;
        elmt_c1.elmt_product304 = Reacs.elmt_product304;
        elmt_c1.elmt_product303 = Reacs.elmt_product303;
        elmt_c1.elmt_reactant289 = Reacs.elmt_reactant289;
        elmt_c1.elmt_reactant167 = Reacs.elmt_reactant167;
        elmt_c1.elmt_product306 = Reacs.elmt_product306;
        elmt_c1.elmt_reactant166 = Reacs.elmt_reactant166;
        elmt_c1.elmt_reactant287 = Reacs.elmt_reactant287;
        elmt_c1.elmt_re95 = Reacs.elmt_re95;
        elmt_c1.elmt_re96 = Reacs.elmt_re96;
        elmt_c1.elmt_product195 = Reacs.elmt_product195;
        elmt_c1.elmt_re97 = Reacs.elmt_re97;
        elmt_c1.elmt_re98 = Reacs.elmt_re98;
        elmt_c1.elmt_re99 = Reacs.elmt_re99;
        elmt_c1.elmt_reactant132 = Reacs.elmt_reactant132;
        elmt_c1.elmt_reactant130 = Reacs.elmt_reactant130;
        elmt_c1.elmt_reactant250 = Reacs.elmt_reactant250;
        elmt_c1.elmt_product198 = Reacs.elmt_product198;
        elmt_c1.elmt_reactant138 = Reacs.elmt_reactant138;
        elmt_c1.elmt_reactant259 = Reacs.elmt_reactant259;
        elmt_c1.elmt_reactant137 = Reacs.elmt_reactant137;
        elmt_c1.elmt_reactant257 = Reacs.elmt_reactant257;
        elmt_c1.elmt_reactant135 = Reacs.elmt_reactant135;
        elmt_c1.elmt_reactant134 = Reacs.elmt_reactant134;
        elmt_c1.elmt_reactant254 = Reacs.elmt_reactant254;
        elmt_c1.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_c1.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_c1.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_c1.elmt_re84 = Reacs.elmt_re84;
        elmt_c1.elmt_re85 = Reacs.elmt_re85;
        elmt_c1.elmt_re86 = Reacs.elmt_re86;
        elmt_c1.elmt_reactant143 = Reacs.elmt_reactant143;
        elmt_c1.elmt_reactant142 = Reacs.elmt_reactant142;
        elmt_c1.elmt_reactant262 = Reacs.elmt_reactant262;
        elmt_c1.elmt_reactant140 = Reacs.elmt_reactant140;
        elmt_c1.elmt_re94 = Reacs.elmt_re94;
        elmt_c1.elmt_reactant148 = Reacs.elmt_reactant148;
        elmt_c1.elmt_reactant269 = Reacs.elmt_reactant269;
        elmt_c1.elmt_reactant267 = Reacs.elmt_reactant267;
        elmt_c1.elmt_reactant146 = Reacs.elmt_reactant146;
        elmt_c1.elmt_reactant145 = Reacs.elmt_reactant145;
        elmt_c1.elmt_reactant265 = Reacs.elmt_reactant265;
        elmt_c1.elmt_product73 = Reacs.elmt_product73;
        elmt_c1.elmt_product76 = Reacs.elmt_product76;
        elmt_c1.elmt_product292 = Reacs.elmt_product292;
        elmt_c1.elmt_product171 = Reacs.elmt_product171;
        elmt_c1.elmt_product70 = Reacs.elmt_product70;
        elmt_c1.elmt_product290 = Reacs.elmt_product290;
        elmt_c1.elmt_product295 = Reacs.elmt_product295;
        elmt_c1.elmt_product174 = Reacs.elmt_product174;
        elmt_c1.elmt_product298 = Reacs.elmt_product298;
        elmt_c1.elmt_product297 = Reacs.elmt_product297;
        elmt_c1.elmt_reactant117 = Reacs.elmt_reactant117;
        elmt_c1.elmt_reactant116 = Reacs.elmt_reactant116;
        elmt_c1.elmt_product83 = Reacs.elmt_product83;
        elmt_c1.elmt_reactant119 = Reacs.elmt_reactant119;
        elmt_c1.elmt_product81 = Reacs.elmt_product81;
        elmt_c1.elmt_product180 = Reacs.elmt_product180;
        elmt_c1.elmt_reactant121 = Reacs.elmt_reactant121;
        elmt_c1.elmt_reactant241 = Reacs.elmt_reactant241;
        elmt_c1.elmt_reactant129 = Reacs.elmt_reactant129;
        elmt_c1.elmt_reactant127 = Reacs.elmt_reactant127;
        elmt_c1.elmt_reactant126 = Reacs.elmt_reactant126;
        elmt_c1.elmt_reactant247 = Reacs.elmt_reactant247;
        elmt_c1.elmt_reactant124 = Reacs.elmt_reactant124;
        elmt_c1.elmt_reactant244 = Reacs.elmt_reactant244;
        elmt_c1.elmt_reactant122 = Reacs.elmt_reactant122;
        elmt_c1.elmt_reactant328 = Reacs.elmt_reactant328;
        elmt_c1.elmt_product270 = Reacs.elmt_product270;
        elmt_c1.elmt_product272 = Reacs.elmt_product272;
        elmt_c1.elmt_product278 = Reacs.elmt_product278;
        elmt_c1.elmt_product274 = Reacs.elmt_product274;
        elmt_c1.elmt_product152 = Reacs.elmt_product152;
        elmt_c1.elmt_product276 = Reacs.elmt_product276;
        elmt_c1.elmt_product155 = Reacs.elmt_product155;
        elmt_c1.elmt_reactant216 = Reacs.elmt_reactant216;
        elmt_c1.elmt_reactant337 = Reacs.elmt_reactant337;
        elmt_c1.elmt_reactant334 = Reacs.elmt_reactant334;
        elmt_c1.elmt_reactant213 = Reacs.elmt_reactant213;
        elmt_c1.elmt_reactant331 = Reacs.elmt_reactant331;
        elmt_c1.elmt_product8 = Reacs.elmt_product8;
        elmt_c1.elmt_reactant219 = Reacs.elmt_reactant219;
        elmt_c1.elmt_product160 = Reacs.elmt_product160;
        elmt_c1.elmt_product1 = Reacs.elmt_product1;
        elmt_c1.elmt_product280 = Reacs.elmt_product280;
        elmt_c1.elmt_product282 = Reacs.elmt_product282;
        elmt_c1.elmt_product5 = Reacs.elmt_product5;
        elmt_c1.elmt_product3 = Reacs.elmt_product3;
        elmt_c1.elmt_product168 = Reacs.elmt_product168;
        elmt_c1.elmt_product288 = Reacs.elmt_product288;
        elmt_c1.elmt_reactant340 = Reacs.elmt_reactant340;
        elmt_c1.elmt_product284 = Reacs.elmt_product284;
        elmt_c1.elmt_product163 = Reacs.elmt_product163;
        elmt_c1.elmt_product286 = Reacs.elmt_product286;
        elmt_c1.elmt_reactant349 = Reacs.elmt_reactant349;
        elmt_c1.elmt_reactant225 = Reacs.elmt_reactant225;
        elmt_c1.elmt_reactant345 = Reacs.elmt_reactant345;
        elmt_c1.elmt_reactant222 = Reacs.elmt_reactant222;
        elmt_c1.elmt_reactant343 = Reacs.elmt_reactant343;
        elmt_c1.elmt_reactant342 = Reacs.elmt_reactant342;
        elmt_c1.elmt_reactant84 = Reacs.elmt_reactant84;
        elmt_c1.elmt_reactant80 = Reacs.elmt_reactant80;
        elmt_c1.elmt_reactant308 = Reacs.elmt_reactant308;
        elmt_c1.elmt_product32 = Reacs.elmt_product32;
        elmt_c1.elmt_reactant82 = Reacs.elmt_reactant82;
        elmt_c1.elmt_re118 = Reacs.elmt_re118;
        elmt_c1.elmt_re119 = Reacs.elmt_re119;
        elmt_c1.elmt_re30 = Reacs.elmt_re30;
        elmt_c1.elmt_re31 = Reacs.elmt_re31;
        elmt_c1.elmt_re32 = Reacs.elmt_re32;
        elmt_c1.elmt_re33 = Reacs.elmt_re33;
        elmt_c1.elmt_reactant87 = Reacs.elmt_reactant87;
        elmt_c1.elmt_re114 = Reacs.elmt_re114;
        elmt_c1.elmt_re34 = Reacs.elmt_re34;
        elmt_c1.elmt_re115 = Reacs.elmt_re115;
        elmt_c1.elmt_re116 = Reacs.elmt_re116;
        elmt_c1.elmt_re35 = Reacs.elmt_re35;
        elmt_c1.elmt_re117 = Reacs.elmt_re117;
        elmt_c1.elmt_re36 = Reacs.elmt_re36;
        elmt_c1.elmt_re110 = Reacs.elmt_re110;
        elmt_c1.elmt_re111 = Reacs.elmt_re111;
        elmt_c1.elmt_re112 = Reacs.elmt_re112;
        elmt_c1.elmt_re113 = Reacs.elmt_re113;
        elmt_c1.elmt_product136 = Reacs.elmt_product136;
        elmt_c1.elmt_product131 = Reacs.elmt_product131;
        elmt_c1.elmt_product27 = Reacs.elmt_product27;
        elmt_c1.elmt_reactant314 = Reacs.elmt_reactant314;
        elmt_c1.elmt_product24 = Reacs.elmt_product24;
        elmt_c1.elmt_product139 = Reacs.elmt_product139;
        elmt_c1.elmt_reactant311 = Reacs.elmt_reactant311;
        elmt_c1.elmt_re26 = Reacs.elmt_re26;
        elmt_c1.elmt_re27 = Reacs.elmt_re27;
        elmt_c1.elmt_product40 = Reacs.elmt_product40;
        elmt_c1.elmt_re28 = Reacs.elmt_re28;
        elmt_c1.elmt_re29 = Reacs.elmt_re29;
        elmt_c1.elmt_reactant90 = Reacs.elmt_reactant90;
        elmt_c1.elmt_reactant319 = Reacs.elmt_reactant319;
        elmt_c1.elmt_product43 = Reacs.elmt_product43;
        elmt_c1.elmt_reactant317 = Reacs.elmt_reactant317;
        elmt_c1.elmt_reactant93 = Reacs.elmt_reactant93;
        elmt_c1.elmt_re129 = Reacs.elmt_re129;
        elmt_c1.elmt_re20 = Reacs.elmt_re20;
        elmt_c1.elmt_re21 = Reacs.elmt_re21;
        elmt_c1.elmt_re125 = Reacs.elmt_re125;
        elmt_c1.elmt_re22 = Reacs.elmt_re22;
        elmt_c1.elmt_re23 = Reacs.elmt_re23;
        elmt_c1.elmt_re126 = Reacs.elmt_re126;
        elmt_c1.elmt_re24 = Reacs.elmt_re24;
        elmt_c1.elmt_re127 = Reacs.elmt_re127;
        elmt_c1.elmt_re128 = Reacs.elmt_re128;
        elmt_c1.elmt_re25 = Reacs.elmt_re25;
        elmt_c1.elmt_re121 = Reacs.elmt_re121;
        elmt_c1.elmt_re122 = Reacs.elmt_re122;
        elmt_c1.elmt_product266 = Reacs.elmt_product266;
        elmt_c1.elmt_re123 = Reacs.elmt_re123;
        elmt_c1.elmt_re124 = Reacs.elmt_re124;
        elmt_c1.elmt_product268 = Reacs.elmt_product268;
        elmt_c1.elmt_product147 = Reacs.elmt_product147;
        elmt_c1.elmt_product144 = Reacs.elmt_product144;
        elmt_c1.elmt_re120 = Reacs.elmt_re120;
        elmt_c1.elmt_reactant325 = Reacs.elmt_reactant325;
        elmt_c1.elmt_product35 = Reacs.elmt_product35;
        elmt_c1.elmt_reactant322 = Reacs.elmt_reactant322;
        elmt_c1.elmt_re15 = Reacs.elmt_re15;
        elmt_c1.elmt_reactant61 = Reacs.elmt_reactant61;
        elmt_c1.elmt_re16 = Reacs.elmt_re16;
        elmt_c1.elmt_product51 = Reacs.elmt_product51;
        elmt_c1.elmt_re17 = Reacs.elmt_re17;
        elmt_c1.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt_c1.elmt_re18 = Reacs.elmt_re18;
        elmt_c1.elmt_re19 = Reacs.elmt_re19;
        elmt_c1.elmt_product54 = Reacs.elmt_product54;
        elmt_c1.elmt_reactant60 = Reacs.elmt_reactant60;
        elmt_c1.elmt_reactant69 = Reacs.elmt_reactant69;
        elmt_c1.elmt_re10 = Reacs.elmt_re10;
        elmt_c1.elmt_re11 = Reacs.elmt_re11;
        elmt_c1.elmt_re136 = Reacs.elmt_re136;
        elmt_c1.elmt_re12 = Reacs.elmt_re12;
        elmt_c1.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_c1.elmt_re13 = Reacs.elmt_re13;
        elmt_c1.elmt_re14 = Reacs.elmt_re14;
        elmt_c1.elmt_reactant68 = Reacs.elmt_reactant68;
        elmt_c1.elmt_re132 = Reacs.elmt_re132;
        elmt_c1.elmt_re133 = Reacs.elmt_re133;
        elmt_c1.elmt_re134 = Reacs.elmt_re134;
        elmt_c1.elmt_re130 = Reacs.elmt_re130;
        elmt_c1.elmt_re131 = Reacs.elmt_re131;
        elmt_c1.elmt_product118 = Reacs.elmt_product118;
        elmt_c1.elmt_reactant72 = Reacs.elmt_reactant72;
        elmt_c1.elmt_product62 = Reacs.elmt_product62;
        elmt_c1.elmt_reactant74 = Reacs.elmt_reactant74;
        elmt_c1.elmt_reactant75 = Reacs.elmt_reactant75;
        elmt_c1.elmt_reactant71 = Reacs.elmt_reactant71;
        elmt_c1.elmt_reactant77 = Reacs.elmt_reactant77;
        elmt_c1.elmt_product123 = Reacs.elmt_product123;
        elmt_c1.elmt_reactant305 = Reacs.elmt_reactant305;
        elmt_c1.elmt_product59 = Reacs.elmt_product59;
        elmt_c1.elmt_reactant302 = Reacs.elmt_reactant302;
        elmt_c1.elmt_product128 = Reacs.elmt_product128;
        elmt_c2.elmt_reactant108 = Reacs.elmt_reactant108;
        elmt_c2.elmt_reactant229 = Reacs.elmt_reactant229;
        elmt_c2.elmt_reactant110 = Reacs.elmt_reactant110;
        elmt_c2.elmt_reactant231 = Reacs.elmt_reactant231;
        elmt_c2.elmt_reactant351 = Reacs.elmt_reactant351;
        elmt_c2.elmt_product133 = Reacs.elmt_product133;
        elmt_c2.elmt_reactant239 = Reacs.elmt_reactant239;
        elmt_c2.elmt_reactant237 = Reacs.elmt_reactant237;
        elmt_c2.elmt_reactant235 = Reacs.elmt_reactant235;
        elmt_c2.elmt_reactant114 = Reacs.elmt_reactant114;
        elmt_c2.elmt_reactant233 = Reacs.elmt_reactant233;
        elmt_c2.elmt_reactant112 = Reacs.elmt_reactant112;
        elmt_c2.elmt_product29 = Reacs.elmt_product29;
        elmt_c2.elmt_re26 = Reacs.elmt_re26;
        elmt_c2.elmt_re62 = Reacs.elmt_re62;
        elmt_c2.elmt_re65 = Reacs.elmt_re65;
        elmt_c2.elmt_re22 = Reacs.elmt_re22;
        elmt_c2.elmt_re9 = Reacs.elmt_re9;
        elmt_c2.elmt_product346 = Reacs.elmt_product346;
        elmt_c2.elmt_product103 = Reacs.elmt_product103;
        elmt_c2.elmt_re6 = Reacs.elmt_re6;
        elmt_c2.elmt_product141 = Reacs.elmt_product141;
        elmt_c2.elmt_product109 = Reacs.elmt_product109;
        elmt_c2.elmt_product37 = Reacs.elmt_product37;
        elmt_c2.elmt_product348 = Reacs.elmt_product348;
        elmt_c2.elmt_product149 = Reacs.elmt_product149;
        elmt_c2.elmt_product105 = Reacs.elmt_product105;
        elmt_c2.elmt_product107 = Reacs.elmt_product107;
        elmt_c2.elmt_product228 = Reacs.elmt_product228;
        elmt_c2.elmt_re59 = Reacs.elmt_re59;
        elmt_c2.elmt_re15 = Reacs.elmt_re15;
        elmt_c2.elmt_product56 = Reacs.elmt_product56;
        elmt_c2.elmt_re19 = Reacs.elmt_re19;
        elmt_c2.elmt_re53 = Reacs.elmt_re53;
        elmt_c2.elmt_re136 = Reacs.elmt_re136;
        elmt_c2.elmt_re137 = Reacs.elmt_re137;
        elmt_c2.elmt_re56 = Reacs.elmt_re56;
        elmt_c2.elmt_re12 = Reacs.elmt_re12;
        elmt_c2.elmt_product157 = Reacs.elmt_product157;
        elmt_c2.elmt_product234 = Reacs.elmt_product234;
        elmt_c2.elmt_product113 = Reacs.elmt_product113;
        elmt_c2.elmt_product236 = Reacs.elmt_product236;
        elmt_c2.elmt_product115 = Reacs.elmt_product115;
        elmt_c2.elmt_re134 = Reacs.elmt_re134;
        elmt_c2.elmt_re135 = Reacs.elmt_re135;
        elmt_c2.elmt_product230 = Reacs.elmt_product230;
        elmt_c2.elmt_product350 = Reacs.elmt_product350;
        elmt_c2.elmt_product232 = Reacs.elmt_product232;
        elmt_c2.elmt_product111 = Reacs.elmt_product111;
        elmt_c2.elmt_product352 = Reacs.elmt_product352;
        elmt_c2.elmt_product48 = Reacs.elmt_product48;
        elmt_c2.elmt_product238 = Reacs.elmt_product238;
        elmt_c2.elmt_re48 = Reacs.elmt_re48;
        elmt_c2.elmt_product67 = Reacs.elmt_product67;
        elmt_c2.elmt_product21 = Reacs.elmt_product21;
        elmt_c2.elmt_re40 = Reacs.elmt_re40;
        elmt_c2.elmt_re41 = Reacs.elmt_re41;
        elmt_c2.elmt_re42 = Reacs.elmt_re42;
        elmt_c2.elmt_re43 = Reacs.elmt_re43;
        elmt_c2.elmt_re87 = Reacs.elmt_re87;
        elmt_c2.elmt_re88 = Reacs.elmt_re88;
        elmt_c2.elmt_re44 = Reacs.elmt_re44;
        elmt_c2.elmt_re89 = Reacs.elmt_re89;
        elmt_c2.elmt_re45 = Reacs.elmt_re45;
        elmt_c2.elmt_re46 = Reacs.elmt_re46;
        elmt_c2.elmt_re90 = Reacs.elmt_re90;
        elmt_c2.elmt_product125 = Reacs.elmt_product125;
        elmt_c2.elmt_re91 = Reacs.elmt_re91;
        elmt_c2.elmt_product120 = Reacs.elmt_product120;
        elmt_c2.elmt_re92 = Reacs.elmt_re92;
        elmt_c2.elmt_product240 = Reacs.elmt_product240;
        elmt_c2.elmt_re93 = Reacs.elmt_re93;
        elmt_c2.elmt_product165 = Reacs.elmt_product165;
        elmt_c2.elmt_re50 = Reacs.elmt_re50;
        elmt_c2.elmt_reactant106 = Reacs.elmt_reactant106;
        elmt_c2.elmt_reactant227 = Reacs.elmt_reactant227;
        elmt_c2.elmt_reactant347 = Reacs.elmt_reactant347;
        elmt_c2.elmt_reactant104 = Reacs.elmt_reactant104;
        elmt_c2.elmt_product13 = Reacs.elmt_product13;
        elmt_c2.elmt_reactant102 = Reacs.elmt_reactant102;

end MODEL1412010000;
