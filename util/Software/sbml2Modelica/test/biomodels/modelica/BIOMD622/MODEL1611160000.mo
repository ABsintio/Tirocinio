within BIOMD622;
model MODEL1611160000 "NguyenLK2011 - Ubiquitination dynamics in Ring1B/Bmi1 system" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <dcterms:description>This study describes the diverse kinetics arising from intricate mechanisms of ubiquitination and degradation in Ring1B ligase.</dcterms:description>
                <CopasiMT:isDescribedBy rdf:resource=\"urn:miriam:pubmed:22194680\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2016-11-15T13:03:23Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>tvarusai@ebi.ac.uk</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Varusai</vCard:Family>
                    <vCard:Given>Thawfeek</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>EBI-EMBL</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:go:GO:0016567\"/>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:go:GO:0030163\"/>
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
        Reacs.elmt_Bmi1ubd = elmt_compartment.elmt_Bmi1ubd;
        Reacs.elmt_H2A = elmt_compartment.elmt_H2A;
        Reacs.elmt_H2Auba = elmt_compartment.elmt_H2Auba;
        Reacs.elmt_Zub = elmt_compartment.elmt_Zub;
        Reacs.elmt_compartment = elmt_compartment.elmt_compartment;
        Reacs.elmt_R1Buba = elmt_compartment.elmt_R1Buba;
        Reacs.elmt_R1B = elmt_compartment.elmt_R1B;
        Reacs.elmt_R1Bubd = elmt_compartment.elmt_R1Bubd;
        Reacs.elmt_Bmi1 = elmt_compartment.elmt_Bmi1;
        Reacs.elmt_Z = elmt_compartment.elmt_Z;
        Reacs.elmt_USP7tot = elmt_compartment.elmt_USP7tot;
        Reacs.elmt_R1Bub = elmt_compartment.elmt_R1Bub;
        elmt_compartment.elmt_product30 = Reacs.elmt_product30;
        elmt_compartment.elmt_product27 = Reacs.elmt_product27;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment.elmt_product25 = Reacs.elmt_product25;
        elmt_compartment.elmt_product28 = Reacs.elmt_product28;
        elmt_compartment.elmt_R7 = Reacs.elmt_R7;
        elmt_compartment.elmt_R8 = Reacs.elmt_R8;
        elmt_compartment.elmt_R5 = Reacs.elmt_R5;
        elmt_compartment.elmt_R6 = Reacs.elmt_R6;
        elmt_compartment.elmt_Bmi1prod = Reacs.elmt_Bmi1prod;
        elmt_compartment.elmt_R3 = Reacs.elmt_R3;
        elmt_compartment.elmt_R4 = Reacs.elmt_R4;
        elmt_compartment.elmt_R1 = Reacs.elmt_R1;
        elmt_compartment.elmt_R2 = Reacs.elmt_R2;
        elmt_compartment.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_compartment.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_compartment.elmt_R9 = Reacs.elmt_R9;
        elmt_compartment.elmt_reactant13 = Reacs.elmt_reactant13;
        elmt_compartment.elmt_R1Bprod = Reacs.elmt_R1Bprod;
        elmt_compartment.elmt_Bmi1deg = Reacs.elmt_Bmi1deg;
        elmt_compartment.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_compartment.elmt_R12 = Reacs.elmt_R12;
        elmt_compartment.elmt_product12 = Reacs.elmt_product12;
        elmt_compartment.elmt_R13 = Reacs.elmt_R13;
        elmt_compartment.elmt_R10 = Reacs.elmt_R10;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_R11 = Reacs.elmt_R11;
        elmt_compartment.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_compartment.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_compartment.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_compartment.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_compartment.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_compartment.elmt_product23 = Reacs.elmt_product23;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_R1Bdeg = Reacs.elmt_R1Bdeg;
        elmt_compartment.elmt_product21 = Reacs.elmt_product21;
        elmt_compartment.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment.elmt_product1 = Reacs.elmt_product1;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_compartment.elmt_product3 = Reacs.elmt_product3;
        elmt_compartment.elmt_reactant29 = Reacs.elmt_reactant29;
        elmt_compartment.elmt_product16 = Reacs.elmt_product16;
        elmt_compartment.elmt_product14 = Reacs.elmt_product14;
        elmt_compartment.elmt_product19 = Reacs.elmt_product19;
        elmt_compartment.elmt_product17 = Reacs.elmt_product17;

end MODEL1611160000;
