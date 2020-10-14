within BIOMD567;
model MODEL1501160001 "Morris2009 - α-Synuclein aggregation variable temperature and pH" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2015-01-13T17:05:38Z</dcterms:W3CDTF>
              </rdf:Description>
            </dcterms:created>
          </rdf:Description>
        </rdf:RDF>
      </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_Brain elmt_Brain;

    equation
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_Brain = elmt_Brain.elmt_Brain;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_A = elmt_Brain.elmt_A;
        Reacs.elmt_B = elmt_Brain.elmt_B;
        elmt_Brain.elmt_k1 = Params.elmt_k1;
        elmt_Brain.elmt_A0 = Params.elmt_A0;
        elmt_Brain.elmt_k2 = Params.elmt_k2;

end MODEL1501160001;
