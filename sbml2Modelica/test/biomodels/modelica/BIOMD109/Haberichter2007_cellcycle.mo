within BIOMD109;
model Haberichter2007_cellcycle "Haberichter2007_cellcycle" annotation(Documentation(info="<annotation>
    <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
    </rdf:RDF>
  </annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_X elmt_X;
    Class_elmt_event0 elmt_event0;

    equation
        Params.elmt_E2F = elmt_X.elmt_E2F;
        Params.elmt_event0 = elmt_event0.trigger;
        Reacs.elmt_APCCYEmi1 = elmt_X.elmt_APCCYEmi1;
        Reacs.elmt_p27 = elmt_X.elmt_p27;
        Reacs.elmt_APCCYCdk1Y10YCdk1Y11YInt = elmt_X.elmt_APCCYCdk1Y10YCdk1Y11YInt;
        Reacs.elmt_kudYAPCCYYCyclinA = Params.elmt_kudYAPCCYYCyclinA;
        Reacs.elmt_kuYD4YYpRb = Params.elmt_kuYD4YYpRb;
        Reacs.elmt_kbYAPCCYYCyclinA = Params.elmt_kbYAPCCYYCyclinA;
        Reacs.elmt_kbYA2YYpRb = Params.elmt_kbYA2YYpRb;
        Reacs.elmt_kuYE2FYYpRb = Params.elmt_kuYE2FYYpRb;
        Reacs.elmt_ksYp27 = Params.elmt_ksYp27;
        Reacs.elmt_kuYA2YYpRb = Params.elmt_kuYA2YYpRb;
        Reacs.elmt_kdYE2F = Params.elmt_kdYE2F;
        Reacs.elmt_kbYE2FYYpRb = Params.elmt_kbYE2FYYpRb;
        Reacs.elmt_kuYCyclinDYYCdk4 = Params.elmt_kuYCyclinDYYCdk4;
        Reacs.elmt_Cdk2Y112 = elmt_X.elmt_Cdk2Y112;
        Reacs.elmt_Cdk2Y110 = elmt_X.elmt_Cdk2Y110;
        Reacs.elmt_Cdk2Y111 = elmt_X.elmt_Cdk2Y111;
        Reacs.elmt_Cdk2Y011YpRbY10YpRbY20YInt = elmt_X.elmt_Cdk2Y011YpRbY10YpRbY20YInt;
        Reacs.elmt_Cdk4Y01YpRbY01YpRbY11YInt = elmt_X.elmt_Cdk4Y01YpRbY01YpRbY11YInt;
        Reacs.elmt_kbYA1YYpRb = Params.elmt_kbYA1YYpRb;
        Reacs.elmt_kd1Yp27 = Params.elmt_kd1Yp27;
        Reacs.elmt_kd0YE2F = Params.elmt_kd0YE2F;
        Reacs.elmt_kbYD4YYpRb = Params.elmt_kbYD4YYpRb;
        Reacs.elmt_APCCYCdk2Y100YCdk2Y102YInt = elmt_X.elmt_APCCYCdk2Y100YCdk2Y102YInt;
        Reacs.elmt_Cdk2Y002 = elmt_X.elmt_Cdk2Y002;
        Reacs.elmt_Cdk2Y000 = elmt_X.elmt_Cdk2Y000;
        Reacs.elmt_Cdk2Y001 = elmt_X.elmt_Cdk2Y001;
        Reacs.elmt_Cdk2Y010 = elmt_X.elmt_Cdk2Y010;
        Reacs.elmt_ksYCyclinE = Params.elmt_ksYCyclinE;
        Reacs.elmt_ksYCyclinD = Params.elmt_ksYCyclinD;
        Reacs.elmt_Cdk4Y01YpRbY00YpRbY10YInt = elmt_X.elmt_Cdk4Y01YpRbY00YpRbY10YInt;
        Reacs.elmt_Cdk2Y012YpRbY10YpRbY20YInt = elmt_X.elmt_Cdk2Y012YpRbY10YpRbY20YInt;
        Reacs.elmt_kbYCyclinEYYCdk2 = Params.elmt_kbYCyclinEYYCdk2;
        Reacs.elmt_kdYEmi1 = Params.elmt_kdYEmi1;
        Reacs.elmt_kbYp27YYCdk2 = Params.elmt_kbYp27YYCdk2;
        Reacs.elmt_kbYp27YYCdk4 = Params.elmt_kbYp27YYCdk4;
        Reacs.elmt_Cdk2Y011 = elmt_X.elmt_Cdk2Y011;
        Reacs.elmt_Cdk2Y012 = elmt_X.elmt_Cdk2Y012;
        Reacs.elmt_kupYE2YYpRb = Params.elmt_kupYE2YYpRb;
        Reacs.elmt_APCCYCdk1Y00YCdk1Y01YInt = elmt_X.elmt_APCCYCdk1Y00YCdk1Y01YInt;
        Reacs.elmt_kuYAPCCYYCyclinA = Params.elmt_kuYAPCCYYCyclinA;
        Reacs.elmt_kdYCyclinA = Params.elmt_kdYCyclinA;
        Reacs.elmt_Cdk1Y11YpRbY10YpRbY20YInt = elmt_X.elmt_Cdk1Y11YpRbY10YpRbY20YInt;
        Reacs.elmt_kdYCyclinD = Params.elmt_kdYCyclinD;
        Reacs.elmt_kdYCyclinE = Params.elmt_kdYCyclinE;
        Reacs.elmt_kdYp27 = Params.elmt_kdYp27;
        Reacs.elmt_kuYCyclinEYYCdk2 = Params.elmt_kuYCyclinEYYCdk2;
        Reacs.elmt_kupYA1YYpRb = Params.elmt_kupYA1YYpRb;
        Reacs.elmt_ksYCyclinA = Params.elmt_ksYCyclinA;
        Reacs.elmt_ksYE2F = Params.elmt_ksYE2F;
        Reacs.elmt_kuYA1YYpRb = Params.elmt_kuYA1YYpRb;
        Reacs.elmt_kbYE2YYpRb = Params.elmt_kbYE2YYpRb;
        Reacs.elmt_kbYEmi1YYAPCC = Params.elmt_kbYEmi1YYAPCC;
        Reacs.elmt_pRbY00 = elmt_X.elmt_pRbY00;
        Reacs.elmt_pRbY01 = elmt_X.elmt_pRbY01;
        Reacs.elmt_Cdk1Y10 = elmt_X.elmt_Cdk1Y10;
        Reacs.elmt_Cdk1Y11 = elmt_X.elmt_Cdk1Y11;
        Reacs.elmt_kuYE2YYpRb = Params.elmt_kuYE2YYpRb;
        Reacs.elmt_kuYp27YYCdk2 = Params.elmt_kuYp27YYCdk2;
        Reacs.elmt_Emi1 = elmt_X.elmt_Emi1;
        Reacs.elmt_Cdk4Y11 = elmt_X.elmt_Cdk4Y11;
        Reacs.elmt_Cdk4Y10 = elmt_X.elmt_Cdk4Y10;
        Reacs.elmt_ksYEmi1 = Params.elmt_ksYEmi1;
        Reacs.elmt_X = elmt_X.elmt_X;
        Reacs.elmt_APCCYCdk2Y010YCdk2Y012YInt = elmt_X.elmt_APCCYCdk2Y010YCdk2Y012YInt;
        Reacs.elmt_kYact = Params.elmt_kYact;
        Reacs.elmt_kbYCyclinAYYCdk2 = Params.elmt_kbYCyclinAYYCdk2;
        Reacs.elmt_Cdk2Y012YpRbY11YpRbY21YInt = elmt_X.elmt_Cdk2Y012YpRbY11YpRbY21YInt;
        Reacs.elmt_E2F = elmt_X.elmt_E2F;
        Reacs.elmt_kbYCyclinAYYCdk1 = Params.elmt_kbYCyclinAYYCdk1;
        Reacs.elmt_APCC = elmt_X.elmt_APCC;
        Reacs.elmt_kbYCyclinDYYCdk4 = Params.elmt_kbYCyclinDYYCdk4;
        Reacs.elmt_Cdk2Y011YpRbY11YpRbY21YInt = elmt_X.elmt_Cdk2Y011YpRbY11YpRbY21YInt;
        Reacs.elmt_kupYA2YYpRb = Params.elmt_kupYA2YYpRb;
        Reacs.elmt_APCCYCdk2Y110YCdk2Y112YInt = elmt_X.elmt_APCCYCdk2Y110YCdk2Y112YInt;
        Reacs.elmt_ktYpRbYYDephos = Params.elmt_ktYpRbYYDephos;
        Reacs.elmt_pRbY20 = elmt_X.elmt_pRbY20;
        Reacs.elmt_pRbY21 = elmt_X.elmt_pRbY21;
        Reacs.elmt_APCCYCdk2Y000YCdk2Y002YInt = elmt_X.elmt_APCCYCdk2Y000YCdk2Y002YInt;
        Reacs.elmt_Cdk1Y11YpRbY11YpRbY21YInt = elmt_X.elmt_Cdk1Y11YpRbY11YpRbY21YInt;
        Reacs.elmt_kuYEmi1YYAPCC = Params.elmt_kuYEmi1YYAPCC;
        Reacs.elmt_kupYD4YYpRb = Params.elmt_kupYD4YYpRb;
        Reacs.elmt_kuYCyclinAYYCdk2 = Params.elmt_kuYCyclinAYYCdk2;
        Reacs.elmt_kuYCyclinAYYCdk1 = Params.elmt_kuYCyclinAYYCdk1;
        Reacs.elmt_CyclinD = elmt_X.elmt_CyclinD;
        Reacs.elmt_CyclinA = elmt_X.elmt_CyclinA;
        Reacs.elmt_pRbY11 = elmt_X.elmt_pRbY11;
        Reacs.elmt_Cdk1Y01 = elmt_X.elmt_Cdk1Y01;
        Reacs.elmt_pRbY10 = elmt_X.elmt_pRbY10;
        Reacs.elmt_Cdk1Y00 = elmt_X.elmt_Cdk1Y00;
        Reacs.elmt_kuYp27YYCdk4 = Params.elmt_kuYp27YYCdk4;
        Reacs.elmt_APCCYCyclinAYInt = elmt_X.elmt_APCCYCyclinAYInt;
        Reacs.elmt_Cdk4Y01 = elmt_X.elmt_Cdk4Y01;
        Reacs.elmt_Cdk4Y00 = elmt_X.elmt_Cdk4Y00;
        Reacs.elmt_CyclinE = elmt_X.elmt_CyclinE;
        Reacs.elmt_Cdk2Y101 = elmt_X.elmt_Cdk2Y101;
        Reacs.elmt_Cdk2Y102 = elmt_X.elmt_Cdk2Y102;
        Reacs.elmt_Cdk2Y100 = elmt_X.elmt_Cdk2Y100;
        elmt_X.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_X.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_X.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt_X.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_X.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_X.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_X.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_X.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_X.elmt_reactant54 = Reacs.elmt_reactant54;
        elmt_X.elmt_reactant57 = Reacs.elmt_reactant57;
        elmt_X.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_X.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_X.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_X.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_X.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_X.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_X.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_X.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_X.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_X.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_X.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_X.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_X.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_X.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_X.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_X.elmt_product192 = Reacs.elmt_product192;
        elmt_X.elmt_product195 = Reacs.elmt_product195;
        elmt_X.elmt_product194 = Reacs.elmt_product194;
        elmt_X.elmt_product198 = Reacs.elmt_product198;
        elmt_X.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_X.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_X.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_X.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_X.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_X.elmt_rxnY096 = Reacs.elmt_rxnY096;
        elmt_X.elmt_product9 = Reacs.elmt_product9;
        elmt_X.elmt_rxnY095 = Reacs.elmt_rxnY095;
        elmt_X.elmt_rxnY094 = Reacs.elmt_rxnY094;
        elmt_X.elmt_product6 = Reacs.elmt_product6;
        elmt_X.elmt_rxnY093 = Reacs.elmt_rxnY093;
        elmt_X.elmt_rxnY099 = Reacs.elmt_rxnY099;
        elmt_X.elmt_rxnY098 = Reacs.elmt_rxnY098;
        elmt_X.elmt_rxnY097 = Reacs.elmt_rxnY097;
        elmt_X.elmt_product0 = Reacs.elmt_product0;
        elmt_X.elmt_product5 = Reacs.elmt_product5;
        elmt_X.elmt_rxnY092 = Reacs.elmt_rxnY092;
        elmt_X.elmt_rxnY091 = Reacs.elmt_rxnY091;
        elmt_X.elmt_rxnY090 = Reacs.elmt_rxnY090;
        elmt_X.elmt_product3 = Reacs.elmt_product3;
        elmt_X.elmt_rxnY085 = Reacs.elmt_rxnY085;
        elmt_X.elmt_rxnY084 = Reacs.elmt_rxnY084;
        elmt_X.elmt_reactant84 = Reacs.elmt_reactant84;
        elmt_X.elmt_reactant85 = Reacs.elmt_reactant85;
        elmt_X.elmt_rxnY083 = Reacs.elmt_rxnY083;
        elmt_X.elmt_rxnY082 = Reacs.elmt_rxnY082;
        elmt_X.elmt_rxnY089 = Reacs.elmt_rxnY089;
        elmt_X.elmt_rxnY088 = Reacs.elmt_rxnY088;
        elmt_X.elmt_reactant81 = Reacs.elmt_reactant81;
        elmt_X.elmt_rxnY087 = Reacs.elmt_rxnY087;
        elmt_X.elmt_rxnY086 = Reacs.elmt_rxnY086;
        elmt_X.elmt_rxnY081 = Reacs.elmt_rxnY081;
        elmt_X.elmt_reactant87 = Reacs.elmt_reactant87;
        elmt_X.elmt_rxnY080 = Reacs.elmt_rxnY080;
        elmt_X.elmt_rxnY074 = Reacs.elmt_rxnY074;
        elmt_X.elmt_rxnY073 = Reacs.elmt_rxnY073;
        elmt_X.elmt_reactant96 = Reacs.elmt_reactant96;
        elmt_X.elmt_rxnY072 = Reacs.elmt_rxnY072;
        elmt_X.elmt_reactant97 = Reacs.elmt_reactant97;
        elmt_X.elmt_rxnY071 = Reacs.elmt_rxnY071;
        elmt_X.elmt_rxnY078 = Reacs.elmt_rxnY078;
        elmt_X.elmt_reactant90 = Reacs.elmt_reactant90;
        elmt_X.elmt_reactant91 = Reacs.elmt_reactant91;
        elmt_X.elmt_rxnY077 = Reacs.elmt_rxnY077;
        elmt_X.elmt_rxnY076 = Reacs.elmt_rxnY076;
        elmt_X.elmt_rxnY075 = Reacs.elmt_rxnY075;
        elmt_X.elmt_reactant93 = Reacs.elmt_reactant93;
        elmt_X.elmt_rxnY070 = Reacs.elmt_rxnY070;
        elmt_X.elmt_reactant99 = Reacs.elmt_reactant99;
        elmt_X.elmt_rxnY079 = Reacs.elmt_rxnY079;
        elmt_X.elmt_rxnY063 = Reacs.elmt_rxnY063;
        elmt_X.elmt_reactant61 = Reacs.elmt_reactant61;
        elmt_X.elmt_rxnY062 = Reacs.elmt_rxnY062;
        elmt_X.elmt_rxnY061 = Reacs.elmt_rxnY061;
        elmt_X.elmt_reactant63 = Reacs.elmt_reactant63;
        elmt_X.elmt_rxnY060 = Reacs.elmt_rxnY060;
        elmt_X.elmt_rxnY067 = Reacs.elmt_rxnY067;
        elmt_X.elmt_rxnY066 = Reacs.elmt_rxnY066;
        elmt_X.elmt_rxnY065 = Reacs.elmt_rxnY065;
        elmt_X.elmt_rxnY064 = Reacs.elmt_rxnY064;
        elmt_X.elmt_reactant60 = Reacs.elmt_reactant60;
        elmt_X.elmt_reactant69 = Reacs.elmt_reactant69;
        elmt_X.elmt_reactant66 = Reacs.elmt_reactant66;
        elmt_X.elmt_reactant67 = Reacs.elmt_reactant67;
        elmt_X.elmt_rxnY069 = Reacs.elmt_rxnY069;
        elmt_X.elmt_rxnY068 = Reacs.elmt_rxnY068;
        elmt_X.elmt_rxnY052 = Reacs.elmt_rxnY052;
        elmt_X.elmt_reactant72 = Reacs.elmt_reactant72;
        elmt_X.elmt_reactant73 = Reacs.elmt_reactant73;
        elmt_X.elmt_rxnY051 = Reacs.elmt_rxnY051;
        elmt_X.elmt_rxnY050 = Reacs.elmt_rxnY050;
        elmt_X.elmt_reactant75 = Reacs.elmt_reactant75;
        elmt_X.elmt_rxnY056 = Reacs.elmt_rxnY056;
        elmt_X.elmt_rxnY055 = Reacs.elmt_rxnY055;
        elmt_X.elmt_rxnY054 = Reacs.elmt_rxnY054;
        elmt_X.elmt_rxnY053 = Reacs.elmt_rxnY053;
        elmt_X.elmt_reactant78 = Reacs.elmt_reactant78;
        elmt_X.elmt_reactant79 = Reacs.elmt_reactant79;
        elmt_X.elmt_rxnY059 = Reacs.elmt_rxnY059;
        elmt_X.elmt_rxnY058 = Reacs.elmt_rxnY058;
        elmt_X.elmt_rxnY057 = Reacs.elmt_rxnY057;
        elmt_X.elmt_rxnY041 = Reacs.elmt_rxnY041;
        elmt_X.elmt_rxnY040 = Reacs.elmt_rxnY040;
        elmt_X.elmt_rxnY045 = Reacs.elmt_rxnY045;
        elmt_X.elmt_rxnY044 = Reacs.elmt_rxnY044;
        elmt_X.elmt_rxnY043 = Reacs.elmt_rxnY043;
        elmt_X.elmt_rxnY042 = Reacs.elmt_rxnY042;
        elmt_X.elmt_reactant190 = Reacs.elmt_reactant190;
        elmt_X.elmt_product333 = Reacs.elmt_product333;
        elmt_X.elmt_product212 = Reacs.elmt_product212;
        elmt_X.elmt_product332 = Reacs.elmt_product332;
        elmt_X.elmt_reactant197 = Reacs.elmt_reactant197;
        elmt_X.elmt_reactant196 = Reacs.elmt_reactant196;
        elmt_X.elmt_product335 = Reacs.elmt_product335;
        elmt_X.elmt_product213 = Reacs.elmt_product213;
        elmt_X.elmt_reactant193 = Reacs.elmt_reactant193;
        elmt_X.elmt_product210 = Reacs.elmt_product210;
        elmt_X.elmt_product330 = Reacs.elmt_product330;
        elmt_X.elmt_reactant191 = Reacs.elmt_reactant191;
        elmt_X.elmt_rxnY049 = Reacs.elmt_rxnY049;
        elmt_X.elmt_rxnY048 = Reacs.elmt_rxnY048;
        elmt_X.elmt_product219 = Reacs.elmt_product219;
        elmt_X.elmt_rxnY047 = Reacs.elmt_rxnY047;
        elmt_X.elmt_rxnY046 = Reacs.elmt_rxnY046;
        elmt_X.elmt_product216 = Reacs.elmt_product216;
        elmt_X.elmt_product336 = Reacs.elmt_product336;
        elmt_X.elmt_product339 = Reacs.elmt_product339;
        elmt_X.elmt_product218 = Reacs.elmt_product218;
        elmt_X.elmt_reactant199 = Reacs.elmt_reactant199;
        elmt_X.elmt_rxnY030 = Reacs.elmt_rxnY030;
        elmt_X.elmt_rxnY034 = Reacs.elmt_rxnY034;
        elmt_X.elmt_rxnY033 = Reacs.elmt_rxnY033;
        elmt_X.elmt_rxnY032 = Reacs.elmt_rxnY032;
        elmt_X.elmt_rxnY031 = Reacs.elmt_rxnY031;
        elmt_X.elmt_product344 = Reacs.elmt_product344;
        elmt_X.elmt_product101 = Reacs.elmt_product101;
        elmt_X.elmt_product222 = Reacs.elmt_product222;
        elmt_X.elmt_product104 = Reacs.elmt_product104;
        elmt_X.elmt_product225 = Reacs.elmt_product225;
        elmt_X.elmt_product345 = Reacs.elmt_product345;
        elmt_X.elmt_product100 = Reacs.elmt_product100;
        elmt_X.elmt_product221 = Reacs.elmt_product221;
        elmt_X.elmt_product342 = Reacs.elmt_product342;
        elmt_X.elmt_rxnY038 = Reacs.elmt_rxnY038;
        elmt_X.elmt_rxnY037 = Reacs.elmt_rxnY037;
        elmt_X.elmt_rxnY036 = Reacs.elmt_rxnY036;
        elmt_X.elmt_rxnY035 = Reacs.elmt_rxnY035;
        elmt_X.elmt_product348 = Reacs.elmt_product348;
        elmt_X.elmt_product106 = Reacs.elmt_product106;
        elmt_X.elmt_product227 = Reacs.elmt_product227;
        elmt_X.elmt_product107 = Reacs.elmt_product107;
        elmt_X.elmt_rxnY039 = Reacs.elmt_rxnY039;
        elmt_X.elmt_product228 = Reacs.elmt_product228;
        elmt_X.elmt_rxnY023 = Reacs.elmt_rxnY023;
        elmt_X.elmt_rxnY022 = Reacs.elmt_rxnY022;
        elmt_X.elmt_product11 = Reacs.elmt_product11;
        elmt_X.elmt_rxnY021 = Reacs.elmt_rxnY021;
        elmt_X.elmt_rxnY020 = Reacs.elmt_rxnY020;
        elmt_X.elmt_reactant175 = Reacs.elmt_reactant175;
        elmt_X.elmt_reactant296 = Reacs.elmt_reactant296;
        elmt_X.elmt_reactant174 = Reacs.elmt_reactant174;
        elmt_X.elmt_reactant294 = Reacs.elmt_reactant294;
        elmt_X.elmt_product312 = Reacs.elmt_product312;
        elmt_X.elmt_reactant293 = Reacs.elmt_reactant293;
        elmt_X.elmt_reactant171 = Reacs.elmt_reactant171;
        elmt_X.elmt_reactant290 = Reacs.elmt_reactant290;
        elmt_X.elmt_rxnY027 = Reacs.elmt_rxnY027;
        elmt_X.elmt_product318 = Reacs.elmt_product318;
        elmt_X.elmt_rxnY026 = Reacs.elmt_rxnY026;
        elmt_X.elmt_rxnY025 = Reacs.elmt_rxnY025;
        elmt_X.elmt_rxnY024 = Reacs.elmt_rxnY024;
        elmt_X.elmt_product315 = Reacs.elmt_product315;
        elmt_X.elmt_product314 = Reacs.elmt_product314;
        elmt_X.elmt_rxnY029 = Reacs.elmt_rxnY029;
        elmt_X.elmt_reactant299 = Reacs.elmt_reactant299;
        elmt_X.elmt_product317 = Reacs.elmt_product317;
        elmt_X.elmt_rxnY028 = Reacs.elmt_rxnY028;
        elmt_X.elmt_reactant177 = Reacs.elmt_reactant177;
        elmt_X.elmt_rxnY012 = Reacs.elmt_rxnY012;
        elmt_X.elmt_rxnY133 = Reacs.elmt_rxnY133;
        elmt_X.elmt_product23 = Reacs.elmt_product23;
        elmt_X.elmt_rxnY132 = Reacs.elmt_rxnY132;
        elmt_X.elmt_rxnY011 = Reacs.elmt_rxnY011;
        elmt_X.elmt_rxnY131 = Reacs.elmt_rxnY131;
        elmt_X.elmt_rxnY010 = Reacs.elmt_rxnY010;
        elmt_X.elmt_product21 = Reacs.elmt_product21;
        elmt_X.elmt_rxnY130 = Reacs.elmt_rxnY130;
        elmt_X.elmt_reactant187 = Reacs.elmt_reactant187;
        elmt_X.elmt_product201 = Reacs.elmt_product201;
        elmt_X.elmt_product200 = Reacs.elmt_product200;
        elmt_X.elmt_product321 = Reacs.elmt_product321;
        elmt_X.elmt_product324 = Reacs.elmt_product324;
        elmt_X.elmt_reactant185 = Reacs.elmt_reactant185;
        elmt_X.elmt_product203 = Reacs.elmt_product203;
        elmt_X.elmt_product323 = Reacs.elmt_product323;
        elmt_X.elmt_reactant184 = Reacs.elmt_reactant184;
        elmt_X.elmt_reactant182 = Reacs.elmt_reactant182;
        elmt_X.elmt_reactant180 = Reacs.elmt_reactant180;
        elmt_X.elmt_rxnY137 = Reacs.elmt_rxnY137;
        elmt_X.elmt_product209 = Reacs.elmt_product209;
        elmt_X.elmt_rxnY016 = Reacs.elmt_rxnY016;
        elmt_X.elmt_rxnY136 = Reacs.elmt_rxnY136;
        elmt_X.elmt_product15 = Reacs.elmt_product15;
        elmt_X.elmt_rxnY015 = Reacs.elmt_rxnY015;
        elmt_X.elmt_rxnY014 = Reacs.elmt_rxnY014;
        elmt_X.elmt_rxnY135 = Reacs.elmt_rxnY135;
        elmt_X.elmt_rxnY013 = Reacs.elmt_rxnY013;
        elmt_X.elmt_rxnY134 = Reacs.elmt_rxnY134;
        elmt_X.elmt_product13 = Reacs.elmt_product13;
        elmt_X.elmt_product326 = Reacs.elmt_product326;
        elmt_X.elmt_product19 = Reacs.elmt_product19;
        elmt_X.elmt_rxnY019 = Reacs.elmt_rxnY019;
        elmt_X.elmt_product204 = Reacs.elmt_product204;
        elmt_X.elmt_product207 = Reacs.elmt_product207;
        elmt_X.elmt_rxnY018 = Reacs.elmt_rxnY018;
        elmt_X.elmt_rxnY138 = Reacs.elmt_rxnY138;
        elmt_X.elmt_product327 = Reacs.elmt_product327;
        elmt_X.elmt_product17 = Reacs.elmt_product17;
        elmt_X.elmt_rxnY017 = Reacs.elmt_rxnY017;
        elmt_X.elmt_rxnY122 = Reacs.elmt_rxnY122;
        elmt_X.elmt_rxnY001 = Reacs.elmt_rxnY001;
        elmt_X.elmt_rxnY121 = Reacs.elmt_rxnY121;
        elmt_X.elmt_rxnY120 = Reacs.elmt_rxnY120;
        elmt_X.elmt_reactant275 = Reacs.elmt_reactant275;
        elmt_X.elmt_reactant153 = Reacs.elmt_reactant153;
        elmt_X.elmt_reactant273 = Reacs.elmt_reactant273;
        elmt_X.elmt_reactant272 = Reacs.elmt_reactant272;
        elmt_X.elmt_reactant151 = Reacs.elmt_reactant151;
        elmt_X.elmt_reactant150 = Reacs.elmt_reactant150;
        elmt_X.elmt_reactant270 = Reacs.elmt_reactant270;
        elmt_X.elmt_rxnY005 = Reacs.elmt_rxnY005;
        elmt_X.elmt_rxnY126 = Reacs.elmt_rxnY126;
        elmt_X.elmt_rxnY004 = Reacs.elmt_rxnY004;
        elmt_X.elmt_rxnY125 = Reacs.elmt_rxnY125;
        elmt_X.elmt_rxnY124 = Reacs.elmt_rxnY124;
        elmt_X.elmt_rxnY003 = Reacs.elmt_rxnY003;
        elmt_X.elmt_rxnY123 = Reacs.elmt_rxnY123;
        elmt_X.elmt_reactant159 = Reacs.elmt_reactant159;
        elmt_X.elmt_rxnY002 = Reacs.elmt_rxnY002;
        elmt_X.elmt_reactant279 = Reacs.elmt_reactant279;
        elmt_X.elmt_rxnY009 = Reacs.elmt_rxnY009;
        elmt_X.elmt_rxnY008 = Reacs.elmt_rxnY008;
        elmt_X.elmt_rxnY129 = Reacs.elmt_rxnY129;
        elmt_X.elmt_reactant157 = Reacs.elmt_reactant157;
        elmt_X.elmt_reactant278 = Reacs.elmt_reactant278;
        elmt_X.elmt_rxnY007 = Reacs.elmt_rxnY007;
        elmt_X.elmt_rxnY128 = Reacs.elmt_rxnY128;
        elmt_X.elmt_reactant156 = Reacs.elmt_reactant156;
        elmt_X.elmt_rxnY006 = Reacs.elmt_rxnY006;
        elmt_X.elmt_rxnY127 = Reacs.elmt_rxnY127;
        elmt_X.elmt_rxnY111 = Reacs.elmt_rxnY111;
        elmt_X.elmt_rxnY110 = Reacs.elmt_rxnY110;
        elmt_X.elmt_product300 = Reacs.elmt_product300;
        elmt_X.elmt_reactant165 = Reacs.elmt_reactant165;
        elmt_X.elmt_reactant284 = Reacs.elmt_reactant284;
        elmt_X.elmt_reactant163 = Reacs.elmt_reactant163;
        elmt_X.elmt_reactant162 = Reacs.elmt_reactant162;
        elmt_X.elmt_reactant281 = Reacs.elmt_reactant281;
        elmt_X.elmt_rxnY115 = Reacs.elmt_rxnY115;
        elmt_X.elmt_product308 = Reacs.elmt_product308;
        elmt_X.elmt_rxnY114 = Reacs.elmt_rxnY114;
        elmt_X.elmt_rxnY113 = Reacs.elmt_rxnY113;
        elmt_X.elmt_rxnY112 = Reacs.elmt_rxnY112;
        elmt_X.elmt_product309 = Reacs.elmt_product309;
        elmt_X.elmt_rxnY119 = Reacs.elmt_rxnY119;
        elmt_X.elmt_reactant169 = Reacs.elmt_reactant169;
        elmt_X.elmt_rxnY118 = Reacs.elmt_rxnY118;
        elmt_X.elmt_reactant168 = Reacs.elmt_reactant168;
        elmt_X.elmt_product303 = Reacs.elmt_product303;
        elmt_X.elmt_rxnY117 = Reacs.elmt_rxnY117;
        elmt_X.elmt_reactant288 = Reacs.elmt_reactant288;
        elmt_X.elmt_product306 = Reacs.elmt_product306;
        elmt_X.elmt_rxnY116 = Reacs.elmt_rxnY116;
        elmt_X.elmt_reactant287 = Reacs.elmt_reactant287;
        elmt_X.elmt_product305 = Reacs.elmt_product305;
        elmt_X.elmt_rxnY100 = Reacs.elmt_rxnY100;
        elmt_X.elmt_reactant132 = Reacs.elmt_reactant132;
        elmt_X.elmt_reactant253 = Reacs.elmt_reactant253;
        elmt_X.elmt_reactant251 = Reacs.elmt_reactant251;
        elmt_X.elmt_reactant130 = Reacs.elmt_reactant130;
        elmt_X.elmt_rxnY109 = Reacs.elmt_rxnY109;
        elmt_X.elmt_reactant250 = Reacs.elmt_reactant250;
        elmt_X.elmt_rxnY104 = Reacs.elmt_rxnY104;
        elmt_X.elmt_rxnY103 = Reacs.elmt_rxnY103;
        elmt_X.elmt_reactant139 = Reacs.elmt_reactant139;
        elmt_X.elmt_rxnY102 = Reacs.elmt_rxnY102;
        elmt_X.elmt_reactant259 = Reacs.elmt_reactant259;
        elmt_X.elmt_reactant138 = Reacs.elmt_reactant138;
        elmt_X.elmt_rxnY101 = Reacs.elmt_rxnY101;
        elmt_X.elmt_rxnY108 = Reacs.elmt_rxnY108;
        elmt_X.elmt_rxnY107 = Reacs.elmt_rxnY107;
        elmt_X.elmt_reactant135 = Reacs.elmt_reactant135;
        elmt_X.elmt_reactant256 = Reacs.elmt_reactant256;
        elmt_X.elmt_rxnY106 = Reacs.elmt_rxnY106;
        elmt_X.elmt_rxnY105 = Reacs.elmt_rxnY105;
        elmt_X.elmt_reactant133 = Reacs.elmt_reactant133;
        elmt_X.elmt_reactant262 = Reacs.elmt_reactant262;
        elmt_X.elmt_reactant141 = Reacs.elmt_reactant141;
        elmt_X.elmt_reactant260 = Reacs.elmt_reactant260;
        elmt_X.elmt_reactant268 = Reacs.elmt_reactant268;
        elmt_X.elmt_reactant147 = Reacs.elmt_reactant147;
        elmt_X.elmt_reactant145 = Reacs.elmt_reactant145;
        elmt_X.elmt_reactant144 = Reacs.elmt_reactant144;
        elmt_X.elmt_reactant265 = Reacs.elmt_reactant265;
        elmt_X.elmt_product74 = Reacs.elmt_product74;
        elmt_X.elmt_product71 = Reacs.elmt_product71;
        elmt_X.elmt_product77 = Reacs.elmt_product77;
        elmt_X.elmt_reactant109 = Reacs.elmt_reactant109;
        elmt_X.elmt_product76 = Reacs.elmt_product76;
        elmt_X.elmt_reactant229 = Reacs.elmt_reactant229;
        elmt_X.elmt_reactant108 = Reacs.elmt_reactant108;
        elmt_X.elmt_product292 = Reacs.elmt_product292;
        elmt_X.elmt_product291 = Reacs.elmt_product291;
        elmt_X.elmt_product170 = Reacs.elmt_product170;
        elmt_X.elmt_product173 = Reacs.elmt_product173;
        elmt_X.elmt_product172 = Reacs.elmt_product172;
        elmt_X.elmt_product70 = Reacs.elmt_product70;
        elmt_X.elmt_reactant352 = Reacs.elmt_reactant352;
        elmt_X.elmt_product179 = Reacs.elmt_product179;
        elmt_X.elmt_product178 = Reacs.elmt_product178;
        elmt_X.elmt_reactant350 = Reacs.elmt_reactant350;
        elmt_X.elmt_product295 = Reacs.elmt_product295;
        elmt_X.elmt_product298 = Reacs.elmt_product298;
        elmt_X.elmt_product176 = Reacs.elmt_product176;
        elmt_X.elmt_product297 = Reacs.elmt_product297;
        elmt_X.elmt_reactant117 = Reacs.elmt_reactant117;
        elmt_X.elmt_reactant238 = Reacs.elmt_reactant238;
        elmt_X.elmt_reactant115 = Reacs.elmt_reactant115;
        elmt_X.elmt_product68 = Reacs.elmt_product68;
        elmt_X.elmt_reactant235 = Reacs.elmt_reactant235;
        elmt_X.elmt_reactant114 = Reacs.elmt_reactant114;
        elmt_X.elmt_reactant233 = Reacs.elmt_reactant233;
        elmt_X.elmt_reactant111 = Reacs.elmt_reactant111;
        elmt_X.elmt_reactant232 = Reacs.elmt_reactant232;
        elmt_X.elmt_product83 = Reacs.elmt_product83;
        elmt_X.elmt_product82 = Reacs.elmt_product82;
        elmt_X.elmt_product89 = Reacs.elmt_product89;
        elmt_X.elmt_product88 = Reacs.elmt_product88;
        elmt_X.elmt_product86 = Reacs.elmt_product86;
        elmt_X.elmt_product181 = Reacs.elmt_product181;
        elmt_X.elmt_product183 = Reacs.elmt_product183;
        elmt_X.elmt_product80 = Reacs.elmt_product80;
        elmt_X.elmt_reactant242 = Reacs.elmt_reactant242;
        elmt_X.elmt_reactant120 = Reacs.elmt_reactant120;
        elmt_X.elmt_product189 = Reacs.elmt_product189;
        elmt_X.elmt_reactant241 = Reacs.elmt_reactant241;
        elmt_X.elmt_product186 = Reacs.elmt_product186;
        elmt_X.elmt_product188 = Reacs.elmt_product188;
        elmt_X.elmt_reactant128 = Reacs.elmt_reactant128;
        elmt_X.elmt_reactant247 = Reacs.elmt_reactant247;
        elmt_X.elmt_reactant126 = Reacs.elmt_reactant126;
        elmt_X.elmt_reactant124 = Reacs.elmt_reactant124;
        elmt_X.elmt_reactant244 = Reacs.elmt_reactant244;
        elmt_X.elmt_reactant122 = Reacs.elmt_reactant122;
        elmt_X.elmt_product95 = Reacs.elmt_product95;
        elmt_X.elmt_product94 = Reacs.elmt_product94;
        elmt_X.elmt_reactant208 = Reacs.elmt_reactant208;
        elmt_X.elmt_reactant329 = Reacs.elmt_reactant329;
        elmt_X.elmt_product98 = Reacs.elmt_product98;
        elmt_X.elmt_reactant328 = Reacs.elmt_reactant328;
        elmt_X.elmt_product271 = Reacs.elmt_product271;
        elmt_X.elmt_product92 = Reacs.elmt_product92;
        elmt_X.elmt_product277 = Reacs.elmt_product277;
        elmt_X.elmt_product158 = Reacs.elmt_product158;
        elmt_X.elmt_product274 = Reacs.elmt_product274;
        elmt_X.elmt_product152 = Reacs.elmt_product152;
        elmt_X.elmt_product276 = Reacs.elmt_product276;
        elmt_X.elmt_product155 = Reacs.elmt_product155;
        elmt_X.elmt_product154 = Reacs.elmt_product154;
        elmt_X.elmt_reactant217 = Reacs.elmt_reactant217;
        elmt_X.elmt_reactant338 = Reacs.elmt_reactant338;
        elmt_X.elmt_reactant337 = Reacs.elmt_reactant337;
        elmt_X.elmt_reactant215 = Reacs.elmt_reactant215;
        elmt_X.elmt_reactant214 = Reacs.elmt_reactant214;
        elmt_X.elmt_reactant334 = Reacs.elmt_reactant334;
        elmt_X.elmt_reactant211 = Reacs.elmt_reactant211;
        elmt_X.elmt_reactant331 = Reacs.elmt_reactant331;
        elmt_X.elmt_product160 = Reacs.elmt_product160;
        elmt_X.elmt_product280 = Reacs.elmt_product280;
        elmt_X.elmt_product283 = Reacs.elmt_product283;
        elmt_X.elmt_product161 = Reacs.elmt_product161;
        elmt_X.elmt_product282 = Reacs.elmt_product282;
        elmt_X.elmt_product289 = Reacs.elmt_product289;
        elmt_X.elmt_reactant220 = Reacs.elmt_reactant220;
        elmt_X.elmt_reactant341 = Reacs.elmt_reactant341;
        elmt_X.elmt_product167 = Reacs.elmt_product167;
        elmt_X.elmt_reactant340 = Reacs.elmt_reactant340;
        elmt_X.elmt_product285 = Reacs.elmt_product285;
        elmt_X.elmt_product164 = Reacs.elmt_product164;
        elmt_X.elmt_product166 = Reacs.elmt_product166;
        elmt_X.elmt_product286 = Reacs.elmt_product286;
        elmt_X.elmt_reactant349 = Reacs.elmt_reactant349;
        elmt_X.elmt_reactant105 = Reacs.elmt_reactant105;
        elmt_X.elmt_reactant347 = Reacs.elmt_reactant347;
        elmt_X.elmt_reactant226 = Reacs.elmt_reactant226;
        elmt_X.elmt_reactant346 = Reacs.elmt_reactant346;
        elmt_X.elmt_reactant103 = Reacs.elmt_reactant103;
        elmt_X.elmt_reactant224 = Reacs.elmt_reactant224;
        elmt_X.elmt_reactant102 = Reacs.elmt_reactant102;
        elmt_X.elmt_reactant223 = Reacs.elmt_reactant223;
        elmt_X.elmt_reactant343 = Reacs.elmt_reactant343;
        elmt_X.elmt_product34 = Reacs.elmt_product34;
        elmt_X.elmt_product33 = Reacs.elmt_product33;
        elmt_X.elmt_reactant307 = Reacs.elmt_reactant307;
        elmt_X.elmt_product31 = Reacs.elmt_product31;
        elmt_X.elmt_product255 = Reacs.elmt_product255;
        elmt_X.elmt_product134 = Reacs.elmt_product134;
        elmt_X.elmt_product258 = Reacs.elmt_product258;
        elmt_X.elmt_product137 = Reacs.elmt_product137;
        elmt_X.elmt_product136 = Reacs.elmt_product136;
        elmt_X.elmt_product257 = Reacs.elmt_product257;
        elmt_X.elmt_product131 = Reacs.elmt_product131;
        elmt_X.elmt_product252 = Reacs.elmt_product252;
        elmt_X.elmt_product254 = Reacs.elmt_product254;
        elmt_X.elmt_reactant316 = Reacs.elmt_reactant316;
        elmt_X.elmt_product27 = Reacs.elmt_product27;
        elmt_X.elmt_reactant313 = Reacs.elmt_reactant313;
        elmt_X.elmt_product24 = Reacs.elmt_product24;
        elmt_X.elmt_reactant311 = Reacs.elmt_reactant311;
        elmt_X.elmt_reactant310 = Reacs.elmt_reactant310;
        elmt_X.elmt_product29 = Reacs.elmt_product29;
        elmt_X.elmt_product41 = Reacs.elmt_product41;
        elmt_X.elmt_product45 = Reacs.elmt_product45;
        elmt_X.elmt_reactant319 = Reacs.elmt_reactant319;
        elmt_X.elmt_product43 = Reacs.elmt_product43;
        elmt_X.elmt_product261 = Reacs.elmt_product261;
        elmt_X.elmt_product140 = Reacs.elmt_product140;
        elmt_X.elmt_product267 = Reacs.elmt_product267;
        elmt_X.elmt_product146 = Reacs.elmt_product146;
        elmt_X.elmt_product266 = Reacs.elmt_product266;
        elmt_X.elmt_product269 = Reacs.elmt_product269;
        elmt_X.elmt_product148 = Reacs.elmt_product148;
        elmt_X.elmt_product263 = Reacs.elmt_product263;
        elmt_X.elmt_product142 = Reacs.elmt_product142;
        elmt_X.elmt_product264 = Reacs.elmt_product264;
        elmt_X.elmt_product143 = Reacs.elmt_product143;
        elmt_X.elmt_reactant206 = Reacs.elmt_reactant206;
        elmt_X.elmt_reactant205 = Reacs.elmt_reactant205;
        elmt_X.elmt_product37 = Reacs.elmt_product37;
        elmt_X.elmt_reactant325 = Reacs.elmt_reactant325;
        elmt_X.elmt_reactant202 = Reacs.elmt_reactant202;
        elmt_X.elmt_reactant322 = Reacs.elmt_reactant322;
        elmt_X.elmt_product149 = Reacs.elmt_product149;
        elmt_X.elmt_product39 = Reacs.elmt_product39;
        elmt_X.elmt_reactant320 = Reacs.elmt_reactant320;
        elmt_X.elmt_product51 = Reacs.elmt_product51;
        elmt_X.elmt_product56 = Reacs.elmt_product56;
        elmt_X.elmt_product55 = Reacs.elmt_product55;
        elmt_X.elmt_product53 = Reacs.elmt_product53;
        elmt_X.elmt_product113 = Reacs.elmt_product113;
        elmt_X.elmt_product234 = Reacs.elmt_product234;
        elmt_X.elmt_product354 = Reacs.elmt_product354;
        elmt_X.elmt_product112 = Reacs.elmt_product112;
        elmt_X.elmt_product236 = Reacs.elmt_product236;
        elmt_X.elmt_product351 = Reacs.elmt_product351;
        elmt_X.elmt_product230 = Reacs.elmt_product230;
        elmt_X.elmt_product353 = Reacs.elmt_product353;
        elmt_X.elmt_product110 = Reacs.elmt_product110;
        elmt_X.elmt_product231 = Reacs.elmt_product231;
        elmt_X.elmt_product48 = Reacs.elmt_product48;
        elmt_X.elmt_product47 = Reacs.elmt_product47;
        elmt_X.elmt_product116 = Reacs.elmt_product116;
        elmt_X.elmt_product237 = Reacs.elmt_product237;
        elmt_X.elmt_product119 = Reacs.elmt_product119;
        elmt_X.elmt_product239 = Reacs.elmt_product239;
        elmt_X.elmt_product118 = Reacs.elmt_product118;
        elmt_X.elmt_product62 = Reacs.elmt_product62;
        elmt_X.elmt_product65 = Reacs.elmt_product65;
        elmt_X.elmt_product64 = Reacs.elmt_product64;
        elmt_X.elmt_product245 = Reacs.elmt_product245;
        elmt_X.elmt_product123 = Reacs.elmt_product123;
        elmt_X.elmt_product125 = Reacs.elmt_product125;
        elmt_X.elmt_product246 = Reacs.elmt_product246;
        elmt_X.elmt_product240 = Reacs.elmt_product240;
        elmt_X.elmt_product243 = Reacs.elmt_product243;
        elmt_X.elmt_product121 = Reacs.elmt_product121;
        elmt_X.elmt_product59 = Reacs.elmt_product59;
        elmt_X.elmt_reactant304 = Reacs.elmt_reactant304;
        elmt_X.elmt_reactant302 = Reacs.elmt_reactant302;
        elmt_X.elmt_reactant301 = Reacs.elmt_reactant301;
        elmt_X.elmt_product249 = Reacs.elmt_product249;
        elmt_X.elmt_product127 = Reacs.elmt_product127;
        elmt_X.elmt_product248 = Reacs.elmt_product248;
        elmt_X.elmt_product129 = Reacs.elmt_product129;
        elmt_event0.elmt_k1Yact = Params.elmt_k1Yact;

        Params.assign_elmt_kYact = elmt_event0.value_elmt_kYact;
end Haberichter2007_cellcycle;
