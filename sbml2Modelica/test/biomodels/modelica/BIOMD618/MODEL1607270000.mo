within BIOMD618;
model MODEL1607270000 "Krohn2011 - Cerebral amyloid-β proteostasis regulated by membrane transport protein ABCC1" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:bibliographicCitation>
              <rdf:Description>
                <CopasiMT:isDescribedBy rdf:resource=\"urn:miriam:doi:10.1172/JCI57867\"/>
              </rdf:Description>
            </dcterms:bibliographicCitation>
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2016-07-27T08:28:44Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <dcterms:creator>
              <rdf:Description>
                <vCard:EMAIL>winter@kapora.de</vCard:EMAIL>
                <vCard:N>
                  <rdf:Description>
                    <vCard:Family>Winter</vCard:Family>
                    <vCard:Given>Felix</vCard:Given>
                  </rdf:Description>
                </vCard:N>
                <vCard:ORG>
                  <rdf:Description>
                    <vCard:Orgname>University of Rostock</vCard:Orgname>
                  </rdf:Description>
                </vCard:ORG>
              </rdf:Description>
            </dcterms:creator>
            <dcterms:modified>
              <rdf:Description>
                <dcterms:W3CDTF>2016-07-27T09:12:43</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:modified>
            <CopasiMT:encodes rdf:resource=\"urn:miriam:go:GO:0006810\"/>
            <CopasiMT:encodes rdf:resource=\"urn:miriam:go:GO:1990000\"/>
            <CopasiMT:isVersionOf rdf:resource=\"urn:miriam:biomodels.sbo:SBO:0000293\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_C1 elmt_C1;

    equation
        Params.elmt_A20 = elmt_C1.elmt_A20;
        Params.elmt_A21 = elmt_C1.elmt_A21;
        Params.elmt_A28 = elmt_C1.elmt_A28;
        Params.elmt_A29 = elmt_C1.elmt_A29;
        Params.elmt_A26 = elmt_C1.elmt_A26;
        Params.elmt_A27 = elmt_C1.elmt_A27;
        Params.elmt_A24 = elmt_C1.elmt_A24;
        Params.elmt_A25 = elmt_C1.elmt_A25;
        Params.elmt_A22 = elmt_C1.elmt_A22;
        Params.elmt_A23 = elmt_C1.elmt_A23;
        Params.elmt_M = elmt_C1.elmt_M;
        Params.elmt_N = elmt_C1.elmt_N;
        Params.elmt_A31 = elmt_C1.elmt_A31;
        Params.elmt_A32 = elmt_C1.elmt_A32;
        Params.elmt_A30 = elmt_C1.elmt_A30;
        Params.elmt_A39 = elmt_C1.elmt_A39;
        Params.elmt_A7 = elmt_C1.elmt_A7;
        Params.elmt_A37 = elmt_C1.elmt_A37;
        Params.elmt_A38 = elmt_C1.elmt_A38;
        Params.elmt_A35 = elmt_C1.elmt_A35;
        Params.elmt_A36 = elmt_C1.elmt_A36;
        Params.elmt_A33 = elmt_C1.elmt_A33;
        Params.elmt_A34 = elmt_C1.elmt_A34;
        Params.elmt_A8 = elmt_C1.elmt_A8;
        Params.elmt_A9 = elmt_C1.elmt_A9;
        Params.elmt_A42 = elmt_C1.elmt_A42;
        Params.elmt_A43 = elmt_C1.elmt_A43;
        Params.elmt_A40 = elmt_C1.elmt_A40;
        Params.elmt_A41 = elmt_C1.elmt_A41;
        Params.elmt_A48 = elmt_C1.elmt_A48;
        Params.elmt_A49 = elmt_C1.elmt_A49;
        Params.elmt_A46 = elmt_C1.elmt_A46;
        Params.elmt_A47 = elmt_C1.elmt_A47;
        Params.elmt_A44 = elmt_C1.elmt_A44;
        Params.elmt_A45 = elmt_C1.elmt_A45;
        Params.elmt_A53 = elmt_C1.elmt_A53;
        Params.elmt_A10 = elmt_C1.elmt_A10;
        Params.elmt_A54 = elmt_C1.elmt_A54;
        Params.elmt_A51 = elmt_C1.elmt_A51;
        Params.elmt_A52 = elmt_C1.elmt_A52;
        Params.elmt_A50 = elmt_C1.elmt_A50;
        Params.elmt_A17 = elmt_C1.elmt_A17;
        Params.elmt_A18 = elmt_C1.elmt_A18;
        Params.elmt_A15 = elmt_C1.elmt_A15;
        Params.elmt_A16 = elmt_C1.elmt_A16;
        Params.elmt_A13 = elmt_C1.elmt_A13;
        Params.elmt_A14 = elmt_C1.elmt_A14;
        Params.elmt_A11 = elmt_C1.elmt_A11;
        Params.elmt_A12 = elmt_C1.elmt_A12;
        Params.elmt_A19 = elmt_C1.elmt_A19;
        elmt_C1.elmt_soluble = Params.elmt_soluble;
        elmt_C1.elmt_k_sol = Params.elmt_k_sol;
        elmt_C1.elmt_n_n = Params.elmt_n_n;
        elmt_C1.elmt_k_insol = Params.elmt_k_insol;
        elmt_C1.elmt_insoluble = Params.elmt_insoluble;
        elmt_C1.elmt_k_n = Params.elmt_k_n;
        elmt_C1.elmt_I_net = Params.elmt_I_net;

end MODEL1607270000;
