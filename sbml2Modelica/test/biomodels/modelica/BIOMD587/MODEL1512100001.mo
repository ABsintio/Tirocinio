within BIOMD587;
model MODEL1512100001 "Karapetyan2016 - Genetic oscillatory network - Repressor Titration Circuit (RTC)" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-01-26T17:46:49Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Karapetyan</vCard:Family>
                    <vCard:Given>Sargis</vCard:Given>
                  </rdf:Description>
                </vCard:N>
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
    Class_elmt_yeast elmt_yeast;

    equation
        Reacs.elmt_yeast = elmt_yeast.elmt_yeast;
        Reacs.elmt_G2 = elmt_yeast.elmt_G2;
        Reacs.elmt_G3 = elmt_yeast.elmt_G3;
        Reacs.elmt_G0 = elmt_yeast.elmt_G0;
        Reacs.elmt_G1 = elmt_yeast.elmt_G1;
        Reacs.elmt_a_23 = Params.elmt_a_23;
        Reacs.elmt_a_01 = Params.elmt_a_01;
        Reacs.elmt_t_21 = Params.elmt_t_21;
        Reacs.elmt_epsilon = Params.elmt_epsilon;
        Reacs.elmt_RI = elmt_yeast.elmt_RI;
        Reacs.elmt_R = elmt_yeast.elmt_R;
        Reacs.elmt_beta = Params.elmt_beta;
        Reacs.elmt_delta_p = Params.elmt_delta_p;
        Reacs.elmt_epsilon_1 = Params.elmt_epsilon_1;
        Reacs.elmt_I = elmt_yeast.elmt_I;
        Reacs.elmt_rho_0 = Params.elmt_rho_0;
        Reacs.elmt_R2 = elmt_yeast.elmt_R2;
        Reacs.elmt_rR = elmt_yeast.elmt_rR;
        Reacs.elmt_delta_m = Params.elmt_delta_m;
        Reacs.elmt_a_12 = Params.elmt_a_12;
        Reacs.elmt_rho_f = Params.elmt_rho_f;
        Reacs.elmt_t_32 = Params.elmt_t_32;
        Reacs.elmt_t_10 = Params.elmt_t_10;
        Reacs.elmt_rho_b = Params.elmt_rho_b;
        Reacs.elmt_gamma = Params.elmt_gamma;
        Reacs.elmt_rI = elmt_yeast.elmt_rI;
        elmt_yeast.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt_yeast.elmt_product32 = Reacs.elmt_product32;
        elmt_yeast.elmt_G3____G2___R2 = Reacs.elmt_G3____G2___R2;
        elmt_yeast.elmt_rI___ = Reacs.elmt_rI___;
        elmt_yeast.elmt_product31 = Reacs.elmt_product31;
        elmt_yeast.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt_yeast.elmt_R2____2___R = Reacs.elmt_R2____2___R;
        elmt_yeast.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_yeast.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_yeast.elmt_RI____R___I = Reacs.elmt_RI____R___I;
        elmt_yeast.elmt_rR____rR___R = Reacs.elmt_rR____rR___R;
        elmt_yeast.elmt_product27 = Reacs.elmt_product27;
        elmt_yeast.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_yeast.elmt_product25 = Reacs.elmt_product25;
        elmt_yeast.elmt_G0___R2____G1 = Reacs.elmt_G0___R2____G1;
        elmt_yeast.elmt_product29 = Reacs.elmt_product29;
        elmt_yeast.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_yeast.elmt_product40 = Reacs.elmt_product40;
        elmt_yeast.elmt_rI____rI___I = Reacs.elmt_rI____rI___I;
        elmt_yeast.elmt_G2____G2___rR = Reacs.elmt_G2____G2___rR;
        elmt_yeast.elmt_product43 = Reacs.elmt_product43;
        elmt_yeast.elmt_product42 = Reacs.elmt_product42;
        elmt_yeast.elmt_R___ = Reacs.elmt_R___;
        elmt_yeast.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_yeast.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_yeast.elmt_G1___R2____G2 = Reacs.elmt_G1___R2____G2;
        elmt_yeast.elmt_R2___ = Reacs.elmt_R2___;
        elmt_yeast.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_yeast.elmt_G3____G3___rR = Reacs.elmt_G3____G3___rR;
        elmt_yeast.elmt_G2___R2____G3 = Reacs.elmt_G2___R2____G3;
        elmt_yeast.elmt_product37 = Reacs.elmt_product37;
        elmt_yeast.elmt_RI___ = Reacs.elmt_RI___;
        elmt_yeast.elmt_R___I____RI = Reacs.elmt_R___I____RI;
        elmt_yeast.elmt_product39 = Reacs.elmt_product39;
        elmt_yeast.elmt_product52 = Reacs.elmt_product52;
        elmt_yeast.elmt_product51 = Reacs.elmt_product51;
        elmt_yeast.elmt_G1____G1___rR = Reacs.elmt_G1____G1___rR;
        elmt_yeast.elmt_product11 = Reacs.elmt_product11;
        elmt_yeast.elmt_product10 = Reacs.elmt_product10;
        elmt_yeast.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_yeast.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_yeast.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_yeast.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_yeast.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_yeast.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_yeast.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_yeast.elmt_product49 = Reacs.elmt_product49;
        elmt_yeast.elmt_G1____G0___R2 = Reacs.elmt_G1____G0___R2;
        elmt_yeast.elmt_product48 = Reacs.elmt_product48;
        elmt_yeast.elmt_product46 = Reacs.elmt_product46;
        elmt_yeast.elmt_product8 = Reacs.elmt_product8;
        elmt_yeast.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_yeast.elmt_product7 = Reacs.elmt_product7;
        elmt_yeast.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_yeast.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_yeast.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_yeast.elmt_product21 = Reacs.elmt_product21;
        elmt_yeast.elmt_product20 = Reacs.elmt_product20;
        elmt_yeast.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_yeast.elmt_product1 = Reacs.elmt_product1;
        elmt_yeast.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_yeast.elmt_product5 = Reacs.elmt_product5;
        elmt_yeast.elmt_G0____G0___rR = Reacs.elmt_G0____G0___rR;
        elmt_yeast.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_yeast.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_yeast.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_yeast.elmt_product2 = Reacs.elmt_product2;
        elmt_yeast.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_yeast.elmt_G2____G1___R2 = Reacs.elmt_G2____G1___R2;
        elmt_yeast.elmt_I___ = Reacs.elmt_I___;
        elmt_yeast.elmt_product16 = Reacs.elmt_product16;
        elmt_yeast.elmt_rR___ = Reacs.elmt_rR___;
        elmt_yeast.elmt_product13 = Reacs.elmt_product13;
        elmt_yeast.elmt_____rI = Reacs.elmt_____rI;
        elmt_yeast.elmt__2___R____R2 = Reacs.elmt__2___R____R2;
        elmt_yeast.elmt_product17 = Reacs.elmt_product17;

end MODEL1512100001;
