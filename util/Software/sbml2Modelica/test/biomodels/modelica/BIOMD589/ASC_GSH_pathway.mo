within BIOMD589;
model ASC_GSH_pathway "Valero2016 - Ascorbate-Glutathione cycle in chloroplasts under light/dark conditions" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2011-09-27T11:15:07Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>Edelmira.Valero@uclm.es</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Valero</vCard:Family>
                    <vCard:Given>Edelmira</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>University of Castilla-La Mancha</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>Hermenegilda.Macia@uclm.es</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Macià</vCard:Family>
                    <vCard:Given>Hermenegilda</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>University of Castilla-La Mancha</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>mtpmadei@ehu.es</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>De La Fuente</vCard:Family>
                    <vCard:Given>Ildefonso</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>Institute of Parasitology and Biomedicine \"López-Neyra”, CSIC.
University of the Basque Country</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>jahernan@cebas.csic.es</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Hernández</vCard:Family>
                    <vCard:Given>José Antonio</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>CEBAS, CSIC</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>misabel.gonzalez@uclm.es</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>González-Sánchez</vCard:Family>
                    <vCard:Given>María Isabel</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>University of Castilla-La Mancha</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>gcarmona@um.es</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>García-Carmona</vCard:Family>
                    <vCard:Given>Francisco</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>University of Murcia</vCard:Orgname>
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
    Class_elmt_c elmt_c;

    equation
        Params.elmt_GSSG = elmt_c.elmt_GSSG;
        Params.elmt_O2neg = elmt_c.elmt_O2neg;
        Params.elmt_ASC = elmt_c.elmt_ASC;
        Params.elmt_NADPH = elmt_c.elmt_NADPH;
        Params.elmt_CoI = elmt_c.elmt_CoI;
        Params.elmt_DHA = elmt_c.elmt_DHA;
        Params.elmt_NADPplus = elmt_c.elmt_NADPplus;
        Params.elmt_GSH = elmt_c.elmt_GSH;
        Params.elmt_APX = elmt_c.elmt_APX;
        Params.elmt_MDA = elmt_c.elmt_MDA;
        Params.elmt_CoII = elmt_c.elmt_CoII;
        elmt_c.elmt_k1 = Params.elmt_k1;
        elmt_c.elmt_kN = Params.elmt_kN;
        elmt_c.elmt_Metabolite_17 = Params.elmt_Metabolite_17;
        elmt_c.elmt_vMDAR = Params.elmt_vMDAR;
        elmt_c.elmt_k5APX = Params.elmt_k5APX;
        elmt_c.elmt_vSOD = Params.elmt_vSOD;
        elmt_c.elmt_k6 = Params.elmt_k6;
        elmt_c.elmt_k4APX = Params.elmt_k4APX;
        elmt_c.elmt_k4 = Params.elmt_k4;
        elmt_c.elmt_k5 = Params.elmt_k5;
        elmt_c.elmt_k2 = Params.elmt_k2;
        elmt_c.elmt_k3 = Params.elmt_k3;
        elmt_c.elmt_k1APX = Params.elmt_k1APX;
        elmt_c.elmt_F12 = Params.elmt_F12;
        elmt_c.elmt_F13 = Params.elmt_F13;
        elmt_c.elmt_k2APX = Params.elmt_k2APX;
        elmt_c.elmt_k3APX = Params.elmt_k3APX;
        elmt_c.elmt_F11 = Params.elmt_F11;
        elmt_c.elmt_vGR = Params.elmt_vGR;
        elmt_c.elmt_vDHAR = Params.elmt_vDHAR;

end ASC_GSH_pathway;
