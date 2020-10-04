within BIOMD585;
model MODEL1509240000 "Rateitschak2012 - Interferon-gamma (IFNγ) induced STAT1 signalling (PC_IFNg100)" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/doi/10.1371/journal.pcbi.1002815\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-03-14T08:22:46Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>katja.rateitschak@uni-rostock.de</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Rateitschak</vCard:Family>
                    <vCard:Given>Katja</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>University of Rostock</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>winter@kapora.de</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Winter</vCard:Family>
                    <vCard:Given>Felix</vCard:Given>
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
    Class_elmt_cell elmt_cell;

    equation
        elmt_cell.elmt_k1 = Params.elmt_k1;
        elmt_cell.elmt_scale_Stat1nex = Params.elmt_scale_Stat1nex;
        elmt_cell.elmt_scale_Stat1Pcex = Params.elmt_scale_Stat1Pcex;
        elmt_cell.elmt_taud = Params.elmt_taud;
        elmt_cell.elmt_scale_Stat1Pex = Params.elmt_scale_Stat1Pex;
        elmt_cell.elmt_k9 = Params.elmt_k9;
        elmt_cell.elmt_k6 = Params.elmt_k6;
        elmt_cell.elmt_k4 = Params.elmt_k4;
        elmt_cell.elmt_k5 = Params.elmt_k5;
        elmt_cell.elmt_k3 = Params.elmt_k3;
        elmt_cell.elmt_tau = Params.elmt_tau;
        elmt_cell.elmt_scale_Stat1Pnex = Params.elmt_scale_Stat1Pnex;
        elmt_cell.elmt_scale_Stat1cex = Params.elmt_scale_Stat1cex;
        elmt_cell.elmt_k14 = Params.elmt_k14;
        elmt_cell.elmt_tauj = Params.elmt_tauj;
        elmt_cell.elmt_k13 = Params.elmt_k13;
        elmt_cell.elmt_k12 = Params.elmt_k12;
        elmt_cell.elmt_k11 = Params.elmt_k11;
        elmt_cell.elmt_k10 = Params.elmt_k10;

end MODEL1509240000;
