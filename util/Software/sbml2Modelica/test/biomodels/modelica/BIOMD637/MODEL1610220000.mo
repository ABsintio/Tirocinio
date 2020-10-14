within BIOMD637;
model MODEL1610220000 "Bush2016 - Simplified Carrousel model of GPCR" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2013-07-31T12:29:40Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>abush84@gmail.com</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Bush</vCard:Family>
                    <vCard:Given>Alan</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>IFIBYNE-UBA-CONICET</vCard:Orgname>
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
    Class_elmt_PM elmt_PM;

    equation
        Params.elmt_RG = elmt_PM.elmt_RG;
        Params.elmt_LR = elmt_PM.elmt_LR;
        Params.elmt_LRGd = elmt_PM.elmt_LRGd;
        Params.elmt_LRGt = elmt_PM.elmt_LRGt;
        Params.elmt_LRG = elmt_PM.elmt_LRG;
        Params.elmt_Gt = elmt_PM.elmt_Gt;
        Params.elmt_Gd = elmt_PM.elmt_Gd;
        Params.elmt_G = elmt_PM.elmt_G;
        Params.elmt_RGd = elmt_PM.elmt_RGd;
        Params.elmt_RGt = elmt_PM.elmt_RGt;
        Reacs.elmt_LR = elmt_PM.elmt_LR;
        Reacs.elmt_k_off_LR_Gd = Params.elmt_k_off_LR_Gd;
        Reacs.elmt_k_off_L_RGd = Params.elmt_k_off_L_RGd;
        Reacs.elmt_LRGd = elmt_PM.elmt_LRGd;
        Reacs.elmt_k_on_R_Gd = Params.elmt_k_on_R_Gd;
        Reacs.elmt_k_on_L_R = Params.elmt_k_on_L_R;
        Reacs.elmt_k_Hf_RGt = Params.elmt_k_Hf_RGt;
        Reacs.elmt_k_Af_RGd = Params.elmt_k_Af_RGd;
        Reacs.elmt_Gt = elmt_PM.elmt_Gt;
        Reacs.elmt_k_on_L_RGd = Params.elmt_k_on_L_RGd;
        Reacs.elmt_k_on_LR_Gt = Params.elmt_k_on_LR_Gt;
        Reacs.elmt_k_Ef_Gd = Params.elmt_k_Ef_Gd;
        Reacs.elmt_k_Ef_LRGd = Params.elmt_k_Ef_LRGd;
        Reacs.elmt_RG = elmt_PM.elmt_RG;
        Reacs.elmt_k_off_R_Gd = Params.elmt_k_off_R_Gd;
        Reacs.elmt_k_off_LR_Gt = Params.elmt_k_off_LR_Gt;
        Reacs.elmt_k_off_L_RGt = Params.elmt_k_off_L_RGt;
        Reacs.elmt_k_Ef_RG = Params.elmt_k_Ef_RG;
        Reacs.elmt_k_on_R_Gt = Params.elmt_k_on_R_Gt;
        Reacs.elmt_LRG = elmt_PM.elmt_LRG;
        Reacs.elmt_k_off_L_RG = Params.elmt_k_off_L_RG;
        Reacs.elmt_PM = elmt_PM.elmt_PM;
        Reacs.elmt_Gd = elmt_PM.elmt_Gd;
        Reacs.elmt_RGd = elmt_PM.elmt_RGd;
        Reacs.elmt_k_on_L_RGt = Params.elmt_k_on_L_RGt;
        Reacs.elmt_Gbg = elmt_PM.elmt_Gbg;
        Reacs.elmt_k_Ar_RGd = Params.elmt_k_Ar_RGd;
        Reacs.elmt_R = elmt_PM.elmt_R;
        Reacs.elmt_k_Af_LRGd = Params.elmt_k_Af_LRGd;
        Reacs.elmt_k_off_R_Gt = Params.elmt_k_off_R_Gt;
        Reacs.elmt_k_off_R_G = Params.elmt_k_off_R_G;
        Reacs.elmt_G = elmt_PM.elmt_G;
        Reacs.elmt_k_off_LR_G = Params.elmt_k_off_LR_G;
        Reacs.elmt_k_off_L_R = Params.elmt_k_off_L_R;
        Reacs.elmt_RGt = elmt_PM.elmt_RGt;
        Reacs.elmt_k_Ef_G = Params.elmt_k_Ef_G;
        Reacs.elmt_k_Hf_LRGt = Params.elmt_k_Hf_LRGt;
        Reacs.elmt_k_Ef_LRG = Params.elmt_k_Ef_LRG;
        Reacs.elmt_k_Hf_Gt = Params.elmt_k_Hf_Gt;
        Reacs.elmt_k_Ar_Gd = Params.elmt_k_Ar_Gd;
        Reacs.elmt_k_Af_Gd = Params.elmt_k_Af_Gd;
        Reacs.elmt_LRGt = elmt_PM.elmt_LRGt;
        Reacs.elmt_k_Ef_RGd = Params.elmt_k_Ef_RGd;
        Reacs.elmt_k_on_LR_G = Params.elmt_k_on_LR_G;
        Reacs.elmt_k_on_LR_Gd = Params.elmt_k_on_LR_Gd;
        Reacs.elmt_k_on_L_RG = Params.elmt_k_on_L_RG;
        Reacs.elmt_k_on_R_G = Params.elmt_k_on_R_G;
        Reacs.elmt_k_Ar_LRGd = Params.elmt_k_Ar_LRGd;
        elmt_PM.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_PM.elmt_Rtot = Params.elmt_Rtot;
        elmt_PM.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_PM.elmt_product34 = Reacs.elmt_product34;
        elmt_PM.elmt_product33 = Reacs.elmt_product33;
        elmt_PM.elmt_product31 = Reacs.elmt_product31;
        elmt_PM.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_PM.elmt_binding_R_Gd = Reacs.elmt_binding_R_Gd;
        elmt_PM.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt_PM.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_PM.elmt_binding_L_RG = Reacs.elmt_binding_L_RG;
        elmt_PM.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_PM.elmt_hydrolysis_RGt = Reacs.elmt_hydrolysis_RGt;
        elmt_PM.elmt_exchange_RGd = Reacs.elmt_exchange_RGd;
        elmt_PM.elmt_Gtot = Params.elmt_Gtot;
        elmt_PM.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_PM.elmt_product26 = Reacs.elmt_product26;
        elmt_PM.elmt_product25 = Reacs.elmt_product25;
        elmt_PM.elmt_exchange_RG = Reacs.elmt_exchange_RG;
        elmt_PM.elmt_product28 = Reacs.elmt_product28;
        elmt_PM.elmt_product41 = Reacs.elmt_product41;
        elmt_PM.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_PM.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_PM.elmt_exchange_LRG = Reacs.elmt_exchange_LRG;
        elmt_PM.elmt_product44 = Reacs.elmt_product44;
        elmt_PM.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_PM.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_PM.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_PM.elmt_reactant54 = Reacs.elmt_reactant54;
        elmt_PM.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_PM.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_PM.elmt_binding_L_RGt = Reacs.elmt_binding_L_RGt;
        elmt_PM.elmt_product37 = Reacs.elmt_product37;
        elmt_PM.elmt_product36 = Reacs.elmt_product36;
        elmt_PM.elmt_binding_R_Gt = Reacs.elmt_binding_R_Gt;
        elmt_PM.elmt_association_LRGd = Reacs.elmt_association_LRGd;
        elmt_PM.elmt_product39 = Reacs.elmt_product39;
        elmt_PM.elmt_product51 = Reacs.elmt_product51;
        elmt_PM.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_PM.elmt_binding_LR_G = Reacs.elmt_binding_LR_G;
        elmt_PM.elmt_binding_LR_Gd = Reacs.elmt_binding_LR_Gd;
        elmt_PM.elmt_product55 = Reacs.elmt_product55;
        elmt_PM.elmt_binding_L_RGd = Reacs.elmt_binding_L_RGd;
        elmt_PM.elmt_product10 = Reacs.elmt_product10;
        elmt_PM.elmt_product53 = Reacs.elmt_product53;
        elmt_PM.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_PM.elmt_exchange_G = Reacs.elmt_exchange_G;
        elmt_PM.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_PM.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_PM.elmt_association_RGd = Reacs.elmt_association_RGd;
        elmt_PM.elmt_exchange_Gd = Reacs.elmt_exchange_Gd;
        elmt_PM.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_PM.elmt_binding_LR_Gt = Reacs.elmt_binding_LR_Gt;
        elmt_PM.elmt_product49 = Reacs.elmt_product49;
        elmt_PM.elmt_product47 = Reacs.elmt_product47;
        elmt_PM.elmt_association_Gd = Reacs.elmt_association_Gd;
        elmt_PM.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_PM.elmt_product7 = Reacs.elmt_product7;
        elmt_PM.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_PM.elmt_hydrolysis_LRGt = Reacs.elmt_hydrolysis_LRGt;
        elmt_PM.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_PM.elmt_product23 = Reacs.elmt_product23;
        elmt_PM.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_PM.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_PM.elmt_product21 = Reacs.elmt_product21;
        elmt_PM.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_PM.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_PM.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_PM.elmt_product4 = Reacs.elmt_product4;
        elmt_PM.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_PM.elmt_product2 = Reacs.elmt_product2;
        elmt_PM.elmt_binding_L_R = Reacs.elmt_binding_L_R;
        elmt_PM.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_PM.elmt_binding_R_G = Reacs.elmt_binding_R_G;
        elmt_PM.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_PM.elmt_product16 = Reacs.elmt_product16;
        elmt_PM.elmt_exchange_LRGd = Reacs.elmt_exchange_LRGd;
        elmt_PM.elmt_hydrolysis_Gt = Reacs.elmt_hydrolysis_Gt;
        elmt_PM.elmt_product13 = Reacs.elmt_product13;
        elmt_PM.elmt_product19 = Reacs.elmt_product19;

end MODEL1610220000;
