within BIOMD639;
model MODEL1602280001 "Thiaville2016 - Wild type folate pathway model with proposed PanB reaction" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-03-03T00:36:59Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>chenry@mcs.anl.gov</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Henry</vCard:Family>
                    <vCard:Given>Christopher</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>Argonne National Laboratory</vCard:Orgname>
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
    Class_elmt_compartment elmt_compartment;

    equation
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_THF = elmt_compartment.elmt_THF;
        Reacs.elmt_Glycine = elmt_compartment.elmt_Glycine;
        Reacs.elmt_H2_HMPterinPP = elmt_compartment.elmt_H2_HMPterinPP;
        Reacs.elmt_NADPH = elmt_compartment.elmt_NADPH;
        Reacs.elmt_ATP = elmt_compartment.elmt_ATP;
        Reacs.elmt_L_Glutamate = elmt_compartment.elmt_L_Glutamate;
        Reacs.elmt_H2_Pteroate = elmt_compartment.elmt_H2_Pteroate;
        Reacs.elmt_H2_HMPt = elmt_compartment.elmt_H2_HMPt;
        Reacs.elmt_DHF = elmt_compartment.elmt_DHF;
        Reacs.elmt_CH2_THF = elmt_compartment.elmt_CH2_THF;
        Reacs.elmt_p_ABA = elmt_compartment.elmt_p_ABA;
        Reacs.elmt_L_serine = elmt_compartment.elmt_L_serine;
        elmt_compartment.elmt_CH2_THF_drain = Reacs.elmt_CH2_THF_drain;
        elmt_compartment.elmt_p_ABA_production = Reacs.elmt_p_ABA_production;
        elmt_compartment.elmt_FolC = Reacs.elmt_FolC;
        elmt_compartment.elmt_product11 = Reacs.elmt_product11;
        elmt_compartment.elmt_THF_drain = Reacs.elmt_THF_drain;
        elmt_compartment.elmt_reactant27 = Reacs.elmt_reactant27;
        elmt_compartment.elmt_FolP = Reacs.elmt_FolP;
        elmt_compartment.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_compartment.elmt_FolK = Reacs.elmt_FolK;
        elmt_compartment.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_compartment.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_compartment.elmt_product26 = Reacs.elmt_product26;
        elmt_compartment.elmt_product25 = Reacs.elmt_product25;
        elmt_compartment.elmt_FolA = Reacs.elmt_FolA;
        elmt_compartment.elmt_product24 = Reacs.elmt_product24;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_product23 = Reacs.elmt_product23;
        elmt_compartment.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_compartment.elmt_product21 = Reacs.elmt_product21;
        elmt_compartment.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_compartment.elmt_GlyA = Reacs.elmt_GlyA;
        elmt_compartment.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_PanB = Reacs.elmt_PanB;
        elmt_compartment.elmt_H2_HMPt_production = Reacs.elmt_H2_HMPt_production;
        elmt_compartment.elmt_product16 = Reacs.elmt_product16;

end MODEL1602280001;
