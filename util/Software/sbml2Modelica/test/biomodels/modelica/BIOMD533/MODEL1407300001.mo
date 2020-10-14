within BIOMD533;
model MODEL1407300001 "Steckmann2012 - Amyloid beta-protein fibrillogenesis (kinetics of secondary structure conversion)" annotation(Documentation(info="<annotation>
      <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
        <rdf:RDF xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
          <rdf:Description rdf:about=\"#COPASI0\">
            <dcterms:created>
              <rdf:Description>
                <dcterms:W3CDTF>2014-07-22T10:40:24Z</dcterms:W3CDTF>
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
    Class_elmt_cell elmt_cell;

    equation
        elmt_cell.elmt_k0 = Params.elmt_k0;
        elmt_cell.elmt_k1 = Params.elmt_k1;
        elmt_cell.elmt_epsilon = Params.elmt_epsilon;
        elmt_cell.elmt_k4 = Params.elmt_k4;
        elmt_cell.elmt_k2 = Params.elmt_k2;
        elmt_cell.elmt_q = Params.elmt_q;
        elmt_cell.elmt_k3 = Params.elmt_k3;

end MODEL1407300001;
