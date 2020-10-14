within BIOMD626;
class Reactions

    input Real elmt_pUme6;
    input Real elmt_Ime1;
    input Real elmt_Ime2;
    input Real elmt_Rim11;
    input Real elmt_V;
    input Real elmt_pIme1;
    input Real elmt_pSok2;

    Real elmt_pume6_1(unit = "") "Ume6 Phosphorylation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI9\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-24T13:41:17Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000216\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    parameter Real elmt_pume6_1_elmt_pume_6(unit "") = 0.3 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_pume6_1_elmt_uume_6(unit "") = 0.01 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    Real elmt_product1 "";
    Real elmt_rim11_1(unit = "") "Rim11 Dephosphorylation";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
	
	
	
	






      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI8\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-24T13:41:17Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000330\"/>
            <CopasiMT:is>
              <rdf:Bag>
                <rdf:li rdf:resource=\"http://identifiers.org/go/GO:0006470\"/>
              </rdf:Bag>
            </CopasiMT:is>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    parameter Real elmt_rim11_1_elmt_urim_11(unit "") = 0.1 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_rim11_1_elmt_prim_11(unit "") = 0.01 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    Real elmt_product0 "";
    Real elmt_ime2_1(unit = "") "Ime2 Protein Production";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI13\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-24T13:41:15Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000393\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    parameter Real elmt_ime2_1_elmt_dime_2(unit "") = 8.0 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_ime2_1_elmt_c_3(unit "") = 2.0 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_ime2_1_elmt_c_2(unit "") = 1.4 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_ime2_1_elmt_sprimeime_2(unit "") = 3.0 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_ime2_1_elmt_sime_2(unit "") = 10.0 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    Real elmt_product5 "";
    Real elmt_sok2_1(unit = "") "Production of Phosphorylated Sok2";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI10\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-24T13:41:16Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000216\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    parameter Real elmt_sok2_1_elmt_csok_2(unit "") = 0.05 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_sok2_1_elmt_psok_2(unit "") = 0.7 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_sok2_1_elmt_usok_2(unit "") = 1.0 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    Real elmt_product2 "";
    Real elmt_ime1_1(unit = "") "Ime1 Protein Production";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI11\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-24T13:41:11Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000393\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    parameter Real elmt_ime1_1_elmt_dime_1(unit "") = 1.0 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_ime1_1_elmt_c_1(unit "") = 0.01 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_ime1_1_elmt_dprimeime_1(unit "") = 1.0 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_ime1_1_elmt_sime_1(unit "") = 10.0 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_ime1_1_elmt_cime_1(unit "") = 0.01 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_ime1_1_elmt_pime_1(unit "") = 2.0 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    Real elmt_product3 "";
    Real elmt_pime1_1(unit = "") "Phosphorylation of Ime1";
 annotation(Documentation(info="<annotation>
      <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\">
      </rdf:RDF>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI12\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2017-02-24T13:41:15Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
            <CopasiMT:is rdf:resource=\"urn:miriam:sbo:SBO:0000216\"/>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
    </annotation>"));
    parameter Real elmt_pime1_1_elmt_dpime_1(unit "") = 1.0 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    parameter Real elmt_pime1_1_elmt_pime_1(unit "") = 2.0 "";
 annotation(Documentation(info="<annotation>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	
	
	





	</rdf:RDF>
	</annotation>"));
    Real elmt_product4 "";


    initial equation
        elmt_product1 = 1.0;
        elmt_product0 = 1.0;
        elmt_product5 = 1.0;
        elmt_product4 = 1.0;
        elmt_product3 = 1.0;
        elmt_product2 = 1.0;


    equation
        elmt_pume6_1 = (elmt_V * ((((1.0 - elmt_pUme6) * elmt_pume6_1_elmt_pume_6 * elmt_Rim11) - (elmt_pume6_1_elmt_uume_6 * elmt_pUme6))));
        elmt_rim11_1 = (elmt_V * (((elmt_rim11_1_elmt_urim_11 * (1.0 - elmt_Rim11)) - (elmt_rim11_1_elmt_prim_11 * elmt_Rim11))));
        elmt_ime2_1 = (elmt_V * ((((elmt_ime2_1_elmt_sime_2 * elmt_pUme6 * elmt_pIme1) + ((elmt_ime2_1_elmt_sprimeime_2 * Functions.pow(elmt_Ime2, 5.0)) / (Functions.pow(elmt_ime2_1_elmt_c_2, 5.0) + Functions.pow(elmt_Ime2, 5.0)))) - ((elmt_ime2_1_elmt_dime_2 * elmt_Ime2) / (elmt_ime2_1_elmt_c_3 + elmt_Ime2)))));
        elmt_sok2_1 = (elmt_V * ((((elmt_sok2_1_elmt_csok_2 / (elmt_sok2_1_elmt_csok_2 + elmt_Ime1)) * (1.0 - elmt_pSok2) * elmt_sok2_1_elmt_psok_2) - (elmt_sok2_1_elmt_usok_2 * elmt_pSok2))));
        elmt_ime1_1 = (elmt_V * ((((elmt_ime1_1_elmt_cime_1 / (elmt_ime1_1_elmt_cime_1 + elmt_pSok2)) * elmt_ime1_1_elmt_sime_1) - ((elmt_ime1_1_elmt_pime_1 * elmt_Ime1 * elmt_Rim11) + (elmt_ime1_1_elmt_dime_1 * elmt_Ime1) + (elmt_ime1_1_elmt_dprimeime_1 * elmt_Ime2 * (elmt_Ime1 / (elmt_ime1_1_elmt_c_1 + elmt_Ime1)))))));
        elmt_pime1_1 = (elmt_V * (((elmt_pime1_1_elmt_pime_1 * elmt_Ime1 * elmt_Rim11) - (elmt_pime1_1_elmt_dpime_1 * elmt_pIme1))));
        der(elmt_product1) = 0;
        der(elmt_product0) = 0;
        der(elmt_product5) = 0;
        der(elmt_product4) = 0;
        der(elmt_product3) = 0;
        der(elmt_product2) = 0;

end Reactions;
