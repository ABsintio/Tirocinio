within BIOMD583;
model C__difficile_Host_Interactions_Model "Leber2015 - Mucosal immunity and gut microbiome interaction during C. difficile infection" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-04-08T13:02:57Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>ajleber@vbi.vt.edu</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Leber</vCard:Family>
                    <vCard:Given>Andrew</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>Virginia Tech</vCard:Orgname>
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
    Class_elmt_Lumen elmt_Lumen;
    Class_elmt_LP elmt_LP;
    Class_elmt_Epithelium elmt_Epithelium;
    Class_elmt_MLN elmt_MLN;

    equation
        Reacs.elmt_Th17_LP = elmt_LP.elmt_Th17_LP;
        Reacs.elmt_M0 = elmt_LP.elmt_M0;
        Reacs.elmt_LP = elmt_LP.elmt_LP;
        Reacs.elmt_tDC_LP = elmt_Lumen.elmt_tDC_LP;
        Reacs.elmt_Commensal_Beneficial = elmt_Lumen.elmt_Commensal_Beneficial;
        Reacs.elmt_Commensal_Dead = elmt_Lumen.elmt_Commensal_Dead;
        Reacs.elmt_Th1_LP = elmt_LP.elmt_Th1_LP;
        Reacs.elmt_M_LP = elmt_Epithelium.elmt_M_LP;
        Reacs.elmt_Cdiff = elmt_Lumen.elmt_Cdiff;
        Reacs.elmt_Lumen = elmt_Lumen.elmt_Lumen;
        Reacs.elmt_MLN = elmt_MLN.elmt_MLN;
        Reacs.elmt_eDC_LP = elmt_LP.elmt_eDC_LP;
        Reacs.elmt_N_Lum = elmt_Lumen.elmt_N_Lum;
        Reacs.elmt_eDC_MLN = elmt_MLN.elmt_eDC_MLN;
        Reacs.elmt_E = elmt_Epithelium.elmt_E;
        Reacs.elmt_Th17_MLN = elmt_MLN.elmt_Th17_MLN;
        Reacs.elmt_iTreg_MLN = elmt_MLN.elmt_iTreg_MLN;
        Reacs.elmt_N_LP = elmt_LP.elmt_N_LP;
        Reacs.elmt_tDC_MLN = elmt_Lumen.elmt_tDC_MLN;
        Reacs.elmt_Epithelium = elmt_Epithelium.elmt_Epithelium;
        Reacs.elmt_iTreg_LP = elmt_LP.elmt_iTreg_LP;
        Reacs.elmt_Th1_MLN = elmt_MLN.elmt_Th1_MLN;
        Reacs.elmt_E_i = elmt_Epithelium.elmt_E_i;
        Reacs.elmt_Commensal_Harmful = elmt_Lumen.elmt_Commensal_Harmful;
        Reacs.elmt_E_d = elmt_Epithelium.elmt_E_d;
        elmt_Epithelium.elmt_product30 = Reacs.elmt_product30;
        elmt_Epithelium.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_Epithelium.elmt_product51 = Reacs.elmt_product51;
        elmt_Epithelium.elmt_M_Death = Reacs.elmt_M_Death;
        elmt_Epithelium.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_Epithelium.elmt_product6 = Reacs.elmt_product6;
        elmt_Epithelium.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_Epithelium.elmt_E_i_Damage = Reacs.elmt_E_i_Damage;
        elmt_Epithelium.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_Epithelium.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_Epithelium.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_Epithelium.elmt_E_Inflame = Reacs.elmt_E_Inflame;
        elmt_Epithelium.elmt_product26 = Reacs.elmt_product26;
        elmt_Epithelium.elmt_E_i_Natural_Death = Reacs.elmt_E_i_Natural_Death;
        elmt_Epithelium.elmt_M_Activation = Reacs.elmt_M_Activation;
        elmt_Epithelium.elmt_product35 = Reacs.elmt_product35;
        elmt_Epithelium.elmt_E_Damage = Reacs.elmt_E_Damage;
        elmt_Epithelium.elmt_E_Heal = Reacs.elmt_E_Heal;
        elmt_Epithelium.elmt_product28 = Reacs.elmt_product28;
        elmt_MLN.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_MLN.elmt_product8 = Reacs.elmt_product8;
        elmt_MLN.elmt_eDC_Degradation = Reacs.elmt_eDC_Degradation;
        elmt_MLN.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_MLN.elmt_product45 = Reacs.elmt_product45;
        elmt_MLN.elmt_product43 = Reacs.elmt_product43;
        elmt_MLN.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_MLN.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_MLN.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_MLN.elmt_eDC_Migration = Reacs.elmt_eDC_Migration;
        elmt_MLN.elmt_Th1_Differentiation = Reacs.elmt_Th1_Differentiation;
        elmt_MLN.elmt_Th17_Migration = Reacs.elmt_Th17_Migration;
        elmt_MLN.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_MLN.elmt_Th17_Differentiation = Reacs.elmt_Th17_Differentiation;
        elmt_MLN.elmt_product47 = Reacs.elmt_product47;
        elmt_MLN.elmt_Treg_Differentiation = Reacs.elmt_Treg_Differentiation;
        elmt_MLN.elmt_Th1_Migration = Reacs.elmt_Th1_Migration;
        elmt_MLN.elmt_Treg_Migration = Reacs.elmt_Treg_Migration;
        elmt_Lumen.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt_Lumen.elmt_product33 = Reacs.elmt_product33;
        elmt_Lumen.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_Lumen.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt_Lumen.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_Lumen.elmt_tDC_Migration = Reacs.elmt_tDC_Migration;
        elmt_Lumen.elmt_Cdiff_Growth = Reacs.elmt_Cdiff_Growth;
        elmt_Lumen.elmt_Commensal_Harmful_Death = Reacs.elmt_Commensal_Harmful_Death;
        elmt_Lumen.elmt_Cdiff_Death = Reacs.elmt_Cdiff_Death;
        elmt_Lumen.elmt_tDC_Degradation = Reacs.elmt_tDC_Degradation;
        elmt_Lumen.elmt_N_Degradation = Reacs.elmt_N_Degradation;
        elmt_Lumen.elmt_product40 = Reacs.elmt_product40;
        elmt_Lumen.elmt_Commensal_Regrowth = Reacs.elmt_Commensal_Regrowth;
        elmt_Lumen.elmt_tDC_Production = Reacs.elmt_tDC_Production;
        elmt_Lumen.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_Lumen.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_Lumen.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt_Lumen.elmt_N_Activation_Migration = Reacs.elmt_N_Activation_Migration;
        elmt_Lumen.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_Lumen.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_Lumen.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_Lumen.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_Lumen.elmt_eDC_Production = Reacs.elmt_eDC_Production;
        elmt_Lumen.elmt_Commensal_Death = Reacs.elmt_Commensal_Death;
        elmt_Lumen.elmt_product16 = Reacs.elmt_product16;
        elmt_Lumen.elmt_product38 = Reacs.elmt_product38;
        elmt_Lumen.elmt_product14 = Reacs.elmt_product14;
        elmt_Lumen.elmt_Treg_Differentiation = Reacs.elmt_Treg_Differentiation;
        elmt_LP.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_LP.elmt_Th17_Plasticity = Reacs.elmt_Th17_Plasticity;
        elmt_LP.elmt_Treg_Degradation = Reacs.elmt_Treg_Degradation;
        elmt_LP.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_LP.elmt_product22 = Reacs.elmt_product22;
        elmt_LP.elmt_product11 = Reacs.elmt_product11;
        elmt_LP.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_LP.elmt_product20 = Reacs.elmt_product20;
        elmt_LP.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_LP.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_LP.elmt_eDC_Migration = Reacs.elmt_eDC_Migration;
        elmt_LP.elmt_Th1_Degradation = Reacs.elmt_Th1_Degradation;
        elmt_LP.elmt_Th17_Migration = Reacs.elmt_Th17_Migration;
        elmt_LP.elmt_eDC_Production = Reacs.elmt_eDC_Production;
        elmt_LP.elmt_Th17_Degradation = Reacs.elmt_Th17_Degradation;
        elmt_LP.elmt_product24 = Reacs.elmt_product24;
        elmt_LP.elmt_Th1_Migration = Reacs.elmt_Th1_Migration;
        elmt_LP.elmt_Treg_Migration = Reacs.elmt_Treg_Migration;
        elmt_LP.elmt_product18 = Reacs.elmt_product18;

end C__difficile_Host_Interactions_Model;
