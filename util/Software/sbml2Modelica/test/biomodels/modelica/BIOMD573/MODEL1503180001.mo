within BIOMD573;
model MODEL1503180001 "Aguilera 2014 - HIV latency. Interaction between HIV proteins and immune response" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1016/j.jtbi.2014.06.025\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/24997239\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-02-07T21:35:33Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL> luis.aguilera@bioquant.uni-heidelberg.de</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Aguilera de Lira</vCard:Family>
                    <vCard:Given>Luis Ubaldo</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>Heidelberg University</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>jrodriguez@cinvestav.mx</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Rodriguez-Gonzalez</vCard:Family>
                    <vCard:Given>Jesus</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>Cinvestav Mexico</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:modified>
              <rdf:Description>
                <dcterms:W3CDTF>2015-03-13T09:05:17</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:modified>
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
        Reacs.elmt_V = elmt_compartment.elmt_V;
        Reacs.elmt_C = elmt_compartment.elmt_C;
        elmt_compartment.elmt_Kvc = Reacs.elmt_Kvc;
        elmt_compartment.elmt_reactant1 = Reacs.elmt_reactant1;
        elmt_compartment.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_compartment.elmt_product7 = Reacs.elmt_product7;
        elmt_compartment.elmt_reactant3 = Reacs.elmt_reactant3;
        elmt_compartment.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_compartment.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_compartment.elmt_product10 = Reacs.elmt_product10;
        elmt_compartment.elmt_product0 = Reacs.elmt_product0;
        elmt_compartment.elmt_Kv = Reacs.elmt_Kv;
        elmt_compartment.elmt_Kdv = Reacs.elmt_Kdv;
        elmt_compartment.elmt_Kcv = Reacs.elmt_Kcv;
        elmt_compartment.elmt_product5 = Reacs.elmt_product5;
        elmt_compartment.elmt_reactant11 = Reacs.elmt_reactant11;
        elmt_compartment.elmt_product2 = Reacs.elmt_product2;
        elmt_compartment.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_compartment.elmt_Kb = Reacs.elmt_Kb;
        elmt_compartment.elmt_Kc = Reacs.elmt_Kc;
        elmt_compartment.elmt_Kdc = Reacs.elmt_Kdc;

end MODEL1503180001;
